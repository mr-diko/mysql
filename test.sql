CREATE TABLE IF NOT EXISTS test_table (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	description TEXT NOT NULL,
	price FLOAT NOT NULL,
	code CHAR(4) NOT NULL DEFAULT 'AAAA',

	CONSTRAINT pkId PRIMARY KEY (id),
	CONSTRAINT ixCode UNIQUE KEY (code)
);

INSERT INTO test_table (name, description, price, code)
	VALUES('Арбуз', 'Сочный, спелый как жопа твоей жены', 1000, 'ABAB');

DROP TABLE IF EXISTS test_table_child;
CREATE TABLE test_table_child (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	code CHAR(4) NOT NULL DEFAULT 'AAAA',
	quo FLOAT NOT NULL DEFAULT 0,

	CONSTRAINT prId PRIMARY KEY (id),
	INDEX ixCode (code),
	CONSTRAINT fkTest_tableCode FOREIGN KEY (code)
		REFERENCES test_table(code)
);

INSERT INTO	test_table_child (code, quo)
	VALUES ('abab', 23.01);