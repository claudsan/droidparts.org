.. _log:

=======
Logging
=======

Overview
--------
``L`` is used for logging without tags.

.. code-block:: java

    L.i("Important Message");
     
results in the following ``LogCat`` output in development mode::

     EntityTestCase.testUniqueAndNull():50 Important Message


In production mode (a signed .apk) the tag will be the package name.

Configuration
-------------
In debug mode all output is logged.
Loglevel for production is configured in ``AndroidManifest.xml``:

.. code-block:: xml

    <application >
            
        <meta-data
            android:name="droidparts_log_level"
            android:value="warn" />
            
    </application>
    
Available loglevels:

* **disable**
* **verbose**
* **debug**
* **info**
* **warn**
* **error**
* **assert**

By default all log output is stripped.