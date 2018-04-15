#!/bin/bash

echo "Heads up: Make sure you run this from the source directory"
echo ""

cd ./build/libs/

if [ -s ./ask.war ]
then
  echo "File exists on local machine, preparing to wipe at remote location..."
  echo ""

  #stopping tomcat
  echo "Stopping Tomcat..."
  ssh -t 2017_hide_3@hci-dev.cs.mtu.edu "echo 'j6Stecuhas' | sudo -S systemctl stop tomcat@2017_hide_3;"
  echo "Done!"
  echo ""

  echo "Removing Deployment..."
  ssh 2017_hide_3@hci-dev.cs.mtu.edu "rm /var/lib/tomcats/2017_hide_3/webapps/*.war; rm -r /var/lib/tomcats/2017_hide_3/webapps/ask;"
  echo "Done!"
  echo ""

  echo "Preparing to transfer file..."
  sleep 3
  scp ./ask.war 2017_hide_3@hci-dev.cs.mtu.edu:/var/lib/tomcats/2017_hide_3/webapps/ask.war
  echo "File transfer complete!"
  echo ""

  echo "Starting Tomcat..."
  ssh -t 2017_hide_3@hci-dev.cs.mtu.edu "echo 'j6Stecuhas' | sudo -S systemctl start tomcat@2017_hide_3;"
  echo "Done!"
  echo ""

else
  echo "Make sure to create your .war file first!"
  echo ""
  #exit program
fi

cd ../..

echo "Exiting..."
echo ""
