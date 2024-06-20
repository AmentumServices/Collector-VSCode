#!/bin/bash
REPO=JacobsFederal/$(basename "$PWD")
DEST="~/Downloads/$SRC"

echo "Working with github repo $REPO"
echo "Listing releases"
gh release list -R $REPO
echo "Downloading Latest to $DEST"
gh release download -p "*" \
  -D $DEST -R $REPO