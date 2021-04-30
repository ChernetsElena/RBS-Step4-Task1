COMMENT ON TABLE partition.t_employees IS 'таблица сотрудников';
COMMENT ON TABLE partition.t_clients IS 'таблица клиентов';
COMMENT ON TABLE auth.t_user IS 'таблица пользователей';
COMMENT ON TABLE partition.ref_postiions IS 'справочник должностей';

COMMENT ON COLUMN partition.t_employees.pk_id IS 'уникальный идентификатор сотрудника';
COMMENT ON COLUMN partition.t_employees.fk_position IS 'внешний ключ на должность сотрудника';
COMMENT ON COLUMN partition.t_employees.c_lastname IS 'фамилия сотрудника';
COMMENT ON COLUMN partition.t_employees.c_firstname IS 'имя сотрудника';
COMMENT ON COLUMN partition.t_employees.c_middlename IS 'отчество сотрудника';
COMMENT ON COLUMN partition.t_employees.c_salary IS 'заработная плата сотрудника';
COMMENT ON COLUMN partition.t_employees.c_email IS 'электронная почта';

COMMENT ON COLUMN partition.t_clients.pk_id IS 'уникальный идентификатор клиента';
COMMENT ON COLUMN partition.t_clients.c_lastname IS 'фамилия клиента';
COMMENT ON COLUMN partition.t_clients.c_firstname IS 'имя клиента';
COMMENT ON COLUMN partition.t_clients.c_middlename IS 'отчество клиента';
COMMENT ON COLUMN partition.t_clients.c_email IS 'электронная почта';

COMMENT ON COLUMN auth.t_user.pk_id IS 'уникальный идентификатор пользователя';
COMMENT ON COLUMN auth.t_user.c_login IS 'логин';
COMMENT ON COLUMN auth.t_user.c_password IS 'пароль';
COMMENT ON COLUMN auth.t_user.c_last_in IS 'время последнего входа';

COMMENT ON COLUMN partition.ref_positions.pk_id IS 'уникальный идентификатор должности';
COMMENT ON COLUMN partition.ref_positions.c_name IS 'название должности';