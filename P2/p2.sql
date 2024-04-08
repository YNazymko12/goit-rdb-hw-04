INSERT INTO authors (author_id, author_name)
VALUES (1, "J.K. Rowling"), (2, "Paulo Coelho"), (3, "Napoleon Hill");

INSERT INTO genres (genre_id, genre_name)
VALUES (1, "Fantasy"), (2, "Quest, adventure, fantasy"), (3, "Non-fiction");

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES 
("Harry Potter and the Philosopher's Stone", 1997, 1, 1), 
("The Alchemist", 1988, 2, 2), 
("Think and Grow Rich", 1937, 3, 3);

INSERT INTO users (username, email)
VALUES 
("Yuliia", "yiliianaz@gmail.com"),
("Roman", "roman18@gmail.com");

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
(1, 1, "2024-03-08", "2024-04-08"),
(2, 2, "2024-03-05", "2024-04-05"),
(3, 2, "2024-03-05", "2024-04-05");