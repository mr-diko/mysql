
CREATE TABLE table2
( 
	id INT NOT NULL AUTO_INCREMENT COMMENT 'Код товара', 
	name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Название товара', 
	price FLOAT NOT NULL DEFAULT 0 COMMENT 'Цена товара', 
	PRIMARY KEY (id) ) 
COMMENT 'Таблица товаров с первичным ключом';

-- Создание таблицы по образцу
CREATE TABLE table3 LIKE table2;

-- Создание таблицы на основе запроса 
CREATE TABLE table4 
	SELECT user, host, password
	FROM mysql.user;

-- Создание временной таблицы на основе запроса
CREATE TEMPORARY TABLE temp_table
	SELECT user, host, password
	FROM mysql.user;
