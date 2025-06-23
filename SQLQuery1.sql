
CREATE DATABASE LMS;



USE LMS;


CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title VARCHAR(150) NOT NULL,
    Genre VARCHAR(50),
    PublishedYear INT,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);



CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    JoinDate DATE
);


CREATE TABLE BorrowRecords (
    RecordID INT PRIMARY KEY IDENTITY(1,1),
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);



INSERT INTO Authors (Name)
VALUES ('J.K. Rowling'), ('George Orwell'), ('Chetan Bhagat');

INSERT INTO Books (Title, Genre, PublishedYear, AuthorID)
VALUES 
('Harry Potter', 'Fantasy', 1997, 1),
('1984', 'Dystopian', 1949, 2),
('2 States', 'Romance', 2009, 3);
INSERT INTO Members (FullName, Email, JoinDate)
VALUES 
    ('Keerthi Guvvada', 'keerthi@example.com', '2023-01-01'),
    ('John Doe', 'john@example.com', '2022-11-20');


INSERT INTO BorrowRecords (BookID, MemberID, BorrowDate, ReturnDate)
VALUES 
(1, 1, '2024-06-01', '2024-06-15'),
(2, 2, '2024-06-10', NULL);


