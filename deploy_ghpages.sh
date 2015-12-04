#!/bin/sh
(
	cd public
	git init
	git config user.name "Travis-CI"
	git config user.email "travis@pith.fr"
	git add .
	git commit -m "Built for pith.github.io/blog"
	git push --force --quiet "https://${GITHUB_TOKEN}@github.com/pith/blog" master:gh-pages > /dev/null 2>&1
)