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
#. *legacy* - Classes that are outdated since Fragments appeared.
#. *modern* - Fragments support based on ActionBarSherlock.
#. *sample* - A couple of sample apps
#. *test* - Unit tests.

The first 4 are Android library projects.
A typical app would have *base*, *extra* & *modern* (+ ActionBarSherlock) parts as dependencies.