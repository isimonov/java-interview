CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR NOT NULL,
    surname VARCHAR NOT NULL,
    patronymic VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE user_role (
    user_id INTEGER NOT NULL,
    role VARCHAR NOT NULL,
    CONSTRAINT user_role_pkey PRIMARY KEY (user_id, role),
    CONSTRAINT user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES users(id)
);