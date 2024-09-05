CREATE OR REPLACE Procedure insertPerson
(pcFirstName IN VARCHAR2,pcSecondName IN VARCHAR2, pcFirstSurname IN VARCHAR2, pcSeconSurname IN VARCHAR2, pcBirthDate IN DATE)
AS
BEGIN
    INSERT INTO person(idPerson, firstName, secondName, firstSurname, secondSurname, birthDate)
    VALUES (person_seq.NEXTVAL, pcFirstName, pcSecondName, pcFirstSurname, pcSeconSurname, pcBirthDate);
    COMMIT;
END insertPerson;

CREATE OR REPLACE PACKAGE createPerson IS
PROCEDURE insertPerson(pcFirstName VARCHAR2,pcSecondName VARCHAR2, pcFirstSurname VARCHAR2, pcSeconSurname VARCHAR2, pcBirthDate DATE);
END createPerson;

CREATE OR REPLACE PACKAGE BODY createPerson
AS
Procedure insertPerson
(pcFirstName IN VARCHAR2,pcSecondName IN VARCHAR2, pcFirstSurname IN VARCHAR2, pcSeconSurname IN VARCHAR2, pcBirthDate IN DATE)
AS
BEGIN
    INSERT INTO person(idPerson, firstName, secondName, firstSurname, secondSurname, birthDate)
    VALUES (person_seq.NEXTVAL, pcFirstName, pcSecondName, pcFirstSurname, pcSeconSurname, pcBirthDate);
    COMMIT;
END;
END createPerson;

BEGIN
createPerson.insertPerson('a','b','C','d',TO_DATE('1985-06-12','YYYY-MM-DD'));

END;

