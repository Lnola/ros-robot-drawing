# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "digits: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idigits:/home/lnola/catkin_ws/src/digits/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(digits_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_custom_target(_digits_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "digits" "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(digits
  "/home/lnola/catkin_ws/src/digits/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/digits
)

### Generating Services

### Generating Module File
_generate_module_cpp(digits
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/digits
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(digits_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(digits_generate_messages digits_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_dependencies(digits_generate_messages_cpp _digits_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(digits_gencpp)
add_dependencies(digits_gencpp digits_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS digits_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(digits
  "/home/lnola/catkin_ws/src/digits/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/digits
)

### Generating Services

### Generating Module File
_generate_module_eus(digits
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/digits
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(digits_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(digits_generate_messages digits_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_dependencies(digits_generate_messages_eus _digits_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(digits_geneus)
add_dependencies(digits_geneus digits_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS digits_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(digits
  "/home/lnola/catkin_ws/src/digits/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/digits
)

### Generating Services

### Generating Module File
_generate_module_lisp(digits
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/digits
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(digits_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(digits_generate_messages digits_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_dependencies(digits_generate_messages_lisp _digits_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(digits_genlisp)
add_dependencies(digits_genlisp digits_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS digits_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(digits
  "/home/lnola/catkin_ws/src/digits/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/digits
)

### Generating Services

### Generating Module File
_generate_module_nodejs(digits
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/digits
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(digits_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(digits_generate_messages digits_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_dependencies(digits_generate_messages_nodejs _digits_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(digits_gennodejs)
add_dependencies(digits_gennodejs digits_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS digits_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(digits
  "/home/lnola/catkin_ws/src/digits/msg/Segments.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/digits
)

### Generating Services

### Generating Module File
_generate_module_py(digits
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/digits
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(digits_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(digits_generate_messages digits_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lnola/catkin_ws/src/digits/msg/Segments.msg" NAME_WE)
add_dependencies(digits_generate_messages_py _digits_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(digits_genpy)
add_dependencies(digits_genpy digits_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS digits_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/digits)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/digits
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(digits_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/digits)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/digits
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(digits_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/digits)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/digits
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(digits_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/digits)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/digits
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(digits_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/digits)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/digits\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/digits
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(digits_generate_messages_py std_msgs_generate_messages_py)
endif()
