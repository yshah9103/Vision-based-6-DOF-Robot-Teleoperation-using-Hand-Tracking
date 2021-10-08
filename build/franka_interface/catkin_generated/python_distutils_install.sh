#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ntnghia1999/dynamics_final/src/franka_ros_interface/franka_interface"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ntnghia1999/dynamics_final/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ntnghia1999/dynamics_final/install/lib/python2.7/dist-packages:/home/ntnghia1999/dynamics_final/build/franka_interface/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ntnghia1999/dynamics_final/build/franka_interface" \
    "/usr/bin/python2" \
    "/home/ntnghia1999/dynamics_final/src/franka_ros_interface/franka_interface/setup.py" \
     \
    build --build-base "/home/ntnghia1999/dynamics_final/build/franka_interface" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ntnghia1999/dynamics_final/install" --install-scripts="/home/ntnghia1999/dynamics_final/install/bin"
