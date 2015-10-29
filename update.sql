CREATE TABLE table2
( 
	id INT NOT NULL AUTO_INCREMENT COMMENT 'Код товара', 
	name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Название товара', 
	price FLOAT NOT NULL DEFAULT 0 COMMENT 'Цена товара', 
	PRIMARY KEY (id) ) 
COMMENT 'Таблица товаров с первичным ключом';

UPDATE table2
	SET
	name = CONCAT(name, ' *'),
	price = price * 1.5
	WHERE id BETWEEN 10 AND 30;