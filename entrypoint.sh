#!/bin/bash
git clone https://github.com/samhitha30/ionic-app.git /application
cd /application
unzip simulator.zip
git clone https://github.com/SusrithaMunukutla/apk_file.git 
cd simulator
ionic build android
cd /application/apk_file
cp /application/simulator/platforms/android/build/outputs/apk/android-debug.apk /application/apk_file
git init
git remote set-url origin https://SusrithaMunukutla:welcome123@github.com/SusrithaMunukutla/apk_file.git
git config --global user.email "saim@virtusa.com"
git config --global user.name "SusrithaMunukutla"
#git rm -f androi-debug.apk
#git commit -m 'removed'
#git push
git add .
git commit -m 'Updated apk file'
git remote -v
git push
cd /application/simulator
ionic serve -a
#if(fcurl http://52.63.237dsd.171:8100); then echo"Successful"; else echo"Failed";
#fi

