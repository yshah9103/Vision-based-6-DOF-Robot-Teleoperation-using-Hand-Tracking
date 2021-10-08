#! /usr/bin/env python
import rospy
import numpy as np
import cv2
import time
from std_msgs.msg import String
from std_msgs.msg import Float64
from std_msgs.msg import Float64MultiArray
def threshhold(rgb_image, lower_bound_color, upper_bound_color):
    hsv_image = cv2.cvtColor(rgb_image, cv2.COLOR_BGR2HSV)                      # color conversion
    mask = cv2.inRange(hsv_image, lower_bound_color, upper_bound_color)         # color segmentation 
    return mask

def getContours(binary):     
    contours,order = cv2.findContours(binary.copy(),cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)      # get all contours from the threshold image
    return contours, order


def hand_contour(binary, rgb_image, contours):
    finalcoord=[]
    black_image = np.zeros([binary.shape[0], binary.shape[1], 3], 'uint8')
    for c in contours:
        # print("Inside for:")
        area = cv2.contourArea(c)
        ((x, y), radius) = cv2.minEnclosingCircle(c)
        if radius>50 and radius<100:                                        # check all countours that lie within this range 
            a=(0.01470588)*(radius-58)
            cv2.drawContours(black_image, [c], -1, (150,250,150), 1)        # to display contour
            cx, cy = get_center(c)

            cv2.circle(black_image, (cx,cy),5,(150,150,255),-1)             # largest bounding cirle of a contour 
            a=float(a)
            cx=float(cx)
            cx=(-0.5+(0.0016129)*(cx-10))                                   # Conversion to workspace limits using linear interpolation
            cy=float(cy)
            cy=(0.45-(0.00097826)*(cy-10))
            finalcoord=[a,cx,cy]
            
    cv2.imshow("contour",black_image)

    return finalcoord

def get_center(contour):
    M = cv2.moments(contour)
    cx=-1
    cy=-1
    if (M['m00']!=0):
        cx= int(M['m10']/M['m00'])
        cy= int(M['m01']/M['m00'])
    return cx, cy

def detect_hand(image_frame):
    hand_lower =(100, 60, 60)                                       # color threshold for blue glove
    hand_upper = (130, 255, 255)
    rgb_image = image_frame
    binary_image_mask = threshhold(rgb_image, hand_lower, hand_upper)       # Get binary B/w mask of the threshold image 
    contours,order = getContours(binary_image_mask)
    finalcoord=hand_contour(binary_image_mask, rgb_image,contours)
    return finalcoord

def talker():
    pub = rospy.Publisher('chatter', Float64MultiArray, queue_size=10)          # publisher topic set to chatter
    rospy.init_node('talker', anonymous=True)                       # node initialization
    video_capture = cv2.VideoCapture(0)
    while(True):
        ret, frame = video_capture.read()
        finalcoord=detect_hand(frame)
        pubfinal=Float64MultiArray(data=finalcoord)
        if len(finalcoord) !=0:
            pub.publish(pubfinal)
        time.sleep(0.05)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cv2.waitKey(0)
    cv2.destroyAllWindows()	

if __name__ == '__main__':
    talker()