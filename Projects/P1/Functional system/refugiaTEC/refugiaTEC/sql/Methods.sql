----------------------------insert data----------------------------------------------------
--insert Animal
CREATE OR REPLACE PROCEDURE insertAnimal
(pcAnimalName IN VARCHAR2)
AS
BEGIN
    INSERT INTO animal(idAnimal,animalName)
    VALUES (animal_seq.NEXTVAL, pcAnimalName);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('sucediï¿½ un error');
END insertAnimal;
/

--insert Blacklist
CREATE OR REPLACE PROCEDURE insertBlacklist (pcIdRescuer IN NUMBER, pcIdCandidate IN NUMBER)
AS
BEGIN
    INSERT INTO Blacklist(idBlacklist,Blacklistdate, idRescuer, idCandidate)
    VALUES(blacklist_seq.NEXTVAL, current_date, pcIdRescuer, pcIdCandidate);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertBlackList;
/
--insert candidate
CREATE OR REPLACE PROCEDURE insertCandidate(
pcOwnedhouse IN NUMBER, 
pcCandidatepermission IN NUMBER, 
pcBudget IN NUMBER,
pcIdPerson IN NUMBER
)
AS
BEGIN
    INSERT INTO Candidate(idCandidate, ownhouse, candidatePermission,
    budget, idPerson)
    VALUES(candidate_seq.nextval, pcOwnedhouse, pcCandidatepermission,
    pcBudget, pcIdPerson);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCandidate;
/
--insert canton
CREATE OR REPLACE PROCEDURE insertCanton
(pcCantonname IN VARCHAR2, pcIdprovince IN NUMBER)
AS
BEGIN
    INSERT INTO Canton(idCanton, cantonName, idProvince)
    VALUES (canton_seq.NEXTVAL, pcCantonname, pcIdprovince);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCanton;
