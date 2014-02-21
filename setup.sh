#!/bin/bash

CURRENT_PATH=`pwd`
PROJECT_NAME=$1

if [ "$PROJECT_NAME" == "" ]
then
    echo "You must provide a project name. e.g. ./setup.sh Bob"
    exit 1
fi

echo "Creating project $PROJECT_NAME"
cp -R ../OCFramework ../$PROJECT_NAME
cd ../$PROJECT_NAME
sed -i.bak "s/{{FRAMEWORK_NAME}}/${PROJECT_NAME}/g" OCFramework.xcodeproj/project.pbxproj
sed -i.bak "s/{{FRAMEWORK_NAME}}/${PROJECT_NAME}/g" OCFramework.xcodeproj/project.xcworkspace/contents.xcworkspacedata

mv OCFramework.xcodeproj $PROJECT_NAME.xcodeproj
mv src/main/OCFramework-Info.plist src/main/$PROJECT_NAME-Info.plist
mv src/main/OCFramework-Prefix.pch src/main/$PROJECT_NAME-Prefix.pch
rm README.markdown
mv README-project.markdown README.markdown
rm -rf .git
