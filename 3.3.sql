--выбрать минимальную, максимальную и среднюю зарплату сотрудников.
--Для минимальной и максимальной зп вывести ФИО сотрудников.
SELECT (c_lastname || ' ' || c_firstname || ' ' || c_middlename) as FIO, c_salary
FROM partition.t_employees
WHERE (c_salary = (SELECT min(c_salary) FROM partition.t_employees)) 
        OR 
      (c_salary = (SELECT max(c_salary) FROM partition.t_employees))
UNION 
SELECT NULL, (avg(c_salary::numeric(4)))::money
FROM partition.t_employees;


--установка ограничения на столбец c_salary. значение должны быть больше 12792
ALTER TABLE partition.t_employees ADD constraint min_salary CHECK (c_salary::numeric >= 12792) ;


--пытаемся добавить строку со значением c_salary меньше 12792
INSERT INTO partition.t_employees (c_lastname, c_firstname, c_middlename, c_salary, c_email, fk_position) 
VALUES
    ('Pott', 
     'Harr', 
     'Jam', 
     6, 
     'pott@gmail.com', 
     (SELECT pk_id FROM partition.ref_positions 
     WHERE partition.ref_positions.c_name = 'wiz')
);