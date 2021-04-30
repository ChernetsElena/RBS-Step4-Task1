--ДОБАВЛЕНИЕ СТОЛБЦА fk_position (внешний ключ)в таблицу partition.t_employees
ALTER TABLE partition.t_employees ADD COLUMN fk_position int REFERENCES partition.ref_positions;

--Заполнение столбца fk_position таблицы partition.t_employees согласно id в таблице partition.ref_positions 
UPDATE partition.t_employees
    SET fk_position = (
        SELECT pk_id 
        FROM partition.ref_positions 
        WHERE partition.ref_positions.c_name = partition.t_employees.c_position
    );

--Добавление ограничения NOT NULL столбцу fk_position таблицы partition.t_employees 
ALTER TABLE partition.t_employees ALTER COLUMN fk_position SET NOT NULL;

--Удаление столбца с_position из таблицы partition.t_employees
ALTER TABLE partition.t_employees DROP COLUMN c_position;