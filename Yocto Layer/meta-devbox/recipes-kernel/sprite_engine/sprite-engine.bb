SUMMARY = "Sprite Engine kernel module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
SECTION = "drivers"

inherit module

SRC_URI = " \
          file://sprite_engine.h \
          file://sprite_engine.c \
          file://Makefile \
          "

S = "${WORKDIR}"

PR = "r7"
