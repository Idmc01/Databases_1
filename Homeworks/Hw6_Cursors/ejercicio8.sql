--Ejercicio 8 

CREATE USER un
    IDENTIFIED BY un
    DEFAULT TABLESPACE ge_data
    QUOTA 10M ON ge_data
    TEMPORARY TABLESPACE temp 
    QUOTA 5M ON SYSTEM;
--El schema de UN ya estaba creado por lo que se incluyó comentado 

GRANT ALL PRIVILEGES TO un; 

CREATE TABLE student(
    id_student NUMBER(6) CONSTRAINT student_id_nn NOT NULL, 
    student_badge_number NUMBER(10), 
    first_name  VARCHAR2(30), 
    last_name   VARCHAR2(30)
);

ALTER TABLE student
ADD
CONSTRAINT pk_student PRIMARY KEY(id_grocery)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

CREATE TABLE course(
    id_course NUMBER(6), 
    course_name VARCHAR2(30), 
    course_status   VARCHAR2(30)
); 

ALTER TABLE course
ADD
CONSTRAINT pk_course PRIMARY KEY(id_course)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

CREATE TABLE studentXcourse(
    id_studentxcourse   NUMBER(6), 
    id_student          NUMBER(6), 
    id_course           NUMBER(6), 
    course_status       VARCHAR(20)
);

ALTER TABLE studentXcourse
ADD
CONSTRAINT pk_studentXcourse PRIMARY KEY(id_studentXcourse)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);


ALTER TABLE studentXCourse ADD CONSTRAINT fk_student_course FOREIGN KEY (id_student) REFERENCES student(id_student); 

ALTER TABLE studentXcourse ADD CONSTRAINT fk_student_Course_course FOREIGN KEY (id_course) REFERENCES course(id_course); 
INSERT INTO course (id_course, course_name) VALUES (1, 'History'); 
INSERT INTO course (id_course, course_name) VALUES (2, 'Science'); 
INSERT INTO course (id_course, course_name) VALUES (3, 'Math'); 

INSERT INTO student (id_student, first_name, last_name, email) VALUES(1, 'Juanito', 'Alimaña', 'juanito@gmail.com'); 
INSERT INTO student (id_student, first_name, last_name, email) VALUES(2, 'Ana', 'Marinez', 'anita@gmail.com'); 
INSERT INTO student (id_student, first_name, last_name, email) VALUES(3, 'Daniela', 'Soto', 'dani@gmail.com'); 
INSERT INTO student (id_student, first_name, last_name, email) VALUES(4, 'Willie', 'Colon', 'willie@gmail.com'); 
INSERT INTO student (id_student, first_name, last_name, email) VALUES(5, 'Pedro', 'Navaja', 'pedro@gmail.com'); 

INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (1, 1, 1, 'Aprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (2, 2, 1, 'Pendiente'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (3, 1, 2, 'Aprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (4, 2, 2, 'Reprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (5, 3, 2, 'Aprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (6, 1, 3, 'Aprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (7, 3, 3, 'Pendiente'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (8, 1, 4, 'Reprobado'); 
INSERT INTO studentXcourse(id_studentXcourse, id_course, id_student,  course_status) VALUES (9, 2, 4, 'Reprobado'); 

CREATE OR REPLACE PROCEDURE getCourses(pnIdStudent IN NUMBER, pnCourseStatus IN VARCHAR2)
AS
    vFirst VARCHAR2(30);
    vLast VARCHAR2(30);
    vStatus VARCHAR2(30); 
    cName VARCHAR2(30); 
CURSOR obtenerCursos(pnIdStudent IN NUMBER, pnCourseStatus IN VARCHAR2) 
IS 
    SELECT p.first_name, p.last_name, r.course_status, c.course_name
    INTO vFirst, vLast, vStatus, cName
    FROM student p 
    INNER JOIN studentxcourse r ON p.id_student = r.id_student
    INNER JOIN course c ON r.id_course = c.id_course 
    WHERE r.course_status = NVL(pnCourseStatus, r.course_status) AND p.id_student = pnIdStudent;
    
BEGIN 
    FOR i IN obtenerCursos(pnIdStudent, pnCourseStatus) LOOP 
        DBMS_OUTPUT.PUT_LINE(i.vFirst); 
        DBMS_OUTPUT.PUT_LINE(i.vLast); 
        DBMS_OUTPUT.PUT_LINE(i.vStatus); 
        DBMS_OUTPUT.PUT_LINE(i.cName); 
    END LOOP; 
END getCourses; 

SET SERVEROUTPUT ON; 
DECLARE 
    vIdStudent NUMBER:=1; 
    vStatus VARCHAR2:='Aprobado'; 
BEGIN 
    getCourses(vIdStudent, vStatus); 
END; 
        
    




