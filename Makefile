# Project Name
TARGET = spectral

# Sources
CPP_SOURCES = spectral.cpp

# Library Locations
DAISYSP_DIR ?= ../DaisySP
LIBDAISY_DIR ?= ../libDaisy

CPP_STANDARD ?= -std=gnu++17
OPT ?= -O3

# Core location, and generic Makefile.
SYSTEM_FILES_DIR = $(LIBDAISY_DIR)/core
include $(SYSTEM_FILES_DIR)/Makefile