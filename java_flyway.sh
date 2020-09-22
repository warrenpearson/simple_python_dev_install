#!/bin/bash

echo "Checking openjdk11"
echo ""

if [ -d "/usr/local/Caskroom/adoptopenjdk11" ]; then
    echo "openjdk is installed"
else
    echo "Installing openjdk11"
    brew tap adoptopenjdk/openjdk
    brew cask install adoptopenjdk11
fi
echo ""

echo "Checking flyway"
if [ -f "/opt/flyway" ]; then
        echo "flyway is installed"
else
    echo "Installing flyway"
    here=$PWD
    wget https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.2.4/flyway-commandline-5.2.4-macosx-x64.tar.gz

    sudo mkdir -p /opt
    sudo chown -R ${USER} /opt
    mv flyway-commandline-5.2.4-macosx-x64.tar.gz /opt
    cd /opt
    gunzip flyway-commandline-5.2.4-macosx-x64.tar.gz
    tar xvf flyway-commandline-5.2.4-macosx-x64.tar
    ln -s flyway-5.2.4 flyway
    cd ${here}
    echo "You can add flyway to your path by setting PATH=$PATH:/opt/flyway"
fi
echo ""
