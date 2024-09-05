CREATE TABLE phone(
    id_phone        NUMBER(6), 
    phone_number    NUMBER(8)   CONSTRAINT phone_phoneNumber_nn NOT NULL, 
    area_code       NUMBER(3), 
    id_people       NUMBER(6)
);