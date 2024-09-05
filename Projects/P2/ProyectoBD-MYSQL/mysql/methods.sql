
USE Proyecto;

#INSERT Animal
DELIMITER //
CREATE PROCEDURE insertAnimal(IN pcAnimalName VARCHAR(255))
BEGIN  
	INSERT INTO animal(AnimalName)
    VALUES (pcAnimalName);
END//
DELIMITER ;
#insert blacklist
DELIMITER //
CREATE PROCEDURE insertBlacklist (IN pcIdRescuer INT, IN pcIdCandidate INT)
BEGIN
	INSERT INTO Blacklist(Blacklistdate, idRescuer, idCandidate)
    VALUES(current_date(), pcIdRescuer, pcIdCandidate);
END//
DELIMITER ;
#INSERT CANDIDATE
DELIMITER //
CREATE PROCEDURE insertCandidate(IN pcOwnedhouse INT, IN pcCandidatepermission INT, IN pcBudget INT, IN pcIdPerson INT)
BEGIN
	INSERT INTO Candidate(ownhouse, candidatePermission, budget, idPerson)
    VALUES(pcOwnedhouse, pcCandidatepermission,pcBudget, pcIdPerson);
END //
DELIMITER ;
#INSERT CANTON
DELIMITER //
CREATE PROCEDURE insertCanton(IN pcCantonname VARCHAR(225), IN pcIdprovince INT)
BEGIN
	INSERT INTO Canton(cantonName, idProvince)
    VALUES (pcCantonname, pcIdprovince);
END//
DELIMITER ;
#INSERT COLOR
DELIMITER //
CREATE PROCEDURE insertColor(IN pcColordesc VARCHAR(225))
BEGIN
	INSERT INTO Color(colorDesc)
    VALUES(pcColordesc);
END//
DELIMITER ;
#INSERT COUNTRY
DELIMITER //
CREATE PROCEDURE insertCountry(IN pcCountryname VARCHAR(225))
BEGIN
	INSERT INTO Country(countryName)
    VALUES(pcCountryname);
END//
DELIMITER ;
#iNSERT DISEASE
DELIMITER //
CREATE PROCEDURE insertDisease(IN pcDiseasedesc VARCHAR(225))
BEGIN
	INSERT INTO Disease(diseasedesc)
    VALUES(pcDiseasedesc);
END//
DELIMITER ;
#INSERT DISTRICT
DELIMITER //
CREATE PROCEDURE insertDistrict(IN pcDistrictname VARCHAR(225), IN pcIdcanton INT)
BEGIN
	INSERT INTO District(districtname, idcanton)
    VALUES(pcDistrictname, pcIdcanton);
END//
DELIMITER ;
#INSERT EASE
DELIMITER //
CREATE PROCEDURE insertEase(IN pcEasedesc VARCHAR(225))
BEGIN
	INSERT INTO Ease(easedesc)
    VALUES(pcEasedesc);
END//
DELIMITER ;
#INSERT STATUS
DELIMITER //
CREATE PROCEDURE insertStatus(IN pcStatusdesc VARCHAR(225))
BEGIN
	INSERT INTO StatusPet(Statusdesc)
    VALUES(pcStatusdesc);
END//
DELIMITER ;
#INSERT ENERGY
DELIMITER //
CREATE PROCEDURE insertEnergy(IN pcEnergydesc VARCHAR(225))
BEGIN
	INSERT INTO Energy(energydesc)
    VALUES(pcEnergydesc);
END//
DELIMITER ;
#INSERT PERSON
DELIMITER //
CREATE PROCEDURE InsertPerson(
    IN p_idDistrict INT,
    IN p_firstName VARCHAR(255),
    IN p_secondName VARCHAR(255),
    IN p_firstSurname VARCHAR(255),
    IN p_secondSurname VARCHAR(255),
    IN p_cedula INT,
    IN p_birthday DATE,
    IN p_passwordUser VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_gender VARCHAR(255)
)
BEGIN
    INSERT INTO Person (idDistrict, firstName, secondName, firstSurname, secondSurname, cedula, passwordUser, email, birthday, gender)
    VALUES (p_idDistrict, p_firstName, p_secondName, p_firstSurname, p_secondSurname, p_cedula, MD5(p_passwordUser), p_email, p_birthday, p_gender);
END //
DELIMITER ;


