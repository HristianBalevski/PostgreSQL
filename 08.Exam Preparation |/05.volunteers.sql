SELECT 
	v.name,
	v.phone_number,
	v.address,
	v.animal_id,
	v.department_id
FROM 
	volunteers AS v
LEFT JOIN
	animals AS a
ON
	v.animal_id = a.id
LEFT JOIN
	volunteers_departments AS vd
ON
	vd.id = v.department_id
ORDER BY
	v.name,
	v.animal_id,
	v.department_id