CREATE OR REPLACE FUNCTION fn_is_word_comprised(
    set_of_letters VARCHAR(50),
    word VARCHAR(50)
)
RETURNS BOOLEAN
AS
$$
DECLARE
    normalized_set VARCHAR(50);
    normalized_word VARCHAR(50);
BEGIN
    normalized_set := LOWER(TRANSLATE(set_of_letters, ' ', ''));
    normalized_word := LOWER(TRANSLATE(word, ' ', ''));

    FOR i IN 1..LENGTH(normalized_word) LOOP
        IF POSITION(SUBSTRING(normalized_word FROM i FOR 1) IN normalized_set) = 0 THEN
            RETURN FALSE;
        END IF;
    END LOOP;

    RETURN TRUE;
END;
$$
LANGUAGE plpgsql;