SELECT 
	p.first_name || ' ' || p.last_name AS full_name,
	p.age,
	p.hire_date
FROM 
	players AS p
WHERE
	p.first_name LIKE 'M%'
ORDER BY
	p.age DESC,
	full_name ASC;