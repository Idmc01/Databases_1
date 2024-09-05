
select * from pet;

select getAllPets();

drop function getAllPets;


DELIMITER //
CREATE FUNCTION getAllPets()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE pets_info VARCHAR(1024);

    SELECT GROUP_CONCAT(
        CONCAT('Nombre: ', p.PETNAME, ', Raza: ', r.RaceName, ', Estado: ', s.statusdesc, ', Ubicación: ', d.DistrictName) SEPARATOR '; ')
    INTO pets_info
    FROM PET p
    INNER JOIN RACE r ON p.idRace = r.idRace
    INNER JOIN DISTRICT d ON p.idDistrict = d.idDistrict
    INNER JOIN STATUSPET s ON p.idStatus = s.idStatus;

    RETURN pets_info;
END //



DELIMITER ;







drop function getAllAnimals;
select getAllAnimals();
#GET ALL ANIMALS
DELIMITER //
CREATE FUNCTION getAllAnimals()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE animal_names VARCHAR(1024);

    SELECT GROUP_CONCAT(ANIMALNAME SEPARATOR '-') INTO animal_names
    FROM Animal;

    RETURN animal_names;
END //
DELIMITER ;
#SELECT getAllAnimals();
#GET ANIMAL ID
DELIMITER //
CREATE PROCEDURE getAnimalId
(IN p_animalName VARCHAR(225),  OUT p_idAnimal INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Animal
    WHERE animalName = p_animalName;

    IF v_count > 0 THEN
        SELECT idAnimal INTO p_idAnimal
        FROM Animal
        WHERE animalName = p_animalName;
    ELSE
        SET p_idAnimal = NULL;
    END IF;
END //
DELIMITER ;
###########################################################
#forma de llamar la funcion:
#CALL getAnimalId('Gato',@idAnimalOutput);
#SELECT @idAnimalOutput AS idAnimal;
#############################################################
















#GET ALL COLORS
drop function getAllColors;


DELIMITER //
CREATE FUNCTION getAllColors()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE color_desc VARCHAR(1024);

    SELECT GROUP_CONCAT(colorDesc SEPARATOR '-') INTO color_desc
    FROM Color;

    RETURN color_desc;
END //
DELIMITER ;


#GET ALL ENERGY
drop function getAllEnergy;
DELIMITER //
CREATE FUNCTION getAllEnergy()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE energy_desc VARCHAR(1024);

    SELECT GROUP_CONCAT(energydesc SEPARATOR '-') INTO energy_desc
    FROM Energy;

    RETURN energy_desc;
END //
DELIMITER ;


#GET ALL SEVERITIES
drop function getAllSeverities;
DELIMITER //
CREATE FUNCTION getAllSeverities()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE severity_desc VARCHAR(1024);

    SELECT GROUP_CONCAT(severitydesc SEPARATOR '-') INTO severity_desc
    FROM Severity;

    RETURN severity_desc;
END //
DELIMITER ;


#GET ALL EASE
drop function getAllEase;
DELIMITER //
CREATE FUNCTION getAllEase()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE ease_desc VARCHAR(1024);

    SELECT GROUP_CONCAT(easedesc SEPARATOR '-') INTO ease_desc
    FROM Ease;

    RETURN ease_desc;
END //
DELIMITER ;


#	GET ALL STATUS
drop function getAllStatus;
DELIMITER //
CREATE FUNCTION getAllStatus()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE status_desc VARCHAR(1024);

    SELECT GROUP_CONCAT(statusDesc SEPARATOR '-') INTO status_desc
    FROM statuspet;

    RETURN status_desc;
END //
DELIMITER ;



DELIMITER //

CREATE PROCEDURE getAllAnimals()
BEGIN
    SELECT ANIMALNAME FROM Animal;
END //

DELIMITER ;

DELIMITER //



DROP FUNCTION getAllCountries;


#GET ALL COUNTRIES


DELIMITER //



DELIMITER // 
CREATE FUNCTION getAllRaces()
RETURNS VARCHAR(1024) DETERMINISTIC
BEGIN
    DECLARE Races VARCHAR(1024);
    SELECT GROUP_CONCAT(raceName SEPARATOR '-') INTO Races FROM Race;
    RETURN Races;
END//
DELIMITER;

SELECT getAllRaces();
SELECT getAllStatus();
select * from status;
select * from race;
select * from province;

DROP FUNCTION getAllRaces;

select * from ease;






DELIMITER //
CREATE FUNCTION getAllCountries()
returns text
BEGIN
	DECLARE	Countries text;
    SELECT group_concat(countryName Separator '-') INTO Countries FROM Country;
    return Countries;
END //
DELIMITER;

DELIMITER //
CREATE FUNCTION getAllCountries() RETURNS TEXT READS SQL DATA
BEGIN
    DECLARE Countries TEXT;
    SELECT GROUP_CONCAT(countryName SEPARATOR '-') INTO Countries FROM Country;
    RETURN Countries;
END //
DELIMITER ;

SELECT getAllCountries();


CALL getAllCountries();


SELECT getAllProvinces();







#GET ALL PROVINCES
DELIMITER //









CREATE FUNCTION getAllProvinces()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE provincesName VARCHAR(255);

    SELECT GROUP_CONCAT(provinceName SEPARATOR ', ') INTO provincesName
    FROM Province;

    RETURN provincesName;
END //
DELIMITER ;
#GET ALL CANTONES
DELIMITER //
CREATE FUNCTION getAllCantones()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE cantonesName VARCHAR(255);

    SELECT GROUP_CONCAT(cantonName SEPARATOR ', ') INTO cantonesName
    FROM Canton;

    RETURN cantonesName;
END //
DELIMITER ;
#GET ALL DISTRICTS
DELIMITER //
CREATE FUNCTION getAllDistrict()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE districtsName VARCHAR(255);

    SELECT GROUP_CONCAT(districtName SEPARATOR ', ') INTO districtsName
    FROM District;

    RETURN districtsName;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetProvincesByCountryID(IN pCountryID INT)
BEGIN
    SELECT provinceName
    FROM Province
    WHERE idCountry = IFNULL(pCountryID, idCountry);
END //
DELIMITER ;

call GetProvincesByCountryID(8);













drop procedure GetProvincesByCountryID;



/*
#GET PROVINCE BY COUNTRY ID
DELIMITER //
CREATE PROCEDURE GetProvincesByCountryID
(IN pCountryID INT)
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE provincesName VARCHAR(255);
	DECLARE provincesCursor CURSOR FOR
		SELECT provinceName
        FROM Province
        WHERE idCountry = IFNULL(pCountryID, idCountry);
	DROP TEMPORARY TABLE IF EXISTS temp_provinces;
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_provinces (provinceName VARCHAR(255));
	OPEN provincesCursor;
    read_loop: LOOP
        FETCH provincesCursor INTO provincesName;
        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO temp_provinces (provinceName) VALUES (provincesName);
    END LOOP;
    CLOSE provincesCursor;
    SELECT * FROM temp_provinces;
END //
DELIMITER ;
*/
#################################################################################
#*** EL PROCEDIMIENTO FUNCIONA GUARDANDO LAS PROVINCIAS EN UNA TEMPORARY TABLE, ES CUESTION DE HACER SELECT *, IGNORAR EL ERROR QUE SUELTA LA CONSOLA
################################################################################


drop procedure GetCantonesByProvinceID;



select * from Province;

CALL GetCantonesByProvinceID(50);


DELIMITER //
CREATE PROCEDURE GetCantonesByProvinceID(IN pProvinceID INT)
BEGIN
    SELECT cantonName
    FROM Canton
    WHERE idProvince = IFNULL(pProvinceID, idProvince);
END //
DELIMITER ;


/*
#GET CANTONES BY PROVINCE ID
DELIMITER //
CREATE PROCEDURE GetCantonesByProvinceID
(IN pProvinceID INT)
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE cantonesName VARCHAR(255);
	DECLARE cantonesCursor CURSOR FOR
		SELECT cantonName
        FROM Canton
        WHERE idProvince = IFNULL(pProvinceID, idProvince);
	DROP TEMPORARY TABLE IF EXISTS temp_cantones;
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_cantones (cantonName VARCHAR(255));
	OPEN cantonesCursor;
    read_loop: LOOP
        FETCH cantonesCursor INTO cantonesName;
        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO temp_cantones (cantonName) VALUES (cantonesName);
    END LOOP;
    CLOSE cantonesCursor;
    SELECT * FROM temp_cantones;
END //
DELIMITER ;
*/




drop procedure GetDistrictsByCantonID;



select * from District;

CALL GetDistrictsByCantonID(50);
DELIMITER //
CREATE PROCEDURE GetDistrictsByCantonID(IN pCantonID INT)
BEGIN
    SELECT districtName
    FROM District
    WHERE idCanton = IFNULL(pCantonID, idCanton);
END //
DELIMITER ;















/*
#GET DISTRICTS BY CANTON ID
DELIMITER //
CREATE PROCEDURE GetDistrictsByCantonID
(IN pCantonID INT)
BEGIN
	DECLARE done INT DEFAULT FALSE;
    DECLARE districtsName VARCHAR(255);
	DECLARE districtsCursor CURSOR FOR
		SELECT districtName
        FROM District
        WHERE idCanton = IFNULL(pCantonID, idCanton);
	DROP TEMPORARY TABLE IF EXISTS temp_districts;
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_districts (districtName VARCHAR(255));
	OPEN districtsCursor;
    read_loop: LOOP
        FETCH districtsCursor INTO districtsName;
        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO temp_districts (districtName) VALUES (districtsName);
    END LOOP;
    CLOSE districtsCursor;
    SELECT * FROM temp_districts;
END //
DELIMITER ;

*/



#Get country id
DELIMITER //
CREATE PROCEDURE GetCountryId
(IN p_countryName VARCHAR(225),  OUT p_idCountry INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Country
    WHERE countryName = p_countryName;

    IF v_count > 0 THEN
        SELECT idCountry INTO p_idCountry
        FROM Country
        WHERE countryName = p_countryName;
    ELSE
        SET p_idCountry = NULL;
    END IF;
END //
DELIMITER ;
#GET PROVINCE ID
DELIMITER //
CREATE PROCEDURE GetProvinceId
(IN p_provinceName VARCHAR(225),  OUT p_idProvince INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Province
    WHERE provinceName = p_provinceName;

    IF v_count > 0 THEN
        SELECT idProvince INTO p_idProvince
        FROM Province
        WHERE provinceName = p_provinceName;
    ELSE
        SET p_idProvince = NULL;
    END IF;
END //
DELIMITER ;
#GET CANTON BY ID
DELIMITER //
CREATE PROCEDURE GetCantonId
(IN p_cantonName VARCHAR(225),  OUT p_idCanton INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Canton
    WHERE cantonName = p_cantonName;

    IF v_count > 0 THEN
        SELECT idCanton INTO p_idCanton
        FROM Canton
        WHERE cantonName = p_cantonName;
    ELSE
        SET p_idCanton = NULL;
    END IF;
END //
DELIMITER ;
#GET DISTRICT ID
DELIMITER //
CREATE PROCEDURE GetDistrictId
(IN p_distName VARCHAR(225), IN p_cantonId INT, OUT p_idDistrict INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM District
    WHERE districtName = p_distName AND idCanton = p_cantonId;

    IF v_count > 0 THEN
        SELECT idDistrict INTO p_idDistrict
        FROM District
        WHERE districtName = p_distName AND idCanton = p_cantonId;
    ELSE
        SET p_idDistrict = NULL;
    END IF;
END //
DELIMITER ;

/*
#GET PERSON ID BY CEDULA
DELIMITER //
CREATE PROCEDURE GetPersonIdByCedula
(IN p_cedula INT,  OUT p_idPerson INT)
BEGIN
	DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Person
    WHERE cedula = p_cedula;

    IF v_count > 0 THEN
        SELECT idPerson INTO p_idPerson
        FROM Person
        WHERE cedula = p_cedula;
    ELSE
        SET p_idPerson = NULL;
    END IF;
END //
DELIMITER ;


*/

drop procedure GetPersonIdByCedula;
DELIMITER //
CREATE PROCEDURE GetPersonIdByCedula(IN p_cedula INT)
BEGIN
    SELECT idPerson 
    FROM Person
    WHERE cedula = IFNULL(p_cedula, cedula);
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE GetPersonIdByCedula(IN p_cedula INT, OUT p_idPerson INT)
BEGIN
    SELECT idPerson INTO p_idPerson
    FROM Person
    WHERE cedula = IFNULL(p_cedula, cedula);
END //
DELIMITER ;








DELIMITER //
CREATE PROCEDURE getRaceId
(IN p_raceName VARCHAR(225), OUT p_idRace INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Race
    WHERE raceName = p_raceName;

    IF v_count > 0 THEN
        SELECT idRace INTO p_idRace
        FROM Race
        WHERE raceName = p_raceName;
    ELSE
        SET p_idRace = NULL;
    END IF;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getEaseId
(IN p_easeDesc VARCHAR(20), OUT p_idEase INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Ease
    WHERE easeDesc = p_easeDesc;

    IF v_count > 0 THEN
        SELECT idEase INTO p_idEase
        FROM Ease
        WHERE easeDesc = p_easeDesc;
    ELSE
        SET p_idEase = NULL;
    END IF;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getStatusId
(IN p_statusDesc VARCHAR(20), OUT p_idStatus INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM StatusPet
    WHERE StatusDesc = p_statusDesc;

    IF v_count > 0 THEN
        SELECT idStatus INTO p_idStatus
        FROM StatusPet
        WHERE StatusDesc = p_statusDesc;
    ELSE
        SET p_idStatus = NULL;
    END IF;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getEnergyId
(IN p_energyDesc VARCHAR(225), OUT p_idEnergy INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM Energy
    WHERE energyDesc = p_energyDesc;

    IF v_count > 0 THEN
        SELECT idEnergy INTO p_idEnergy
        FROM Energy
        WHERE energyDesc = p_energyDesc;
    ELSE
        SET p_idEnergy = NULL;
    END IF;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE getSeverityId
(IN p_severityDesc VARCHAR(20), OUT p_idSeverity INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM severity
    WHERE severityDesc = p_severityDesc;

    IF v_count > 0 THEN
        SELECT idSeverity INTO p_idSeverity
        FROM severity
        WHERE severityDesc = p_severityDesc;
    ELSE
        SET p_idSeverity = NULL;
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE getColorId
(IN p_colorDesc VARCHAR(20), OUT p_idColor INT)
BEGIN
    DECLARE v_count INT;

    SELECT COUNT(*) INTO v_count
    FROM color
    WHERE colorDesc = p_colorDesc;

    IF v_count > 0 THEN
        SELECT idColor INTO p_idColor
        FROM color
        WHERE colorDesc = p_colorDesc;
    ELSE
        SET p_idColor = NULL;
    END IF;
END //
DELIMITER ;











