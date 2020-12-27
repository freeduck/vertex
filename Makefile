all: codemirror matter
matter: public/upstream/matter/matter.min.js
.PHONY: matter

public/upstream/matter/matter.min.js: upstream/matter/build/matter.min.js public/upstream/matter
	cp upstream/matter/build/matter.min.js public/upstream/matter
public/upstream/matter:
	mkdir public/upstream/matter
upstream/matter/build/matter.min.js: upstream/matter/README.md
	cd upstream/matter && npm install
upstream/matter/README.md:
	git submodule update --init
codemirror: public/upstream/codemirror/codemirror.js \
	public/upstream/codemirror/codemirror.css \
	public/upstream/codemirror \
	public/upstream/codemirror/mode \
	public/upstream/codemirror/lib \
	public/upstream/codemirror/theme \
	public/upstream/codemirror/addon
.PHONY: codemirror

public/upstream/codemirror/codemirror.js: upstream/codemirror/lib/codemirror.js
	cp upstream/codemirror/lib/codemirror.js public/upstream/codemirror/codemirror.js
public/upstream/codemirror/codemirror.css:
	cp upstream/codemirror/lib/codemirror.css public/upstream/codemirror/codemirror.css


upstream/codemirror/lib/codemirror.js: public/upstream/codemirror
	cd upstream/codemirror && npm install

public/upstream/codemirror:
	mkdir -p public/upstream/codemirror

public/upstream/codemirror/mode:
	cp -R upstream/codemirror/mode public/upstream/codemirror
public/upstream/codemirror/lib:
	cp -R upstream/codemirror/lib public/upstream/codemirror
public/upstream/codemirror/theme:
	cp -R upstream/codemirror/theme public/upstream/codemirror
public/upstream/codemirror/addon:
	cp -R upstream/codemirror/addon public/upstream/codemirror
