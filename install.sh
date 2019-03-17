#!/bin/bash
# Reproduce the GitHub environment in Ubuntu 18
echo "Installing packages"
sudo apt-get install make build-essential ruby ruby-all-dev zlib1g-dev
echo "export GEM_HOME=$HOME/gems" >> ~/.bashrc
echo "export PATH=$HOME/gems/bin:$PATH" >> ~/.bashrc
echo "Installing dependencies"
gem install bundle jekyll github-pages
echo "Cloning the website"
git clone https://github.com/FlocksCM/FlocksCM.github.io.git
cd FlocksCM.github.io
echo "Firewall rules"
sudo ufw allow 4000
JEKYLL_ENV=production bundle exec jekyll serve --host=10.1.1.1
