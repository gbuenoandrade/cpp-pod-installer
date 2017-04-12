#!/bin/bash


rm -rf ~/Applications/cpp-pod

git clone --depth=1 git@git.topfreegames.com:guilherme.andrade/cpp-pod.git ~/Applications/cpp-pod
git clone --depth=1 git@git.topfreegames.com:guilherme.andrade/cpp-specs.git ~/Applications/cpp-pod/cpp-specs
bundle install --gemfile ~/Applications/cpp-pod/Gemfile

mkdir -p /usr/local/bin/
rm -f /usr/local/bin/cpp-pod
ln -s ~/Applications/cpp-pod/main.rb /usr/local/bin/cpp-pod
chmod +x /usr/local/bin/cpp-pod
