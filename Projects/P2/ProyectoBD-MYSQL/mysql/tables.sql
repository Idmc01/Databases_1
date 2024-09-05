USE Proyecto;
#TABLE Country

select * from animal;
select * from pet;
select * from person;
select * from candidate;
select * from rescuer;
select * from temphouse;

ALTER TABLE District MODIFY COLUMN districtName VARCHAR(225);
ALTER TABLE Disease MODIFY COLUMN diseaseDesc VARCHAR(225);
ALTER TABLE Energy MODIFY COLUMN energyDesc VARCHAR(225);
ALTER TABLE Race MODIFY COLUMN raceName VARCHAR(225);

CREATE TABLE Country(
    idCountry INT(6) NOT NULL AUTO_INCREMENT,
    countryName VARCHAR(20) NOT NULL,
    PRIMARY KEY (idCountry)
);
#TABLE Province
CREATE TABLE Province(
    idProvince INT(6) NOT NULL AUTO_INCREMENT,
    provinceName VARCHAR(20) NOT NULL,
    idCountry INT(6) NOT NULL,
    PRIMARY KEY (idProvince),
    FOREIGN KEY (idCountry) REFERENCES Country(idCountry)
);
#TABLE CANTON
CREATE TABLE Canton(
    idCanton INT(6) NOT NULL AUTO_INCREMENT,
    cantonName VARCHAR(20) NOT NULL,
    idProvince INT(6) NOT NULL,
    PRIMARY KEY (idCanton),
    FOREIGN KEY (idProvince) REFERENCES Province(idProvince)
);
#TABLE District
CREATE TABLE District(
    idDistrict INT(6) NOT NULL AUTO_INCREMENT,
    districtName VARCHAR(20) NOT NULL,
    idCanton INT(6) NOT NULL,
    PRIMARY KEY (idDistrict),
    FOREIGN KEY (idCanton) REFERENCES Canton(idCanton)
);

#TABLE Animal
CREATE TABLE Animal(
    idAnimal INT(6) NOT NULL AUTO_INCREMENT,
    animalName VARCHAR(20) NOT NULL,
    PRIMARY KEY (idAnimal)
);
#TABLE Ease
CREATE TABLE ease(
    idEase INT(6) NOT NULL AUTO_INCREMENT,
    easeDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idEase)
);
#TABLE Energy
CREATE TABLE Energy(
    idEnergy INT(6) NOT NULL AUTO_INCREMENT,
    energyDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idEnergy)
);
#TABLE Severity
CREATE TABLE severity(
    idSeverity INT(6) NOT NULL AUTO_INCREMENT,
    severityDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idSeverity)
);
#TABLE Disease
CREATE TABLE disease(
    idDisease INT(6) NOT NULL AUTO_INCREMENT,
    diseaseDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idDisease)
);

#TABLE Color
CREATE TABLE color(
    idColor INT(6) NOT NULL AUTO_INCREMENT,
    colorDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idColor)
);
#TABLE Race
CREATE TABLE Race(
    idRace INT(6) NOT NULL AUTO_INCREMENT,
    RaceName VARCHAR(20) NOT NULL,
    idAnimal INT(6),
    PRIMARY KEY (idRace),
	FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal)
);
#TABLE Treatment
CREATE TABLE Treatment(
    idTreatment INT(6) NOT NULL AUTO_INCREMENT,
    functiondate DATETIME NOT NULL,
    PRIMARY KEY (idTreatment)
);
#TABLE Person
CREATE TABLE Person(
    idPerson INT(6) NOT NULL AUTO_INCREMENT,
    idDistrict INT(6) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    firstName VARCHAR(20) NOT NULL,
    secondName VARCHAR(20) NULL,
    firstSurname VARCHAR(25) NOT NULL,
    secondSurname VARCHAR(25) NOT NULL,
    cedula  INT (9) NOT NULL,  
    passwordUser VARCHAR(64) NOT NULL,
    email VARCHAR(35) NOT NULL,
    birthday DATETIME NOT NULL,
    PRIMARY KEY (idPerson),
    FOREIGN KEY (idDistrict) REFERENCES District(idDistrict)
);
ALTER TABLE Person
ADD CONSTRAINT unique_cedula UNIQUE (cedula);
ALTER TABLE Person
ADD CONSTRAINT unique_email UNIQUE (email);
#TABLE AdminUser
CREATE TABLE AdminUser(
    idAdmin INT(6) NOT NULL AUTO_INCREMENT,
    usernameAdmin VARCHAR(20) NOT NULL,
    passwordAdmin VARCHAR(64) NOT NULL,
    PRIMARY KEY (idAdmin)
);

