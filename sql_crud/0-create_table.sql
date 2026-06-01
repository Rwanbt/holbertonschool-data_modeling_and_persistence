CREATE TABLE book (
    id INTEGER PRIMARY Key AUTOINCREMENT,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT,
    price REAL NOT NULL,
    stock INTEGER NOT NULL,
    published_year INTEGER
);
