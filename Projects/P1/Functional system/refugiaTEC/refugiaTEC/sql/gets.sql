--alter session set current_schema = un;

CREATE OR REPLACE FUNCTION getAllPets
RETURN SYS_REFCURSOR
AS
    pets_cursor SYS_REFCURSOR;
BEGIN
    OPEN pets_cursor FOR
    SELECT p.PETNAME as Nombre, r.RaceName as Raza, s.statusdesc as Estado, d.DistrictName as Ubicación
    FROM PET p
    INNER JOIN RACE r
    ON p.idRace = r.idRace
    INNER JOIN district d
    ON p.idDistrict = d.idDistrict
    INNER JOIN STATUSPET s
    ON p.idStatus = s.idStatus;
    
    RETURN pets_cursor;
END getAllPets;
/

CREATE OR REPLACE FUNCTION getAllAnimals
RETURN SYS_REFCURSOR
AS
    animals_cursor SYS_REFCURSOR;
BEGIN
    OPEN animals_cursor FOR
    SELECT ANIMALNAME FROM Animal;
    
    RETURN animals_cursor;
END getAllAnimals;
/

CREATE OR REPLACE FUNCTION getAnimalId(p_animalName IN VARCHAR2)
RETURN NUMBER
AS
    v_idAnimal NUMBER;
BEGIN
    SELECT idAnimal INTO v_idAnimal
    FROM Animal
    WHERE animalName = p_animalName;
    
    RETURN v_idAnimal;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END getAnimalId;
/


CREATE OR REPLACE FUNCTION getAllColors
RETURN SYS_REFCURSOR
AS
    color_cursor SYS_REFCURSOR;
BEGIN
    OPEN color_cursor FOR
    SELECT colordesc FROM Color;
    
    RETURN color_cursor;
END getAllColors;
/

CREATE OR REPLACE FUNCTION getAllEnergy
RETURN SYS_REFCURSOR
AS
    energy_cursor SYS_REFCURSOR;
BEGIN
    OPEN energy_cursor FOR
    SELECT energydesc FROM energy;
    
    RETURN energy_cursor;
END getAllEnergy;
/

CREATE OR REPLACE FUNCTION getAllSeverities
RETURN SYS_REFCURSOR
AS
    severity_cursor SYS_REFCURSOR;
BEGIN
    OPEN severity_cursor FOR
    SELECT severitydesc FROM severity;
    
    RETURN severity_cursor;
END getAllSeverities;
/

CREATE OR REPLACE FUNCTION getAllEase
RETURN SYS_REFCURSOR
AS
    ease_cursor SYS_REFCURSOR;
BEGIN
    OPEN ease_cursor FOR
    SELECT easedesc FROM ease;
    
    RETURN ease_cursor;
END getAllEase;
/

CREATE OR REPLACE FUNCTION getAllStatus
RETURN SYS_REFCURSOR
AS
    status_cursor SYS_REFCURSOR;
BEGIN
    OPEN status_cursor FOR
    SELECT statusDesc FROM statuspet;
    
    RETURN status_cursor;
END getAllStatus;
/


CREATE OR REPLACE FUNCTION getAllCountries
RETURN SYS_REFCURSOR
AS
    country_cursor SYS_REFCURSOR;
BEGIN
    OPEN country_cursor FOR
    SELECT countryName FROM Country;
    
    RETURN country_cursor;
END getAllCountries;
/

CREATE OR REPLACE FUNCTION getAllProvinces
RETURN SYS_REFCURSOR
AS
    province_cursor SYS_REFCURSOR;
BEGIN
    OPEN province_cursor FOR
    SELECT provinceName FROM Province;
    
    RETURN province_cursor;
END getAllProvinces;
/

CREATE OR REPLACE FUNCTION getAllCantones
RETURN SYS_REFCURSOR
AS
    canton_cursor SYS_REFCURSOR;
BEGIN
    OPEN canton_cursor FOR
    SELECT cantonName FROM Canton;
    
    RETURN canton_cursor;
END getAllCantones;
/

CREATE OR REPLACE FUNCTION getAllDistrict
RETURN SYS_REFCURSOR
AS
    district_cursor SYS_REFCURSOR;
BEGIN
    OPEN district_cursor FOR
    SELECT districtName FROM District;
    
    RETURN district_cursor;
END getAllDistrict;
/



CREATE OR REPLACE FUNCTION GetProvincesByCountryID(p_country_id NUMBER) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT provinceName
        FROM Province
        WHERE idCountry = NVL(p_country_id, idCountry);

    RETURN v_cursor;
END GetProvincesByCountryID;
/


CREATE OR REPLACE FUNCTION GetCantonesByProvinceID(p_province_id NUMBER) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT cantonName
        FROM Canton
        WHERE idProvince = NVL(p_province_id, idProvince);

    RETURN v_cursor;
END GetCantonesByProvinceID;
/


CREATE OR REPLACE FUNCTION GetDistrictsByCantonID(p_canton_id NUMBER) RETURN SYS_REFCURSOR AS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT districtName
        FROM District
        WHERE idCanton = NVL(p_canton_id, idCanton);

    RETURN v_cursor;
END GetDistrictsByCantonID;
/


CREATE OR REPLACE FUNCTION GetCountryId(p_countryName VARCHAR2) RETURN NUMBER AS
    v_idCountry NUMBER;
BEGIN
    SELECT idCountry INTO v_idCountry
    FROM Country
    WHERE countryName = p_countryName;

    RETURN v_idCountry;
END GetCountryId;
/

CREATE OR REPLACE FUNCTION GetProvinceId(p_provinceName VARCHAR2) RETURN NUMBER AS
    v_idProvince NUMBER;
BEGIN
    SELECT idProvince INTO v_idProvince
    FROM Province
    WHERE provinceName = p_provinceName;

    RETURN v_idProvince;
END GetProvinceId;
/

CREATE OR REPLACE FUNCTION GetCantonId(p_cantonName VARCHAR2) RETURN NUMBER AS
    v_idCanton NUMBER;
BEGIN
    SELECT idCanton INTO v_idCanton
    FROM Canton
    WHERE cantonName = p_cantonName;

    RETURN v_idCanton;
END GetCantonId;
/

CREATE OR REPLACE FUNCTION GetDistrictId(p_distName VARCHAR2, p_cantonId NUMBER) RETURN NUMBER AS
    v_idDist NUMBER;
BEGIN
    SELECT idDistrict INTO v_idDist
    FROM District
    WHERE districtName = p_distName AND idCanton = p_cantonId;

    RETURN v_idDist;
END GetDistrictId;
/



CREATE OR REPLACE FUNCTION GetPersonIdByCedula(p_cedula NUMBER) RETURN NUMBER AS
    v_idPerson NUMBER;
BEGIN
    SELECT idPerson INTO v_idPerson
    FROM Person
    WHERE cedula = p_cedula;

    RETURN v_idPerson;
END GetPersonIdByCedula;
/


