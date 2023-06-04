
CREATE INDEX idx_school_name ON school (name);


CREATE INDEX idx_username ON users(username);
CREATE INDEX idx_email ON users(email);


CREATE INDEX idx_school_admin_id ON school (school_admin_id);


CREATE INDEX idx_admin_school_id ON school_admin (school_id);

CREATE INDEX idx_simple_user_name ON simple_user (name);
CREATE INDEX idx_simple_user_surname ON simple_user (surname);
CREATE INDEX idx_user_school_id ON simple_user (school_id);


CREATE INDEX idx_book_title ON book (title);

CREATE INDEX idx_book_school_id ON library_book (school_id);
CREATE INDEX idx_book_isbn ON library_book (isbn);


CREATE INDEX idx_book_author_name_surname ON book_author (name, surname);
CREATE INDEX idx_book_author_isbn ON book_author (isbn);

CREATE INDEX idx_book_category_isbn ON book_category(isbn);


CREATE INDEX idx_borrow_user_id ON borrow (user_id);
CREATE INDEX idx_borrow_admin_id ON borrow(admin_id);
CREATE INDEX idx_borrow_isbn_id ON borrow(isbn);
CREATE INDEX idx_borrow_date ON borrow(borrow_date);

CREATE INDEX idx_reservation_user_id ON reservation (user_id);

CREATE INDEX idx_review_user_id ON review (user_id);

