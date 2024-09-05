--tabla country
CREATE TABLE Country(
    idCountry NUMBER(6) CONSTRAINT pk_country PRIMARY KEY,
    countryName VARCHAR2(20) CONSTRAINT country_name_nn NOT NULL
);
--tabla province
CREATE TABLE Province(
    idProvince NUMBER(6) CONSTRAINT pk_province PRIMARY KEY,
    provinceName VARCHAR2(20) CONSTRAINT province_name_nn NOT NULL,
    idCountry CONSTRAINT fk_idCountry REFERENCES Country(idCountry)
);
--tabla Canton
CREATE TABLE Canton(
    idCanton NUMBER(6) CONSTRAINT pk_canton PRIMARY KEY,
    cantonName VARCHAR2(20) CONSTRAINT canton_name_nn NOT NULL,
    idProvince CONSTRAINT fk_idProvince REFERENCES Province(idProvince)
);
--tabla District
CREATE TABLE District(
    idDistrict NUMBER(6) CONSTRAINT pk_district PRIMARY KEY,--cambio 1 IdDistrict
    districtName VARCHAR2(20) CONSTRAINT district_name_nn NOT NULL,
    idCanton CONSTRAINT fk_idCanton REFERENCES Canton(idCanton)
);



--tabla animal
CREATE TABLE Animal(
    idAnimal NUMBER(6) CONSTRAINT pk_animal PRIMARY KEY,
    animalName VARCHAR2(20) CONSTRAINT animal_name_nn NOT NULL
);

--table ease
CREATE TABLE ease(
    idEase NUMBER(6) CONSTRAINT pk_idEase PRIMARY KEY,
    easeDesc VARCHAR2(20) CONSTRAINT ease_desc_nn NOT NULL
);


--tabla Energy
CREATE TABLE Energy(
    idEnergy NUMBER(6) CONSTRAINT pk_idEnergy PRIMARY KEY,
    energyDesc VARCHAR2(20) CONSTRAINT energy_desc_nn NOT NULL
);


--table Severity
CREATE TABLE severity(
    idSeverity NUMBER(6) CONSTRAINT pk_idSeverity PRIMARY KEY,
    severityDesc VARCHAR2(20) CONSTRAINT severity_desc_nn NOT NULL
);


--tabla disease
CREATE TABLE disease(
    idDisease NUMBER(6) CONSTRAINT pk_idDisease PRIMARY KEY,
    diseaseDesc VARCHAR2(20) CONSTRAINT disease_desc_nn NOT NULL
);


-- table color
CREATE TABLE color(
    idColor NUMBER(6) CONSTRAINT pk_idColor PRIMARY KEY,
    colorDesc VARCHAR2(20) CONSTRAINT color_desc_nn NOT NULL
);

--table Race 
CREATE TABLE Race(
    idRace NUMBER(6) CONSTRAINT pk_idRace PRIMARY KEY,--cambie este id
    RaceName VARCHAR2(20) CONSTRAINT Race_name_nn NOT NULL,
    idAnimal NUMBER(6) CONSTRAINT fk_idAnimalRace REFERENCES Animal(idAnimal)
);


--tabla Treatment
CREATE TABLE Treatment(
    idTreatment NUMBER(6) CONSTRAINT pk_idTreatment PRIMARY KEY,
    functiondate DATE CONSTRAINT function_date_nn NOT NULL
);


CREATE TABLE Person(
    idPerson NUMBER(6) CONSTRAINT pk_idPerson PRIMARY KEY,
    idDistrict NUMBER(6) CONSTRAINT fk_idDistrictaPRSN REFERENCES District(idDistrict),
    gender VARCHAR(6) CONSTRAINT person_gender_nn NOT NULL,
    firstName VARCHAR(20) CONSTRAINT person_firstName_nn NOT NULL,
    secondName VARCHAR(20),
    firstSurname VARCHAR(25) CONSTRAINT person_fs_nn NOT NULL,
    secondSurname VARCHAR(25) CONSTRAINT person_ss_nn NOT NULL,
    cedula  NUMBER (9) CONSTRAINT person_cedula_nn NOT NULL,  
    passwordUser VARCHAR2(64) CONSTRAINT person_password_nn NOT NULL,
    email VARCHAR2(35) Constraint person_email_nn NOT NULL,
    birthday DATE CONSTRAINT person_birthday_nn NOT NULL
);
ALTER TABLE Person
ADD CONSTRAINT person_cedula_unica UNIQUE (cedula);
ALTER TABLE Person
ADD CONSTRAINT person_email_unico UNIQUE (email);


