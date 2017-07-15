#!/bin/bash
TASK_ID=semver
BUILD_VERSION=`cat VERSION`
tar cvzf $TASK_ID-$BUILD_VERSION.tar.gz run.xml VERSION 

if [ -f $TASK_ID-$BUILD_VERSION.tar.gz  ]; then
    echo 'package success'
    ls $TASK_ID-$BUILD_VERSION.tar.gz
else
    echo 'package failed'
    exit -1
fi
