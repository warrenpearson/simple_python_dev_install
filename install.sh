#!/bin/bash

./brew.sh
./python_install.sh
./java_flyway.sh
./database.sh

# The below will prompt you to install the XCode CLI Tools,
# or simply show the version if installed
echo "Check git version"
git --version
echo ""

echo "Downloading docker"
 wget https://download.docker.com/mac/stable/Docker.dmg
echo ""


echo "TODO: differentiate between python paths, "
echo "/Library for .dmg install, "
echo "~/Library for system version"

echo "You will need to add the following to your .bashrc"
echo "export PATH=$HOME/Library/Python/3.7/bin:$PATH:/opt/flyway"
echo "export PATH=$PATH:/usr/local/opt/mysql-client@5.7/bin"