DROP PROCEDURE insertPet;
#insert pet
DELIMITER //
CREATE PROCEDURE insertPet (
    IN p_idAnimal INT,
    IN p_idRace INT,
    IN p_petName VARCHAR(255),
    IN p_petChip INT,
    IN p_notes VARCHAR(255),
    IN p_spent INT,
    IN p_idEase INT,
    IN p_idStatus INT,
    IN p_idEnergy INT,
    IN p_idSeverity INT,
    IN p_idColor INT,
    IN p_idRescuer INT,
    IN p_idDistrict INT
)
BEGIN
    INSERT INTO Pet (
        idAnimal,
        idRace,
        petName,
        petChip,
        notes,
        spent,
        idEase,
        idStatus,
        idEnergy,
        idSeverity,
        idColor,
        idRescuer,
        idDistrict
    ) VALUES (
        p_idAnimal,
        p_idRace,
        p_petName,
        p_petChip,
        p_notes,
        p_spent,
        p_idEase,
        p_idStatus,
        p_idEnergy,
        p_idSeverity,
        p_idColor,
        p_idRescuer,
        p_idDistrict
    );
END //
DELIMITER ;








DELIMITER //
CREATE PROCEDURE insertPet (
    IN p_idAnimal INT,
    IN p_idRace INT,
    IN p_petName VARCHAR(255),
    IN p_petChip INT,
    IN p_notes VARCHAR(255),
    IN p_spent INT,
    IN p_idEase INT,
    IN p_idStatus INT,
    IN p_idEnergy INT,
    IN p_idSeverity INT,
    IN p_idColor INT,
    IN p_idDistrict INT
)
BEGIN
    INSERT INTO Pet (
        idAnimal,
        idRace,
        petName,
        petChip,
        notes,
        spent,
        idEase,
        idStatus,
        idEnergy,
        idSeverity,
        idColor,
        idDistrict
    ) VALUES (
        p_idAnimal,
        p_idRace,
        p_petName,
        p_petChip,
        p_notes,
        p_spent,
        p_idEase,
        p_idStatus,
        p_idEnergy,
        p_idSeverity,
        p_idColor,
        p_idDistrict
    );
END //
DELIMITER ;












#INSERT PET ADOPTED
DELIMITER //
CREATE PROCEDURE insertPetAdopted()
BEGIN
	INSERT INTO petAdopted(adoptiondate)
    VALUES(current_date());
END//
DELIMITER ;
#INSERT PETLOST
DELIMITER //
CREATE PROCEDURE insertPetlost(IN pctypeCurrency VARCHAR(225), IN pcreward INT, IN pcidDistrict INT)
BEGIN
	INSERT INTO petLost(petlostDate, typeCurrency, reward, idDistrict)
    VALUES(current_date(), pctypeCurrency, pcreward, pcidDistrict);
END//
DELIMITER ;
#INSERT PROVINCE
DELIMITER //
CREATE PROCEDURE insertProvince(IN pcProvincename VARCHAR(225), IN pcidcountry INT)
BEGIN
	INSERT INTO Province(provincename,idcountry)
    VALUES(pcProvincename, pcidcountry);
END//
DELIMITER ;
#INSERT RACE
DELIMITER //
CREATE PROCEDURE insertRace(IN pcRacename VARCHAR(225), IN pcAnimal INT)
BEGIN
	INSERT INTO Race(racename, idAnimal)
    VALUES(pcRacename, pcAnimal);
END//
DELIMITER ;
#INSERT RESCUER
DELIMITER //
CREATE PROCEDURE insertRescuer( IN pcidPerson INT)
BEGIN
	INSERT INTO Rescuer(idPerson)
    VALUES(pcidPerson);
END//
DELIMITER ;
#INSERT SEVERITY
DELIMITER //
CREATE PROCEDURE insertSeverity(IN pcSeveritydesc VARCHAR(225))
BEGIN
	INSERT INTO Severity(severityDesc)
    VALUES(pcSeveritydesc);
END//
DELIMITER ;
#INSERT TEMPHOUSE
DELIMITER //
CREATE PROCEDURE insertTemphouse(IN pcdonation VARCHAR(225), IN pcIdDistrict INT, IN pcusername VARCHAR(225), IN pcpassword VARCHAR(225))
BEGIN
	INSERT INTO tempHouse( Donation, idDistrict, username, passwordth)
    VALUES(pcdonation, pcIdDistrict, pcusername,  MD5(pcpassword));
