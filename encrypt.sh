#!/usr/bin/env bash
# Encrypts src/index.html into ./index.html (the file GitHub Pages serves).
# Usage:  ./encrypt.sh YOUR_PASSWORD
# Needs Node.js. First run: npm i -g staticrypt
set -e
if [ -z "$1" ]; then echo "Usage: ./encrypt.sh YOUR_PASSWORD"; exit 1; fi

staticrypt src/index.html -p "$1" -d . --short \
  --template-title "For Grace 💙" \
  --template-instructions "Hint: the day we became official (MMDDYY)" \
  --template-button "Open 💙" \
  --template-placeholder "password" \
  --template-color-primary "#3b7dd8" \
  --template-color-secondary "#eaf4ff" \
  --template-remember "Remember me" \
  --remember 30

echo "Done! index.html is encrypted. Commit and push it."
