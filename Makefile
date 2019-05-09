# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
RELEASEDIR    = release
VERSION       = $(shell cat VERSION)
PUBLISH_TO    = weseloh.cc:/var/www/midigurdy.com/htdocs/manual-$(VERSION)/


# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

release: html singlehtml latexpdf epub
	rm -rf $(RELEASEDIR)
	mkdir -p $(RELEASEDIR)/en/html/
	mkdir -p $(RELEASEDIR)/en/singlehtml/
	mkdir -p $(RELEASEDIR)/en/download/
	cp -r $(BUILDDIR)/html/* $(RELEASEDIR)/en/html/
	cp -r $(BUILDDIR)/singlehtml/* $(RELEASEDIR)/en/singlehtml/
	cp -r $(BUILDDIR)/latex/midigurdy_manual.pdf $(RELEASEDIR)/en/download/
	cp -r $(BUILDDIR)/epub/midigurdy_manual.epub $(RELEASEDIR)/en/download/
	rm -rf $(RELEASEDIR)/en/singlehtml/_static/
	rm -rf $(RELEASEDIR)/en/singlehtml/_images/
	ln -s ../html/_static $(RELEASEDIR)/en/singlehtml/_static
	ln -s ../html/_images $(RELEASEDIR)/en/singlehtml/_images

tiny-release: release
	find $(RELEASEDIR)/en/ -wholename "**/fonts/**.ttf" -delete
	find $(RELEASEDIR)/en/ -wholename "**/fonts/**.eot" -delete
	find $(RELEASEDIR)/en/ -wholename "**/fonts/**.svg" -delete
	find $(RELEASEDIR)/en/ -wholename "**/fonts/**.woff2" -delete

publish: release
	rsync $(RELEASEDIR)/ $(PUBLISH_TO) -arcv


.PHONY: help Makefile release publish

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
