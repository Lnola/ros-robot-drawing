#!/usr/bin/python3

import rospy
from std_srvs.srv import Empty

SERVICE_RESET = "/reset"
SERVICE_CUSTOM_RESET = "/drawer/reset"


def reset(_):
    reset_service = rospy.ServiceProxy(SERVICE_RESET, Empty)
    reset_service()
    rospy.loginfo("Custom resetting turtlesim.")
    return {}


def draw():
    rospy.init_node("drawer", anonymous=True)

    rospy.wait_for_service(SERVICE_RESET)

    rospy.Service(SERVICE_CUSTOM_RESET, Empty, reset)

    rospy.spin()


if __name__ == "__main__":
    draw()
