#DatabaseExisting
This repository is a storage place for the items needed to rebuild the DB.   The ultimate goals for this project are as follows

1. Understand the existing production DB

2. Prune uneeded tables

3. reschema the tables that are needed so that the new schema will conform to the Laravel conventions.  These conventions include but are not limited to the following
  * All primary keys should be named id instead of <tablename>_id.   This will cause the pivot table functionality to fail
  * Foreign keys need to be mapped out before Laravel migrations are written

4.Create a set of ETL jobs that import the current production data into the new schema.

5. Import existing data into new schema.   We have our new DB


