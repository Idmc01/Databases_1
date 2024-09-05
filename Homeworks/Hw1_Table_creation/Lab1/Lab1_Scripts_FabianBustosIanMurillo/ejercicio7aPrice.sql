CREATE TABLE price(
    id_price       NUMBER(6), 
    cost           NUMBER(25)   CONSTRAINT price_cost_nn NOT NULL, 
    currency       VARCHAR(10)  CONSTRAINT price_currency_nn NOT NULL
);

ALTER TABLE price
ADD
CONSTRAINT pk_price PRIMARY KEY(id_price)
USING INDEX 
TABLESPACE ge_ind PCTFREE 20
STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);