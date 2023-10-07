CREATE OR REPLACE FUNCTION fn_full_name(
	first_name VARCHAR(20), 
	last_name VARCHAR(20)
)
RETURNS VARCHAR
AS
$$
DECLARE 
	full_name VARCHAR;
BEGIN
	SELECT INITCAP(first_name) || ' ' || INITCAP(last_name) INTO full_name;
	RETURN full_name;
END;
$$
LANGUAGE plpgsql;