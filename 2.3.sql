
--Заполнение таблицы partition.ref_positions должностями
INSERT INTO partition.ref_positions (c_name) 
SELECT DISTINCT c_position FROM partition.t_employees;
