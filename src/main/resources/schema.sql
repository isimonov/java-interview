CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    patronymic VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE user_role (
    user_id INT NOT NULL,
    role VARCHAR NOT NULL,
    PRIMARY KEY (user_id, role),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE author (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT NOT NULL
);

CREATE TABLE book (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    publish_year INT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE genre (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE book_genre (
     book_id INT NOT NULL,
     genre_id INT NOT NULL,
     FOREIGN KEY (book_id) REFERENCES book(id),
     FOREIGN KEY (genre_id) REFERENCES genre(id),
     PRIMARY KEY (book_id, genre_id)
);
