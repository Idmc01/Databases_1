CREATE OR REPLACE FUNCTION getCarrera (pID IN NUMBER)
RETURN VARCHAR2
IS
    vcCarrera VARCHAR2(25);
BEGIN
    SELECT career_name
    INTO vcCarrera
    FROM Student a
    JOIN career b on a.id_career = b.id_career
    WHERE id_student = pID;
    RETURN (vcCarrera);
END;

SELECT id_student, getCarrera(id_student) from student



