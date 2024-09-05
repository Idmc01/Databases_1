DROP TABLE student_seq;
CREATE TABLE STUDENT(
    id_student      NUMBER(6)       CONSTRAINT pk_student PRIMARY KEY,      
    first_name      VARCHAR2(25)     CONSTRAINT student_firstName_nn NOT NULL,
    first_surname   VARCHAR2(25)     CONSTRAINT student_firstSurname_nn NOT NULL,
    second_name     VARCHAR2(25),
    second_surname  VARCHAR2(25)     CONSTRAINT student_secondSurname_nn NOT NULL,
    student_id      NUMBER(10)     CONSTRAINT student_sId_nn NOT NULL,
    email           VARCHAR2(25)     CONSTRAINT student_email_nn NOT NULL,
    id_career       NUMBER(6)
);
