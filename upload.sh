#!/bin/bash

cd ~/Desktop/notes/
cp ~/.emacs  .emacs
cp ~/.emacs.d/custom/org-bullets.el org-bullets.el
git add index.org data.org .emacs org-bullets.el

git commit -m "$(date)"
username="arifexe12"
password=$(cat github.txt)

git push https://$username:$password@github.com/arifexe12/notes.git
