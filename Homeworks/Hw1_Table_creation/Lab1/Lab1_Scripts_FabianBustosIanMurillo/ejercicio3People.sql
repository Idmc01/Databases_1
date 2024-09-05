CREATE TABLE PEOPLE(
    id_people       NUMBER(6)   , 
    first_name      VARCHAR2(25)    CONSTRAINT people_firstName_nn NOT NULL, 
    second_name     VARCHAR2(25)    CONSTRAINT people_secondName_nn NOT NULL, 
    first_lastname  VARCHAR2(25)    CONSTRAINT people_firstLastname_nn NOT NULL, 
    second_lastname VARCHAR2(25)    CONSTRAINT people_secondLastname_nn NOT NULL, 
    email           VARCHAR2(25)    CONSTRAINT people_email_nn NOT NULL, 
    birth_date      DATE DEFAULT SYSDATE CONSTRAINT people_birthdate_nn NOT NULL
);