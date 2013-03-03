.. _getting_started:

===============
Getting Started
===============

Adding DroidParts to your own app is easy.

#. Clone the sources from ``https://github.com/yanchenko/droidparts.git``. The suggested branch is ``master`` as it contains the latest release.
#. Import the existing Eclipse projects.
#. ActionBarSherlock is required at compile time. To avoid this, use droidparts.jar. (TODO)
#. Add dependencies to your project.
#. Configure ``AdnroidManifest.xml``
#. Subclass Application.
#. Subclass AbstractDependencyProvider.
#. Proguard

AndroidManifest.xml Options
---------------------------

:doc:`Dependency Injection </parts/di>` & :doc:`Logging </parts/log>` have
options configurable via `AndroidManifest.xml`. The first one must be
configured.