echo "Installing NVM…"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
nvm install node
nvm alias default node
npm i -g diff-so-fancy
