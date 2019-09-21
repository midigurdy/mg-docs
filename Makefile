# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
VERSION       = $(shell cat VERSION)
DOCLANG       = en
RELEASEDIR    = release/$(DOCLANG)
PUBLISH_TO    = weseloh.cc:/var/www/midigurdy.com/htdocs/manual-$(VERSION)/


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

release: html singlehtml latexpdf epub
	rm -rf $(RELEASEDIR)
	mkdir -p $(RELEASEDIR)/html/
	mkdir -p $(RELEASEDIR)/singlehtml/
	mkdir -p $(RELEASEDIR)/download/
	cp -r $(BUILDDIR)/html/* $(RELEASEDIR)/html/
	cp -r $(BUILDDIR)/singlehtml/* $(RELEASEDIR)/singlehtml/
	cp -r $(BUILDDIR)/latex/midigurdy_manual.pdf $(RELEASEDIR)/download/
	cp -r $(BUILDDIR)/epub/midigurdy_manual.epub $(RELEASEDIR)/download/
	rm -rf $(RELEASEDIR)/singlehtml/_static/
	rm -rf $(RELEASEDIR)/singlehtml/_images/
	ln -s ../html/_static $(RELEASEDIR)/singlehtml/_static
	ln -s ../html/_images $(RELEASEDIR)/singlehtml/_images

tiny-release: release
	find $(RELEASEDIR)/ -wholename "**/fonts/**.ttf" -delete
	find $(RELEASEDIR)/ -wholename "**/fonts/**.eot" -delete
	find $(RELEASEDIR)/ -wholename "**/fonts/**.svg" -delete
	find $(RELEASEDIR)/ -wholename "**/fonts/**.woff2" -delete

publish: release
	rsync $(RELEASEDIR)/ $(PUBLISH_TO) -arcv


.PHONY: help Makefile release publish

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) -D language="$(DOCLANG)" $(O)
