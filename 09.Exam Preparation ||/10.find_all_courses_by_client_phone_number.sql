CREATE OR REPLACE FUNCTION fn_courses_by_client (
	current_number VARCHAR(20)
)
RETURNS INT
AS 
$$
BEGIN
	RETURN
		(SELECT
		COUNT(cr.id)
	FROM
		clients AS cl
	JOIN
		courses AS cr
	ON
		cl.id = cr.client_id
	WHERE
		cl.phone_number = current_number);
END;
$$
LANGUAGE plpgsql;