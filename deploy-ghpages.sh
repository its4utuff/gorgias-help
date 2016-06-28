#!/bin/bash

rm -rf ./.deploy
git clone -b gh-pages git@github.com:gorgias/gorgias-help.git .deploy
rm -rf ./.deploy/*
make html
cp -r _build/html/. .deploy/

# disable jekyll on gh-pages
touch .deploy/.nojekyll

# prevent robots from scanning the docs, for now
echo -e 'User-agent: *\nDisallow: /' > .deploy/robots.txt

cd .deploy

# replace all root urls / to the gorgias.github.io/gorgias-help url
grep -ilr '="/' * | xargs -i@ sed -i 's/="\//="https:\/\/gorgias.github.io\/gorgias-help\//g' @

# push to gh-pages
git add -A
git commit -a -m 'Deploy to gh-pages'
git push origin gh-pages
