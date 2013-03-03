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

Structure
---------

DroidParts repository contains the following folders:

#. **droidparts** - the library itself.
#. **droidparts-samples** - a couple of sample apps that show DroidParts in action.
#. **droidparts-test** - unit tests.

Sample Apps
-----------

Given the current state of this guide, learning by example makes a lot of sense.

``<sample/DroidPartsGram>`` - an app that utilizes Instagram's API and most of the parts of
DroidParts.

``<sample/droidparts-sample>`` - an older fragments-free sample app.