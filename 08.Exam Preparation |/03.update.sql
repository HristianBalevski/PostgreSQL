UPDATE 
	animals
SET 
	owner_id = (
		SELECT 
			id
		FROM
			owners AS o
		WHERE
			o.name = 'Kaloqn Stoqnov'
	)
	WHERE
		owner_id IS NULL