SELECT * FROM AdminUser;

#TABLE Rescuer
CREATE TABLE Rescuer(
    idRescuer INT(6) NOT NULL AUTO_INCREMENT,
    idPerson INT(6) NOT NULL,
    PRIMARY KEY (idRescuer),
	FOREIGN KEY (idPerson) REFERENCES Person(idPerson)
);
#TABLE StatusPet
CREATE TABLE StatusPet(
    idStatus INT(6) NOT NULL AUTO_INCREMENT,
    StatusDesc VARCHAR(20) NOT NULL,
    PRIMARY KEY (idStatus)
);
#Table Stars
CREATE TABLE stars(
    idStars INT(6) NOT NULL,
    stars INT(5) NOT NULL,
	PRIMARY KEY (idStars)
);


DROP TABLE PETLOST;

ALTER TABLE Pet
MODIFY COLUMN idRescuer INT(6) NULL;

ALTER TABLE Pet
DROP COLUMN idRescuer;




#Table pet
CREATE TABLE Pet(
    idPet INT(6) NOT NULL AUTO_INCREMENT,
    idAnimal INT(6) NOT NULL,
    idRace INT(6) NOT NULL,
    petName VARCHAR(20) NOT NULL,
    petChip INT(6),
    spent INT(7) NOT NULL,
    notes VARCHAR(100),
    idEase INT(6) NOT NULL,
    idStatus INT(6) NOT NULL,
    idEnergy INT(6) NOT NULL,
    idSeverity INT(6) NOT NULL,
    idColor INT(6) NOT NULL,
    idRescuer INT(6) NOT NULL,
    idDistrict INT(6) NOT NULL,
    PRIMARY KEY (idPet),
    FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal),
    FOREIGN KEY (idRace) REFERENCES Race(idRace),
    FOREIGN KEY (idEase) REFERENCES Ease(idEase),
    FOREIGN KEY (idStatus) REFERENCES StatusPet(idStatus),
    FOREIGN KEY (idEnergy) REFERENCES Energy(idEnergy),
    FOREIGN KEY (idSeverity) REFERENCES Severity(idSeverity),
    FOREIGN KEY (idColor) REFERENCES Color(idColor),
    FOREIGN KEY (idRescuer) REFERENCES Rescuer(idRescuer),
    FOREIGN KEY (idDistrict) REFERENCES District(idDistrict)
);



ALTER TABLE candidate
MODIFY COLUMN idstars INT(6) NULL;

