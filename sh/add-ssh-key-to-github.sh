#!/bin/sh

yay -S github-cli
echo ">>> input the your email address on GitHub: "
read email_address
echo ">>> input your username on GitHub:"
read username
ssh-keygen -t ed25519 -C "$emailaddress"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
gh auth login
git config --global user.name "$username"
git config --global user.email "$email_address"