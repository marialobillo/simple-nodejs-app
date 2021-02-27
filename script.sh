#!/bin/bash
apt-get update
apt-get install -y nodejs npm
git clone https://github.com/juanmaguitar/fullstack-mini-project.git "$HOME/application"
cd "$HOME/application" || exit 0
git checkout 99c6efa
npm install

cat <<EOT > /etc/rc.local
#!/bin/bash
cd "$HOME/application"
nodejs app.js &
exit 0
EOT

nodejs app.js &