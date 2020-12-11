all: public/upstream/codemirror/codemirror.js public/upstream/codemirror/codemirror.css

upstream/codemirror/lib/codemirror.js:
	cd upstream/codemirror && npm install
public/upstream/codemirror/codemirror.js: upstream/codemirror/lib/codemirror.js public/upstream/codemirror
	cp upstream/codemirror/lib/codemirror.js public/upstream/codemirror/codemirror.js
public/upstream/codemirror/codemirror.css: public/upstream/codemirror
	cp upstream/codemirror/lib/codemirror.css public/upstream/codemirror/codemirror.css

public/upstream/codemirror:
	mkdir -p public/upstream/codemirror
