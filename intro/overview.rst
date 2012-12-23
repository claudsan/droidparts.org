.. _overview:

========
Overview
========
| Like most of the frameworks, DroidParts started as a bunch of utilities that were copied between projects.  
| Then there was a domain name and no way back.

Modules
-------
After cloning https://github.com/yanchenko/droidparts you'll see the following top-level directories:

#. *base* - Core stuff including dependency injection, object-relational mapping & AsyncTasks.
#. *extra* - RESTClient, ImageAttacher & minor parts that don't belong to *base*.
#. *fragments* - Fragments support for 3 implementations: native (Android 3.0+), Android Support Package or ActionBarSherlock.
#. *sample* - A couple of sample apps.
#. *test* - Unit tests.

| The first 3 are Android library projects a typical app would reference.