.. _orm:

=========================
Object-Relational Mapping
=========================

Overview
--------
DroidParts takes a traditional DAO approach of having `Entities` + `EntityManagers` (as opposed to `ActiveRecord`).

A couple of things that need to be done in order for this to work:

#. Subclass ``AbstractDBOpenhelper`` & override ``getEntityClasses()`` to return the actual Entities of your app.
#. An ``AbstractDependencyProvider`` subclass that would return ``DBOpenHelper`` created at step 1.


AbstractDBOpenHelper
--------------------
``AbstractDBOpenHelper extends SQLiteOpenHelper`` & provides utility methods.

CRUD
----
See ``EntityManager`` & ``EntityCursorAdapter``.

Advanced Querying
-----------------
Check out ``EntityManager``'s ``select()``, ``update()``, ``delete()`` builders.

Many-to-many
------------
A junction table is required for m2m:

.. code-block:: java

    @Table(name="track_to_tag")
    public class TrackToTag extends Entity {
        @Column(nullable = false)
        public Track track;
        @Column(nullable = false)
        public Tag tag;
    }