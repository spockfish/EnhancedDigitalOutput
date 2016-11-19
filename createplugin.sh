#!/bin/bash
#
# create plugin from local files

VERSION="0.9.1"


if [ ! -d edo ]
then
   echo "You're in the wrong dir!"
   exit 1
fi

mkdir ./tempplugin-${VERSION}
mkdir ./tempplugin-${VERSION}/EnhancedDigitalOutput-v${VERSION}
cp -a ./edo/* ./tempplugin-${VERSION}/EnhancedDigitalOutput-v${VERSION}
cd ./tempplugin-${VERSION}
zip -r EnhancedDigitalOutput-v${VERSION}.zip EnhancedDigitalOutput-v0.9.1
cd ..

