-- SELECT
SELECT * FROM Users;

-- UPDATE
UPDATE Users SET Phone = '09171234500' WHERE UserID = 1;

-- DELETE
DELETE FROM Users WHERE UserID = 10;

-- JOIN (who borrowed which book)
SELECT u.Name, b.Title, br.BorrowDate, br.ReturnDate
FROM Borrowing br
JOIN Users u ON br.UserID = u.UserID
JOIN Books b ON br.BookID = b.BookID;

-- SUBQUERY (users who borrowed books by Dan Brown)
SELECT Name FROM Users
WHERE UserID IN (
    SELECT UserID FROM Borrowing
    WHERE BookID IN (
        SELECT BookID FROM Books WHERE Author = 'Dan Brown'
    )
);