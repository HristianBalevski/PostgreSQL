SELECT 
	o.name || ' - ' || a.name AS "Owners - Animals",
	o.phone_number AS "Phone Number",
	c.id
FROM
	owners AS o
JOIN
	animals AS a 
ON	
	o.id = a.owner_id
JOIN
	animal_types AS at 
ON	
	a.animal_type_id = at.id
JOIN
	animals_cages AS ac
ON
	ac.animal_id = a.id
JOIN
	cages as c
ON
	c.id = ac.cage_id
WHERE
	at.animal_type = 'Mammals'
ORDER BY
	o.name,
	a.name DESC