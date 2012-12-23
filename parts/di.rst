.. _di:

====================
Dependency Injection
====================

Overview
--------
| DroidParts is capable of injecting Views, resources, system services, etc. out-of-box.
| Custom dependencies are defined in a ``DependencyProvider`` class which is also required for ORM.

DependencyProvider
------------------
DependencyProvider is a subclass of ``AbstractDependencyProvider`` with methods that return injected objects.

The supported method signatures are:

.. code-block:: java

    public CustomObject getCustomObject();
    // and
    public CustomObject getCustomObject(Context ctx);

in the latter case ``Context`` will be the actual one that that requested injection (e.g. an ``Acitvity`` or a ``Fragment``).

There's one special method to be implemented: ``public abstract AbstractDBOpenHelper getDBOpenHelper();``.
    
The newly created class must be specified in ``AndroidManifest.xml``:

.. code-block:: xml

    <application >
            
        <meta-data
            android:name="droidparts_dependency_provider"
            android:value=".DependencyProvider" />
            
    </application>

Annotations
-----------
**droidparts-base**:

* `@InjectBundleExtra` - in ``Activity`` = ``getIntent().getExtras().getXX()``.
* `@InjectDependency` - custom dependency from ``DependencyProvider``.
* `@InjectResource` - String, String[], Drawable from res.
* `@InjectSystemService` = ``getSystemSerice(Context.SERVICE_NAME)``.
* `@InjectView` = ::

    @InjectView(R.id.view_btn)
    Button btnView;

    btnView = (Button)findViewById(R.id.view_btn)

**droidparts-fragments** adds the following capatibilities:

* `@InjectBundleExtra` - in ``Fragment`` = ``getArguments().getXX()``.
* `@InjectFragment` - in ``FragmentActivity``, inject ``Fragment`` listed in xml.
* `@InjectParentActivity` - in ``Fragment``, inject the ``Actvity`` it belongs to.

Injection
---------
Injection happens automatically in classes that extend Activities/Services/Fragments supplied with DroidParts.

To inject manually, call ``Injector.get().inject(...)``. 