END//
DELIMITER ;
#INSERT TEST
DELIMITER //
CREATE PROCEDURE insertTest(IN pcquestion1 VARCHAR(225), IN pcquestion2 VARCHAR(225), IN pcquestion3 VARCHAR(225), IN pcquestion4 VARCHAR(225), IN pcquestion5 VARCHAR(225))
BEGIN
	INSERT INTO Test( question1, question2, question3, question4, question5)
    VALUES(pcquestion1, pcquestion2, pcquestion3, pcquestion4, pcquestion5);
END//
DELIMITER ;
#INSERT TREATMENT
DELIMITER //
CREATE PROCEDURE insertTreatment(IN pcFunctiondate DATETIME)
BEGIN
	INSERT INTO Treatment(functionDate)
    VALUES(pcFunctiondate);
END//
DELIMITER ;
#INSERT ANIMAL X TEMPHOUSE
DELIMITER //
CREATE PROCEDURE insertAnimalXtemphouse(IN pcIdanimal INT, IN pcidtemphouse INT)
BEGIN
	INSERT INTO AnimalXtemphouse(idAnimal, idtemphouse)
    VALUES(pcIdanimal,pcidtemphouse);
END//
DELIMITER ;
#INSERT CANDIDATE X BLACKLIST
DELIMITER //
CREATE PROCEDURE insertCandidateXblacklist(IN pcIdcandidate INT, IN pcidblacklist INT)
BEGIN
	INSERT INTO candidateXblacklist(idCandidate, idBlacklist)
    VALUES(pcIdcandidate,pcidblacklist);
END//
DELIMITER ;
#INSERT CANDIDATE X FUNCTION
DELIMITER //
CREATE PROCEDURE insertCandidateXfunction(IN pcIdcandidate INT, IN pcidfunction INT)
BEGIN
	INSERT INTO candidateXfunction(idCandidate, idfunction)
    VALUES(pcIdcandidate,pcidfunction);
END//
DELIMITER ;
#INSERT CANDIDATE X PET
DELIMITER //
CREATE PROCEDURE insertCandidateXpet(IN pcIdcandidate INT, IN pcidpet INT)
BEGIN
	INSERT INTO candidateXpet(idCandidate, idpet)
    VALUES(pcIdcandidate,pcidpet);
END//
DELIMITER ;
#INSERT DISEASE X PET
DELIMITER //
CREATE PROCEDURE insertDiseaseXpet(IN pcIddisease INT, IN pcidpet INT)
BEGIN
	INSERT INTO diseaseXpet(idDisease, idpet)
    VALUES(pcIddisease,pcidpet);
END//
DELIMITER ;
#DISEASE X TREATMENT
DELIMITER //
CREATE PROCEDURE insertDiseaseXtreatment(IN pcIddisease INT, IN pcidtreatment INT)
BEGIN
	INSERT INTO diseaseXtreatment(idDisease, idtreatment)
    VALUES(pcIddisease,pcidtreatment);
END//
DELIMITER ;
#INSERT RESCUER X TEMPHOUSE
DELIMITER //
CREATE PROCEDURE insertRescuerXtemphouse(IN pcIdrescuer INT, IN pcidtemphouse INT)
BEGIN
	INSERT INTO rescuerXtemphouse(idRescuer, idtemphouse)
    VALUES(pcIdrescuer,pcidtemphouse);
