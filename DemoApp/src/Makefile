TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Demo
# Demo.dbd will be created and installed
DBD += Demo.dbd

# Demo.dbd will be made up from these files:
Demo_DBD += base.dbd

# Include dbd files from all support applications:
#Demo_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#Demo_LIBS += xxx

# Demo_registerRecordDeviceDriver.cpp derives from Demo.dbd
Demo_SRCS += Demo_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Demo_SRCS_DEFAULT += DemoMain.cpp
Demo_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Demo_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Demo_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

