--Ejercicio 1 - Lab 05 Triggers 

ALTER TABLE person ADD creation_date DATE; 
ALTER TABLE person ADD user_created_by VARCHAR2(10);
ALTER TABLE person ADD last_modify_date DATE; 
ALTER TABLE person ADD user_modified_by DATE; 

ALTER TABLE phone ADD creation_date DATE; 
ALTER TABLE phone ADD user_created_by VARCHAR2(10);
ALTER TABLE phone ADD last_modify_date DATE; 
ALTER TABLE phone ADD user_modified_by DATE; 

COMMENT ON COLUMN person.creation_date IS 'Creation audit space'; 
COMMENT ON COLUMN person.user_created_by IS 'Creator user audit space'; 
COMMENT ON COLUMN person.last_modify_date IS 'Update date audit space'; 
COMMENT ON COLUMN person.user_modified_by IS 'Update user audit space'; 

COMMENT ON COLUMN phone.creation_date IS 'Creation audit space'; 
COMMENT ON COLUMN phone.user_created_by IS 'Creator user audit space'; 
COMMENT ON COLUMN phone.last_modify_date IS 'Update date audit space'; 
COMMENT ON COLUMN phone.user_modified_by IS 'Update user audit space'; 

