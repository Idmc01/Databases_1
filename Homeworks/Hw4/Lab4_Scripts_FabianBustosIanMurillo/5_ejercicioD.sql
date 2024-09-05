CREATE OR REPLACE FUNCTION getSede (pID IN NUMBER)
RETURN VARCHAR2
IS
    vcSede VARCHAR2(25);
BEGIN
    SELECT campus_name
    INTO vcSede
    FROM Student a
    JOIN career b on a.id_career = b.id_career
    JOIN Campus c on b.id_campus = c.id_campus
    WHERE id_student = pID;
    RETURN (vcSede);
END;

SELECT id_student, getSede(id_student) from student








