#!/bin/sh
shopt -s extglob

if [ -z "$1" ] || [ -n "$2" ]; then
    echo "Err: commit message."
    exit 1
fi

CURR_DIR="$(pwd)"
TMP_DIR="$CURR_DIR"-gh-pages

sh build.sh
#
rm -rf "$TMP_DIR"
cp -r . "$TMP_DIR"
cd "$TMP_DIR"
#
git reset --hard
git clean -f -d
git checkout gh-pages
git pull
#
rm -rf !(.git|.nojekyll|CNAME)
#
cp -r "$CURR_DIR"/_build/html/* .
rm -rf _sources objects.inv
#
git add -A
git commit -m "$1"
git push origin gh-pages
#
rm -rf "$TMP_DIR"