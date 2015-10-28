
-- Список таблиц указаной БД
SELECT table_name, table_comment
FROM information_schema.tables
	WHERE table_schema = 'DB_name';

-- Спецификация колонок для таблицы table_name БД db_name
SELECT column_name, data_type, column_comment
	FROM information_schema.columns
	WHERE table_schema = 'db_name'
	AND table_name = 'table_name';

-- Список БД
SELECT * 
	FROM information_schema.schemata \G