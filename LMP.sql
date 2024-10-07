CREATE TABLE IF NOT EXISTS LIBRARIANS(
LIBRARIAN_ID INTEGER PRIMARY KEY,
NAME TEXT,
PHONE_NUM TEXT,
ADDRESS TEXT,
SHIFT_TIMING TEXT
);

INSERT INTO LIBRARIANS (LIBRARIAN_ID, NAME, PHONE_NUM, ADDRESS, SHIFT_TIMING) VALUES
(15432, 'Ayaan Toorabally', '59871234', 'Port Louis', 'Morning'),
(27345, 'Sara Ramgoolam', '59224567', 'Curepipe', 'Afternoon'),
(39874, 'Nisha Dulloo', '59123456', 'Quatre Bornes', 'Evening'),
(46239, 'Rohan Meunier', '59331212', 'Beau Bassin', 'Morning'),
(52167, 'Amira Bhoyroo', '59041234', 'Rose Hill', 'Afternoon'),
(63421, 'Kiran Seetaram', '59874532', 'Vacoas', 'Evening'),
(75892, 'Maya Sobhee', '59678451', 'Flic en Flac', 'Morning'),
(81234, 'Anil Ramdin', '59456789', 'Goodlands', 'Afternoon'),
(94576, 'Farah Aumeerally', '59239812', 'Phoenix', 'Evening'),
(10234, 'Ishaan Kowlessur', '59897654', 'Bel Air', 'Morning'),
(11457, 'Leila Jhugroo', '59567843', 'Moka', 'Afternoon'),
(12893, 'Sanjay Mootoosamy', '59782345', 'Pamplemousses', 'Evening'),
(13945, 'Priya Beeharry', '59904321', 'Riviere du Rempart', 'Morning'),
(14786, 'Naveed Jeetoo', '59123487', 'Tamarin', 'Afternoon'),
(15879, 'Divya Ramphul', '59214325', 'Flacq', 'Evening');

CREATE TABLE IF NOT EXISTS CUSTOMERS(
CUST_ID INTEGER PRIMARY KEY,
CUST_NAME TEXT,
BOOK_BORROWED TEXT,
DATE_BORROWED TEXT,
DATE_RETURNED TEXT,
LIBRARIAN_ID INTEGER,
FOREIGN KEY (LIBRARIAN_ID) REFERENCES LIBRARIANS (LIBRARIAN_ID)
);

INSERT INTO CUSTOMERS (CUST_ID, CUST_NAME, BOOK_BORROWED, DATE_BORROWED, DATE_RETURNED, LIBRARIAN_ID) VALUES
(23578, 'Emily Wong', 'The Alchemist', '2024-09-01', '2024-09-15', 15432),
(35841, 'Rahul Singh', 'To Kill a Mockingbird', '2024-09-03', '2024-09-18', 27345),
(42956, 'Aisha Patel', '1984', '2024-09-05', '2024-09-20', 39874),
(50123, 'John Doe', 'Moby Dick', '2024-09-07', '2024-09-22', 46239),
(61235, 'Sophie Ravel', 'Pride and Prejudice', '2024-09-10', '2024-09-25', 52167),
(74562, 'David Li', 'The Great Gatsby', '2024-09-12', '2024-09-27', 63421),
(85324, 'Nina Rodrigues', 'The Catcher in the Rye', '2024-09-15', '2024-09-30', 75892),
(96431, 'Tom Hanks', 'War and Peace', '2024-09-17', '2024-10-02', 81234),
(10562, 'Lina Martinez', 'Brave New World', '2024-09-19', '2024-10-04', 94576),
(11834, 'Carlos Rivera', 'Jane Eyre', '2024-09-21', '2024-10-06', 10234),
(12975, 'Fatima Rashid', 'Frankenstein', '2024-09-23', '2024-10-08', 11457),
(13459, 'Mohammed Ali', 'The Odyssey', '2024-09-25', '2024-10-10', 12893),
(14763, 'Alice Ng', 'The Iliad', '2024-09-27', '2024-10-12', 13945),
(15328, 'Joshua Koo', 'Les Misérables', '2024-09-29', '2024-10-14', 14786),
(16734, 'Maria Chen', 'Crime and Punishment', '2024-10-01', '2024-10-16', 15879),
(17489, 'Lucas Brown', 'The Brothers Karamazov', '2024-10-03', '2024-10-18', 15432),
(18354, 'Amelia Thompson', 'Great Expectations', '2024-10-05', '2024-10-20', 27345),
(19475, 'Oliver Smith', 'Anna Karenina', '2024-10-07', '2024-10-22', 39874),
(20684, 'Sophia Martin', 'The Count of Monte Cristo', '2024-10-09', '2024-10-24', 46239),
(21953, 'James Garcia', 'Wuthering Heights', '2024-10-11', '2024-10-26', 52167);

SELECT * FROM LIBRARIANS;

SELECT CUST_ID, CUST_NAME, BOOK_BORROWED, DATE_BORROWED, DATE_RETURNED FROM CUSTOMERS
WHERE LIBRARIAN_ID = 12893