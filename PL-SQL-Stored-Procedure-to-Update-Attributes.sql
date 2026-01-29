CREATE OR REPLACE PROCEDURE increase_salary (
    p_emp_id     IN NUMBER,
    p_increment  IN NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = salary + p_increment
    WHERE emp_id = p_emp_id;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END increase_salary;
/
