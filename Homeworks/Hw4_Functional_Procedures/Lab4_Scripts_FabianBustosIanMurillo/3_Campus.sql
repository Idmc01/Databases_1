DROP TABLE campus;
CREATE TABLE CAMPUS(
    id_campus       NUMBER(6)   CONSTRAINT pk_campus PRIMARY KEY,
    campus_name     VARCHAR2(25) CONSTRAINT campus_campusName_nn NOT NULL,
    id_university   NUMBER(6)
);