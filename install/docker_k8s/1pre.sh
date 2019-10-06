
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo "ubuntu:docker1234" | chpasswd
service sshd reload
apt-get -y update
apt-get -y install nodejs npm
npm install -g wetty
curl https://gist.githubusercontent.com/subicura/9058671c16e2abd36533fea2798886b0/raw/7f097962188d8e1a90fac1e8383e6087b1898a2a/wetty.service -o /lib/systemd/system/wetty.service
systemctl start wetty
systemctl enable wetty

