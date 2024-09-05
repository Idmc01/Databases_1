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
    insertCountry('M�xico');
    insertCountry('Colombia');
    insertCountry('Chile');
    insertCountry('Per�');
    insertCountry('Venezuela');
    insertCountry('Costa Rica');
    insertCountry('El Salvador');
    insertCountry('Guatemala');
    insertCountry('Honduras');
    insertCountry('Nicaragua');
    insertCountry('Panam�');
    
END;
/

--------
--Provincia

BEGIN
    -- Argentina
    insertProvince('Buenos Aires', 1); 
    insertProvince('C�rdoba', 1); 
    insertProvince('Santa Fe', 1); 
    insertProvince('Mendoza', 1); 
    insertProvince('Tucum�n', 1); 
    insertProvince('Salta', 1); 
    insertProvince('Chaco', 1); 

    -- Brasil
    insertProvince('Sao Paulo', 2); 
    insertProvince('Rio de Janeiro', 2); 
    insertProvince('Bahia', 2); 
    insertProvince('Minas Gerais', 2); 
    insertProvince('Rio Grande do Sul', 2); 
    insertProvince('Paran�', 2); 
    insertProvince('Pernambuco', 2); 
    
    
   
    -- M�xico
    insertProvince('Ciudad de M�xico', 3); 
    insertProvince('Jalisco', 3); 
    insertProvince('Nuevo Le�n', 3); 
    insertProvince('Puebla', 3); 
    insertProvince('Guanajuato', 3); 
    insertProvince('Veracruz', 3); 
    insertProvince('Yucat�n', 3); 

    -- Colombia
    insertProvince('Bogot�', 4); 
    insertProvince('Antioquia', 4); 
    insertProvince('Valle del Cauca', 4); 
    insertProvince('Atl�ntico', 4); 
    insertProvince('Santander', 4); 
    insertProvince('Cundinamarca', 4); 
    insertProvince('Cesar', 4); 

  
    -- Chile
    insertProvince('Santiago', 5); 
    insertProvince('Valpara�so', 5); 
    insertProvince('Maule', 5); 
    insertProvince('Biob�o', 5); 
    insertProvince('Araucan�a', 5); 
    insertProvince('Los Lagos', 5); 
    insertProvince('Magallanes', 5); 

    -- Per�
    insertProvince('Lima', 6); 
    insertProvince('Cusco', 6); 
    insertProvince('Arequipa', 6); 
    insertProvince('Puno', 6); 
    insertProvince('Lambayeque', 6); 
    insertProvince('Jun�n', 6); 
    insertProvince('Tacna', 6); 

    -- Venezuela
    insertProvince('Distrito Capital', 7); 
    insertProvince('Miranda', 7); 
    insertProvince('Zulia', 7); 
    insertProvince('T�chira', 7); 
    insertProvince('Lara', 7); 
    insertProvince('Aragua', 7); 
    insertProvince('M�rida', 7); 

    -- Costa Rica
    insertProvince('San Jos�', 8); 
    insertProvince('Alajuela', 8); 
    insertProvince('Cartago', 8); 
    insertProvince('Puntarenas', 8); 
    insertProvince('Guanacaste', 8); 
    insertProvince('Heredia', 8); 
    insertProvince('Lim�n', 8); 

    
    -- El Salvador
    insertProvince('San Salvador', 9); 
    insertProvince('Santa Ana', 9); 
    insertProvince('San Miguel', 9); 
    insertProvince('La Libertad', 9); 
    insertProvince('La Paz', 9); 
    insertProvince('Cuscatl�n', 9); 
    insertProvince('Chalatenango', 9); 

    -- Guatemala
    insertProvince('Guatemala', 10); 
    insertProvince('Huehuetenango', 10); 
    insertProvince('Quetzaltenango', 10); 
    insertProvince('Alta Verapaz', 10); 
    insertProvince('San Marcos', 10); 
    insertProvince('Suchitep�quez', 10); 
    insertProvince('Chimaltenango', 10); 

    -- Honduras
    insertProvince('Francisco Moraz�n', 11); 
    insertProvince('Cort�s', 11); 
    insertProvince('Atl�ntida', 11); 
    insertProvince('Olancho', 11); 
    insertProvince('Comayagua', 11); 
    insertProvince('Santa B�rbara', 11); 
    insertProvince('La Paz', 11); 

    -- Nicaragua
    insertProvince('Managua', 12); 
    insertProvince('Le�n', 12); 
    insertProvince('Matagalpa', 12); 
    insertProvince('Chinandega', 12); 
    insertProvince('Masaya', 12); 
    insertProvince('Jinotega', 12); 
    insertProvince('Boaco', 12); 

    -- Panam�
    insertProvince('Panam�', 13); 
    insertProvince('Herrera', 13); 
    insertProvince('Chiriqu�', 13); 
    insertProvince('Cocl�', 13); 
    insertProvince('Los Santos', 13); 
    insertProvince('Bocas del Toro', 13); 
    insertProvince('Veraguas', 13); 
  
