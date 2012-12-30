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

#. *base* - Core stuff including dependency injection, object-relational
   mapping & AsyncTasks.
#. *extra* - RESTClient, ImageAttacher & minor parts that don't belong to
   *base*.
#. *fragments* - Fragments support for 3 implementations: native (Android
   3.0+), Android Support Package or ActionBarSherlock.
#. *sample* - A couple of sample apps.
#. *test* - Unit tests.

The first 3 are Android library projects a typical app would reference.