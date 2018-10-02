# DBIx::Class schema with utc_now

This is a test using DBIx::Class and adding methods to
handle dates in a database-agnostic manner.

[DBIx::Class::Helper::ResultSet::DateMethods1](https://metacpan.org/pod/DBIx::Class::Helper::ResultSet::DateMethods1) can be added to the resultset and offers a number of date methods including utc_now

This test script creates a SQLite database and inserts records into the `tests` table with a `test_id` and `test_date`. The `test_id` is an auto-incrementing value and the `test_date` should always be the current date/time in UTC.
