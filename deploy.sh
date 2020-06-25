#! /usr/bin/zsh

ls | grep -v '^docs$' | grep -v "README.md" | grep -v "mkdocs.yml" | grep -v "deploy.sh" | xargs rm -rf {}
mkdocs build
cp -r site/* ./
git add .
git commit -a -m 'add'
git push
