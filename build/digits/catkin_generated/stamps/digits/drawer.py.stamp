#!/usr/bin/python3

import rospy
from std_srvs.srv import Empty

def reset():
    reset_service = rospy.ServiceProxy("/reset", Empty)
    reset_service()

def draw():
    rospy.init_node('drawer', anonymous=True)

    rospy.wait_for_service("/reset")
    rospy.Service('/drawer/reset', Empty, reset)

    rospy.spin()

if __name__ == '__main__':
    draw()
