--выбрать ФИО и почту всех сотрудников и клиентов, используя UNION
SELECT c_lastname, c_firstname, c_middlename, c_email 
FROM partition.t_employees
UNION
SELECT c_lastname, c_firstname, c_middlename, c_email 
FROM partition.t_clients;