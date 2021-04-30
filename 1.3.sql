INSERT INTO partition.t_employees (c_lastname, c_firstname, c_middlename, c_salary, c_email, c_position) VALUES
    ('Potter', 'Harry', 'James', 9.99, 'potter@gmail.com', 'wizard'),
    ('Granger', 'Hermione', 'Jean', 34, 'granger@mail.ru', 'wizard'),
    ('Weasley', 'Ronald', 'Billius', 150, 'wisley@gmail.com', 'wizard');


INSERT INTO partition.t_clients (c_lastname, c_firstname, c_middlename, c_email) VALUES
    ('Иванов', 'Иван', 'Иванович', 'ivanov@gmail.com'),
    ('Петров', 'Петр', 'Петрович', 'petrov@mail.ru'),
    ('Сидоров', 'Сидр', 'Сидорович', 'sidorov@gmail.com');


INSERT INTO auth.t_user (c_login, c_password, c_last_in) VALUES
    ('ivanov@gmail.com', '\xAEADBEEF', '2020-04-21 10:23:54'),
    ('petrov@mail.ru', '\xDD78BEEF', '20021-01-22 15:03:52'),
    ('sidorov@gmail.com', '\xDD89BEE9', '2021-03-19 09:48:14');