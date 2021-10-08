import cv2
import numpy as np
img = cv2.imread('hand.jpg')
hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
print(np.shape(hsv))
print(hsv[240][320])