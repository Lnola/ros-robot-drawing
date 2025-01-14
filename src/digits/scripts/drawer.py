#!/usr/bin/python3

import rospy
from turtlesim.srv import TeleportAbsolute, SetPen
from std_srvs.srv import Empty

SERVICE_RESET = "/reset"
SERVICE_SET_PEN = "/turtle1/set_pen"
SERVICE_TELEPORT = "/turtle1/teleport_absolute"
SERVICE_CUSTOM_RESET = "/drawer/reset"

length = 2
middle = 5.5
left = middle - length
right = middle + length
top = middle + length * 2
bottom = middle - length * 2


def reset(_):
    reset_service = rospy.ServiceProxy(SERVICE_RESET, Empty)
    set_pen_service = rospy.ServiceProxy(SERVICE_SET_PEN, SetPen)
    teleport_service = rospy.ServiceProxy(SERVICE_TELEPORT, TeleportAbsolute)

    reset_service()
    set_pen_service(r=255, g=255, b=255, width=25, off=1)
    teleport_service(left, middle, 0)

    rospy.loginfo("Custom resetting turtlesim.")
    return {}


def draw():
    rospy.init_node("drawer", anonymous=True)

    rospy.wait_for_service(SERVICE_RESET)
    rospy.wait_for_service(SERVICE_SET_PEN)
    rospy.wait_for_service(SERVICE_TELEPORT)

    rospy.Service(SERVICE_CUSTOM_RESET, Empty, reset)

    rospy.spin()


if __name__ == "__main__":
    draw()
