echo "installing puppet to this machine"
apt-get install puppet -y
echo "ensure that puppet is installed and running"
puppet resource service puppet ensure=running enable=true
