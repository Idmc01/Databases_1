----------------------------------
--Animal
--alter session set current_schema = un;

BEGIN
    insertAnimal('Hamster');
    insertAnimal('Gato');
    insertAnimal('Perro');
    insertAnimal('Conejo');
    insertAnimal('Canario');
    insertAnimal('Tortuga');
    insertAnimal('Pez');
    insertAnimal('Erizo');
    insertAnimal('Conejillo de Indias');
    insertAnimal('Mini cerdo');
END;
/

--------
--Country

BEGIN
    insertCountry('Argentina');
    insertCountry('Brasil');
    insertCountry('México');
    insertCountry('Colombia');
    insertCountry('Chile');
    insertCountry('Perú');
    insertCountry('Venezuela');
    insertCountry('Costa Rica');
    insertCountry('El Salvador');
    insertCountry('Guatemala');
    insertCountry('Honduras');
    insertCountry('Nicaragua');
    insertCountry('Panamá');
    
END;
/

--------
--Provincia

BEGIN
    -- Argentina
    insertProvince('Buenos Aires', 1); 
    insertProvince('Córdoba', 1); 
    insertProvince('Santa Fe', 1); 
    insertProvince('Mendoza', 1); 
    insertProvince('Tucumán', 1); 
    insertProvince('Salta', 1); 
    insertProvince('Chaco', 1); 

    -- Brasil
    insertProvince('Sao Paulo', 2); 
    insertProvince('Rio de Janeiro', 2); 
    insertProvince('Bahia', 2); 
    insertProvince('Minas Gerais', 2); 
    insertProvince('Rio Grande do Sul', 2); 
    insertProvince('Paraná', 2); 
    insertProvince('Pernambuco', 2); 
    
    
   
    -- México
    insertProvince('Ciudad de México', 3); 
    insertProvince('Jalisco', 3); 
    insertProvince('Nuevo León', 3); 
    insertProvince('Puebla', 3); 
    insertProvince('Guanajuato', 3); 
    insertProvince('Veracruz', 3); 
    insertProvince('Yucatán', 3); 

    -- Colombia
    insertProvince('Bogotá', 4); 
    insertProvince('Antioquia', 4); 
    insertProvince('Valle del Cauca', 4); 
    insertProvince('Atlántico', 4); 
    insertProvince('Santander', 4); 
    insertProvince('Cundinamarca', 4); 
    insertProvince('Cesar', 4); 

  
    -- Chile
    insertProvince('Santiago', 5); 
    insertProvince('Valparaíso', 5); 
    insertProvince('Maule', 5); 
    insertProvince('Biobío', 5); 
    insertProvince('Araucanía', 5); 
    insertProvince('Los Lagos', 5); 
    insertProvince('Magallanes', 5); 

    -- Perú
    insertProvince('Lima', 6); 
    insertProvince('Cusco', 6); 
    insertProvince('Arequipa', 6); 
    insertProvince('Puno', 6); 
    insertProvince('Lambayeque', 6); 
    insertProvince('Junín', 6); 
    insertProvince('Tacna', 6); 

    -- Venezuela
    insertProvince('Distrito Capital', 7); 
    insertProvince('Miranda', 7); 
    insertProvince('Zulia', 7); 
    insertProvince('Táchira', 7); 
    insertProvince('Lara', 7); 
    insertProvince('Aragua', 7); 
    insertProvince('Mérida', 7); 

    -- Costa Rica
    insertProvince('San José', 8); 
    insertProvince('Alajuela', 8); 
    insertProvince('Cartago', 8); 
    insertProvince('Puntarenas', 8); 
    insertProvince('Guanacaste', 8); 
    insertProvince('Heredia', 8); 
    insertProvince('Limón', 8); 

    
    -- El Salvador
    insertProvince('San Salvador', 9); 
    insertProvince('Santa Ana', 9); 
    insertProvince('San Miguel', 9); 
    insertProvince('La Libertad', 9); 
    insertProvince('La Paz', 9); 
    insertProvince('Cuscatlán', 9); 
    insertProvince('Chalatenango', 9); 

    -- Guatemala
    insertProvince('Guatemala', 10); 
    insertProvince('Huehuetenango', 10); 
    insertProvince('Quetzaltenango', 10); 
    insertProvince('Alta Verapaz', 10); 
    insertProvince('San Marcos', 10); 
    insertProvince('Suchitepéquez', 10); 
    insertProvince('Chimaltenango', 10); 

    -- Honduras
    insertProvince('Francisco Morazán', 11); 
    insertProvince('Cortés', 11); 
    insertProvince('Atlántida', 11); 
    insertProvince('Olancho', 11); 
    insertProvince('Comayagua', 11); 
    insertProvince('Santa Bárbara', 11); 
    insertProvince('La Paz', 11); 

    -- Nicaragua
    insertProvince('Managua', 12); 
    insertProvince('León', 12); 
    insertProvince('Matagalpa', 12); 
    insertProvince('Chinandega', 12); 
    insertProvince('Masaya', 12); 
    insertProvince('Jinotega', 12); 
    insertProvince('Boaco', 12); 

    -- Panamá
    insertProvince('Panamá', 13); 
    insertProvince('Herrera', 13); 
    insertProvince('Chiriquí', 13); 
    insertProvince('Coclé', 13); 
    insertProvince('Los Santos', 13); 
    insertProvince('Bocas del Toro', 13); 
    insertProvince('Veraguas', 13); 
  
