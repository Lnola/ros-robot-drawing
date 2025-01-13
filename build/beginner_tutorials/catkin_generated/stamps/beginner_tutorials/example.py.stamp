#!/usr/bin/python3
import rospy

def example():
    rospy.init_node('example', anonymous=True)
    rospy.loginfo("hello world")
    rospy.spin()

if __name__ == '__main__':
    try:
        example()
    except rospy.ROSInterruptException:
        pass
