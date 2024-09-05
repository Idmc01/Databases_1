CREATE OR REPLACE FUNCTION getCorreo (pID IN NUMBER)
RETURN VARCHAR2
IS
    vcEmail VARCHAR2(25);
BEGIN
    SELECT email
    INTO vcEmail
    FROM Student
    WHERE id_student = pID;
    RETURN (vcEmail);
END;

SELECT id_student, getCorreo(id_student) from student