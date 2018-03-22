#!/bin/bash

echo "Heads up: Make sure you run this from the source directory"
echo ""

cd ./build/libs/

if [ -s ./Ask.war ]
then
  echo "File exists on local machine, preparing to wipe at remote location..."
  echo ""
  #wipe files at absolute pathnames
  ssh 2017_hide_3@hci-dev.cs.mtu.edu "rm /var/lib/tomcats/2017_hide_3/webapps/*.war;"

  echo "Taking a quick nap to allow tomcat to un-deploy! See you in 15 seconds..."
  echo ""
  sleep 15

  echo "Preparing to transfer file..."
  echo ""
  scp ./Ask.war 2017_hide_3@hci-dev.cs.mtu.edu:/var/lib/tomcats/2017_hide_3/webapps/Ask.war
  echo "File transfer complete!"
  echo ""

else
  echo "Make sure to create your .war file first!"
  echo ""
  #exit program
fi

cd ../..

echo "Exiting..."
echo ""
