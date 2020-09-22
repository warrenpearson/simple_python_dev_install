#!/bin/bash

set -xe

brew_installed=`which brew`

if [ -n "${brew_installed}" ]; then
    brew_version=`brew --version |grep 'Homebrew '`
    echo "${brew_version} installed"
else
    echo "Installing brew"
    /bin/bash -c "$(/usr/bin/curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi
echo ""

echo "Checking brew packages"

brew_packages=("ack:/usr/local/bin/ack" "bash:/usr/local/bin/bash" "coreutils:/usr/local/bin/realpath" "jq:/usr/local/bin/jq" "node:/usr/local/bin/node" "wget:/usr/local/bin/wget")

for brew_package in "${brew_packages[@]}"
do
    package_name=${brew_package%:*}
    package_loc=${brew_package##*:}

    if [ -f "${package_loc}" ]; then
        echo "${package_name} is installed"
    else
        echo "Installing ${package_name}"
        brew install ${package_name}
    fi
done
echo ""
