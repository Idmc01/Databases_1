CREATE OR REPLACE PROCEDURE getNumber(pnIdPerson IN NUMBER, pnPhoneType IN NUMBER)
AS
vnNumber NUMBER;
vnPhoneType NUMBER;
vcPhoneNumber NUMBER;

CURSOR numberCursor
IS
    SELECT idPerson, Idphonetype, phoneNumber
    FROM Phone
    WHERE idPerson = NVL(pnIdPerson, idPerson)and idPhoneType = NVL(pnPhoneType,idPhoneType);
    
BEGIN
    OPEN numberCursor ;
    LOOP
        FETCH numberCursor INTO vnNumber,vnPhoneType, vcPhoneNumber;
        DBMS_OUTPUT.PUT_LINE(vnNumber|| '-'||vnPhoneType|| '-'||vcPhoneNumber);
        EXIT WHEN numberCursor%NOTFOUND;
    END LOOP;
    CLOSE numberCursor;
END getNumber;

SET SERVEROUTPUT ON;
DECLARE
    vIdPerson NUMBER:=3;
    vPhoneType NUMBER:=4;
BEGIN
    getNumber(vIdPerson,vPhoneType);
END;
