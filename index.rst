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

How cool is DroidParts?
-----------------------

Overview in Code
++++++++++++++++

1. Displays a list of Postings from ``EntityCursorAdapter`` which is backed by ORM. And yes, unlike other ORM solutions, it effectively uses native Cursor.
2. Injects a ``Button`` and sets ``OnClickListener``.
3. Fetches, caches & attaches pics in a single line of code.
4. Serializes Postings to JSON & POSTs the resulting ``JSONArray`` over http.


.. code-block:: java

   public class PostingListFragment extends ListFragment implements
         View.OnClickListener, AlterableContent<Select<Posting>>,
         AsyncTaskResultListener<HTTPResponse> {
   
      private EntityCursorAdapter<Posting> adapter;
   
      @InjectDependency
      private DialogFactory dialogFactory;
   
      @InjectView(id = R.id.btn_submit, click = true)
      private Button submitBtn;
   
      private Select<Posting> select;
   
      @Override
      public void onActivityCreated(Bundle savedInstanceState) {
         super.onActivityCreated(savedInstanceState);
         adapter = new PostingCursorAdapter(getActivity());
         setListAdapter(adapter);
      }
   
      @Override
      public void onClick(View v) {
         if (v == submitBtn) {
            submitPostings();
         }
      }
   
      @Override
      public void setContent(Select<Posting> select) {
         this.select = select;
         adapter.changeData(select);
      }
   
      private void submitPostings() {
         new SubmitPostingsTask(getActivity(), this, select).execute();
      }
   
      @Override
      public void onAsyncTaskSuccess(HTTPResponse resp) {
         dialogFactory.showToast("Response: " + resp.body);
      }
   
      @Override
      public void onAsyncTaskFailure(Exception e) {
         L.w(e);
         dialogFactory.showErrorToast();
      }
   
   }
   
   public class PostingCursorAdapter extends EntityCursorAdapter<Posting> {
   
      public PostingCursorAdapter(Context ctx) {
         super(ctx, Posting.class);
      }
   
      @InjectDependency
      private ImageFetcher imageFetcher;
   
      @Override
      public void bindView(Context context, View view, Posting item) {
         PostingTag tag = (PostingTag) view.getTag();
         tag.titleView.setText(item.title);
         imageFetcher.attachImage(tag.iconView, item.iconUrl);
      }
      
      // ...
   }
   
   public class SubmitPostingsTask extends SimpleAsyncTask<HTTPResponse> {
   
      @InjectDependency
      private RESTClient2 restClient;
   
      private final EntityManager<Posting> entityManager;
      private final JSONSerializer<Posting> jsonSerializer;
   
      private final Select<Posting> select;
   
      public SubmitPostingsTask(Context ctx,
            AsyncTaskResultListener<HTTPResponse> resultListener,
            Select<Posting> select) {
         super(ctx, resultListener);
         entityManager = new EntityManager<Posting>(ctx, Posting.class);
         jsonSerializer = new JSONSerializer<Posting>(ctx, Posting.class);
         this.select = select;
      }
   
      @Override
      protected HTTPResponse executeInBackground() throws Exception {
         ArrayList<Posting> list = entityManager.readAll(select);
         JSONArray arr = jsonSerializer.serialize(list);
         return restClient.post("http://example.com", arr);
      }
   
   }

TL;DR
+++++
DroidParts is awesome.

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

