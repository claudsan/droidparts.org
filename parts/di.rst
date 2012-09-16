.. _di:

====================
Dependency Injection
====================

Overview
--------
Dependency injection is what saves you keystrokes.
DroidParts is capable of injecting Views, resources, system services, etc. out-of-box.
In order to inject custom dependencies you'll need a ``DependencyProvider``.
Besides that, it's required for ORM.

DependencyProvider
------------------
#. Subclass ``AbstractDependencyProvider``.
#. Specify the newly created class in ``AndroidManifest.xml``:

.. code-block:: xml

    <application >
            
        <meta-data
            android:name="droidparts_dependency_provider"
            android:value=".DependencyProvider" />
            
    </application>

Annotations
-----------
**droidparts-base**:

* `@InjectBundleExtra` - in ``Activity`` = ``getIntent().getExtras().getXX()``
* `@InjectDependency` - custom dependency from ``DependencyProvider``
* `@InjectResource` - String, Drawable, String[] from res.
* `@InjectSystemService` = ``getSystemSerice(Context.SERVICE_NAME)``
* `@InjectView` = ::

    @InjectView(R.id.view_btn)
    Button btnView;

    btnView = (Button)findViewById(R.id.view_btn)

**droidparts-modern** adds the following capatibilities:

* `@InjectBundleExtra` - in ``Fragment`` = ``getArguments().getXX()``
* `@InjectFragment` - in ``FragmentActivity``, inject ``Fragment`` listed in xml
* `@InjectParentActivity` - in ``Fragment``, inject the ``Actvity`` it belongs to.

Injection
---------
Injection happens automatically in classes that extend Activities/Services/Fragments that come with DroidParts.

To inject manually, call ``Injector.get().inject(...)``. 

