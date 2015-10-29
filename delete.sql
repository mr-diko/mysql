DELETE FROM table2
	WHERE id = 1;

-- Удаление последней записи
DELETE FROM table2
	ORDER BY id DESC
	LIMIT 1;