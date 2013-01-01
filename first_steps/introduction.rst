.. _introduction:

============
Introduction
============

Android is a joyful platform to develop for. Still, some repetitive tasks like
SQLite interactions or performing POJO <=> JSON conversions or
``findingViewsById`` each time casting them to actual ``View`` subclasses are
not much fun. Eventually you end up with a number of helper classes that are
copied from project to project. That's how DroidParts started. Then there was a
domain name and no way back.

Modules
-------

DroidParts is split into several modules that reside in the following folders:

#. **base** - core stuff including dependency injection, object-relational
   mapping, JSON serialization & AsyncTasks.
#. **extra** - RESTClient, ImageFetcher & helpers that don't belong to the
   *base*.
#. **fragments** - Fragments support with 3 implementations: native (Android
   3.0+), Android Support Package & ActionBarSherlock.
#. **sample** - a couple of sample apps that show DroidParts in action.
#. **test** - unit tests.

The first 3 are Android library projects and you'll probably use all of them.