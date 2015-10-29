USE module3;

DROP TABLE IF EXISTS table2;
CREATE TABLE table2
(
	id INT NOT NULL AUTO_INCREMENT COMMENT 'Код товара',
	name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Название товара',
	price FLOAT NOT NULL DEFAULT 0 COMMENT 'Цена товара',
	PRIMARY KEY (id)
) COMMENT 'Таблица товаров с первичным ключом';

INSERT INTO table2
	VALUES (10, 'Товар', 22.01);

INSERT INTO table2
	VALUES (NULL, 'Товар', 22.01);

INSERT INTO table2 (name, price)VALUES
	 ( 'Товар 1', 22.01),
	 ( 'Товар 2', 21.01),
	 ( 'Товар 3', 223.04),
	 ( 'Товар 4', 201.01),
	 ( 'Товар 5', 22.01);
-- Вставка данных с игнорированием конфликтующих рядов
INSERT IGNORE INTO table2 VALUES
	 ( 16, 'Товар 1', 22.01),
	 ( 17, 'Товар 2', 21.01),
	 ( 18, 'Товар 3', 223.04),
	 ( 19, 'Товар 4', 201.01),
	 ( 20, 'Товар 5', 22.01);

INSERT INTO table2 (name, price)
	SELECT user, 123 as price
	FROM mysql.user;

-- Отключение индексов (Для движка MyISAM)
ALTER TABLE table2 DISABLE KEYS;

-- Производим добавление записей
INSERT IGNORE INTO table2 VALUES
	 ( 16, 'Товар 1', 22.01),
	 ( 17, 'Товар 2', 21.01),
	 ( 18, 'Товар 3', 223.04),
	 ( 19, 'Товар 4', 201.01),
	 ( 20, 'Товар 5', 22.01);
-- Включаем индексы (Для движка MyISAM)
ALTER TABLE table2 ENABLE KEYS;