CREATE USER un
    IDENTIFIED BY un
    DEFAULT TABLESPACE un_data
    QUOTA 10M ON un_data
    TEMPORARY TABLESPACE temp;
GRANT connect to un;
GRANT create session to un;
GRANT create table to un;
GRANT create view to un;
GRANT create sequence to un;
GRANT create procedure to un;