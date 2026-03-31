Normalization of Library Management System
UNF (Unnormalized Form)

All data in a single table with repeating groups:

MemberID	Name	Email	BooksBorrowed (repeating)	BorrowDates (repeating)
1	Juan Dela Cruz	juan@email.com
	Noli Me Tangere, Harry Potter	2026-03-01, 2026-03-05

Problems:

Repeating groups make querying hard.
Data redundancy (same member info repeated).
Update anomalies if a book or member detail changes.
1NF (First Normal Form)

Eliminate repeating groups – one row per borrowed book:

MemberID	Name	Email	BookTitle	BorrowDate
1	Juan Dela Cruz	juan@email.com
	Noli Me Tangere	2026-03-01
1	Juan Dela Cruz	juan@email.com
	Harry Potter	2026-03-05

Improvement:

Each column contains atomic values.
No repeating groups.

Remaining issue:

Partial dependency: Member details (Name, Email) depend only on MemberID, not on BookTitle or BorrowDate.
2NF (Second Normal Form)

Remove partial dependency by splitting into Members and BorrowRecords tables:

Members

MemberID	Name	Email
1	Juan Dela Cruz	juan@email.com

BorrowRecords

MemberID	BookTitle	BorrowDate
1	Noli Me Tangere	2026-03-01
1	Harry Potter	2026-03-05

Improvement:

Member information stored once.

Remaining issue:

Transitive dependency: BookTitle depends on BookID, but no separate Books table.
3NF (Third Normal Form)

Introduce Books and Authors tables to remove transitive dependency:

Authors

AuthorID	Name
1	Jose Rizal
2	J.K. Rowling

Books

BookID	Title	AuthorID
1	Noli Me Tangere	1
2	Harry Potter	2

Members

MemberID	Name	Email
1	Juan Dela Cruz	juan@email.com

BorrowRecords

BorrowID	MemberID	BookID	BorrowDate
1	1	1	2026-03-01
2	1	2	2026-03-05