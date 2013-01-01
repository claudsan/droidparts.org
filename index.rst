.. _index:

==========
DroidParts
==========

.. sidebar:: (:
   
   .. image:: _static/images/droidparts_logo.*

**DroidParts** is a carefully crafted Android framework that includes:

* *DI* - dependency injection for Views, resources, etc.
* *SQLite* object-relational mapping.
* *JSON* (de)serialization.
* Improved *AsyncTasks* with Exceptions, progress & result reporting.
* Better *logger* (log any object without a tag).
* *RESTClient* for GETting, PUTting, POSTing, DELETing & InputStream-getting,
  also speaks JSON.
* *ImageFetcher* to asynchronously attach images to ImageViews, with caching,
  cross-fade & transformation support.
* Numerous *Utils*.
* Support for *Fragments*: native, support-v4 and
  `ActionBarSherlock <https://github.com/JakeWharton/ActionBarSherlock>`_-backed.

.. admonition:: Note

    Documentation and author's English are work in progress.

First Steps
-----------
.. toctree::
   :maxdepth: 1

   first_steps/introduction
   first_steps/getting_started
  
Dependency Injection
--------------------
.. toctree::
   :maxdepth: 1
   
   parts/di
   
Persistence
-----------
.. toctree::
   :maxdepth: 1

   parts/models
   parts/orm
   parts/adapters
   parts/json
   
Fragments
---------
.. toctree::
   :maxdepth: 1
   
   parts/fragments
   
Other Parts
-----------
.. toctree::
   :maxdepth: 1

   parts/log
   parts/rest
   parts/image_fetcher
   parts/async_tasks
   parts/services
   parts/utils
   
Code & Stuff
------------
* **GitHub**: http://github.com/yanchenko/droidparts
* **StackOverflow**: http://stackoverflow.com/tags/droidparts

Misc
----
* :ref:`genindex`
* :ref:`search`