END;
/

--------------------------------------------------------------------------------------
--Canton


BEGIN
    insertCanton('San Jos�', 50); -- Cant�n de San Jos�
    insertCanton('Escaz�', 50);
    insertCanton('Desamparados', 50);
    insertCanton('Puriscal', 50);
    insertCanton('Tarraz�', 50);
    insertCanton('Aserr�', 50);
    insertCanton('Mora', 50);
    insertCanton('Goicoechea', 50);
    insertCanton('Santa Ana', 50);
    insertCanton('Alajuelita', 50);
    insertCanton('V�squez de Coronado', 50);
    insertCanton('Acosta', 50);
    insertCanton('Tib�s', 50);
    insertCanton('Moravia', 50);
    insertCanton('Montes de Oca', 50);
    insertCanton('Turrubares', 50);
    insertCanton('Dota', 50);
    insertCanton('Curridabat', 50);
    insertCanton('P�rez Zeled�n', 50);
    insertCanton('Leon Cortes', 50);
    
    
    
    insertCanton('Alajuela', 51); -- Cant�n de Alajuela
    insertCanton('San Ram�n', 51);
    insertCanton('Grecia', 51);
    insertCanton('San Mateo', 51);
    insertCanton('Atenas', 51);
    insertCanton('Naranjo', 51);
    insertCanton('Palmares', 51);
    insertCanton('Po�s', 51);
    insertCanton('Orotina', 51);
    insertCanton('San Carlos', 51);
    insertCanton('Alfaro Ruiz', 51);
    insertCanton('Valverde Vega', 51);
    insertCanton('Upala', 51);
    insertCanton('Los Chiles', 51);
    insertCanton('Guatuso', 51);
    insertCanton('Rio Cuarto', 51);
    
    
  -- Cant�n de Cartago
    insertCanton('Cartago', 52); 
    insertCanton('Para�so', 52);
    insertCanton('La Uni�n', 52);
    insertCanton('Jim�nez', 52);
    insertCanton('Turrialba', 52);
    insertCanton('Alvarado', 52);
    insertCanton('Oreamuno', 52);
    insertCanton('El Guarco', 52);
    
    
 
    insertCanton('Puntarenas', 53); -- Cant�n de Puntarenas
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
    
    
    insertCanton('Liberia', 54); -- Cant�n de Guanacaste
    insertCanton('Nicoya', 54);
    insertCanton('Santa Cruz', 54);
    insertCanton('Bagaces', 54);
    insertCanton('Carrillo', 54);
    insertCanton('Ca�as', 54);
    insertCanton('Abangares', 54);
    insertCanton('Tilar�n', 54);
    insertCanton('Nandayure', 54);
    insertCanton('La Cruz', 54);
    insertCanton('Hojancha', 54);
    
    
    
    insertCanton('Heredia', 55); -- Cant�n de Heredia
    insertCanton('Barva', 55);
    insertCanton('Santo Domingo', 55);
    insertCanton('Santa B�rbara', 55);
    insertCanton('San Rafael', 55);
    insertCanton('San Isidro', 55);
    insertCanton('Bel�n', 55);
    insertCanton('Flores', 55);
    insertCanton('San Pablo', 55);
    insertCanton('Sarapiqu�', 55);
   

    insertCanton('Lim�n', 56); -- Cant�n de Lim�n
    insertCanton('Pococ�', 56);
    insertCanton('Siquirres', 56);
    insertCanton('Talamanca', 56);
    insertCanton('Matina', 56);
    insertCanton('Gu�cimo', 56);
   
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
    insertDistrict('San Sebasti�n', 1);
    insertDistrict('Escaz�', 2);
    insertDistrict('San Antonio', 2);
    insertDistrict('San Rafael', 2);
    -- Contin�a con la lista de distritos en los otros cantones de San Jos� seg�n sea necesario



    -- Cant�n de Desamparados
    insertDistrict('Desamparados', 3);
    insertDistrict('San Miguel', 3);
    insertDistrict('San Juan de Dios', 3);
    insertDistrict('San Rafael Arriba', 3);
    insertDistrict('San Rafael Abajo', 3);
    insertDistrict('Los Guido', 3);
    insertDistrict('San Antonio', 3);
    insertDistrict('Frailes', 3);
    insertDistrict('Patarr�', 3);
    insertDistrict('San Crist�bal', 3);
    
    -- Cant�n de Puriscal
    insertDistrict('Santiago', 4);
    insertDistrict('Mercedes Sur', 4);
    insertDistrict('Barbacoas', 4);
    insertDistrict('Grifo Alto', 4);
    insertDistrict('San Rafael', 4);
    insertDistrict('Candelarita', 4);
    
    -- Cant�n de Tarraz�
    insertDistrict('San Marcos', 5);
    insertDistrict('San Lorenzo', 5);
    insertDistrict('San Carlos', 5);
    insertDistrict('San Juan', 5);
    insertDistrict('San Cris�stomo', 5);
    
    -- Cant�n de Aserr�
    insertDistrict('Aserr�', 6);
    insertDistrict('Tarbaca', 6);
    insertDistrict('Vuelta de Jorco', 6);
    insertDistrict('San Gabriel', 6);
    insertDistrict('Legua', 6);
    
    -- Cant�n de Mora
    insertDistrict('Col�n', 7);
    insertDistrict('Guayabo', 7);
    insertDistrict('Tabarcia', 7);
    insertDistrict('Piedras Negras', 7);
    
    -- Cant�n de Goicoechea
    insertDistrict('Guadalupe', 8);
    insertDistrict('San Francisco', 8);
    insertDistrict('Calle Blancos', 8);
    insertDistrict('Mata de Pl�tano', 8);
    
    -- Cant�n de Santa Ana
    insertDistrict('Santa Ana', 9);
    insertDistrict('Salitral', 9);
    insertDistrict('Pozos', 9);
    insertDistrict('Uruca', 9);
    
    -- Cant�n de Alajuelita
    insertDistrict('Alajuelita', 10);
    insertDistrict('San Josecito', 10);
    insertDistrict('San Antonio', 10);
    insertDistrict('Concepci�n', 10);
    
    -- Cant�n de V�squez de Coronado
    insertDistrict('San Isidro', 11);
    insertDistrict('San Rafael', 11);
    insertDistrict('Dulce Nombre', 11);
    insertDistrict('Patalillo', 11);
    insertDistrict('Cascajal', 11);
    
    -- Cant�n de Acosta
    insertDistrict('San Ignacio', 12);
    insertDistrict('Guaitil', 12);
    insertDistrict('Palmichal', 12);
    insertDistrict('Cangrejal', 12);
    insertDistrict('Sabanillas', 12);
    
    -- Cant�n de Tib�s
    insertDistrict('Tib�s', 13);
    insertDistrict('Cinco Esquinas', 13);
    insertDistrict('Anselmo Llorente', 13);
    
    -- Cant�n de Moravia
    insertDistrict('San Vicente', 14);
    insertDistrict('San Jer�nimo', 14);
    insertDistrict('La Trinidad', 14);
    
    -- Cant�n de Montes de Oca
    insertDistrict('San Pedro', 15);
    insertDistrict('Sabanilla', 15);
    insertDistrict('Mercedes', 15);
    
    -- Cant�n de Turrubares
    insertDistrict('San Pablo', 16);
    insertDistrict('San Pedro', 16);
    
    -- Cant�n de Dota
    insertDistrict('Santa Mar�a', 17);
    insertDistrict('Jard�n', 17);
    insertDistrict('Copey', 17);
    
    -- Cant�n de Curridabat
    insertDistrict('Curridabat', 18);
    insertDistrict('Granadilla', 18);
    insertDistrict('S�nchez', 18);
    
    -- Cant�n de P�rez Zeled�n
    insertDistrict('San Isidro de El General', 19);
    insertDistrict('Daniel Flores', 19);
    insertDistrict('Rivas', 19);
    insertDistrict('San Pedro', 19);
    insertDistrict('Platanares', 19);
    insertDistrict('Pejibaye', 19);
    insertDistrict('Caj�n', 19);
    insertDistrict('Bar�', 19);
    insertDistrict('R�o Nuevo', 19);
    insertDistrict('P�ramo', 19);
    insertDistrict('La Amistad', 19);
    
    -- Cant�n de Le�n Cort�s
    insertDistrict('San Pablo', 20);
    insertDistrict('San Andr�s', 20);
    insertDistrict('Llano Bonito', 20);
    insertDistrict('San Isidro', 20);
    insertDistrict('Santa Cruz', 20);
    

    -- Cant�n de Alajuela
    insertDistrict('Alajuela', 21);
    insertDistrict('San Jos�', 21);
    insertDistrict('Carrizal', 21);
    insertDistrict('San Antonio', 21);
    insertDistrict('Gu�cima', 21);
    insertDistrict('San Isidro', 21);
    insertDistrict('Sabanilla', 21);
    insertDistrict('R�o Segundo', 21);
    insertDistrict('Desamparados', 21);
    insertDistrict('Turr�cares', 21);
    insertDistrict('Tambor', 21);
    insertDistrict('Garita', 21);
    insertDistrict('Sarapiqu�', 21);

    -- Cant�n de San Ram�n
    insertDistrict('San Ram�n', 22);
    insertDistrict('Santiago', 22);
    insertDistrict('San Juan', 22);
    insertDistrict('Piedades Norte', 22);
    insertDistrict('Piedades Sur', 22);
    insertDistrict('San Rafael', 22);
    insertDistrict('San Isidro', 22);
    insertDistrict('�ngeles', 22);
    insertDistrict('Alfaro', 22);
    insertDistrict('Volio', 22);
    insertDistrict('Concepci�n', 22);
    insertDistrict('Zapotal', 22);
    insertDistrict('Pe�as Blancas', 22);

    -- Cant�n de Grecia
    insertDistrict('Grecia', 23);
    insertDistrict('San Isidro', 23);
    insertDistrict('San Jos�', 23);
    insertDistrict('San Roque', 23);
    insertDistrict('Tacares', 23);
    insertDistrict('R�o Cuarto', 23);
    insertDistrict('Santa Isabel', 23);
    insertDistrict('Santa Gertrudis', 23);