#TABLE Candidate
CREATE TABLE candidate(
    idCandidate INT(6) NOT NULL AUTO_INCREMENT,
    ownHouse INT NOT NULL,
    candidatepermission INT NOT NULL,
    budget INT (7) NOT NULL,
    idstars INT(6) NOT NULL,
    notes VARCHAR(20),
    idPerson INT(6) NOT NULL,
    PRIMARY KEY (idCandidate),
    FOREIGN KEY (idstars) REFERENCES Stars(idstars),
    FOREIGN KEY (idPerson) REFERENCES Person(idPerson)
);
#TABLE Blacklist
CREATE TABLE blacklist(
    idBlackList INT(6) NOT NULL AUTO_INCREMENT,
    blacklistDate DATETIME NOT NULL,
    idRescuer INT(6) NOT NULL,
    idCandidate INT(6) NOT NULL,
    PRIMARY KEY (idBlackList),
    FOREIGN KEY (idRescuer) REFERENCES Rescuer(idRescuer),
    FOREIGN KEY (idCandidate) REFERENCES Candidate(idCandidate)
);
#TABLE Test
CREATE TABLE Test(
    idTest INT(6) NOT NULL AUTO_INCREMENT,
    question1 VARCHAR(50) NOT NULL,
    question2 VARCHAR(50) NOT NULL,
    question3 VARCHAR(50) NOT NULL,
    question4 VARCHAR(50) NOT NULL,
    question5 VARCHAR(50) NOT NULL,
    idCandidate INT(6) NOT NULL,
    PRIMARY KEY (idTest),
    FOREIGN KEY (idCandidate) REFERENCES Candidate(idCandidate)
);
#TABLE PetAdopted
CREATE TABLE PetAdopted(
    idpetAdopted INT(6) NOT NULL AUTO_INCREMENT,
    adoptionDate DATETIME NOT NULL,
    idPet INT(6) NOT NULL,
    idCandidate INT(6) NOT NULL,
    PRIMARY KEY (idpetAdopted),
    FOREIGN KEY (idPet) REFERENCES Pet(idPet),
    FOREIGN KEY (idCandidate) REFERENCES Candidate(idCandidate)
);
#TABLE PetLost
CREATE TABLE petLost(
    idPetLost INT(6) NOT NULL AUTO_INCREMENT,
    petLostDate DATETIME NOT NULL,
    typeCurrency VARCHAR(20) NOT NULL,
    reward INT(6) NOT NULL,
    idDistrict INT NOT NULL,
    idPet INT(6) NOT NULL,
    PRIMARY KEY (idPetLost),
    FOREIGN KEY (idDistrict) REFERENCES District(idDistrict),
    FOREIGN KEY (idPet) REFERENCES Pet(idPet)
);
#TABLE TempHouse
CREATE TABLE tempHouse(
    idTempHouse INT(6) NOT NULL AUTO_INCREMENT,
    donation INT(8) NOT NULL,
    idDistrict INt(6) NOT NULL,
    username VARCHAR(35) NOT NULL,
    passwordTH VARCHAR(64) NOT NULL,
    PRIMARY KEY (idTempHouse),
	FOREIGN KEY (idDistrict) REFERENCES District(idDistrict)
);
#TABLe AnimalXTempHouse
CREATE TABLE animalXTempHouse(
    idanimalXTempHouse INT(6) NOT NULL AUTO_INCREMENT,
    idAnimal INT(6) NOT NULL,
    idTempHouse INT(6) NOT NULL,
    PRIMARY KEY (idanimalXTempHouse),
    FOREIGN KEY (idAnimal) REFERENCES Animal(idAnimal),
    FOREIGN KEY (idTempHouse) REFERENCES tempHouse(idTempHouse)
);
#Table DiseaseXPet
CREATE TABLE diseaseXpet(
    iddiseaseXpet INT(6) NOT NULL AUTO_INCREMENT,
    idDisease Int(6) NOT NULL,
    idPet INT(6) NOT NULL,
    PRIMARY KEY (iddiseaseXpet),
	FOREIGN KEY (idDisease) REFERENCES Disease(idDisease),
    FOREIGN KEY (idPet) REFERENCES pet(idPet)
);
#TAble CandidateXPet
CREATE TABLE candidateXpet(
    idcandidateXpet INT(6) NOT NULL AUTO_INCREMENT,
    idCandidate INT(6) NOT NULL,
    idPet INT(6) NOT NULL,
    PRIMARY KEY (idcandidateXpet),
	FOREIGN KEY (idCandidate) REFERENCES candidate(idCandidate),
    FOREIGN KEY (idPet) REFERENCES pet(idPet)
);
#table RescuerXTemphouse
CREATE TABLE rescuerXtempHouse(
    idrescuerXtempHouse INT(6) NOT NULL AUTO_INCREMENT,
    idRescuer INT(6) NOT NULL,
    idTempHouse INT(6) NOT NULL,
	PRIMARY KEY (idrescuerXtempHouse),
	FOREIGN KEY (idRescuer) REFERENCES Rescuer(idRescuer),
    FOREIGN KEY (idTempHouse) REFERENCES temphouse(idTempHouse)
);
#TABLE RESULTS GRAPHIC 1
CREATE TEMPORARY TABLE Results (
    idAnimal INT,
    count INT
);
#table top n race
CREATE TEMPORARY TABLE topNrace (
    race varchar(25),
    count INT
);

