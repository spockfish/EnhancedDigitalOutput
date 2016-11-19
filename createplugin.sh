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
here=$( pwd )
cd ./tempplugin-${VERSION}/EnhancedDigitalOutput-v${VERSION}
zip -r ../EnhancedDigitalOutput-v${VERSION}.zip .
cd $here
cp ./tempplugin-${VERSION}/EnhancedDigitalOutput-v${VERSION}.zip files
shasum ./tempplugin-${VERSION}/EnhancedDigitalOutput-v${VERSION}.zip

