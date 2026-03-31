# Indexing Test

## Before Index
Query:
SELECT * FROM Members WHERE Name LIKE 'J%';

Result:
Slower because database scans all rows.

## After Index
CREATE INDEX idx_name ON Members(Name);

Result:
Faster because database uses index.

## What Changed?

Before adding the index, the database performed a full table scan, meaning every row in the Users table was checked to find matches for the condition.

After creating the index on the Name column, the database used the index to locate matching records more efficiently instead of scanning the entire table.

Using the EXPLAIN command:

Before indexing:
type = ALL, key = NULL → full scan of the table
After indexing:
type = range, key = idx_name → optimized search using index

## Why Is It Faster?

Indexes improve performance by organizing data in a structured way (usually a B-tree), allowing the database to quickly narrow down results.

The database no longer checks every row
Only relevant rows are accessed
Searching becomes more efficient as data grows

Instead of checking records one by one, the system follows a faster lookup path to retrieve results.

## Why Indexing Is Important

It Improves Query Speed, Queries run significantly faster, especially with large datasets. Efficient Searching Helps quickly find data based on specific columns. Better Performance at Scale,Maintains fast performance even as the database grows. Optimized Resource Usage, Reduces unnecessary processing and workload on the system