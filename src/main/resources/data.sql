INSERT INTO users (id, name, surname, patronymic, password) VALUES
    (1, 'Ivan', 'Ivanov', 'Ivanovich', '123'),
    (2, 'Petr', 'Petrov', 'Petrovich', '234'),
    (3, 'Sidor', 'Sidorov', 'Sidorovich', '345'),
    (4, 'Alex', 'Alexeev', 'Alexeevich', '456');

INSERT INTO user_role (user_id, role) VALUES
    (1, 'ROLE_ADMIN'),
    (2, 'ROLE_MANAGER'),
    (3, 'ROLE_USER'),
    (4, 'ROLE_USER');