#!/bin/sh
AS_VAGRANT="sudo -u vagrant"

dnf update -y
dnf install python-setuptools python-devel openssl openssl-devel libxml2-devel libxslt-devel zlib-devel libjpeg-devel expat expat-devel libxml2 libxslt zlib libjpeg vim git -y
dnf install readline-devel wv poppler-utils freetype-devel lcms-libs lcms-devel -y
dnf groupinstall "development tools"
pip install virtualenv
mkdir -p ~/Plone/env
virtualenv --no-site-packages ~/Plone/env/
source ~/Plone/env/bin/activate
mkdir -p /vagrant/Plone_workspace
cd /vagrant/Plone_workspace
cp -r /vagrant/Plone5/ Plone5
# git clone https://github.com/yanghaa/Plone5.git
cd Plone5/sites/
cp /vagrant/bootstrap.py bootstrap.py
python bootstrap.py -c buildout_dev.cfg
bin/buildout -Nv -c buildout_dev.cfg
