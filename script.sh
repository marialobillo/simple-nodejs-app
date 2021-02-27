#!/bin/bash
apt-get update
apt-get install -y nodejs npm
git clone https://github.com/marialobillo/simple-nodejs-app "$HOME/application"
cd "$HOME/application" || exit 0
npm install

cat <<EOT > /etc/rc.local
#!/bin/bash
cd "$HOME/application"
node start &
exit 0
EOT

node start &