END;
/

--------------------------------------------------------------------------------------
--Canton


BEGIN
    insertCanton('San José', 50); -- Cantón de San José
    insertCanton('Escazú', 50);
    insertCanton('Desamparados', 50);
    insertCanton('Puriscal', 50);
    insertCanton('Tarrazú', 50);
    insertCanton('Aserrí', 50);
    insertCanton('Mora', 50);
    insertCanton('Goicoechea', 50);
    insertCanton('Santa Ana', 50);
    insertCanton('Alajuelita', 50);
    insertCanton('Vásquez de Coronado', 50);
    insertCanton('Acosta', 50);
    insertCanton('Tibás', 50);
    insertCanton('Moravia', 50);
    insertCanton('Montes de Oca', 50);
    insertCanton('Turrubares', 50);
    insertCanton('Dota', 50);
    insertCanton('Curridabat', 50);
    insertCanton('Pérez Zeledón', 50);
    insertCanton('Leon Cortes', 50);
    
    
    
    insertCanton('Alajuela', 51); -- Cantón de Alajuela
    insertCanton('San Ramón', 51);
    insertCanton('Grecia', 51);
    insertCanton('San Mateo', 51);
    insertCanton('Atenas', 51);
    insertCanton('Naranjo', 51);
    insertCanton('Palmares', 51);
    insertCanton('Poás', 51);
    insertCanton('Orotina', 51);
    insertCanton('San Carlos', 51);
    insertCanton('Alfaro Ruiz', 51);
    insertCanton('Valverde Vega', 51);
    insertCanton('Upala', 51);
    insertCanton('Los Chiles', 51);
    insertCanton('Guatuso', 51);
    insertCanton('Rio Cuarto', 51);
    
    
  -- Cantón de Cartago
    insertCanton('Cartago', 52); 
    insertCanton('Paraíso', 52);
    insertCanton('La Unión', 52);
    insertCanton('Jiménez', 52);
    insertCanton('Turrialba', 52);
    insertCanton('Alvarado', 52);
    insertCanton('Oreamuno', 52);
    insertCanton('El Guarco', 52);
    
    
 
    insertCanton('Puntarenas', 53); -- Cantón de Puntarenas
    insertCanton('Esparza', 53);
    insertCanton('Buenos Aires', 53);
    insertCanton('Montes de Oro', 53);
    insertCanton('Osa', 53);
    insertCanton('Aguirre', 53);
    insertCanton('Golfito', 53);
    insertCanton('Coto Brus', 53);
    insertCanton('Parrita', 53);
    insertCanton('Corredores', 53);
    insertCanton('Garabito', 53);
    insertCanton('Monte Verde', 53);
    
    
    insertCanton('Liberia', 54); -- Cantón de Guanacaste
    insertCanton('Nicoya', 54);
    insertCanton('Santa Cruz', 54);
    insertCanton('Bagaces', 54);
    insertCanton('Carrillo', 54);
    insertCanton('Cañas', 54);
    insertCanton('Abangares', 54);
    insertCanton('Tilarán', 54);
    insertCanton('Nandayure', 54);
    insertCanton('La Cruz', 54);
    insertCanton('Hojancha', 54);
    
    
    
    insertCanton('Heredia', 55); -- Cantón de Heredia
    insertCanton('Barva', 55);
    insertCanton('Santo Domingo', 55);
    insertCanton('Santa Bárbara', 55);
    insertCanton('San Rafael', 55);
    insertCanton('San Isidro', 55);
    insertCanton('Belén', 55);
    insertCanton('Flores', 55);
    insertCanton('San Pablo', 55);
    insertCanton('Sarapiquí', 55);
   

    insertCanton('Limón', 56); -- Cantón de Limón
    insertCanton('Pococí', 56);
    insertCanton('Siquirres', 56);
    insertCanton('Talamanca', 56);
    insertCanton('Matina', 56);
    insertCanton('Guácimo', 56);
   
