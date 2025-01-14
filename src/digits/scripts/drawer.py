#!/usr/bin/python3

import rospy
import sys
from turtlesim.srv import TeleportAbsolute, SetPen
from std_srvs.srv import Empty

length = 2
middle = 5.5
left = middle - length
right = middle + length
top = middle + length * 2
bottom = middle - length * 2

seven_segment_array = [
    [0, 0, 0, 0, 0, 0, 1],
    [1, 1, 0, 0, 1, 1, 1],
    [1, 0, 0, 1, 0, 0, 0],
    [1, 0, 0, 0, 0, 1, 0],
    [0, 1, 0, 0, 1, 1, 0],
    [0, 0, 1, 0, 0, 1, 0],
    [0, 0, 1, 0, 0, 0, 0],
    [1, 0, 0, 0, 1, 1, 1],
    [0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1, 0],
]


def reset(reset_service, set_pen_service, teleport_service):
    reset_service()
    set_pen_service(r=255, g=255, b=255, width=25, off=1)
    teleport_service(left, middle, 0)


def segment_teleport_1(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(left, top, 0)


def segment_teleport_2(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(right, top, 0)


def segment_teleport_3(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(right, middle, 0)


def segment_teleport_4(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(right, bottom, 0)


def segment_teleport_5(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(left, bottom, 0)


def segment_teleport_6(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(left, middle, 0)


def segment_teleport_7(set_pen_service, teleport_service, off):
    set_pen_service(r=255, g=255, b=255, width=25, off=off)
    teleport_service(right, middle, 0)


def teleport_turtle(digit):
    rospy.init_node("teleport_node", anonymous=True)

    rospy.wait_for_service("/reset")
    rospy.wait_for_service("/turtle1/set_pen")
    rospy.wait_for_service("/turtle1/teleport_absolute")

    try:
        reset_service = rospy.ServiceProxy("/reset", Empty)
        set_pen_service = rospy.ServiceProxy("/turtle1/set_pen", SetPen)
        teleport_service = rospy.ServiceProxy("/turtle1/teleport_absolute", TeleportAbsolute)

        reset(reset_service, set_pen_service, teleport_service)

        segment_teleport_1(set_pen_service, teleport_service, off=seven_segment_array[digit][0])
        segment_teleport_2(set_pen_service, teleport_service, off=seven_segment_array[digit][1])
        segment_teleport_3(set_pen_service, teleport_service, off=seven_segment_array[digit][2])
        segment_teleport_4(set_pen_service, teleport_service, off=seven_segment_array[digit][3])
        segment_teleport_5(set_pen_service, teleport_service, off=seven_segment_array[digit][4])
        segment_teleport_6(set_pen_service, teleport_service, off=seven_segment_array[digit][5])
        segment_teleport_7(set_pen_service, teleport_service, off=seven_segment_array[digit][6])

        rospy.loginfo("Teleported turtle successfully!")
    except rospy.ServiceException as e:
        rospy.logerr(f"Service call failed: {e}")


if __name__ == "__main__":
    try:
        teleport_turtle(int(sys.argv[1]))
    except rospy.ROSInterruptException:
        pass
