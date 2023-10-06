CREATE PROCEDURE sp_increase_salary_by_id(id INT)
AS
$$
BEGIN
IF 
	(SELECT COUNT(employee_id) FROM employees AS e 
	 WHERE e.employee_id = id) IS NULL THEN ROLLBACK;
ELSE
	UPDATE employees AS e SET salary = salary + salary * 0.05
	WHERE e.employee_id = id;
	END IF;
END;
$$
LANGUAGE plpgsql;