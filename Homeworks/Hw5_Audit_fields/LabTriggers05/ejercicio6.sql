--Ejercicio 6 - Lab 05 Triggers 
--===============================
--En el schema de la tabla Person 
--===============================

UPDATE ge.person SET salary = 4500 WHERE id_person = 3; 
SELECT * FROM PERSON 

--El Select (en Oracle SQL Developer, al menos) queda muy largo por los campos de last_value y current_value que los muestra enteros, 
--no encontre la forma de que el trim funcionara :) 
SELECT schema_name, table_name, column_name, RTRIM(last_value) AS last_val, current_value, updated_by FROM adm_bitacora
--SELECT * FROM ge.person