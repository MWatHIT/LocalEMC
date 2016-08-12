#!/bin/sh
AS_VAGRANT="sudo -u vagrant"

dnf update -y
sudo dnf install gcc-c++ patch openssl-devel libjpeg-devel libxslt-devel make which python-devel mysql-devel -y
sudo dnf install readline-devel wv poppler-utils -y
sudo pip install --upgrade pip
sudo pip install virtualenv
mkdir -p /home/vagrant/Plone/env
sudo virtualenv --no-site-packages /home/vagrant/Plone/env/
source /home/vagrant/Plone/env/bin/activate
mkdir -p /vagrant/Plone_workspace
cd /vagrant/Plone_workspace
cp -r /vagrant/Plone5/ Plone5
# git clone https://github.com/yanghaa/Plone5.git
cd Plone5/sites/
cp /vagrant/bootstrap.py bootstrap.py
python bootstrap.py -c buildout_dev.cfg
bin/buildout -Nv -c buildout_dev.cfg
