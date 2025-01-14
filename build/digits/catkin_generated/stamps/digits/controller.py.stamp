#!/usr/bin/python3

import rospy
import sys
from std_srvs.srv import Empty


def draw_digit(digit):
    rospy.init_node("controller", anonymous=True)

    rospy.wait_for_service("/drawer/reset")

    try:
        reset_service = rospy.ServiceProxy("/reset", Empty)
        reset_service()
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        draw_digit(int(sys.argv[1]))
    except rospy.ROSInterruptException:
        pass
