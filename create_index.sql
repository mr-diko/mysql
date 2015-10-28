
CREATE TABLE table2
( 
	id INT NOT NULL AUTO_INCREMENT COMMENT 'Код товара', 
	name VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'Название товара', 
	price FLOAT NOT NULL DEFAULT 0 COMMENT 'Цена товара', 
	PRIMARY KEY (id) 
) COMMENT 'Таблица товаров с первичным ключом';

-- Создание индекса
CREATE INDEX ixName ON table2 (name);
CREATE INDEX ixPrice ON table2 (price);

-- Удаление индекса
DROP INDEX ixPrice ON table2;

DROP TABLE IF EXISTS table6;
CREATE TABLE table6
(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	code CHAR(4) NOT NULL DEFAULT 'AAAA',
	name VARCHAR(50) NOT NULL,
	price FLOAT NOT NULL,
	CONSTRAINT pkId PRIMARY KEY (id),
	CONSTRAINT ixCode UNIQUE KEY (code),
	INDEX ixName (name),
	INDEX ixPrice (price)
)COMMENT 'Таблица товаров с ключом и индексами';

INSERT INTO table6 (code, name, price)
	VALUES( 'AAAA', 'new name', 16.30);
	
DROP TABLE IF EXISTS table6_child;
CREATE TABLE table6_child(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	code CHAR(4) NOT NULL DEFAULT 'AAAA',
	quo FLOAT NOT NULL DEFAULT 0,
	CONSTRAINT pkId PRIMARY KEY (id),
	INDEX ixCode (code),
	CONSTRAINT fkTable5Code FOREIGN KEY (code) REFERENCES table6 (code)
);