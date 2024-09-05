--Comentarios Grocery 
COMMENT ON TABLE grocery 
IS
'Stores information about a single grocery item that is being purchased'; 

COMMENT ON COLUMN grocery.id_grocery
IS
'Primary Key for Grocery table';

COMMENT ON COLUMN grocery.type_grocery
IS
'Text for the specific type of grocery. Must be unique for each Grocery';

COMMENT ON COLUMN grocery.amount
IS
'Number for the amount of single grocery that is being purchased';

COMMENT ON COLUMN grocery.id_order
IS
'Foreign Key: refers to id_orderG of table orderG';

COMMENT ON COLUMN grocery.id_price
IS
'Foreign Key: refers to id_price of table price';


--Comentarios People 

COMMENT ON TABLE people 
IS
'Contains personal information of a client'; 

COMMENT ON COLUMN people.id_people
IS
'Primary Key for People table';

COMMENT ON COLUMN people.first_name
IS
'Clients first name';

COMMENT ON COLUMN people.second_name
IS
'Clients second name';

COMMENT ON COLUMN people.first_lastname
IS
'Clients first lastname';

COMMENT ON COLUMN people.second_lastname
IS
'Clients second lastname';

COMMENT ON COLUMN people.email
IS
'Clients personal email';

COMMENT ON COLUMN people.birth_date
IS
'Clients birth date. Can calculate age from it';

--Comentarios Price 
COMMENT ON TABLE price 
IS
'Represents the price of a specific Grocery. Contains monetary amount and currency'; 

COMMENT ON COLUMN price.id_price
IS
'Primary Key for Price table';

COMMENT ON COLUMN price.cost
IS
'Monetary cost of specific Grocery';

COMMENT ON COLUMN price.currency
IS
'Currency for the cost of Grocery';











