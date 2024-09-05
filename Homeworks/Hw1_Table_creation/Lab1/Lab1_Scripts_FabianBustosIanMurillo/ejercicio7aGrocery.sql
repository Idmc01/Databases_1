CREATE TABLE grocery(
    id_grocery       NUMBER(6), 
    type_grocery     VARCHAR(25)   CONSTRAINT type_grocery_nn NOT NULL, 
    amount           NUMBER(6) CONSTRAINT grocery_amount_nn NOT NULL, 
    id_order         NUMBER(6), 
    id_price         NUMBER(6)
);

ALTER TABLE grocery
ADD
CONSTRAINT pk_grocery PRIMARY KEY(id_grocery)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);