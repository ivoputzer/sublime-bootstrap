#!/bin/bash

echo ">>> copying current sublime configurations to repository :"

cp -r "/Applications/Sublime Text.app" . || echo "\033[1;31m ✗ You need to have Sublime Text installed to copy app! \033[0m"

echo "\033[1;32m ✓ Sublime Text.app copied...\033[0m"

cp -r "$HOME/Library/Application Support/Sublime Text 3" . || echo "\033[1;31m ✗ You need to have Sublime Text installed to copy configs! \033[0m"

echo "\033[1;32m ✓ Sublime configuration folder copied...\033[0m"

echo "\033[1;32m= done!\033[0m"
