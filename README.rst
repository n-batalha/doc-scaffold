Document scaffold (alpha)
=========================

.. contents::


Intro (and features)
--------------------

This repo contains a basic scaffold to produce simple documents in a binary portable format (e.g. pdf) from reStructuredText.

It is a simple alternative to Word or Google Docs, and the purpose of this repo is to have most boilerplate setup ready to be used so one can focus on the content. It needs to be repackaged differently for easier consumption and better re-usability of common commands.

I wanted a system that:

* allows one to use text editors (e.g. VSCode, Sublime, Atom) where most developers are more proficient in (than Word/Google Docs)
* is stored in clear text, to be easily stored and reviewed in git (namely in Pull Requests)
* has a live preview - it watches for changes to the doc (via :code:`make watch-<format>`) and rebuilds upon file changes
* uses reStructuredText (although easy to swap to others) for an easy yet powerful markup (automatic table of contents, code syntax highlighting, built-in footnotes, etc)
* allows diagrams as code
* is decoupled from the output format - several can be produced (via Pandoc or Sphinx)

It's a minimal amount of code ATM, all in the :code:`Makefile`, and is the best documentation.

Usage
-----

* start editing :code:`source/main.rst`
* run :code:`make watch-pdf` (for live-review). See the output in :code:`.build/`
* profit!

Replace pdf by other formats (add them in the :code:`Makefile`). See `here <https://pandoc.org/MANUAL.html#option--to>`_ the full list of supported formats (by Pandoc).

Requirements
------------

* Linux (MacOS and Windows untested, although you might be able to get it to work via ports of the other requirements)
* `make <https://www.gnu.org/software/make/>`_
* `pandoc <https://pandoc.org/>`_
* `inotify-tools <http://github.com/rvoicilas/inotify-tools/wiki>`_ (for the live preview)
* `mermaid-filter <https://github.com/raghur/mermaid-filter>`_ (for mermaid diagrams)

.. target-notes::
