PHONY: github agwaterdesk

github:
	npm run screenshot
	npm run build
	rm -rf docs
	cp -r dist docs
	touch docs/.nojekyll
	git add -A
	git commit -m "update github pages"
	git push