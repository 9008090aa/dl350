#!../../bin/linux-x86_64/DL350

#- You may have to change DL350 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/DL350.dbd"
DL350_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("DL350App/Db/DL350.db","dev=DL350")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}")
vxi11Configure("DL350","150.7.63.43",0,0.0,"inst0",0,0)



cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=pla"
