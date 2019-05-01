Document skaffold (alpha)
=========================

.. contents::


Intro (and features)
--------------------

This repo contains a skaffold for most simple one-off rich text documents that need to be in a binary portable format (e.g. pdf).

It is a simple alternative to Word or Google Docs, and the purpose of this repo is to have most boilerplate setup ready to be used so one can focus on the content. It needs to be repackaged differently for easier consumption and better re-usability of common commands.

I wanted a system that:

* allows one to use text editors (e.g. VSCode, Sublime, Atom) where most developers are more proficient in (than Word/Google Docs)
* is stored in clear text, to be easily stored and reviewed in git (namely in Pull Requests)
* has a live preview - it watches for changes to the doc (via :code:`make watch-<format>`) and rebuilds upon file changes
* uses reStructuredText (although easy to swap to others) for an easy yet powerful markup (automatic table of contents, code syntax highlighting, built-in footnotes, etc)
* is decoupled from the output format - several can be produced (via Pandoc or Sphinx)

It's a minimal amount of code ATM, all in the :code:`Makefile`, and is the best documentation.

Usage
-----

* start editing :code:`source/main.rst`
* run :code:`make watch-pdf` (for live-review). See the output in :code:`.build/`
* profit!

Replace pdf by other formats (add them in the :code:`Makefile`)

Requirements
------------

* Linux (MacOS and Windows untested, although you might be able to get it to work via ports of the other requirements)
* `make <https://www.gnu.org/software/make/>`_
* `pandoc <https://pandoc.org/>`_
* `inotify-tools <http://github.com/rvoicilas/inotify-tools/wiki>`_ (for the live preview)

.. target-notes::
