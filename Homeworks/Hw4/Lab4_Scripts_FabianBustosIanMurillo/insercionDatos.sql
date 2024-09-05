INSERT INTO University (id_university, university_name)
VALUES(university_seq.NEXTVAL,'TEC');

INSERT INTO Campus(id_campus, campus_name,id_university)
VALUES (campus_seq.NEXTVAL,'San José', university_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Ing.Computacion', campus_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Ing.Forestal', campus_seq.CURRVAL);

INSERT INTO Campus(id_campus, campus_name, id_university)
VALUES (campus_seq.NEXTVAL, 'Cartago', university_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Ing.Prod.Industrial', campus_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Admin.Empresas', campus_seq.CURRVAL);

--------------------------------------------------------------------------------------------
INSERT INTO University (id_university, university_name)
VALUES(university_seq.NEXTVAL,'UCR');

INSERT INTO Campus(id_campus, campus_name,id_university)
VALUES (campus_seq.NEXTVAL,'San Pedro', university_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Criminología', campus_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Enseñanza. Matematicas', campus_seq.CURRVAL);

INSERT INTO Campus(id_campus, campus_name, id_university)
VALUES (campus_seq.NEXTVAL, 'Alajuela', university_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Enseñanza.Est.Sociales', campus_seq.CURRVAL);

INSERT INTO Career(id_career, career_name, id_campus)
Values (career_seq.NEXTVAL, 'Animación digital', campus_seq.CURRVAL);

SELECT * FROM Student;

----------------------------------------------------------------------------------------------------
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Juan','Andres','Perez','Guzman',2020147165,'jperez@gmail.com',2);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'John', 'Doe', 'Smith', 'Johnson',2022352732,'jsmith@gmail.com',2);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Michael', 'James', 'Wilson', 'Anderson',2022619817,'mwilson@gmail.com',3);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Emily', 'Grace', 'Miller', 'Moore',2022563471,'emiller@gmail.com',3);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'David', 'Robert', 'Taylor', 'Clark',2021644362,'dtaylor@gmail.com',4);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Christopher', 'William', 'Martin', 'Hall',2022155247,'cmartin@gmail.com',4);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Britney', 'Nicole', 'Walker', 'Lewis',2022305894,'bwalker@gmail.com',5);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Andrew', 'Thomas', 'White', 'Lee',2023045856,'awhite@gmail.com',5);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Olivia', 'Sophia', 'Jackson', 'Turner',2020191962,'ojackson@gmail.com',6);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Emma', 'Ava', 'Adams', 'Parker',2020917312,'eadams@gmail.com',6);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Brian', 'Joseph', 'Wright', 'King',2022565639,'bwright@gmail.com',7);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Isabella', 'Olivia', 'Hall', 'Ward',2020709386,'ihall@gmail.com',7);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'James', 'Benjamin', 'Moore', 'Hayes',2020488170,'jmoore@gmail.com',8);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Sophia', 'Harper', 'Hernandez', 'Morris',2021001505,'shernandez@gmail.com',8);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'bree', 'Lucas', 'Gonzalez', 'Perez',2021910954,'bgonzales@gmail.com',9);
INSERT INTO Student (id_student, first_name,second_name, first_surname, second_surname, student_id, email, id_career)
VALUES (student_seq.NEXTVAL, 'Jose','Pablo','Gomez','Murillo',2021247925,'jgomez@gmail.com',9);