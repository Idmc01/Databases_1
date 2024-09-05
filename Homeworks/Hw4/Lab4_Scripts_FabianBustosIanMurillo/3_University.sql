DROP TABLE university;
CREATE TABLE UNIVERSITY(
    id_university       NUMBER(6)       CONSTRAINT pk_university PRIMARY KEY,
    university_name     VARCHAR2(25)    CONSTRAINT university_universityName_nn NOT NULL
);