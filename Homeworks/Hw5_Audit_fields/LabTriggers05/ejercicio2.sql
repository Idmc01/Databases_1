--Ejercicio 2 - Lab 05 Triggers 
--Triggers de Insercion 

CREATE OR REPLACE TRIGGER ge.beforeInsertPerson 
BEFORE INSERT 
ON ge.person 
FOR EACH ROW 
BEGIN 
    :new.user_created_by := USER; 
    :new.creation_date := SYSDATE; 
END beforeInsertPerson; 

CREATE OR REPLACE TRIGGER ge.beforeInsertPhone
BEFORE INSERT 
ON ge.phone
FOR EACH ROW 
BEGIN 
    :new.user_created_by := USER; 
    :new.creation_date := SYSDATE; 
END beforeInsertPhone; 


--Triggers de Modificacion 
CREATE OR REPLACE TRIGGER ge.beforeUpdatePerson
BEFORE UPDATE 
ON ge.person 
FOR EACH ROW 
BEGIN 
    :new.user_modified_by := USER; 
    :new.last_modify_date := SYSDATE; 
END beforeUpdatePerson; 


CREATE OR REPLACE TRIGGER ge.beforeUpdatePhone
BEFORE UPDATE 
ON ge.phone 
FOR EACH ROW
BEGIN 
    :new.user_modified_by := USER; 
    :new.last_modify_date := SYSDATE; 
END beforeUpdatePhone; 



--Insercion de una persona 
INSERT INTO person (id_person, first_name, first_lastname, email, birth_date, salary) VALUES (22, 'Kenneth', 'Baldi', 'kennethBaldi@gmail.com', TO_DATE('1999-09-09', 'yyyy-mm-dd'), 1300);
SELECT id_person, first_name, first_lastname, creation_date, user_created_by FROM person WHERE id_person = 22; 

--Update de persona 
UPDATE person SET first_name = 'Pietro' WHERE id_person = 3;
SELECT id_person, first_name, first_lastname, last_modify_date, user_modified_by FROM person WHERE id_person = 3; 

--Triggers de phone 
INSERT INTO phone (id_phone, phone_number, phone_type, area_code) VALUES (12, 70003445, 'Celular', 506); 
UPDATE phone SET phone_type = 'Casa' WHERE id_phone = 12; 
SELECT id_phone, phone_number, phone_type, user_modified_by, last_modify_date FROM phone WHERE id_phone = 12; 

INSERT INTO phone (id_phone, phone_number, phone_type, area_code) VALUES (13, 70113045, 'Celular', 506); 
SELECT id_phone, phone_number, phone_type, user_created_by, creation_date FROM phone WHERE id_phone = 13; 