END;
/



-------------------------------------------------------------------
--Distritos


BEGIN
    insertDistrict('Carmen', 1);
    insertDistrict('Merced', 1);
    insertDistrict('Hospital', 1);
    insertDistrict('Catedral', 1);
    insertDistrict('Zapote', 1);
    insertDistrict('San Francisco', 1);
    insertDistrict('Uruca', 1);
    insertDistrict('Mata Redonda', 1);
    insertDistrict('Pavas', 1);
    insertDistrict('Hatillo', 1);
    insertDistrict('San Sebastián', 1);
    insertDistrict('Escazú', 2);
    insertDistrict('San Antonio', 2);
    insertDistrict('San Rafael', 2);
    -- Continúa con la lista de distritos en los otros cantones de San José según sea necesario



    -- Cantón de Desamparados
    insertDistrict('Desamparados', 3);
    insertDistrict('San Miguel', 3);
    insertDistrict('San Juan de Dios', 3);
    insertDistrict('San Rafael Arriba', 3);
    insertDistrict('San Rafael Abajo', 3);
    insertDistrict('Los Guido', 3);
    insertDistrict('San Antonio', 3);
    insertDistrict('Frailes', 3);
    insertDistrict('Patarrá', 3);
    insertDistrict('San Cristóbal', 3);
    
    -- Cantón de Puriscal
    insertDistrict('Santiago', 4);
    insertDistrict('Mercedes Sur', 4);
    insertDistrict('Barbacoas', 4);
    insertDistrict('Grifo Alto', 4);
    insertDistrict('San Rafael', 4);
    insertDistrict('Candelarita', 4);
    
    -- Cantón de Tarrazú
    insertDistrict('San Marcos', 5);
    insertDistrict('San Lorenzo', 5);
    insertDistrict('San Carlos', 5);
    insertDistrict('San Juan', 5);
    insertDistrict('San Crisóstomo', 5);
    
    -- Cantón de Aserrí
    insertDistrict('Aserrí', 6);
    insertDistrict('Tarbaca', 6);
    insertDistrict('Vuelta de Jorco', 6);
    insertDistrict('San Gabriel', 6);
    insertDistrict('Legua', 6);
    
    -- Cantón de Mora
    insertDistrict('Colón', 7);
    insertDistrict('Guayabo', 7);
    insertDistrict('Tabarcia', 7);
    insertDistrict('Piedras Negras', 7);
    
    -- Cantón de Goicoechea
    insertDistrict('Guadalupe', 8);
    insertDistrict('San Francisco', 8);
    insertDistrict('Calle Blancos', 8);
    insertDistrict('Mata de Plátano', 8);
    
    -- Cantón de Santa Ana
    insertDistrict('Santa Ana', 9);
    insertDistrict('Salitral', 9);
    insertDistrict('Pozos', 9);
    insertDistrict('Uruca', 9);
    
    -- Cantón de Alajuelita
    insertDistrict('Alajuelita', 10);
    insertDistrict('San Josecito', 10);
    insertDistrict('San Antonio', 10);
    insertDistrict('Concepción', 10);
    
    -- Cantón de Vásquez de Coronado
    insertDistrict('San Isidro', 11);
    insertDistrict('San Rafael', 11);
    insertDistrict('Dulce Nombre', 11);
    insertDistrict('Patalillo', 11);
    insertDistrict('Cascajal', 11);
    
    -- Cantón de Acosta
    insertDistrict('San Ignacio', 12);
    insertDistrict('Guaitil', 12);
    insertDistrict('Palmichal', 12);
    insertDistrict('Cangrejal', 12);
    insertDistrict('Sabanillas', 12);
    
    -- Cantón de Tibás
    insertDistrict('Tibás', 13);
    insertDistrict('Cinco Esquinas', 13);
    insertDistrict('Anselmo Llorente', 13);
    
    -- Cantón de Moravia
    insertDistrict('San Vicente', 14);
    insertDistrict('San Jerónimo', 14);
    insertDistrict('La Trinidad', 14);
    
    -- Cantón de Montes de Oca
    insertDistrict('San Pedro', 15);
    insertDistrict('Sabanilla', 15);
    insertDistrict('Mercedes', 15);
    
    -- Cantón de Turrubares
    insertDistrict('San Pablo', 16);
    insertDistrict('San Pedro', 16);
    
    -- Cantón de Dota
    insertDistrict('Santa María', 17);
    insertDistrict('Jardín', 17);
    insertDistrict('Copey', 17);
    
    -- Cantón de Curridabat
    insertDistrict('Curridabat', 18);
    insertDistrict('Granadilla', 18);
    insertDistrict('Sánchez', 18);
    
    -- Cantón de Pérez Zeledón
    insertDistrict('San Isidro de El General', 19);
    insertDistrict('Daniel Flores', 19);
    insertDistrict('Rivas', 19);
    insertDistrict('San Pedro', 19);
    insertDistrict('Platanares', 19);
    insertDistrict('Pejibaye', 19);
    insertDistrict('Cajón', 19);
    insertDistrict('Barú', 19);
    insertDistrict('Río Nuevo', 19);
    insertDistrict('Páramo', 19);
    insertDistrict('La Amistad', 19);
    
    -- Cantón de León Cortés
    insertDistrict('San Pablo', 20);
    insertDistrict('San Andrés', 20);
    insertDistrict('Llano Bonito', 20);
    insertDistrict('San Isidro', 20);
    insertDistrict('Santa Cruz', 20);
    

    -- Cantón de Alajuela
    insertDistrict('Alajuela', 21);
    insertDistrict('San José', 21);
    insertDistrict('Carrizal', 21);
    insertDistrict('San Antonio', 21);
    insertDistrict('Guácima', 21);
    insertDistrict('San Isidro', 21);
    insertDistrict('Sabanilla', 21);
    insertDistrict('Río Segundo', 21);
    insertDistrict('Desamparados', 21);
    insertDistrict('Turrúcares', 21);
    insertDistrict('Tambor', 21);
    insertDistrict('Garita', 21);
    insertDistrict('Sarapiquí', 21);

    -- Cantón de San Ramón
    insertDistrict('San Ramón', 22);
    insertDistrict('Santiago', 22);
    insertDistrict('San Juan', 22);
    insertDistrict('Piedades Norte', 22);
    insertDistrict('Piedades Sur', 22);
    insertDistrict('San Rafael', 22);
    insertDistrict('San Isidro', 22);
    insertDistrict('Ángeles', 22);
    insertDistrict('Alfaro', 22);
    insertDistrict('Volio', 22);
    insertDistrict('Concepción', 22);
    insertDistrict('Zapotal', 22);
    insertDistrict('Peñas Blancas', 22);

    -- Cantón de Grecia
    insertDistrict('Grecia', 23);
    insertDistrict('San Isidro', 23);
    insertDistrict('San José', 23);
    insertDistrict('San Roque', 23);
    insertDistrict('Tacares', 23);
    insertDistrict('Río Cuarto', 23);
    insertDistrict('Santa Isabel', 23);
    insertDistrict('Santa Gertrudis', 23);

