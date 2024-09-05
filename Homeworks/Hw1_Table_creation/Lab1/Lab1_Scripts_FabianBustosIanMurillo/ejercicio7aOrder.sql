CREATE TABLE orderG(
    id_orderG       NUMBER(6), 
    total_cost     NUMBER(10)   CONSTRAINT order_cost_nn NOT NULL, 
    total_groceries NUMBER(10)  CONSTRAINT order_total_nn NOT NULL, 
    id_people       NUMBER(6)
);

ALTER TABLE orderG
ADD
CONSTRAINT pk_orderG PRIMARY KEY(id_orderG)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);