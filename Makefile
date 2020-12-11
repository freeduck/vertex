all: public/upstream/codemirror/codemirror.js
upstream/codemirror/lib/codemirror.js:
	cd upstream/codemirror && npm install
public/upstream/codemirror/codemirror.js: upstream/codemirror/lib/codemirror.js
	cp upstream/codemirror/lib/codemirror.js && public/upstream/codemirror/codemirror.js