/
--insert color
CREATE OR REPLACE PROCEDURE insertColor
(pcColordesc IN VARCHAR2)
AS
BEGIN 
    INSERT INTO Color(idColor, colorDesc)
    VALUES(color_seq.NEXTVAL, pcColordesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertColor;
/
--insert country
CREATE OR REPLACE PROCEDURE insertCountry
(pcCountryname IN VARCHAR2)
AS
BEGIN
    INSERT INTO Country(idCountry, countryName)
    VALUES(country_seq.NEXTVAL, pcCountryname);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCountry;
/
--INSERT DISEASE
CREATE OR REPLACE PROCEDURE insertDisease
(pcDiseasedesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Disease(idDisease, diseasedesc)
    VALUES(disease_seq.nextval, pcDiseasedesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertDisease;
/
--INSERT DISTRICT
CREATE OR REPLACE PROCEDURE insertDistrict
(pcDistrictname IN VARCHAR2, pcIdcanton IN NUMBER)
AS 
BEGIN
    INSERT INTO District(idDistrict, districtname, idcanton)
    VALUES(district_seq.nextval, pcDistrictname,pcIdcanton);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertDistrict;
/
--insertEase
CREATE OR REPLACE PROCEDURE insertEase
(pcEasedesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Ease(idease, easedesc)
    VALUES(ease_seq.nextval, pcEasedesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertEase;
/

--insertStatus
CREATE OR REPLACE PROCEDURE insertStatus
(pcStatusdesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO StatusPet(idstatus, Statusdesc)
    VALUES(ease_seq.nextval, pcStatusdesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertStatus;
/

--insertEnergy
CREATE OR REPLACE PROCEDURE insertEnergy
(pcEnergydesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Energy(idenergy, energydesc)
    VALUES(energy_seq.nextval, pcEnergydesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertEnergy;
/

--insertPerson
CREATE OR REPLACE PROCEDURE InsertPerson(
    p_idDistrict NUMBER,
    p_firstName VARCHAR2,
    p_secondName VARCHAR2,
    p_firstSurname VARCHAR2,
    p_secondSurname VARCHAR2,
    p_cedula NUMBER,
    p_birthday DATE,
    p_passwordUser VARCHAR2,
    p_email VARCHAR2,
    p_gender VARCHAR2
) AS
BEGIN
    INSERT INTO Person (idPerson, idDistrict, firstName, secondName, firstSurname, secondSurname, cedula, passwordUser, email, birthday, gender)
    VALUES (person_seq.NEXTVAL, p_idDistrict, p_firstName, p_secondName, p_firstSurname, p_secondSurname, p_cedula, RAWTOHEX(DBMS_OBFUSCATION_TOOLKIT.MD5(input_string => p_passwordUser)), p_email, p_birthday, p_gender);
    COMMIT;
END InsertPerson;
/
--insertPet
CREATE OR REPLACE PROCEDURE insertPet (
    p_idAnimal NUMBER,
    p_idRace NUMBER,
    p_petName VARCHAR2,
    p_petChip NUMBER,
    p_notes VARCHAR2,
    p_spent NUMBER,
    p_idEase NUMBER,
    p_idStatus NUMBER,
    p_idEnergy NUMBER,
    p_idSeverity NUMBER,
    p_idColor NUMBER,
    p_idRescuer NUMBER,
    p_idDistrict NUMBER
) AS
BEGIN
    INSERT INTO Pet (
        idPet,
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
        pet_seq.NEXTVAL,
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

    COMMIT;
END;
/

--insertPetadopted
CREATE OR REPLACE PROCEDURE insertPetAdopted
--(pcAdoptiondate IN VARCHAR2)
AS 
BEGIN
    INSERT INTO petAdopted(idpetadopted, adoptiondate)
    VALUES(PetAdopted_seq.nextval,current_date);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertPetAdopted;
/
--insertPetlost
CREATE OR REPLACE PROCEDURE insertPetlost
(pctypeCurrency IN VARCHAR2, pcreward IN NUMBER, pcidDistrict IN NUMBER)
AS 
BEGIN
    INSERT INTO petLost(idPetLost, petlostDate, typeCurrency, reward, idDistrict)
    VALUES(petLost_seq.nextval,current_date, pctypeCurrency, pcreward, pcidDistrict);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertPetlost;
/

--insertProvince
CREATE OR REPLACE PROCEDURE insertProvince
(pcProvincename IN VARCHAR2, pcidcountry IN NUMBER)
AS 
BEGIN
    INSERT INTO Province(idProvince, provincename,idcountry)
    VALUES(province_seq.nextval,pcProvincename,pcidcountry);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertProvince;
/
--insertRace
CREATE OR REPLACE PROCEDURE insertRace
(pcRacename IN VARCHAR2, pcAnimal IN NUMBER)
AS 
BEGIN
    INSERT INTO Race(idRace, racename, idAnimal)
    VALUES(race_seq.nextval,pcRacename, pcAnimal);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertRace;
/
--insertRescuer
CREATE OR REPLACE PROCEDURE insertRescuer
(pcidBlacklist IN NUMBER, pcidPerson IN NUMBER)
AS 
BEGIN
    INSERT INTO Rescuer(idRescuer, idBlacklist, idPerson)
    VALUES(rescuer_seq.nextval,pcidBlacklist, pcidPerson);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertRescuer;
/
--insertSeverity
CREATE OR REPLACE PROCEDURE insertSeverity
(pcSeveritydesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Severity(idSeverity, severityDesc)
    VALUES(severity_seq.nextval,pcSeveritydesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertSeverity;
/
--insertSpace
CREATE OR REPLACE PROCEDURE insertSeverity
(pcSeveritydesc IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Severity(idSeverity, severityDesc)
    VALUES(severity_seq.nextval,pcSeveritydesc);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertSeverity;
/
--insertTemphouse
CREATE OR REPLACE PROCEDURE insertTemphouse
(pcdonation IN VARCHAR2, pcIdDistrict IN NUMBER, pcusername IN VARCHAR2, pcpassword IN VARCHAR2)
AS 
BEGIN
    INSERT INTO tempHouse(idTemphouse, Donation, idDistrict, username, passwordth)
    VALUES(tempHouse_seq.nextval, pcdonation, pcIdDistrict, pcusername, RAWTOHEX(DBMS_OBFUSCATION_TOOLKIT.MD5(input_string => pcpassword)));
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertTemphouse;
/
--insertTest
CREATE OR REPLACE PROCEDURE insertTest
(pcquestion1 IN VARCHAR2, pcquestion2 IN VARCHAR2, pcquestion3 IN VARCHAR2, pcquestion4 IN VARCHAR2, pcquestion5 IN VARCHAR2)
AS 
BEGIN
    INSERT INTO Test(idTest, question1, question2, question3, question4, question5)
    VALUES(test_seq.nextval, pcquestion1, pcquestion2, pcquestion3, pcquestion4, pcquestion5);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertTest;
/
--insertTreatment
CREATE OR REPLACE PROCEDURE insertTreatment
(pcFunctiondate IN DATE)
AS 
BEGIN
    INSERT INTO Treatment(idTreatment, functionDate)
    VALUES(treatment_seq.nextval,pcFunctiondate);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertTreatment;
/

--insertAnimalXtemphouse
CREATE OR REPLACE PROCEDURE insertAnimalXtemphouse
(pcIdanimal IN NUMBER, pcidtemphouse IN NUMBER)
AS 
BEGIN
    INSERT INTO AnimalXtemphouse(IdAnimalXtemphouse, idAnimal, idtemphouse)
    VALUES(animalXtempHouse_seq.nextval,pcIdanimal,pcidtemphouse);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertAnimalXtemphouse;
/

--insertCandidateXblacklist
CREATE OR REPLACE PROCEDURE insertCandidateXblacklist
(pcIdcandidate IN NUMBER, pcidblacklist IN NUMBER)
AS 
BEGIN
    INSERT INTO candidateXblacklist(IdcandidateXblacklist, idCandidate, idBlacklist)
    VALUES(candidateXblacklist_seq.nextval,pcIdcandidate,pcidblacklist);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCandidateXblacklist;
/
--insertCandidateXfunction
CREATE OR REPLACE PROCEDURE insertCandidateXfunction
(pcIdcandidate IN NUMBER, pcidfunction IN NUMBER)
AS 
BEGIN
    INSERT INTO candidateXfunction(IdcandidateXfunction, idCandidate, idfunction)
    VALUES(candidateXfunction_seq.nextval,pcIdcandidate,pcidfunction);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCandidateXfunction;
/
--insertCandidateXpet
CREATE OR REPLACE PROCEDURE insertCandidateXpet
(pcIdcandidate IN NUMBER, pcidpet IN NUMBER)
AS 
BEGIN
    INSERT INTO candidateXpet(IdcandidateXpet, idCandidate, idpet)
    VALUES(candidateXpet_seq.nextval,pcIdcandidate,pcidpet);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertCandidateXpet;
/
--insertDiseaseXpet
CREATE OR REPLACE PROCEDURE insertDiseaseXpet
(pcIddisease IN NUMBER, pcidpet IN NUMBER)
AS 
BEGIN
    INSERT INTO diseaseXpet(IddiseaseXpet, idDisease, idpet)
    VALUES(diseaseXpet_seq.nextval,pcIddisease,pcidpet);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertDiseaseXpet;
/
--insertDiseaseXtreatment
CREATE OR REPLACE PROCEDURE insertDiseaseXtreatment
(pcIddisease IN NUMBER, pcidtreatment IN NUMBER)
AS 
BEGIN
    INSERT INTO diseaseXtreatment(IddiseaseXtreatment, idDisease, idtreatment)
    VALUES(diseaseXtreatment_seq.nextval,pcIddisease,pcidtreatment);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertDiseaseXtreatment;
/
--insertRescuerXtemphouse
CREATE OR REPLACE PROCEDURE insertRescuerXtemphouse
(pcIdrescuer IN NUMBER, pcidtemphouse IN NUMBER)
AS 
BEGIN
    INSERT INTO rescuerXtemphouse(IdrescuerXtemphouse, idRescuer, idtemphouse)
    VALUES(rescuerXtempHouse_seq.nextval,pcIdrescuer,pcidtemphouse);
    COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
        dbms_output.put_line('sucediï¿½ un error');
END insertRescuerXtemphouse;
/


CREATE OR REPLACE PROCEDURE InsertAdmin (
    p_usernameAdmin IN VARCHAR2,
    p_password IN VARCHAR2
)
AS

BEGIN

    INSERT INTO AdminUser (idAdmin, usernameAdmin, passwordAdmin)
    VALUES (admin_seq.nextval, p_usernameAdmin, RAWTOHEX(DBMS_OBFUSCATION_TOOLKIT.MD5(input_string => p_password)));
    
    COMMIT; 
    DBMS_OUTPUT.PUT_LINE('Admin user inserted successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK; 
END InsertAdmin;
/
CREATE OR REPLACE FUNCTION ComparePasswordAdmin (
    p_username IN VARCHAR2,
    p_input_password IN VARCHAR2
) RETURN NUMBER AS
    v_stored_password_hash VARCHAR2(32);
    v_input_password_hash VARCHAR2(32);
BEGIN
    SELECT passwordAdmin INTO v_stored_password_hash
    FROM AdminUser
    WHERE usernameAdmin = p_username;

    v_input_password_hash := RAWTOHEX(DBMS_CRYPTO.HASH(
        src => UTL_RAW.CAST_TO_RAW(p_input_password),
        typ => DBMS_CRYPTO.HASH_MD5
    ));

    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Contraseña correcta
    ELSE
        RETURN 0; -- Contraseña incorrecta
    END IF;
END ComparePasswordAdmin;
/

CREATE OR REPLACE FUNCTION ComparePasswordPerson (
    p_username IN VARCHAR2,
    p_input_password IN VARCHAR2
) RETURN NUMBER AS
    v_stored_password_hash VARCHAR2(32);
    v_input_password_hash VARCHAR2(32);
BEGIN
    SELECT passwordUser INTO v_stored_password_hash
    FROM Person
    WHERE email = p_username;

    v_input_password_hash := RAWTOHEX(DBMS_CRYPTO.HASH(
        src => UTL_RAW.CAST_TO_RAW(p_input_password),
        typ => DBMS_CRYPTO.HASH_MD5
    ));
    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Contraseña correcta
    ELSE
        RETURN 0; -- Contraseña incorrecta
    END IF;
END ComparePasswordPerson;
/


CREATE OR REPLACE FUNCTION ComparePasswordTH (
    p_username IN VARCHAR2,
    p_input_password IN VARCHAR2
) RETURN NUMBER AS
    v_stored_password_hash VARCHAR2(32);
    v_input_password_hash VARCHAR2(32);
BEGIN
    SELECT passwordTH INTO v_stored_password_hash
    FROM TempHouse
    WHERE username = p_username;

    v_input_password_hash := RAWTOHEX(DBMS_CRYPTO.HASH(
        src => UTL_RAW.CAST_TO_RAW(p_input_password),
        typ => DBMS_CRYPTO.HASH_MD5
    ));

    IF v_stored_password_hash = v_input_password_hash THEN
        RETURN 1; -- Contraseña correcta
    ELSE
        RETURN 0; -- Contraseña incorrecta
    END IF;
END ComparePasswordTH;
/


CREATE OR REPLACE FUNCTION GetPetsByRescuer(p_idRescuer NUMBER)
RETURN SYS_REFCURSOR
IS
    pets_cursor SYS_REFCURSOR;
BEGIN
    OPEN pets_cursor FOR
        SELECT p.idPet as ID, p.petname as Nombre, p.petchip as Chip, p.notes as Notas, c.colorDesc as Colorz, e.energyDesc as Energía
        FROM Pet p
        INNER JOIN Color c
        ON p.idcolor = c.idcolor
        INNER JOIN Energy e
        ON p.idEnergy = e.idEnergy -- Asegúrate de que el nombre de la columna sea "idEnergy"
        WHERE p.idRescuer = p_idRescuer;

    RETURN pets_cursor;
END;
/


CREATE OR REPLACE FUNCTION FindMatches(
    p_chip NUMBER,
    p_district NUMBER,
    p_name VARCHAR2,
    p_race VARCHAR2
)
RETURN SYS_REFCURSOR
IS
    pet_cursor SYS_REFCURSOR;
BEGIN
    OPEN pet_cursor FOR
        SELECT idPet, petName, petChip, idDistrict, idRace
        FROM Pet
        WHERE petChip = p_chip
        OR idDistrict = p_district
        AND petName = p_name
        AND idRace = p_race;
        
    RETURN pet_cursor;
END FindMatches;
/



CREATE OR REPLACE PROCEDURE deleteAnimal(
    pcAnimalID IN NUMBER
) AS
BEGIN
    -- Delete from dependent tables
    DELETE FROM Pet WHERE idAnimal = pcAnimalID;
    DELETE FROM Race WHERE idAnimal = pcAnimalID;
    DELETE FROM animalXTempHouse WHERE idAnimal = pcAnimalID;
    DELETE FROM candidateXanimal WHERE idAnimal = pcAnimalID;

    -- Delete from the Animal table
    DELETE FROM Animal WHERE idAnimal = pcAnimalID;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('An error occurred: ' || SQLERRM);
END deleteAnimal;
/

CREATE OR REPLACE PROCEDURE updateAnimal(
    pcAnimalID IN NUMBER,
    pcNewAnimalName IN VARCHAR2
) AS
BEGIN
    
    UPDATE Animal
    SET animalName = pcNewAnimalName
    WHERE idAnimal = pcAnimalID;

    COMMIT;
END updateAnimal;
/