CREATE TABLE AdminUser(
    idAdmin NUMBER(6) CONSTRAINT pk_idAdmin PRIMARY KEY,
    usernameAdmin VARCHAR2(20) CONSTRAINT admin_username_nn NOT NULL,
    passwordAdmin VARCHAR2(64) CONSTRAINT admin_password_nn NOT NULL
);


--tABLA rescuer
CREATE TABLE Rescuer(
    idRescuer NUMBER(6) CONSTRAINT pk_idRescuer PRIMARY KEY,
    idPerson NUMBER(6) CONSTRAINT fk_idPersonRescuer REFERENCES Person(idPerson)    
);

CREATE TABLE StatusPet(
    idStatus NUMBER(6) CONSTRAINT pk_idStatus PRIMARY KEY,
    StatusDesc VARCHAR2(20) CONSTRAINT status_desc_nn NOT NULL
);

CREATE TABLE stars(
    idStars NUMBER(6) CONSTRAINT pk_idStars PRIMARY KEY,
    stars NUMBER(5) CONSTRAINT  stars_nn NOT NULL
);


--tabla pet

CREATE TABLE Pet(
    idPet NUMBER(6) Constraint pk_idPet PRIMARY KEY,
    idAnimal NUMBER(6) CONSTRAINT fk_idAnimalPT REFERENCES Animal(idAnimal),
    idRace NUMBER(6) CONSTRAINT fk_idRacePT REFERENCES Race(idRace),
    petName VARCHAR2(20) CONSTRAINT pet_name_nn NOT NULL,
    petChip NUMBER(6),
    spent NUMBER(7) CONSTRAINT pet_spent_nn NOT NULL,
    notes VARCHAR2(100),
    idEase NUMBER(6) CONSTRAINT fk_idEasePT REFERENCES Ease(idEase),
    idStatus NUMBER(6) CONSTRAINT fk_idStatusPT REFERENCES StatusPet(idStatus),
    idEnergy NUMBER(6) CONSTRAINT fk_idEnergy REFERENCES Energy(idEnergy),
    idSeverity NUMBER(6) CONSTRAINT fk_idSeverityPT REFERENCES Severity(idSeverity),
    idColor NUMBER(6) CONSTRAINT fk_idColorPT REFERENCES Color(idColor),
    idRescuer NUMBER(6) CONSTRAINT fk_idRescuerPT REFERENCES Rescuer(idRescuer),
    idDistrict NUMBER(6) CONSTRAINT fk_idDistrictPT REFERENCES District(idDistrict) NOT NULL
);

--tabla Candidate
CREATE TABLE candidate(
    idCandidate NUMBER(6) CONSTRAINT pk_idCandidate PRIMARY KEY,
    ownHouse NUMBER(1,0) CONSTRAINT candidate_ownHouse_nn NOT NULL,
    candidatepermission NUMBER(1,0) CONSTRAINT candidate_Permission_nn NOT NULL,
    budget NUMBER (7) CONSTRAINT candidate_budget_nn NOT NULL,
    idstars NUMBER(6) CONSTRAINT fk_stars REFERENCES stars(idStars),
    notes VARCHAR2(20),
    idPerson NUMBER(6) CONSTRAINT fk_idPersonCand REFERENCES Person(idPerson)--Nuevo
);

--tabla blacklist
CREATE TABLE blacklist(
    idBlackList NUMBER(6) CONSTRAINT pk_idBlackList PRIMARY KEY,
    blacklistDate DATE CONSTRAINT blacklist_date_nn NOT NULL,
    idRescuer NUMBER(6) CONSTRAINT fk_idblacklistRescuer REFERENCES Rescuer(idRescuer),
    idCandidate NUMBER(6) CONSTRAINT fk_idblacklistCandidate REFERENCES Candidate(idcandidate)
);