-- Canton San mATEO

    insertDistrict('San Mateo', 24);
    insertDistrict('Desmonte', 24);
    insertDistrict('Jesus Maria', 24);
    insertDistrict('Labrador', 24);


    -- Cantón de Atenas
    insertDistrict('Atenas', 25);
    insertDistrict('Jesús', 25);
    insertDistrict('Mercedes', 25);
    insertDistrict('San Isidro', 25);
    insertDistrict('Concepción', 25);
    insertDistrict('San José', 25);
    insertDistrict('Santa Eulalia', 25);
    insertDistrict('Escobal', 25);

    -- Cantón de Naranjo
    insertDistrict('Naranjo', 26);
    insertDistrict('San Miguel', 26);
    insertDistrict('San José', 26);
    insertDistrict('Cirrí Sur', 26);
    insertDistrict('San Jerónimo', 26);
    insertDistrict('San Juan', 26);
    insertDistrict('El Rosario', 26);

    -- Cantón de Palmares
    insertDistrict('Palmares', 27);
    insertDistrict('Zaragoza', 27);
    insertDistrict('Buenos Aires', 27);
    insertDistrict('Santiago', 27);
    insertDistrict('Candelaria', 27);
    insertDistrict('Esquipulas', 27);
    insertDistrict('La Granja', 27);

    -- Cantón de Poás
    insertDistrict('San Pedro', 28);
    insertDistrict('San Juan', 28);
    insertDistrict('San Rafael', 28);
    insertDistrict('Carrillos', 28);
    insertDistrict('Sabana Redonda', 28);

    -- Cantón de Orotina
    insertDistrict('Orotina', 29);
    insertDistrict('El Mastate', 29);
    insertDistrict('Hacienda Vieja', 29);
    insertDistrict('Coyolar', 29);
    insertDistrict('La Ceiba', 29);
    insertDistrict('La Garita', 29);

    -- Cantón de San Carlos
    insertDistrict('Quesada', 30);
    insertDistrict('Florencia', 30);
    insertDistrict('Buenavista', 30);
    insertDistrict('Aguas Zarcas', 30);
    insertDistrict('Venecia', 30);
    insertDistrict('Pital', 30);
    insertDistrict('La Fortuna', 30);
    insertDistrict('La Tigra', 30);
    insertDistrict('La Palmera', 30);
    insertDistrict('Venado', 30);
    insertDistrict('Cutris', 30);
    insertDistrict('Monterrey', 30);

    -- Cantón de Alfaro Ruiz
    insertDistrict('Zarcero', 31);
    insertDistrict('Laguna', 31);
    insertDistrict('Tapezco', 31);
    insertDistrict('Guadalupe', 31);
    insertDistrict('Palmira', 31);
    insertDistrict('Zapote', 31);

    -- Cantón de Valverde Vega
    insertDistrict('Sarchí', 32);
    insertDistrict('San Pedro', 32);
    insertDistrict('Rodríguez', 32);
    insertDistrict('Upala', 32);
    insertDistrict('Aguas Claras', 32);

    -- Cantón de Upala
    insertDistrict('Upala', 33);
    insertDistrict('Aguas Claras', 33);
    insertDistrict('San José', 33);
    insertDistrict('Bijagua', 33);
    insertDistrict('Delicias', 33);
    insertDistrict('Dos Ríos', 33);
    insertDistrict('Yolillal', 33);
    insertDistrict('Canalete', 33);

    -- Cantón de Los Chiles
    insertDistrict('Los Chiles', 34);
    insertDistrict('Caño Negro', 34);
    insertDistrict('El Amparo', 34);
    insertDistrict('San Jorge', 34);

    -- Cantón de Guatuso
    insertDistrict('San Rafael', 35);
    insertDistrict('Buenavista', 35);
    insertDistrict('Cote', 35);
    
    -- Cantón de Rio Cuarto
    insertDistrict('Rio Cuarto', 36);
    insertDistrict('Santa Rita', 36);
    insertDistrict('Santa Isabel', 36);

    

    -- Cantón de Cartago
    insertDistrict('Cartago', 37);
    insertDistrict('Oriental', 37);
    insertDistrict('Occidental', 37);
    insertDistrict('Carmen', 37);
    insertDistrict('San Nicolás', 37);
    insertDistrict('Agua Caliente', 37);
    insertDistrict('Guadalupe', 37);
    insertDistrict('Corralillo', 37);
    insertDistrict('Tierra Blanca', 37);
    insertDistrict('Dulce Nombre', 37);
    insertDistrict('Llano Grande', 37);
    insertDistrict('Quebradilla', 37);
    insertDistrict('Paraíso', 37);
    insertDistrict('Santiago', 37);
    insertDistrict('Orosi', 37);
    insertDistrict('Cachí', 37);
    insertDistrict('Llanos de Santa Lucía', 37);

    -- Cantón de Paraíso
    insertDistrict('Paraíso', 38);
    insertDistrict('Santiago', 38);
    insertDistrict('Orosi', 38);
    insertDistrict('Cachí', 38);
    insertDistrict('Llanos de Santa Lucía', 38);

    -- Cantón de La Unión
    insertDistrict('Tres Ríos', 39);
    insertDistrict('San Diego', 39);
    insertDistrict('Río Azul', 39);
    insertDistrict('San Juan', 39);
    insertDistrict('San Rafael', 39);
    insertDistrict('Concepción', 39);
    insertDistrict('Dulce Nombre', 39);
    insertDistrict('San Ramón', 39);
    insertDistrict('Rodeo', 39);

    -- Cantón de Jiménez
    insertDistrict('Juan Viñas', 40);
    insertDistrict('Tucurrique', 40);
    insertDistrict('Pejibaye', 40);

    -- Cantón de Turrialba
    insertDistrict('Turrialba', 41);
    insertDistrict('La Suiza', 41);
    insertDistrict('Peralta', 41);
    insertDistrict('Santa Cruz', 41);
    insertDistrict('Santa Teresita', 41);
    insertDistrict('Pavones', 41);
    insertDistrict('Tuis', 41);
    insertDistrict('Tayutic', 41);
    insertDistrict('Santa Rosa', 41);
    insertDistrict('Tres Equis', 41);
    insertDistrict('La Isabel', 41);
    insertDistrict('Chirripó', 41);

    -- Cantón de Alvarado
    insertDistrict('Pacayas', 42);
    insertDistrict('Cervantes', 42);
    insertDistrict('Capellades', 42);

    -- Cantón de Oreamuno
    insertDistrict('San Rafael', 43);
    insertDistrict('Cot', 43);
    insertDistrict('Potrero Cerrado', 43);
    insertDistrict('Cipreses', 43);
    insertDistrict('Santa Rosa', 43);
    insertDistrict('Bainbridge', 43);
    insertDistrict('Oro', 43);

    -- Cantón de El Guarco
    insertDistrict('Tejar', 44);
    insertDistrict('San Isidro', 44);
    insertDistrict('Tobosi', 44);

    
    -- Cantón de Puntarenas
    insertDistrict('Puntarenas', 45);
    insertDistrict('Pitahaya', 45);
    insertDistrict('Chomes', 45);
    insertDistrict('Lepanto', 45);
    insertDistrict('Paquera', 45);
    insertDistrict('Manzanillo', 45);
    insertDistrict('Guacimal', 45);
    insertDistrict('Barranca', 45);
    insertDistrict('Monteverde', 45);
    insertDistrict('Isla del Coco', 45);
    
    -- Cantón de Esparza
    insertDistrict('Espíritu Santo', 46);
    insertDistrict('San Juan Grande', 46);
    insertDistrict('Macacona', 46);
    
    -- Cantón de Buenos Aires
    insertDistrict('Buenos Aires', 47);
    insertDistrict('Volcán', 47);
    insertDistrict('Potrero Grande', 47);
    insertDistrict('Boruca', 47);
    insertDistrict('Pilas', 47);
    
    -- Cantón de Montes de Oro
    insertDistrict('Miramar', 48);
    insertDistrict('La Unión', 48);
    insertDistrict('San Isidro', 48);
    insertDistrict('Puerto Cortés', 48);
    
    -- Cantón de Osa
    insertDistrict('Puerto Cortés', 49);
    insertDistrict('Palmar', 49);
    insertDistrict('Sierpe', 49);
    insertDistrict('Bahía Ballena', 49);
    insertDistrict('Piedras Blancas', 49);
    insertDistrict('Bahía Drake', 49);
    
    -- Cantón de Aguirre
    insertDistrict('Quepos', 50);
    insertDistrict('Savegre', 50);
    insertDistrict('Naranjito', 50);
    
    -- Cantón de Golfito
    insertDistrict('Golfito', 51);
    insertDistrict('Puerto Jiménez', 51);
    insertDistrict('Guaycará', 51);
    insertDistrict('Pavón', 51);
    
    -- Cantón de Coto Brus
    insertDistrict('San Vito', 52);
    insertDistrict('Sabalito', 52);
    insertDistrict('Aguabuena', 52);
    insertDistrict('Limoncito', 52);
    insertDistrict('Pittier', 52);
    
    -- Cantón de Parrita
    insertDistrict('Parrita', 53);
    insertDistrict('Caballo', 53);
    insertDistrict('Quepos', 53);
    
    -- Cantón de Corredores
    insertDistrict('Corredores', 54);
    insertDistrict('La Cuesta', 54);
    insertDistrict('Paso Canoas', 54);

    -- Cantón de Garabito
    insertDistrict('Jacó', 55);
    insertDistrict('Tárcoles', 55);

    -- Cantón de Monte Verde
    insertDistrict('Monte Verde', 56);


    
    	
    -- Cantón de Liberia
    insertDistrict('Liberia', 57);
    insertDistrict('Cañas Dulces', 57);
    insertDistrict('Mayorga', 57);
    insertDistrict('Nacascolo', 57);
    insertDistrict('Curubandé', 57);

    -- Cantón de Nicoya
    insertDistrict('Nicoya', 58);
    insertDistrict('Mansión', 58);
    insertDistrict('Quebrada Honda', 58);
    insertDistrict('Sámara', 58);
    insertDistrict('Nosara', 58);
    insertDistrict('Belén de Nosarita', 58);

    -- Cantón de Santa Cruz
    insertDistrict('Santa Cruz', 59);
    insertDistrict('Bolsón', 59);
    insertDistrict('Veintisiete de Abril', 59);
    insertDistrict('Tempate', 59);
    insertDistrict('Cartagena', 59);


    -- Cantón de Bagaces
    insertDistrict('Bagaces', 60);
    insertDistrict('La Fortuna', 60);
    insertDistrict('Mogote', 60);

    -- Cantón de Carrillo
    insertDistrict('Filadelfia', 61);
    insertDistrict('Palmira', 61);
    insertDistrict('Sardinal', 61);
    insertDistrict('Belén', 61);

    -- Cantón de Cañas
    insertDistrict('Cañas', 62);
    insertDistrict('Palmira', 62);
    insertDistrict('San Miguel', 62);
    insertDistrict('Bebedero', 62);

    

    -- Cantón de Abangares
    insertDistrict('Las Juntas', 63);
    insertDistrict('Sierra', 63);
    insertDistrict('San Juan', 63);
    insertDistrict('Colorado', 63);
    
    
    -- Cantón de Tilarán
    insertDistrict('Tilarán', 64);
    insertDistrict('Quebrada Grande', 64);
    insertDistrict('Tronadora', 64);
    insertDistrict('Santa Rosa', 64);
    insertDistrict('Líbano', 64);

    -- Cantón de Nandayure
    insertDistrict('Carmona', 65);
    insertDistrict('Santa Rita', 65);
    insertDistrict('Zapotal', 65);

    -- Cantón de La Cruz
    insertDistrict('La Cruz', 66);
    insertDistrict('Santa Cecilia', 66);
    insertDistrict('La Garita', 66);

    -- Cantón de Hojancha
    insertDistrict('Hojancha', 67);
    insertDistrict('Monte Romo', 67);
    insertDistrict('Puerto Carrillo', 67);
    
    
    -- Cantón de Heredia
    insertDistrict('Heredia', 68);
    insertDistrict('Mercedes', 68);
    insertDistrict('San Francisco', 68);
    insertDistrict('Ulloa', 68);
    insertDistrict('Varablanca', 68);

    -- Cantón de Barva
    insertDistrict('Barva', 69);
    insertDistrict('San Pedro', 69);
    insertDistrict('San Pablo', 69);
    insertDistrict('San Roque', 69);
    insertDistrict('Santa Lucía', 69);

    -- Cantón de Santo Domingo
    insertDistrict('Santo Domingo', 70);
    insertDistrict('San Vicente', 70);
    insertDistrict('San Miguel', 70);
    insertDistrict('Paracito', 70);
    insertDistrict('Santo Tomás', 70);
    insertDistrict('Santa Rosa', 70);
    insertDistrict('Tures', 70);

    -- Cantón de Santa Bárbara
    insertDistrict('Santa Bárbara', 71);
    insertDistrict('San Pedro', 71);
    insertDistrict('San Juan', 71);
    insertDistrict('Jesús', 71);
    insertDistrict('Santo Domingo', 71);
    insertDistrict('Purabá', 71);

    -- Cantón de San Rafael
    insertDistrict('San Rafael', 72);
    insertDistrict('San Josecito', 72);
    insertDistrict('Santiago', 72);
    insertDistrict('Ángeles', 72);
    insertDistrict('Concepción', 72);

    -- Cantón de San Isidro
    insertDistrict('San Isidro', 73);
    insertDistrict('San José', 73);
    insertDistrict('Concepción', 73);
    insertDistrict('San Francisco', 73);
    insertDistrict('San Antonio', 73);

    -- Cantón de Belén
    insertDistrict('San Antonio', 74);
    insertDistrict('La Ribera', 74);
    insertDistrict('La Asunción', 74);

    -- Cantón de Flores
    insertDistrict('San Joaquín', 75);
    insertDistrict('Barrantes', 75);
    insertDistrict('Llorente', 75);

    -- Cantón de San Pablo
    insertDistrict('San Pablo', 76);
    insertDistrict('Rincón de Sabanilla', 76);
    insertDistrict('Rincón de Naranjo', 76);
    
    
    -- Cantón de Sarapiquí
    insertDistrict('Sarapiquí', 77);
    insertDistrict('Puerto Viejo', 77);
    insertDistrict('La Virgen', 77);
    insertDistrict('Horquetas', 77);
    insertDistrict('Llanuras del Gaspar', 77);
    insertDistrict('Cureña', 77);
    
    
    
    -- Cantón de Limón
    insertDistrict('Limón', 78);
    insertDistrict('Valle La Estrella', 78);
    insertDistrict('Río Blanco', 78);
    insertDistrict('Matama', 78);

    -- Cantón de Pococí
    insertDistrict('Guápiles', 79);
    insertDistrict('Jiménez', 79);
    insertDistrict('La Rita', 79);
    insertDistrict('Roxana', 79);
    insertDistrict('Cariari', 79);
    insertDistrict('Colorado', 79);

    -- Cantón de Siquirres
    insertDistrict('Siquirres', 80);
    insertDistrict('Pacuarito', 80);
    insertDistrict('Florida', 80);
    insertDistrict('Germania', 80);
    insertDistrict('Cairo', 80);
    insertDistrict('Alegría', 80);

    -- Cantón de Talamanca
    insertDistrict('Bribri', 81);
    insertDistrict('Bratsi', 81);
    insertDistrict('Sixaola', 81);
    insertDistrict('Cahuita', 81);
    insertDistrict('Telire', 81);

    -- Cantón de Matina
    insertDistrict('Matina', 82);
    insertDistrict('Batán', 82);
    insertDistrict('Carrandi', 82);

    -- Cantón de Guácimo
    insertDistrict('Guácimo', 83);
    insertDistrict('Mercedes', 83);
    insertDistrict('Pocora', 83);
    insertDistrict('Río Jiménez', 83);
    insertDistrict('Duacarí', 83);

    
