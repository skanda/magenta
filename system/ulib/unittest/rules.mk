# Copyright 2016 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := userlib

MODULE_SRCS += \
    $(LOCAL_DIR)/all-tests.c \
    $(LOCAL_DIR)/unittest.c \
    $(LOCAL_DIR)/hexdump.c

MODULE_SO_NAME := unittest

# N.B. mxio, and thus launchpad, cannot appear here. See ./README.md.
MODULE_STATIC_LIBS := ulib/runtime
MODULE_LIBS := ulib/magenta ulib/musl

include make/module.mk
