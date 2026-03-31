-- Users
INSERT INTO Users (Name, Email, Phone, MembershipDate) VALUES
('Juan Dela Cruz', 'juan@email.com', '09171234567', '2023-01-15'),
('Maria Santos', 'maria@email.com', '09179876543', '2023-02-10'),
('Pedro Reyes', 'pedro@email.com', '09172345678', '2023-03-05'),
('Ana Lopez', 'ana@email.com', '09173456789', '2023-03-20'),
('Luis Gomez', 'luis@email.com', '09174567890', '2023-04-01'),
('Clara Cruz', 'clara@email.com', '09175678901', '2023-04-15'),
('Ramon Diaz', 'ramon@email.com', '09176789012', '2023-04-20'),
('Sofia Ramos', 'sofia@email.com', '09177890123', '2023-05-01'),
('Miguel Tan', 'miguel@email.com', '09178901234', '2023-05-10'),
('Liza Moreno', 'liza@email.com', '09179012345', '2023-05-15');

-- Books
INSERT INTO Books (Title, Author, Genre, PublishedYear) VALUES
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy', 1997),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937),
('1984', 'George Orwell', 'Dystopian', 1949),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925),
('Moby Dick', 'Herman Melville', 'Adventure', 1851),
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951),
('The Da Vinci Code', 'Dan Brown', 'Mystery', 2003),
('Angels & Demons', 'Dan Brown', 'Mystery', 2000);

-- Borrowing
INSERT INTO Borrowing (UserID, BookID, BorrowDate, ReturnDate) VALUES
(1,1,'2023-03-01','2023-03-10'),
(2,2,'2023-03-05','2023-03-15'),
(3,3,'2023-03-07','2023-03-17'),
(4,4,'2023-03-10','2023-03-20'),
(5,5,'2023-03-12','2023-03-22'),
(6,6,'2023-03-15','2023-03-25'),
(7,7,'2023-03-18','2023-03-28'),
(8,8,'2023-03-20','2023-03-30'),
(9,9,'2023-03-22','2023-04-01'),
(10,10,'2023-03-25','2023-04-05');

-- Staff
INSERT INTO Staff (Name, Position, Email, HireDate) VALUES
('Carlos Reyes', 'Librarian', 'carlos@email.com', '2020-01-10'),
('Gloria Santos', 'Assistant Librarian', 'gloria@email.com', '2021-05-20'),
('Marco Lopez', 'Clerk', 'marco@email.com', '2022-03-15'),
('Elena Cruz', 'Technician', 'elena@email.com', '2019-11-05'),
('Rafael Gomez', 'Manager', 'rafael@email.com', '2018-07-12'),
('Samantha Tan', 'Librarian', 'samantha@email.com', '2021-09-30'),
('Daniel Diaz', 'Clerk', 'daniel@email.com', '2022-01-25'),
('Isabel Ramos', 'Assistant Librarian', 'isabel@email.com', '2020-12-15'),
('Victor Moreno', 'Technician', 'victor@email.com', '2019-08-20'),
('Lara Lopez', 'Manager', 'lara@email.com', '2017-04-01');