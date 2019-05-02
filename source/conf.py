# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# http://www.sphinx-doc.org/en/master/config

# -- Path setup --------------------------------------------------------------

import os
SOURCE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# -- Project information -----------------------------------------------------

project = 'MidiGurdy User Manual'
copyright = '2019, Marcus Weseloh'
author = 'Marcus Weseloh'
version = '1.1.5'
release = '1.1.5'

language = 'en'

master_doc = 'contents'


# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinxcontrib.spelling',
]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = []

rst_epilog = """
.. |MG| replace:: MidiGurdy
"""

locale_dirs = [
    os.path.join(SOURCE_DIR, 'locales'),
]

# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'
#html_theme = 'nature'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

html_copy_source = True

html_show_sourcelink = False

html_theme_options = {
#    'canonical_url': '',
#    'analytics_id': 'UA-XXXXXXX-1',  #  Provided by Google in your dashboard
#    'logo_only': False,
#    'display_version': True,
#    'prev_next_buttons_location': 'bottom',
#    'style_external_links': False,
#    'vcs_pageview_mode': '',
#    'style_nav_header_background': 'white',
#     Toc options
    'collapse_navigation': False,
#    'sticky_navigation': True,
    'navigation_depth': 2,
#    'includehidden': True,
#    'titles_only': False
}

html_css_files = [
    'mg.css',
]

# -- Options for LaTeX output -------------------------------------------------

latex_documents = [
    ('contents', 'midigurdy.tex', 'MidiGurdy Manual', 'Marcus Weseloh', 'manual', True),
]

latex_show_pagerefs = True

latex_elements = {
    'extraclassoptions': 'openany,oneside',
    'fncychap': '\\usepackage[Bjornstrup]{fncychap}',
    'figure_align': 'H',
    'papersize': 'a4paper',
}

# -- Options for spelling plugin -------------------------------------------------

spelling_lang = 'en_GB'
spelling_word_list_filename = 'spelling_wordlist.txt'
spelling_ignore_wiki_words = False
spelling_ignore_importable_modules = False
spelling_ignore_python_builtins = False
spelling_ignore_acronyms = False

