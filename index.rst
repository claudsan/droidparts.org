.. _index:

==========
DroidParts
==========
.. sidebar:: logo
   
   .. image:: _static/images/droidparts_logo.*

.. rubric:: Android framework that saves keystrokes.

.. admonition:: Note

    Documentation and the author's English are work in progress.

**DroidParts** is a carefully crafted Android framework that includes:

* *DI* - dependency injection for Views, resources, etc.
* *SQLite* object-relational mapping.
* *JSON* (de)serialization.
* Improved *AsyncTasks* with Exceptions, progress & result reporting.
* Better *logger* (log any object without a tag).
* *RESTClient* for GETting, PUTting, POSTing, DELETing & InputStream-getting,
  also speaks JSON.
* *ImageAttacher* to asynchronously attach images to ImageViews, cross fade
  support.
* Numerous *Utils*.
* Support for *Fragments*, both native and
  `ActionBarSherlock <https://github.com/JakeWharton/ActionBarSherlock>`_-based.

Getting Started
---------------
.. toctree::
   :maxdepth: 1

   intro/introduction
   intro/getting_started
   intro/sample_apps
  
Parts
-----
.. toctree::
   :maxdepth: 1
   
   parts/di
   parts/models
   parts/orm
   parts/log
   parts/adapters
   parts/async_tasks
   parts/json
   parts/rest
   parts/services
   parts/utils
   parts/fragments
   
Code & Stuff
------------
* **GitHub**: http://github.com/yanchenko/droidparts
* **StackOverflow**: http://stackoverflow.com/tags/droidparts

Misc
----
* :ref:`genindex`
* :ref:`search`

