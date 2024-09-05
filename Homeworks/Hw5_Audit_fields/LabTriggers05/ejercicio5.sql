--Ejercicio 5 - Lab 05 Triggers 

ALTER TABLE adm_bitacora ADD created_by VARCHAR2(10); 
ALTER TABLE adm_bitacora ADD creation_date DATE; 
ALTER TABLE adm_bitacora ADD updated_by VARCHAR2(10); 
ALTER TABLE adm_bitacora ADD update_date DATE; 

CREATE SEQUENCE s_bitacora 
START WITH 0
INCREMENT BY 1 
MINVALUE 0
MAXVALUE 100
NOCACHE
NOCYCLE; 

CREATE OR REPLACE TRIGGER beforeUpdateSalary 
BEFORE INSERT OR UPDATE 
OF salary 
ON ge.person 
FOR EACH ROW 
BEGIN 
INSERT INTO adm_bitacora(id_adm_bitacora, schema_name, table_name, column_name, last_value, current_value, updated_by, update_date)
VALUES (s_bitacora.nextval, 'Ge', 'Employee', 'Salary', :old.salary, :new.salary, USER, SYSDATE); 

END beforeUpdateSalary; 






