#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y npm nodejs-legacy
sudo npm install -g configurable-http-proxy
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 ./get-pip.py
sudo pip3 install jupyterhub
sudo pip3 install --upgrade notebook
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo pip3 install pandas matplotlib seaborn
sudo sh -c "echo 'deb https://cran.cnr.berkeley.edu/bin/linux/ubuntu trusty/' >> /etc/apt/sources.list"
sudo apt-get -y install apt-transport-https --force-yes
sudo apt-get -y update
sudo apt-get install -y --allow-unauthenticated r-base r-base-dev gdebi-core
sudo apt-get -y build-dep libcurl4-gnutls-dev
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get -y install libcurl4-openssl-dev --force-yes
sudo sh -c "echo 'install.packages(c(\"devtools\", \"curl\", \"repr\", \"IRdisplay\", \"evaluate\", \"crayon\", \"pbdZMQ\", \"devtools\", \"uuid\", \"digest\"), repos=\"http://cran.rstudio.com/\")' >> rboot.r"
sudo sh -c "echo 'devtools::install_github(\"IRkernel/IRkernel\")' >> rboot.r"
sudo sh -c "echo 'IRkernel::installspec(user = FALSE)' >> rboot.r"
sudo Rscript rboot.r
