# !/usr/bin/env bash
echo -n "Enter your full name and press [ENTER]: "
read full_name

echo -n "Enter your email address and press [ENTER]: "
read email

git config --global user.name "$full_name"
git config --global user.email "$email"
git credential-osxkeychain
git config --global credential.helper osxkeychain