END//
DELIMITER ;
#INSERT USER
DELIMITER //
CREATE PROCEDURE InsertAdmin (
    IN p_usernameAdmin VARCHAR(255),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE hashed_password VARCHAR(255);
    SET hashed_password = MD5(p_password);
    INSERT INTO AdminUser (idAdmin, usernameAdmin, passwordAdmin)
    VALUES (NULL, p_usernameAdmin, hashed_password);
    COMMIT;
    SELECT 'Admin user inserted successfully.' AS Message;
END //
DELIMITER ;
#COMPARE PASSWORD ADMIN
DELIMITER //
CREATE FUNCTION ComparePasswordAdmin (
    p_username VARCHAR(255),
    p_input_password VARCHAR(255)
) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE v_stored_password_hash VARCHAR(32);
    DECLARE v_input_password_hash VARCHAR(32);

    SELECT passwordAdmin INTO v_stored_password_hash
    FROM AdminUser
    WHERE usernameAdmin = p_username;

    SET v_input_password_hash = MD5(p_input_password);

    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Correct password
    ELSE
        RETURN 0; -- Incorrect password
    END IF;
END //
DELIMITER ;
#COMPARE PASSWORD PERSON
DELIMITER //
CREATE FUNCTION ComparePasswordPerson (
    p_username VARCHAR(255),
    p_input_password VARCHAR(255)
) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE v_stored_password_hash VARCHAR(32);
    DECLARE v_input_password_hash VARCHAR(32);

    SELECT passwordUser INTO v_stored_password_hash
    FROM Person
    WHERE email = p_username;

    SET v_input_password_hash = MD5(p_input_password);

    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Correct password
    ELSE
        RETURN 0; -- Incorrect password
    END IF;
END //
DELIMITER ;
#COMPARE PASSWORD TH

DELIMITER //
CREATE FUNCTION ComparePasswordTH (
    p_username VARCHAR(255),
    p_input_password VARCHAR(255)
) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE v_stored_password_hash VARCHAR(32);
    DECLARE v_input_password_hash VARCHAR(32);

    SELECT passwordTH INTO v_stored_password_hash
    FROM TempHouse
    WHERE username = p_username;

    SET v_input_password_hash = MD5(p_input_password);

    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Contraseña correcta
    ELSE
        RETURN 0; -- Contraseña incorrecta
    END IF;
END//
DELIMITER ;
#Get Pets by Rescuer
DELIMITER //
CREATE PROCEDURE GetPetsByRescuer(IN p_idRescuer INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE idPet INT;
    DECLARE petname VARCHAR(255);
    DECLARE petchip VARCHAR(255);
    DECLARE notes VARCHAR(255);
    DECLARE colorDesc VARCHAR(255);
    DECLARE energyDesc VARCHAR(255);

    DECLARE pets_cursor CURSOR FOR
        SELECT p.idPet, p.petname, p.petchip, p.notes, c.colorDesc, e.energyDesc
        FROM Pet p
        INNER JOIN Color c ON p.idcolor = c.idcolor
        INNER JOIN Energy e ON p.idEnergy = e.idEnergy
        WHERE p.idRescuer = p_idRescuer;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN pets_cursor;

    read_loop: LOOP
        FETCH pets_cursor INTO idPet, petname, petchip, notes, colorDesc, energyDesc;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT idPet, petname, petchip, notes, colorDesc, energyDesc; 
    END LOOP;

    CLOSE pets_cursor;
END //
DELIMITER ;
#Find Matches
DELIMITER //
CREATE PROCEDURE FindMatches
(IN p_chip INT, IN p_district INT, IN p_name VARCHAR(225), IN p_race VARCHAR(225))
BEGIN
	DECLARE done INT DEFAULT FALSE;
	DECLARE idPet INT;
    DECLARE petname VARCHAR(255);
    DECLARE petchip VARCHAR(255);
    DECLARE idDistrict INT;
    DECLARE idRace INT;
    
    DECLARE pets_cursor CURSOR FOR
        SELECT p.idPet, p.petname, p.petchip, p.idDistrict, c.idRace
        FROM Pet p
        WHERE p.petChip = p_chip
        OR p.idDistrict = p_district
        AND p.petName = p_name
        AND p.idRace = p_race;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
 OPEN pets_cursor;
	read_loop: LOOP
        FETCH pets_cursor INTO idPet, petname, petchip, idDistrict, idRace;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT idPet, petname, petchip, idDistrict, idRace;
    END LOOP;

    CLOSE pets_cursor;
END //
DELIMITER ;
#DELETE ANIMAL
DELIMITER //
CREATE PROCEDURE deleteAnimal 
(IN pcIdAnimal INT)
BEGIN
	DELETE FROM Pet WHERE idAnimal = pcIdAnimal;
    DELETE FROM Race WHERE idAnimal = pcIdAnimal;
    DELETE FROM animalXTempHouse WHERE idAnimal = pcIdAnimal;
    DELETE FROM candidateXanimal WHERE idAnimal = pcIdAnimal;
	
    DELETE FROM Animal WHERE idAnimal = pcIdAnimal;
END //
DELIMITER ;
#UPDATE ANIMAL
DELIMITER //
CREATE PROCEDURE updateAnimal
(IN pcAnimalID INT, IN pcNewAnimalName VARCHAR(225))
BEGIN
	UPDATE Animal
    SET animalName = pcNewAnimalName
    WHERE idAnimal = pcAnimalID;
END //
DELIMITER ;