END;
/



-----------------------------
----Colores


BEGIN
    insertColor('Negro');
    insertColor('Blanco');
    insertColor('Rojo');
    insertColor('Azul');
    insertColor('Amarillo');
    insertColor('Rosa');
    insertColor('Marrón');
    insertColor('Gris');
    
END;
/
-----------------------------
----Diseases


BEGIN
    insertDisease('Resfriado común');
    insertDisease('Alergias');
    insertDisease('Diarrea');
    insertDisease('Infección de oído');
    insertDisease('Pulgas y garrapatas');
    insertDisease('Vómitos frecuentes');
    insertDisease('Gripe canina');
    insertDisease('Estreñimiento');
    insertDisease('Problemas dentales');
    insertDisease('Afecciones de la piel');
    insertDisease('Infecciones del tracto urinario');
    insertDisease('Obesidad');
    insertDisease('Problemas de comportamiento');
    insertDisease('Cataratas');
    insertDisease('Alergias alimentarias');
    insertDisease('Artritis');
    insertDisease('Infecciones respiratorias');
END;
/
----------------------------
--Ease


BEGIN
    insertEase('Muy fácil');
    insertEase('Fácil');
    insertEase('Requiere paciencia');
    insertEase('Difícil');
    insertEase('Muy difícil');
