CREATE USER ge
    IDENTIFIED BY ge
    DEFAULT TABLESPACE ge_data
    QUOTA 10M ON ge_data
    TEMPORARY TABLESPACE temp 
    QUOTA 5M ON SYSTEM; 

GRANT CONNECT TO ge; 
GRANT CREATE SESSION TO ge; 

GRANT CREATE TABLE TO ge; 
GRANT CREATE VIEW TO ge; 

-- a.) Se pueden crear varios esquemas en la misma BD? 
--     Si, es posible crear varios esquemas en una sola base de datos y es preferible para manejar de una mejor forma 
--     las operaciones dentro de una base de datos 

-- b.) Cual es el proposito de crear mas de un esquema en la misma BD? 
--     Tener un mejor control de la administracion y las funciones que se tienen sobre la base de datos