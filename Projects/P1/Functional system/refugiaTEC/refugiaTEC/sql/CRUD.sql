--METODOS DE BORRADO Y ACTUALIZACION
----delete country

CREATE OR REPLACE PROCEDURE deleteCountry(
    pcCountryID IN NUMBER
) AS
BEGIN
    DELETE FROM District
    WHERE idCanton IN (
        SELECT idCanton
        FROM Canton
        WHERE idProvince IN (
            SELECT idProvince
            FROM Province
            WHERE idCountry = pcCountryID
        )
    );

    DELETE FROM Canton
    WHERE idProvince IN (
        SELECT idProvince
        FROM Province
        WHERE idCountry = pcCountryID
    );

    DELETE FROM Province
    WHERE idCountry = pcCountryID;

    DELETE FROM Country
    WHERE idCountry = pcCountryID;

    COMMIT;
END deleteCountry;
/

--------delete province

CREATE OR REPLACE PROCEDURE deleteProvince(
    pcProvinceID IN NUMBER
) AS
BEGIN
    DELETE FROM District
    WHERE idCanton IN (
        SELECT idCanton
        FROM Canton
        WHERE idProvince = pcProvinceID
    );

    DELETE FROM Canton
    WHERE idProvince = pcProvinceID;

    DELETE FROM Province
    WHERE idProvince = pcProvinceID;

    COMMIT;
END deleteProvince;
/



CREATE OR REPLACE PROCEDURE deleteCanton(
    pcCantonID IN NUMBER
) AS
BEGIN
    DELETE FROM District
    WHERE idCanton = pcCantonID;

    DELETE FROM Canton
    WHERE idCanton = pcCantonID;

    COMMIT;
END deleteCanton;
/


-------delete district

CREATE OR REPLACE PROCEDURE deleteDistrict(
    pcDistrictID IN NUMBER
) AS
BEGIN
    DELETE FROM Person
    WHERE idDistrict = pcDistrictID;

    DELETE FROM Asociation
    WHERE idLocation = pcDistrictID;

    DELETE FROM Pet
    WHERE idDistrict = pcDistrictID;

    DELETE FROM petLost
    WHERE idDistrict = pcDistrictID;

    DELETE FROM tempHouse
    WHERE idDistrict = pcDistrictID;

    DELETE FROM asociationxDistrict
    WHERE idDistrict = pcDistrictID;

    DELETE FROM District
    WHERE idDistrict = pcDistrictID;

    COMMIT;
END deleteDistrict;
/

----------delete race

CREATE OR REPLACE PROCEDURE deleteRace(
    pcRaceID IN NUMBER
) AS
BEGIN
    DELETE FROM Pet
    WHERE idRace = pcRaceID;

    DELETE FROM animalXrace
    WHERE idRace = pcRaceID;

    DELETE FROM Race
    WHERE idRace = pcRaceID;

    COMMIT;
END deleteRace;
/

--------------delete color

CREATE OR REPLACE PROCEDURE deleteColor(
    pcColorID IN NUMBER
) AS
BEGIN
   
    DELETE FROM Pet
    WHERE idColor = pcColorID;


    DELETE FROM Color
    WHERE idColor = pcColorID;

    COMMIT;

END deleteColor;
/


-------delete severity

CREATE OR REPLACE PROCEDURE deleteSeverity(
    pcSeverityID IN NUMBER
) AS
BEGIN
    
    DELETE FROM Pet
    WHERE idSeverity = pcSeverityID;


    DELETE FROM Severity
    WHERE idSeverity = pcSeverityID;

    COMMIT;

END deleteSeverity;
/


---------------------delete status

REATE OR REPLACE PROCEDURE deleteStatus(
    pcStatusID IN NUMBER
) AS
BEGIN

   DELETE FROM Pet
    WHERE idStatus = pcStatusID;

    DELETE FROM StatusPet
    WHERE idStatus = pcStatusID;

    COMMIT;
EXCEPTION
END deleteStatus;
/

-----delete ease
CREATE OR REPLACE PROCEDURE deleteEase(
    pcEaseID IN NUMBER
) AS
BEGIN
    
    DELETE FROM Pet
    WHERE idEase = pcEaseID;

   
    DELETE FROM Ease
    WHERE idEase = pcEaseID;

    COMMIT;
END deleteEase;
/

------updateCountry

CREATE OR REPLACE PROCEDURE updateCountry(
    pcCountryID IN NUMBER,
    pcNewCountryName IN VARCHAR2
) AS
BEGIN
    UPDATE Country
    SET countryName = pcNewCountryName
    WHERE idCountry = pcCountryID;
    COMMIT;
END updateCountry;
/


-----update province

CREATE OR REPLACE PROCEDURE updateProvince(
    pcProvinceID IN NUMBER,
    pcNewProvinceName IN VARCHAR2
) AS
BEGIN
    UPDATE Province
    SET provinceName = pcNewProvinceName
    WHERE idProvince = pcProvinceID;
    COMMIT;
END updateProvince;
/


-----update canton

CREATE OR REPLACE PROCEDURE updateCanton(
    pcCantonID IN NUMBER,
    pcNewCantonName IN VARCHAR2
) AS
BEGIN
    UPDATE Canton
    SET cantonName = pcNewCantonName
    WHERE idCanton = pcCantonID;
    COMMIT;
END updateCanton;
/


-------update district
CREATE OR REPLACE PROCEDURE updateDistrict(
    pcDistrictID IN NUMBER,
    pcNewDistrictName IN VARCHAR2
) AS
BEGIN
    UPDATE District
    SET districtName = pcNewDistrictName
    WHERE idDistrict = pcDistrictID;
    COMMIT;
END updateDistrict;
/

---- update race

CREATE OR REPLACE PROCEDURE updateRace(
    pcRaceID IN NUMBER,
    pcNewRaceName IN VARCHAR2
) AS
BEGIN
    UPDATE Race
    SET RaceName = pcNewRaceName
    WHERE idRace = pcRaceID;

    COMMIT;
END updateRace;
/

-----update color

CREATE OR REPLACE PROCEDURE updateColor(
    pcColorID IN NUMBER,
    pcNewColorDesc IN VARCHAR2
) AS
BEGIN
    UPDATE Color
    SET colorDesc = pcNewColorDesc
    WHERE idColor = pcColorID;

    COMMIT;
END updateColor;
/


------update severity

CREATE OR REPLACE PROCEDURE updateSeverity(
    pcSeverityID IN NUMBER,
    pcNewSeverityDesc IN VARCHAR2
) AS
BEGIN
    UPDATE Severity
    SET severityDesc = pcNewSeverityDesc
    WHERE idSeverity = pcSeverityID;

    COMMIT;
END updateSeverity;
/


------update Status

CREATE OR REPLACE PROCEDURE updateStatus(
    pcStatusID IN NUMBER,
    pcNewStatusDesc IN VARCHAR2
) AS
BEGIN
    UPDATE StatusPet
    SET StatusDesc = pcNewStatusDesc
    WHERE idStatus = pcStatusID;

    COMMIT;
END updateStatus;
/


-------update ease

CREATE OR REPLACE PROCEDURE updateEase(
    pcEaseID IN NUMBER,
    pcNewEaseDesc IN VARCHAR2
) AS
BEGIN
    UPDATE Ease
    SET easeDesc = pcNewEaseDesc
    WHERE idEase = pcEaseID;

    COMMIT;
END updateEase;
/