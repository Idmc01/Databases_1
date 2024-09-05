-- Constraint: Agregar foreign key de tabla People a tabla Phone 
-- Los demas constraints se crearon en el mismo script de creacion de la tabla 
ALTER TABLE phone
ADD
CONSTRAINT fk_phone_people FOREIGN KEY (id_people) REFERENCES people(id_people)