#!/usr/bin/python3

import rospy
import random
from std_msgs.msg import Int32

TOPIC_DIGIT = "digit"


def generate_digit():
    rospy.init_node("generator", anonymous=True)

    publisher = rospy.Publisher(TOPIC_DIGIT, Int32, queue_size=10)

    rate = rospy.Rate(0.5)

    while not rospy.is_shutdown():
        random_digit = random.randint(0, 9)
        rospy.loginfo(f"Generated random digit: {random_digit}")
        publisher.publish(random_digit)
        rate.sleep()


if __name__ == "__main__":
    try:
        generate_digit()
    except rospy.ROSInterruptException:
        pass
