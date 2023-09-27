install:
	python3 -m venv venv
	venv/bin/pip install -r requirements.txt
	npm ci
	cp node_modules/github-markdown-css/github-markdown.css web/main.css
	convert -size 16x16 xc:#00FF00 web/favicon.ico
