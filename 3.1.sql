-- выбрать всех сотрудников с их должностью, используя JOIN
SELECT c_lastname, c_firstname, c_middlename, c_name 
FROM partition.t_employees JOIN partition.ref_positions
ON partition.t_employees.fk_position = partition.ref_positions.pk_id;