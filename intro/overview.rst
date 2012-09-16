.. _overview:

========
Overview
========

Like most frameworks, DroidParts started as a bunch of utility files that were copied between projects.
Then there was a domain name and no way back.

Modules
-------
After cloning https://github.com/yanchenko/droidparts you'll see the following top-level directories:

#. *base* - Core stuff including dependency injection, object-relational mapping & AsyncTasks.
#. *extra* - RESTClient, ImageAttacher & minor parts that don't belong to the *base*.
#. *legacy* - Classes that are outdated since Fragments came out.
#. *modern* - Fragments support based on ActionBarSherlock.
#. *sample* - A couple of sample apps
#. *test* - Unit tests.

The first 4 are Android library projects.

So a typical new app would have *base*, *extra* & *modern* (+ ActionBarSherlock) as it's dependencies.
