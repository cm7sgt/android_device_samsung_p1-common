# this is a camera wrapper, largely kanged from aries-common
# it adapts parameters set by CyanogenMod to little different ones supported by Samsung's libcamera
# it wrap arounds libsamsungcamera.so which is renamed Samsung's libcamera

ifeq ($(findstring galaxytab, $(TARGET_DEVICE)),galaxytab)

LOCAL_PATH:= $(call my-dir)

# Set USE_CAMERA_STUB if you don't want to use the hardware camera.

#
# libcamera
#

include $(CLEAR_VARS)

LOCAL_MODULE:= libcamera
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES:= LibCameraWrapper.cpp

LOCAL_SHARED_LIBRARIES:= libdl libutils libcutils libcamera_client

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

endif