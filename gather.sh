#!/bin/bash

echo ">>> Copying application and configuration to repository"

# removing current files

rm -rf "Sublime Text 3" "Sublime Text.app" || echo "\033[1;31m ✗ unable to remove files in this repository! \033[0m"

echo "\033[1;32m ✓ Removing current files...\033[0m"

# copying application

cp -r "/Applications/Sublime Text.app" "Sublime Text.app/" &> /dev/null || echo "\033[1;31m ✗ You need to have Sublime Text installed to copy stuff! \033[0m"

echo "\033[1;32m ✓ Sublime Text.app copied...\033[0m"

# copying Configuration

cp -r "$HOME/Library/Application Support/Sublime Text 3/" "Sublime Text 3/" &> /dev/null || echo "\033[1;31m ✗ You need to have Sublime Text installed to copy stuff! \033[0m"

echo "\033[1;32m ✓ Sublime configuration folder copied...\033[0m"

# we're done, dude ;)

echo "=== Done!"
