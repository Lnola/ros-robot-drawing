#!/usr/bin/python3

import rospy
import sys
from std_srvs.srv import Empty

SERVICE_CUSTOM_RESET = "/drawer/reset"


def draw_digit(digit):
    rospy.init_node("controller", anonymous=True)

    rospy.wait_for_service(SERVICE_CUSTOM_RESET)

    try:
        reset_service = rospy.ServiceProxy(SERVICE_CUSTOM_RESET, Empty)
        reset_service()
        rospy.loginfo("Init custom reset of turtlesim.")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        draw_digit(int(sys.argv[1]))
    except rospy.ROSInterruptException:
        pass
