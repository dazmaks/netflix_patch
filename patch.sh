#!/bin/bash
NETFLIX=netflix
NETFLIX_APK=$NETFLIX.apk
NETFLIX_PATCH=$NETFLIX.patch
SIGNAPK=signapk.sh

apktool d -r -f $NETFLIX_APK
patch -p0 -i ./$NETFLIX_PATCH
apktool b -f $NETFLIX
./$SIGNAPK $NETFLIX/dist/$NETFLIX_APK mimi.keystore password mimi
