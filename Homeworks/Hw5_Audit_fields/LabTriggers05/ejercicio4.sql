-- Ejercicio 4 - Lab 05 Triggers 

CREATE TABLE adm_bitacora(
    id_adm_bitacora NUMBER(6) CONSTRAINT bitacora_id_nn NOT NULL, 
    schema_name     VARCHAR2(10), 
    table_name      VARCHAR2(30), 
    column_name     VARCHAR(30), 
    last_value      VARCHAR2(100), 
    current_value   VARCHAr2(100)
); 
--Primary Key 
ALTER TABLE adm_bitacora
ADD
CONSTRAINT pk_admBitacora PRIMARY KEY(id_adm_bitacora)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);