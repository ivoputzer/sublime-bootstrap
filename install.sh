#!/bin/bash

echo ">>> Installing ST3"

git clone https://github.com/ivoputzer/sublime-bootstrap.git "$HOME/.sublime-bootstrap" &> /dev/null

# Installing ST3

cp -r "$HOME/.sublime-bootstrap/Sublime Text.app" "/Applications/Sublime Text.app" &> /dev/null || echo "\033[1;31m ✗ Sublime Text 3 installation failure!\033[0m"

echo "\033[1;32m ✓ Sublime Text 3 installation successful...\33[0m"

# Configuring ST3

cp -r "$HOME/.sublime-bootstrap/Sublime Text 3" "$HOME/Library/Application Support/Sublime Text 3" &> /dev/null || echo "\033[1;31m ✗ Sublime Text 3 configuration failure!\033[0m"

echo "\033[1;32m ✓ Sublime Text 3 configuration successful...\33[0m"

# Removing Files

rm -rf "$HOME/.sublime-bootstrap" || echo "\033[1;31m ✗ Failed on removing temporary files !\033[0m"

echo "\033[1;32m ✓ Temporary files removed...\33[0m"

echo "=== done!"