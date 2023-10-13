SELECT 
	a.name AS animal, 
	EXTRACT(YEAR FROM a.birthdate) AS birth_year,
	at.animal_type
FROM 
	animals AS a
JOIN
	animal_types AS at
ON
	a.animal_type_id = at.id
WHERE 
	a.owner_id IS NULL
AND 
	at.animal_type <> 'Birds'
AND 
	birthdate > DATE '2022-01-01' - INTERVAL '5 years'
ORDER BY 
	a.name ASC;