END;
/

----------------------------
--Energy



BEGIN
    insertEnergy('Atlético');
    insertEnergy('Corredor');
    insertEnergy('Caminador');
    insertEnergy('Para ver TV');
    insertEnergy('Nivel de energía no es importante');
END;
/


----------------------------------------------------
----Severity



BEGIN
    insertSeverity('Estado crítico');
    insertSeverity('Mal estado');
    insertSeverity('Buen estado');
    insertSeverity('Estado moderado');
    insertSeverity('Estado grave');
END;
/


-----------------------------------------------------
---------Race

BEGIN
    insertRace('Schnauzer', 3);
    insertRace('Chihuahua', 3);
    insertRace('Pastor Alemán', 3);
    insertRace('Labrador Retriever', 3);
    insertRace('Golden Retriever', 3);
    insertRace('Bulldog', 3);
    insertRace('Beagle', 3);
    insertRace('Poodle', 3);
    insertRace('Rottweiler', 3);
    insertRace('Yorkshire Terrier', 3);
    insertRace('Dachshund', 3);
    insertRace('Boxer', 3);
    insertRace('Shih Tzu', 3);
    insertRace('Pug', 3);
    insertRace('Doberman Pinscher', 3);
    insertRace('Shetland Sheepdog', 3);
    insertRace('Great Dane', 3);
    insertRace('Cocker Spaniel', 3);
    insertRace('Siberian Husky', 3);
    insertRace('Australian Shepherd', 3);
    insertRace('German Shorthaired Pointer', 3);
    insertRace('Basset Hound', 3);
    insertRace('Border Collie', 3);
    insertRace('Pomeranian', 3);
    insertRace('Miniature Schnauzer', 3);
    insertRace('Chow Chow', 3);
    insertRace('Pekingese', 3);
    insertRace('Maltese', 3);
    insertRace('Bloodhound', 3);
    insertRace('Chinese Crested', 3);
END;
/




















    





    










