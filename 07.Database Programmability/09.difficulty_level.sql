CREATE OR REPLACE FUNCTION fn_difficulty_level(level INT)
RETURNS  VARCHAR
AS
$$
	DECLARE
		difficulty_level VARCHAR;	
BEGIN
	IF level <= 40 THEN difficulty_level := 'Normal Difficulty';
	ELSIF 
		level < 61 THEN difficulty_level := 'Nightmare Difficulty';
	ELSE
		difficulty_level := 'Hell Difficulty';
END IF;
RETURN difficulty_level;
END
$$
LANGUAGE plpgsql;

SELECT 
	ug.user_id, 
	ug.level, 
	ug.cash, 
	fn_difficulty_level(level)
FROM 
	users_games AS ug
ORDER BY
	ug.user_id