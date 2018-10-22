#!/usr/bin/env bash

if [ -n "$GITHUB_API_KEY" ]; then
	git checkout --orphan master
	git rm -rf .
	mv docs/* .
	rm -rf docs hugo_*
	git add -f --ignore-errors --all
	git -c user.name='Muhammad Usman' -c user.email='me@usmanmuhd.com' commit -m init
	git push -f -q https://usmanmuhd:$GITHUB_API_KEY@github.com/$GITHUB_USER.github.io master
fi