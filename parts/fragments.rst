.. _fragments:

=========
Fragments
=========

Fragments support is a bit tricky as they come in 3 incarnations
with different base classes:

#. Android Support Package aka ``android-support-v4.jar`` [``support``]
#. ActionBarSherlock [``sherlock``]
#. Stock implementation on Android 3.0+ [``stock``]

You have to be careful to extend appropriate Activities & Fragments from **droidparts-fragments**.
They have same names but different package names, last segments of which are specified
in the brackets above.

FragmentActivity
----------------

``setActionBarReloadMenuItem(MenuItem menuItem)`` & ``setActionBarLoadingIndicatorVisible(boolean visible)``

``setFragmentVisible(boolean visible, Fragment... fragments)``

SingleFragmentActivity
----------------------

Base class for Activities with only one Fragment.

TabbedFragmentActivity
----------------------

ActionBar-based tabs navigation with custom animation support.

Notes
-----

By default, **droidparts-fragments** depends on ActionBarSherlock at compile time.
When building an app that requires min API 11+, you can remove this dependency and
link stub classes from ``src-stub`` instead.
