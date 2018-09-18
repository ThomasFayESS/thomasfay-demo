#!../../bin/centos7-x86_64/Demo

## You may have to change Demo to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/Demo.dbd"
Demo_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/test.db","PREFIX=debug")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=iocuser"
