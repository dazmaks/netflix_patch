#!/bin/bash
APK=$1

sudo apt install adb
adb install $APK