--tabla test 
CREATE TABLE Test(
    idTest NUMBER(6) CONSTRAINT pk_idTest PRIMARY KEY,
    question1 VARCHAR2(50) CONSTRAINT test_questions1_nn NOT NULL,
    question2 VARCHAR2(50) CONSTRAINT test_questions2_nn NOT NULL,
    question3 VARCHAR2(50) CONSTRAINT test_questions3_nn NOT NULL,
    question4 VARCHAR2(50) CONSTRAINT test_questions4_nn NOT NULL,
    question5 VARCHAR2(50) CONSTRAINT test_questions5_nn NOT NULL,
    idCandidate NUMBER(6) CONSTRAINT fk_idCandidate REFERENCES Candidate(idCandidate)
);




--tabla Pet Adopted
CREATE TABLE PetAdopted(
    idpetAdopted NUMBER(6) constraint pk_petAdopted PRIMARY KEY,
    adoptionDate DATE CONSTRAINT petAdopted_date_nn NOT NULL,
    idPet NUMBER(6) CONSTRAINT fk_idPetA REFERENCES Pet(idPet), --Nuevo
    idCandidate NUMBER(6) CONSTRAINT fk_idCandidateA REFERENCES Candidate(idCandidate) --Nuevo 
);


--tabla petLost
CREATE TABLE petLost(
    idPetLost NUMBER(6) CONSTRAINT pk_petLost PRIMARY KEY,
    petLostDate DATE CONSTRAINT petLost_date_nn NOT NULL,
    typeCurrency VARCHAR2(20) CONSTRAINT petlost_typeCurrency_nn NOT NULL,
    reward NUMBER(6) CONSTRAINT petLost_reward_nn NOT NULL,
    idDistrict CONSTRAINT fk_idDistrict REFERENCES District(idDistrict),
    idPet NUMBER(6) CONSTRAINT fk_idPetL REFERENCES Pet(idPet)

);

--tabla tempHouse 
CREATE TABLE tempHouse(
    idTempHouse NUMBER(6) CONSTRAINT pk_idTempHouse PRIMARY KEY,
    donation NUMBER(8) CONSTRAINT tempHouse_donation_nn NOT NULL,
    idDistrict NUMBER(6) CONSTRAINT fk_idPersonT REFERENCES District(idDistrict),
    username VARCHAR2(35) CONSTRAINT tempHouse_userName_nn NOT NULL,
    passwordTH VARCHAR2(64) CONSTRAINT tempHouse_password_nn NOT NULL
);


--tabla animalXtempHouse
CREATE TABLE animalXTempHouse(
    idanimalXTempHouse NUMBER(6) CONSTRAINT pk_idanimalXTempHouse PRIMARY KEY,
    idAnimal NUMBER(6) CONSTRAINT fk_idAnimalaXt REFERENCES Animal(idAnimal),
    idTempHouse NUMBER(6) CONSTRAINT fk_idTempHouseaXt REFERENCES TempHouse(idTempHouse)
);
--tabla diseaseXpet
CREATE TABLE diseaseXpet(
    iddiseaseXpet NUMBER(6) CONSTRAINT pk_iddiseaseXpet PRIMARY KEY,
    idDisease NUMBER(6) CONSTRAINT fk_idDiseasedXp REFERENCES Disease(idDisease),
    idPet NUMBER(6) CONSTRAINT fk_idPetdXp REFERENCES Pet(idPet)
);

--tabla candidateXpet
CREATE TABLE candidateXpet(
    idcandidateXpet NUMBER(6) CONSTRAINT pk_idcandidateXpet PRIMARY KEY,
    idCandidate NUMBER(6) CONSTRAINT fk_idCandidatecXp REFERENCES Candidate(idCandidate),
    idPet NUMBER(6) CONSTRAINT fk_idPetcXp REFERENCES Pet(idPet)
);
--tabla rescuerXtempHouse
CREATE TABLE rescuerXtempHouse(
    idrescuerXtempHouse NUMBER(6) CONSTRAINT pk_idrescuerXtempHouse PRIMARY KEY,
    idRescuer NUMBER(6) CONSTRAINT fk_idRescuerrXt REFERENCES Rescuer(idRescuer),
    idTempHouse NUMBER(6) CONSTRAINT fk_idTempHouserXt REFERENCES TempHouse(idTempHouse)
);


--Tabla resultados grafico 1
CREATE GLOBAL TEMPORARY TABLE Results(
    idAnimal NUMBER,
    count NUMBER
)ON COMMIT DELETE ROWS;
--tabla top n race
CREATE GLOBAL TEMPORARY TABLE topNrace(
    race VARCHAR2(25),
    count NUMBER
)ON COMMIT DELETE ROWS;







