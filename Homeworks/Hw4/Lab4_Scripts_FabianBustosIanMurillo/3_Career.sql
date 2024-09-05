DROP TABLE career;
CREATE TABLE CAREER(
    id_career       NUMBER(6)   CONSTRAINT pk_career PRIMARY KEY,
    career_name     VARCHAR2(25) CONSTRAINT career_careerName_nn NOT NULL,
    id_campus   NUMBER(6)
);