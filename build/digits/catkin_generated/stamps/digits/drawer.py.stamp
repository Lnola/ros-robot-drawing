#!/usr/bin/python3

import rospy
from digits.msg import Segments
from turtlesim.srv import TeleportAbsolute, SetPen
from std_srvs.srv import Empty

SERVICE_RESET = "/reset"
SERVICE_SET_PEN = "/turtle1/set_pen"
SERVICE_TELEPORT = "/turtle1/teleport_absolute"
SERVICE_CUSTOM_RESET = "/drawer/reset"
TOPIC_SEGMENTS = "segments"
PARAM_CUSTOM_TEXT = "/text_color"

length = 2
middle = 5.5
left = middle - length
right = middle + length
top = middle + length * 2
bottom = middle - length * 2

segment_map = {
    0: (left, top),
    1: (right, top),
    2: (right, middle),
    3: (right, bottom),
    4: (left, bottom),
    5: (left, middle),
    6: (right, middle),
}


def reset(_):
    reset_service = rospy.ServiceProxy(SERVICE_RESET, Empty)
    set_pen_service = rospy.ServiceProxy(SERVICE_SET_PEN, SetPen)
    teleport_service = rospy.ServiceProxy(SERVICE_TELEPORT, TeleportAbsolute)

    reset_service()
    set_pen_service(r=255, g=255, b=255, width=25, off=1)
    teleport_service(left, middle, 0)

    rospy.loginfo("Custom resetting turtlesim.")
    return {}


def draw_segments(msg):
    digit = msg.digit
    rospy.loginfo(f"Drawing digit {digit}.")

    set_pen_service = rospy.ServiceProxy(SERVICE_SET_PEN, SetPen)
    teleport_service = rospy.ServiceProxy(SERVICE_TELEPORT, TeleportAbsolute)

    [r, g, b] = rospy.get_param(PARAM_CUSTOM_TEXT, (255, 255, 255))
    rospy.loginfo(f"{r} {g} {b} {type(r)}")
    segments = msg.segments
    for index, segment in enumerate(segments):
        set_pen_service(r=r, g=g, b=b, width=25, off=segment)
        teleport_service(*(segment_map[index]), 0)


def draw():
    rospy.init_node("drawer", anonymous=True)

    rospy.wait_for_service(SERVICE_RESET)
    rospy.wait_for_service(SERVICE_SET_PEN)
    rospy.wait_for_service(SERVICE_TELEPORT)

    rospy.Service(SERVICE_CUSTOM_RESET, Empty, reset)
    rospy.Subscriber(TOPIC_SEGMENTS, Segments, draw_segments)

    rospy.spin()


if __name__ == "__main__":
    draw()
