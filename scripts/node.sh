echo "Installing NVM…"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
nvm install v8.8.0
nvm alias default v8.8.0
npm i -g diff-so-fancy
