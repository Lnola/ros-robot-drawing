#!/usr/bin/python3

import rospy
import sys
import random
from digits.msg import Segments
from std_srvs.srv import Empty

SERVICE_CUSTOM_RESET = "/drawer/reset"
TOPIC_SEGMENTS = "segments"
PARAM_BACKGROUND_R = "/turtlesim/background_r"
PARAM_BACKGROUND_G = "/turtlesim/background_g"
PARAM_BACKGROUND_B = "/turtlesim/background_b"

segments_array = {
    0: [0, 0, 0, 0, 0, 0, 1],
    1: [1, 1, 0, 0, 1, 1, 1],
    2: [1, 0, 0, 1, 0, 0, 0],
    3: [1, 0, 0, 0, 0, 1, 0],
    4: [0, 1, 0, 0, 1, 1, 0],
    5: [0, 0, 1, 0, 0, 1, 0],
    6: [0, 0, 1, 0, 0, 0, 0],
    7: [1, 0, 0, 0, 1, 1, 1],
    8: [0, 0, 0, 0, 0, 0, 0],
    9: [0, 0, 0, 0, 0, 1, 0],
}


def draw_digit(digit):
    rospy.init_node("controller", anonymous=True)

    rospy.wait_for_service(SERVICE_CUSTOM_RESET)

    try:
        rospy.set_param(PARAM_BACKGROUND_R, random.randint(0, 255))
        rospy.set_param(PARAM_BACKGROUND_G, random.randint(0, 255))
        rospy.set_param(PARAM_BACKGROUND_B, random.randint(0, 255))
        rospy.loginfo(f"Setting new background color.")

        reset_service = rospy.ServiceProxy(SERVICE_CUSTOM_RESET, Empty)
        reset_service()
        rospy.loginfo("Init custom reset of turtlesim.")

        publisher = rospy.Publisher(TOPIC_SEGMENTS, Segments, queue_size=10)
        msg = Segments()
        msg.digit = digit
        msg.segments = segments_array[digit]
        rospy.sleep(0.1)
        publisher.publish(msg)
        rospy.loginfo(f"Send digit {digit} and the corresponding segments.")

    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        draw_digit(int(sys.argv[1]))
    except rospy.ROSInterruptException:
        pass
