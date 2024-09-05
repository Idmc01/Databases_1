--Foreign keys para tabla orderg
ALTER TABLE orderg
ADD 
CONSTRAINT fk_order_people FOREIGN KEY (id_people) REFERENCES people(id_people);

--foreign keys para tabla grocery 
ALTER TABLE grocery
ADD 
CONSTRAINT fk_grocery_order FOREIGN KEY (id_order) REFERENCES orderg(id_orderg);

ALTER TABLE grocery
ADD 
CONSTRAINT fk_grocery_price FOREIGN KEY (id_price) REFERENCES price(id_price);

--A la tabla grocery se le añadio el constraint de que tipo sea único
ALTER TABLE grocery
ADD
CONSTRAINT grocery_type_uk UNIQUE(type_grocery);