-- Canton San mATEO

    insertDistrict('San Mateo', 24);
    insertDistrict('Desmonte', 24);
    insertDistrict('Jesus Maria', 24);
    insertDistrict('Labrador', 24);


    -- Cant�n de Atenas
    insertDistrict('Atenas', 25);
    insertDistrict('Jes�s', 25);
    insertDistrict('Mercedes', 25);
    insertDistrict('San Isidro', 25);
    insertDistrict('Concepci�n', 25);
    insertDistrict('San Jos�', 25);
    insertDistrict('Santa Eulalia', 25);
    insertDistrict('Escobal', 25);

    -- Cant�n de Naranjo
    insertDistrict('Naranjo', 26);
    insertDistrict('San Miguel', 26);
    insertDistrict('San Jos�', 26);
    insertDistrict('Cirr� Sur', 26);
    insertDistrict('San Jer�nimo', 26);
    insertDistrict('San Juan', 26);
    insertDistrict('El Rosario', 26);

    -- Cant�n de Palmares
    insertDistrict('Palmares', 27);
    insertDistrict('Zaragoza', 27);
    insertDistrict('Buenos Aires', 27);
    insertDistrict('Santiago', 27);
    insertDistrict('Candelaria', 27);
    insertDistrict('Esquipulas', 27);
    insertDistrict('La Granja', 27);

    -- Cant�n de Po�s
    insertDistrict('San Pedro', 28);
    insertDistrict('San Juan', 28);
    insertDistrict('San Rafael', 28);
    insertDistrict('Carrillos', 28);
    insertDistrict('Sabana Redonda', 28);

    -- Cant�n de Orotina
    insertDistrict('Orotina', 29);
    insertDistrict('El Mastate', 29);
    insertDistrict('Hacienda Vieja', 29);
    insertDistrict('Coyolar', 29);
    insertDistrict('La Ceiba', 29);
    insertDistrict('La Garita', 29);

    -- Cant�n de San Carlos
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

    -- Cant�n de Alfaro Ruiz
    insertDistrict('Zarcero', 31);
    insertDistrict('Laguna', 31);
    insertDistrict('Tapezco', 31);
    insertDistrict('Guadalupe', 31);
    insertDistrict('Palmira', 31);
    insertDistrict('Zapote', 31);

    -- Cant�n de Valverde Vega
    insertDistrict('Sarch�', 32);
    insertDistrict('San Pedro', 32);
    insertDistrict('Rodr�guez', 32);
    insertDistrict('Upala', 32);
    insertDistrict('Aguas Claras', 32);

    -- Cant�n de Upala
    insertDistrict('Upala', 33);
    insertDistrict('Aguas Claras', 33);
    insertDistrict('San Jos�', 33);
    insertDistrict('Bijagua', 33);
    insertDistrict('Delicias', 33);
    insertDistrict('Dos R�os', 33);
    insertDistrict('Yolillal', 33);
    insertDistrict('Canalete', 33);

    -- Cant�n de Los Chiles
    insertDistrict('Los Chiles', 34);
    insertDistrict('Ca�o Negro', 34);
    insertDistrict('El Amparo', 34);
    insertDistrict('San Jorge', 34);

    -- Cant�n de Guatuso
    insertDistrict('San Rafael', 35);
    insertDistrict('Buenavista', 35);
    insertDistrict('Cote', 35);
    
    -- Cant�n de Rio Cuarto
    insertDistrict('Rio Cuarto', 36);
    insertDistrict('Santa Rita', 36);
    insertDistrict('Santa Isabel', 36);

    

    -- Cant�n de Cartago
    insertDistrict('Cartago', 37);
    insertDistrict('Oriental', 37);
    insertDistrict('Occidental', 37);
    insertDistrict('Carmen', 37);
    insertDistrict('San Nicol�s', 37);
    insertDistrict('Agua Caliente', 37);
    insertDistrict('Guadalupe', 37);
    insertDistrict('Corralillo', 37);
    insertDistrict('Tierra Blanca', 37);
    insertDistrict('Dulce Nombre', 37);
    insertDistrict('Llano Grande', 37);
    insertDistrict('Quebradilla', 37);
    insertDistrict('Para�so', 37);
    insertDistrict('Santiago', 37);
    insertDistrict('Orosi', 37);
    insertDistrict('Cach�', 37);
    insertDistrict('Llanos de Santa Luc�a', 37);

    -- Cant�n de Para�so
    insertDistrict('Para�so', 38);
    insertDistrict('Santiago', 38);
    insertDistrict('Orosi', 38);
    insertDistrict('Cach�', 38);
    insertDistrict('Llanos de Santa Luc�a', 38);

    -- Cant�n de La Uni�n
    insertDistrict('Tres R�os', 39);
    insertDistrict('San Diego', 39);
    insertDistrict('R�o Azul', 39);
    insertDistrict('San Juan', 39);
    insertDistrict('San Rafael', 39);
    insertDistrict('Concepci�n', 39);
    insertDistrict('Dulce Nombre', 39);
    insertDistrict('San Ram�n', 39);
    insertDistrict('Rodeo', 39);

    -- Cant�n de Jim�nez
    insertDistrict('Juan Vi�as', 40);
    insertDistrict('Tucurrique', 40);
    insertDistrict('Pejibaye', 40);

    -- Cant�n de Turrialba
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
    insertDistrict('Chirrip�', 41);

    -- Cant�n de Alvarado
    insertDistrict('Pacayas', 42);
    insertDistrict('Cervantes', 42);
    insertDistrict('Capellades', 42);

    -- Cant�n de Oreamuno
    insertDistrict('San Rafael', 43);
    insertDistrict('Cot', 43);
    insertDistrict('Potrero Cerrado', 43);
    insertDistrict('Cipreses', 43);
    insertDistrict('Santa Rosa', 43);
    insertDistrict('Bainbridge', 43);
    insertDistrict('Oro', 43);

    -- Cant�n de El Guarco
    insertDistrict('Tejar', 44);
    insertDistrict('San Isidro', 44);
    insertDistrict('Tobosi', 44);

    
    -- Cant�n de Puntarenas
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
    
    -- Cant�n de Esparza
    insertDistrict('Esp�ritu Santo', 46);
    insertDistrict('San Juan Grande', 46);
    insertDistrict('Macacona', 46);
    
    -- Cant�n de Buenos Aires
    insertDistrict('Buenos Aires', 47);
    insertDistrict('Volc�n', 47);
    insertDistrict('Potrero Grande', 47);
    insertDistrict('Boruca', 47);
    insertDistrict('Pilas', 47);
    
    -- Cant�n de Montes de Oro
    insertDistrict('Miramar', 48);
    insertDistrict('La Uni�n', 48);
    insertDistrict('San Isidro', 48);
    insertDistrict('Puerto Cort�s', 48);
    
    -- Cant�n de Osa
    insertDistrict('Puerto Cort�s', 49);
    insertDistrict('Palmar', 49);
    insertDistrict('Sierpe', 49);
    insertDistrict('Bah�a Ballena', 49);
    insertDistrict('Piedras Blancas', 49);
    insertDistrict('Bah�a Drake', 49);
    
    -- Cant�n de Aguirre
    insertDistrict('Quepos', 50);
    insertDistrict('Savegre', 50);
    insertDistrict('Naranjito', 50);
    
    -- Cant�n de Golfito
    insertDistrict('Golfito', 51);
    insertDistrict('Puerto Jim�nez', 51);
    insertDistrict('Guaycar�', 51);
    insertDistrict('Pav�n', 51);
    
    -- Cant�n de Coto Brus
    insertDistrict('San Vito', 52);
    insertDistrict('Sabalito', 52);
    insertDistrict('Aguabuena', 52);
    insertDistrict('Limoncito', 52);
    insertDistrict('Pittier', 52);
    
    -- Cant�n de Parrita
    insertDistrict('Parrita', 53);
    insertDistrict('Caballo', 53);
    insertDistrict('Quepos', 53);
    
    -- Cant�n de Corredores
    insertDistrict('Corredores', 54);
    insertDistrict('La Cuesta', 54);
    insertDistrict('Paso Canoas', 54);

    -- Cant�n de Garabito
    insertDistrict('Jac�', 55);
    insertDistrict('T�rcoles', 55);

    -- Cant�n de Monte Verde
    insertDistrict('Monte Verde', 56);


    
    	
    -- Cant�n de Liberia
    insertDistrict('Liberia', 57);
    insertDistrict('Ca�as Dulces', 57);
    insertDistrict('Mayorga', 57);
    insertDistrict('Nacascolo', 57);
    insertDistrict('Curuband�', 57);

    -- Cant�n de Nicoya
    insertDistrict('Nicoya', 58);
    insertDistrict('Mansi�n', 58);
    insertDistrict('Quebrada Honda', 58);
    insertDistrict('S�mara', 58);
    insertDistrict('Nosara', 58);
    insertDistrict('Bel�n de Nosarita', 58);

    -- Cant�n de Santa Cruz
    insertDistrict('Santa Cruz', 59);
    insertDistrict('Bols�n', 59);
    insertDistrict('Veintisiete de Abril', 59);
    insertDistrict('Tempate', 59);
    insertDistrict('Cartagena', 59);


    -- Cant�n de Bagaces
    insertDistrict('Bagaces', 60);
    insertDistrict('La Fortuna', 60);
    insertDistrict('Mogote', 60);

    -- Cant�n de Carrillo
    insertDistrict('Filadelfia', 61);
    insertDistrict('Palmira', 61);
    insertDistrict('Sardinal', 61);
    insertDistrict('Bel�n', 61);

    -- Cant�n de Ca�as
    insertDistrict('Ca�as', 62);
    insertDistrict('Palmira', 62);
    insertDistrict('San Miguel', 62);
    insertDistrict('Bebedero', 62);

    

    -- Cant�n de Abangares
    insertDistrict('Las Juntas', 63);
    insertDistrict('Sierra', 63);
    insertDistrict('San Juan', 63);
    insertDistrict('Colorado', 63);
    
    
    -- Cant�n de Tilar�n
    insertDistrict('Tilar�n', 64);
    insertDistrict('Quebrada Grande', 64);
    insertDistrict('Tronadora', 64);
    insertDistrict('Santa Rosa', 64);
    insertDistrict('L�bano', 64);

    -- Cant�n de Nandayure
    insertDistrict('Carmona', 65);
    insertDistrict('Santa Rita', 65);
    insertDistrict('Zapotal', 65);

    -- Cant�n de La Cruz
    insertDistrict('La Cruz', 66);
    insertDistrict('Santa Cecilia', 66);
    insertDistrict('La Garita', 66);

    -- Cant�n de Hojancha
    insertDistrict('Hojancha', 67);
    insertDistrict('Monte Romo', 67);
    insertDistrict('Puerto Carrillo', 67);
    
    
    -- Cant�n de Heredia
    insertDistrict('Heredia', 68);
    insertDistrict('Mercedes', 68);
    insertDistrict('San Francisco', 68);
    insertDistrict('Ulloa', 68);
    insertDistrict('Varablanca', 68);

    -- Cant�n de Barva
    insertDistrict('Barva', 69);
    insertDistrict('San Pedro', 69);
    insertDistrict('San Pablo', 69);
    insertDistrict('San Roque', 69);
    insertDistrict('Santa Luc�a', 69);

    -- Cant�n de Santo Domingo
    insertDistrict('Santo Domingo', 70);
    insertDistrict('San Vicente', 70);
    insertDistrict('San Miguel', 70);
    insertDistrict('Paracito', 70);
    insertDistrict('Santo Tom�s', 70);
    insertDistrict('Santa Rosa', 70);
    insertDistrict('Tures', 70);

    -- Cant�n de Santa B�rbara
    insertDistrict('Santa B�rbara', 71);
    insertDistrict('San Pedro', 71);
    insertDistrict('San Juan', 71);
    insertDistrict('Jes�s', 71);
    insertDistrict('Santo Domingo', 71);
    insertDistrict('Purab�', 71);

    -- Cant�n de San Rafael
    insertDistrict('San Rafael', 72);
    insertDistrict('San Josecito', 72);
    insertDistrict('Santiago', 72);
    insertDistrict('�ngeles', 72);
    insertDistrict('Concepci�n', 72);

    -- Cant�n de San Isidro
    insertDistrict('San Isidro', 73);
    insertDistrict('San Jos�', 73);
    insertDistrict('Concepci�n', 73);
    insertDistrict('San Francisco', 73);
    insertDistrict('San Antonio', 73);

    -- Cant�n de Bel�n
    insertDistrict('San Antonio', 74);
    insertDistrict('La Ribera', 74);
    insertDistrict('La Asunci�n', 74);

    -- Cant�n de Flores
    insertDistrict('San Joaqu�n', 75);
    insertDistrict('Barrantes', 75);
    insertDistrict('Llorente', 75);

    -- Cant�n de San Pablo
    insertDistrict('San Pablo', 76);
    insertDistrict('Rinc�n de Sabanilla', 76);
    insertDistrict('Rinc�n de Naranjo', 76);
    
    
    -- Cant�n de Sarapiqu�
    insertDistrict('Sarapiqu�', 77);
    insertDistrict('Puerto Viejo', 77);
    insertDistrict('La Virgen', 77);
    insertDistrict('Horquetas', 77);
    insertDistrict('Llanuras del Gaspar', 77);
    insertDistrict('Cure�a', 77);
    
    
    
    -- Cant�n de Lim�n
    insertDistrict('Lim�n', 78);
    insertDistrict('Valle La Estrella', 78);
    insertDistrict('R�o Blanco', 78);
    insertDistrict('Matama', 78);

    -- Cant�n de Pococ�
    insertDistrict('Gu�piles', 79);
    insertDistrict('Jim�nez', 79);
    insertDistrict('La Rita', 79);
    insertDistrict('Roxana', 79);
    insertDistrict('Cariari', 79);
    insertDistrict('Colorado', 79);

    -- Cant�n de Siquirres
    insertDistrict('Siquirres', 80);
    insertDistrict('Pacuarito', 80);
    insertDistrict('Florida', 80);
    insertDistrict('Germania', 80);
    insertDistrict('Cairo', 80);
    insertDistrict('Alegr�a', 80);

    -- Cant�n de Talamanca
    insertDistrict('Bribri', 81);
    insertDistrict('Bratsi', 81);
    insertDistrict('Sixaola', 81);
    insertDistrict('Cahuita', 81);
    insertDistrict('Telire', 81);

    -- Cant�n de Matina
    insertDistrict('Matina', 82);
    insertDistrict('Bat�n', 82);
    insertDistrict('Carrandi', 82);

    -- Cant�n de Gu�cimo
    insertDistrict('Gu�cimo', 83);
    insertDistrict('Mercedes', 83);
    insertDistrict('Pocora', 83);
    insertDistrict('R�o Jim�nez', 83);
    insertDistrict('Duacar�', 83);

    
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
    insertColor('Marr�n');
    insertColor('Gris');
    
END;
/
-----------------------------
----Diseases


BEGIN
    insertDisease('Resfriado com�n');
    insertDisease('Alergias');
    insertDisease('Diarrea');
    insertDisease('Infecci�n de o�do');
    insertDisease('Pulgas y garrapatas');
    insertDisease('V�mitos frecuentes');
    insertDisease('Gripe canina');
    insertDisease('Estre�imiento');
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
    insertEase('Muy f�cil');
    insertEase('F�cil');
    insertEase('Requiere paciencia');
    insertEase('Dif�cil');
    insertEase('Muy dif�cil');
END;
/

----------------------------
--Energy



BEGIN
    insertEnergy('Atl�tico');
    insertEnergy('Corredor');
    insertEnergy('Caminador');
    insertEnergy('Para ver TV');
    insertEnergy('Nivel de energ�a no es importante');
END;
/


----------------------------------------------------
----Severity



BEGIN
    insertSeverity('Estado cr�tico');
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
    insertRace('Pastor Alem�n', 3);
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




















    





    










