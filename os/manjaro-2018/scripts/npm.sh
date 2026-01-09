#!/bin/sh

list=("electron" \
      "browser-sync" \
      "create-react-app" \
      "create-react-native-app" \
      "html-to-react-components" \
      "react-native-cli")

# Clean the cache
npm cache --force clean

# Install packages if they don't exist
for pkg in ${list[@]} do
  if npm list -1 | grep -q "^${pkg}\$"; then
      echo "Package '$list' is installed!"
  else
      echo "Installing package $pkg..."
      sudo npm install $pkg --global
  fi
done
