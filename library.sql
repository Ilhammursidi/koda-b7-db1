CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE bookshelf (
    id SERIAL PRIMARY KEY,
    rack_number INT UNIQUE NOT NULL
);

CREATE TABLE librarian (
    id SERIAl PRIMARY KEY,
    librarian_name VARCHAR(100) UNIQUE NOT NULL
);   

CREATE TABLE borrower (
    id SERIAL PRIMARY KEY,
    borrower_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE book (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    author VARCHAR(100) NOT NULL,
    publisher VARCHAR(100) NOT NULL,
    book_category VARCHAR(100) NOT NULL,
    rack_number INT NOT NULL,
    FOREIGN KEY (rack_number) REFERENCES bookshelf(rack_number)
);    

CREATE TABLE book_lending (
    id SERIAL PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    borrower_name VARCHAR(255) NOT NULL,
    librarian_name VARCHAR(255) NOT NULL,
    borrowing_date TIMESTAMP NOT NULL,
    return_date TIMESTAMP,
    FOREIGN KEY (book_title) REFERENCES book(title),
    FOREIGN KEY (librarian_name) REFERENCES librarian(librarian_name),
    FOREIGN KEY (borrower_name) REFERENCES borrower(borrower_name)
);

INSERT INTO category (category_name) VALUES 
('Fiksi Sastra'),('Romansa'),('Fantasi'),('Thriller'),('Self-Improvement');

INSERT INTO bookshelf (rack_number) VALUES (1),(2),(3),(4),(5)

INSERT INTO librarian (librarian_name) VALUES ('Siti'),('Budi');

INSERT INTO borrower (borrower_name) VALUES ('Andi'),('Rina'),('Dewi'),('Agus'),('Sari');

INSERT INTO book_lending (book_title, borrower_name, librarian_name, borrowing_date, return_date) VALUES
('Laut Bercerita', 'Andi', 'Siti', '2024-06-01 10:00:00', NULL),
('Gadis Kretek', 'Rina', 'Budi', '2024-06-02 14:30:00', NULL),
('The Architecture of Love', 'Dewi', 'Siti', '2024-06-03 09:15:00', NULL),
('Home Sweet Loan', 'Agus', 'Budi', '2024-06-04 16:45:00', NULL),
('Aroma Karsa', 'Sari', 'Siti', '2024-06-05 11:20:00', NULL);

INSERT INTO book (title, author, publisher, book_category, rack_number) VALUES
('Laut Bercerita', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia', 'Fiksi Sastra', 1),
('Gadis Kretek', 'Ratih Kumala', 'Gramedia Pustaka Utama', 'Fiksi Sastra', 1),

('The Architecture of Love', 'Ika Natassa', 'Gramedia Pustaka Utama', 'Romansa', 2),
('Home Sweet Loan', 'Almira Bastari', 'Gramedia Pustaka Utama', 'Romansa', 2),

('Aroma Karsa', 'Dee Lestari', 'Bentang Pustaka', 'Fantasi', 3),
('Bumi (Seri Dunia Paralel)', 'Tere Liye', 'Gramedia Pustaka Utama', 'Fantasi', 3),

('Jurnal Risa: Teror Liburan Sekolah', 'Risa Saraswati', 'Bukune', 'Thriller', 4),
('Katarsis', 'Anastasia Aemilia', 'Gramedia Pustaka Utama', 'Thriller', 4),

('Filosofi Teras', 'Henry Manampiring', 'Kompas Penerbit Buku', 'Self-Improvement', 5),
('Berani Tidak Disukai', 'Ichiro Kishimi & Fumitake Koga', 'Gramedia Pustaka Utama', 'Self-Improvement', 5);

table book;