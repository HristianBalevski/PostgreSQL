DELETE FROM 
	clients AS c
WHERE 
	LENGTH(full_name) > 3
AND 
	c.id NOT IN (SELECT DISTINCT client_id FROM courses);