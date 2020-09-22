#!/bin/bash

echo "Check python version"
python_installed=`which python`

if [ -n "${python_installed}" ]; then
    python_version=`python3 --version`
    echo "${python_version} installed"
else
    echo "Downloading python ${python_version}"
    wget https://www.python.org/ftp/python/${python_version}/python-${python_version}-macosx10.9.pkg

    echo "Installing python ${python_version}"
    open .

    echo "Press any key to continue"
    while [ true ] ; do
        read -t 3 -n 1
        if [ $? = 0 ] ; then
            break
        else
            echo "$?"
        fi
    done
fi
echo ""

echo "Checking pip3 is up to date"
pip3 install --upgrade pip --user
echo ""

pip_modules=("jinja2-cli==0.7.0" "PyYAML==5.3.1" "tox==3.14.5" "tox-docker==1.6.0" "tox-venv==0.4.0" "yq==2.10.1")
for pip_module in "${pip_modules[@]}"
do
  echo "Installing ${pip_module}"
  pip3 install ${pip_module}
done
echo ""#!/bin/bash

echo "Check python version"
python_installed=`which python`

if [ -n "${python_installed}" ]; then
    python_version=`python3 --version`
    echo "${python_version} installed"
else
    echo "Downloading python ${python_version}"
    wget https://www.python.org/ftp/python/${python_version}/python-${python_version}-macosx10.9.pkg

    echo "Installing python ${python_version}"
    open .

    echo "Press any key to continue"
    while [ true ] ; do
        read -t 3 -n 1
        if [ $? = 0 ] ; then
            break
        else
            echo "$?"
        fi
    done
fi
echo ""

echo "Checking pip3 is up to date"
pip3 install --upgrade pip --user
echo ""

pip_modules=("jinja2-cli==0.7.0" "PyYAML==5.3.1" "tox==3.14.5" "tox-docker==1.6.0" "tox-venv==0.4.0" "yq==2.10.1")
for pip_module in "${pip_modules[@]}"
do
  echo "Installing ${pip_module}"
  pip3 install ${pip_module}
done
echo ""
