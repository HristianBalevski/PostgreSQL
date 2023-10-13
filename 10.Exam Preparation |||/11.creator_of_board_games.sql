CREATE OR REPLACE FUNCTION fn_creator_with_board_games (
	given_name VARCHAR(30)
)
RETURNS INT
AS 
$$
BEGIN
	RETURN (
		SELECT
			COUNT(*)
		FROM
			creators AS cr
		JOIN
			creators_board_games AS cbg
		ON
			cr.id = cbg.creator_id
		WHERE
			cr.first_name = given_name
	);
END;
$$
LANGUAGE plpgsql;