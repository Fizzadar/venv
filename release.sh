#!/bin/sh

# Get version
VERSION=`cat venv | grep "VERSION=" | grep -oE "[0-9\.]+"`

echo "# Releasing venv v$VERSION"
echo "tagging..."
git tag -a "v$VERSION" -m "v$VERSION"
git push --tags

echo "# Done!"
