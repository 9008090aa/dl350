TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = DL350
# DL350.dbd will be created and installed
DBD += DL350.dbd

# DL350.dbd will be made up from these files:
DL350_DBD += base.dbd
DL350_DBD += asyn.dbd
DL350_DBD += stream.dbd
DL350_DBD += calcSupport.dbd
DL350_DBD += drvAsynSerialPort.dbd
DL350_DBD += drvAsynIPPort.dbd
DL350_DBD += drvVxi11.dbd
# Include dbd files from all support applications:
#DL350_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#DL350_LIBS += xxx

# DL350_registerRecordDeviceDriver.cpp derives from DL350.dbd
DL350_SRCS += DL350_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
DL350_SRCS_DEFAULT += DL350Main.cpp
DL350_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#DL350_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
DL350_LIBS += $(EPICS_BASE_IOC_LIBS)
DL350_LIBS += asyn
DL350_LIBS += stream
DL350_LIBS += calc
#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

