CREATE OR REPLACE FUNCTION getNombre (pCarnet IN NUMBER)
RETURN VARCHAR2
IS
    vcName VARCHAR2(25);
BEGIN
    SELECT first_name||' '||first_surname
    INTO vcName
    FROM Student
    WHERE student_id = pCarnet;
    RETURN (vcName);
END;

SELECT student_id,getnombre(student_id) from student