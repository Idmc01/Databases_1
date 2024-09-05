CREATE OR REPLACE PROCEDURE getNumber(pnIdPerson IN NUMBER, pnPhoneType IN NUMBER, pCursorNumeros OUT SYS_REFCURSOR)
AS
BEGIN
    OPEN pCursorNumeros FOR
        SELECT idPerson, phoneNumber
        FROM Phone
        WHERE idPerson = NVL(pnIdPerson, idPerson)and idPhoneType = NVL(pnPhoneType,idPhoneType)
        ORDER BY idPerson;
END getNumber;

DECLARE

pnIdPerson NUMBER :=3;
pnPhoneType NUMBER :=NULL;
pCursorNumeros SYS_REFCURSOR;
vidPerson NUMBER;
vphoneNumber NUMBER;
BEGIN
    getNumber(pnIdPerson,pnPhoneType,pCursorNumeros);
    LOOP
        FETCH pCursorNumeros 
        INTO vidPerson, vphoneNumber;
        EXIT WHEN pCursorNumeros%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(vidPerson|| '-'||vphoneNumber);
    END LOOP;
    CLOSE pCursorNumeros;
END;