DROP TABLE IF EXISTS table2;
CREATE TABLE table2
(
	id INT NOT NULL AUTO_INCREMENT COMMENT 'Код товара',
	name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Название товара',
	price FLOAT NOT NULL DEFAULT 0 COMMENT 'Цена товара',
	PRIMARY KEY (id)
) COMMENT 'Таблица товаров с первичным ключом';

-- Загрузка данных
LOAD DATA
	INFILE '/var/www/html/mysql/data.txt'
	INTO TABLE table2
	FIELDS TERMINATED BY '\t'
	LINES TERMINATED BY '\r\n';