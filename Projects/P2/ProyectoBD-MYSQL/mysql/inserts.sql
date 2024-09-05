CALL InsertAdmin('a', 'a');
#ANIMAL
CALL insertAnimal('Gato');
CALL insertAnimal('Perro');
CALL insertAnimal('Conejo');
CALL insertAnimal('Canario');
CALL insertAnimal('Tortuga');
CALL insertAnimal('Pez');
CALL insertAnimal('Erizo');
CALL insertAnimal('Conejillo de Indias');
CALL insertAnimal('Mini cerdo');

#COUNTRY
CALL insertCountry('Argentina');
CALL insertCountry('Brasil');
CALL insertCountry('M�xico');
CALL insertCountry('Colombia');
CALL insertCountry('Chile');
CALL insertCountry('Per�');
CALL insertCountry('Venezuela');
CALL insertCountry('Costa Rica');
CALL insertCountry('El Salvador');
CALL insertCountry('Guatemala');
CALL insertCountry('Honduras');
CALL insertCountry('Nicaragua');
CALL insertCountry('Panama');
select * from country;

#PROVINCE
#argentina
CALL insertProvince('Buenos Aires', 1); 
CALL insertProvince('C�rdoba', 1); 
CALL insertProvince('Santa Fe', 1); 
CALL insertProvince('Mendoza', 1); 
CALL insertProvince('Tucum�n', 1); 
CALL insertProvince('Salta', 1); 
CALL insertProvince('Chaco', 1); 
#brasil
CALL insertProvince('Sao Paulo', 2); 
CALL insertProvince('Rio de Janeiro', 2); 
CALL insertProvince('Bahia', 2); 
CALL insertProvince('Minas Gerais', 2); 
CALL insertProvince('Rio Grande do Sul', 2); 
CALL insertProvince('Paran�', 2); 
CALL insertProvince('Pernambuco', 2); 
#Mexico
CALL insertProvince('Ciudad de M�xico', 3); 
CALL insertProvince('Jalisco', 3); 
CALL insertProvince('Nuevo Le�n', 3); 
CALL insertProvince('Puebla', 3); 
CALL insertProvince('Guanajuato', 3); 
CALL insertProvince('Veracruz', 3); 
CALL insertProvince('Yucat�n', 3); 
-- Colombia
CALL insertProvince('Bogot�', 4); 
CALL insertProvince('Antioquia', 4); 
CALL insertProvince('Valle del Cauca', 4); 
CALL insertProvince('Atl�ntico', 4); 
CALL insertProvince('Santander', 4); 
CALL insertProvince('Cundinamarca', 4); 
CALL insertProvince('Cesar', 4); 
-- Chile
CALL insertProvince('Santiago', 5); 
CALL insertProvince('Valpara�so', 5); 
CALL insertProvince('Maule', 5); 
CALL insertProvince('Biob�o', 5); 
CALL insertProvince('Araucan�a', 5); 
CALL insertProvince('Los Lagos', 5); 
CALL insertProvince('Magallanes', 5); 
-- Peru
CALL insertProvince('Lima', 6); 
CALL insertProvince('Cusco', 6); 
CALL insertProvince('Arequipa', 6); 
CALL insertProvince('Puno', 6); 
CALL insertProvince('Lambayeque', 6); 
CALL insertProvince('Jun�n', 6); 
CALL insertProvince('Tacna', 6); 
-- Venezuela
CALL insertProvince('Distrito Capital', 7); 
CALL insertProvince('Miranda', 7); 
CALL insertProvince('Zulia', 7); 
CALL insertProvince('T�chira', 7); 
CALL insertProvince('Lara', 7); 
CALL insertProvince('Aragua', 7); 
CALL insertProvince('M�rida', 7); 
-- Costa Rica
CALL insertProvince('San Jos�', 8); 
CALL insertProvince('Alajuela', 8); 
CALL insertProvince('Cartago', 8); 
CALL insertProvince('Puntarenas', 8); 
CALL insertProvince('Guanacaste', 8); 
CALL insertProvince('Heredia', 8); 
CALL insertProvince('Lim�n', 8);     
-- El Salvador
CALL insertProvince('San Salvador', 9); 
CALL insertProvince('Santa Ana', 9); 
CALL insertProvince('San Miguel', 9); 
CALL insertProvince('La Libertad', 9); 
CALL insertProvince('La Paz', 9); 
CALL insertProvince('Cuscatl�n', 9); 
CALL insertProvince('Chalatenango', 9); 
-- Guatemala
CALL insertProvince('Guatemala', 10); 
CALL insertProvince('Huehuetenango', 10); 
CALL insertProvince('Quetzaltenango', 10); 
CALL insertProvince('Alta Verapaz', 10); 
CALL insertProvince('San Marcos', 10); 
CALL insertProvince('Suchitep�quez', 10); 
CALL insertProvince('Chimaltenango', 10); 
-- Honduras
CALL insertProvince('Francisco Moraz�n', 11); 
CALL insertProvince('Cort�s', 11); 
CALL insertProvince('Atl�ntida', 11); 
CALL insertProvince('Olancho', 11); 
CALL insertProvince('Comayagua', 11); 
CALL insertProvince('Santa B�rbara', 11); 
CALL insertProvince('La Paz', 11); 
-- Nicaragua
CALL insertProvince('Managua', 12); 
CALL insertProvince('Le�n', 12); 
CALL insertProvince('Matagalpa', 12); 
CALL insertProvince('Chinandega', 12); 
CALL insertProvince('Masaya', 12); 
CALL insertProvince('Jinotega', 12); 
CALL insertProvince('Boaco', 12); 
-- Panama
CALL insertProvince('Panam�', 13); 
CALL insertProvince('Herrera', 13); 
CALL insertProvince('Chiriqu�', 13); 
CALL insertProvince('Cocl�', 13); 
CALL insertProvince('Los Santos', 13); 
CALL insertProvince('Bocas del Toro', 13); 
CALL insertProvince('Veraguas', 13);
#CANTON
CALL insertCanton('San Jos�', 50); -- Cant�n de San Jos�
CALL insertCanton('Escaz�', 50);
CALL insertCanton('Desamparados', 50);
CALL insertCanton('Puriscal', 50);
CALL insertCanton('Tarraz�', 50);
CALL insertCanton('Aserr�', 50);
CALL insertCanton('Mora', 50);
CALL insertCanton('Goicoechea', 50);
CALL insertCanton('Santa Ana', 50);
CALL insertCanton('Alajuelita', 50);
CALL insertCanton('V�squez de Coronado', 50);
CALL insertCanton('Acosta', 50);
CALL insertCanton('Tib�s', 50);
CALL insertCanton('Moravia', 50);
CALL insertCanton('Montes de Oca', 50);
CALL insertCanton('Turrubares', 50);
CALL insertCanton('Dota', 50);
CALL insertCanton('Curridabat', 50);
CALL insertCanton('P�rez Zeled�n', 50);
CALL insertCanton('Leon Cortes', 50);

    
    
CALL insertCanton('Alajuela', 51); -- Cant�n de Alajuela
CALL insertCanton('San Ram�n', 51);
CALL insertCanton('Grecia', 51);
CALL insertCanton('San Mateo', 51);
CALL insertCanton('Atenas', 51);
CALL insertCanton('Naranjo', 51);
CALL insertCanton('Palmares', 51);
CALL insertCanton('Po�s', 51);
CALL insertCanton('Orotina', 51);
CALL insertCanton('San Carlos', 51);
CALL insertCanton('Alfaro Ruiz', 51);
CALL insertCanton('Valverde Vega', 51);
CALL insertCanton('Upala', 51);
CALL insertCanton('Los Chiles', 51);
CALL insertCanton('Guatuso', 51);
CALL insertCanton('Rio Cuarto', 51);
    
    
-- Cant�n de Cartago
CALL insertCanton('Cartago', 52); 
CALL insertCanton('Para�so', 52);
CALL insertCanton('La Uni�n', 52);
CALL insertCanton('Jim�nez', 52);
CALL insertCanton('Turrialba', 52);
CALL insertCanton('Alvarado', 52);
CALL insertCanton('Oreamuno', 52);
CALL insertCanton('El Guarco', 52);

    
 
CALL insertCanton('Puntarenas', 53); -- Cant�n de Puntarenas
CALL insertCanton('Esparza', 53);
CALL insertCanton('Buenos Aires', 53);
CALL insertCanton('Montes de Oro', 53);
CALL insertCanton('Osa', 53);
CALL insertCanton('Aguirre', 53);
CALL insertCanton('Golfito', 53);
CALL insertCanton('Coto Brus', 53);
CALL insertCanton('Parrita', 53);
CALL insertCanton('Corredores', 53);
CALL insertCanton('Garabito', 53);
CALL insertCanton('Monte Verde', 53);

    
CALL insertCanton('Liberia', 54); -- Cant�n de Guanacaste
CALL insertCanton('Nicoya', 54);
CALL insertCanton('Santa Cruz', 54);
CALL insertCanton('Bagaces', 54);
CALL insertCanton('Carrillo', 54);
CALL insertCanton('Ca�as', 54);
CALL insertCanton('Abangares', 54);
CALL insertCanton('Tilar�n', 54);
CALL insertCanton('Nandayure', 54);
CALL insertCanton('La Cruz', 54);
CALL insertCanton('Hojancha', 54);

    
    
CALL insertCanton('Heredia', 55); -- Cant�n de Heredia
CALL insertCanton('Barva', 55);
CALL insertCanton('Santo Domingo', 55);
CALL insertCanton('Santa B�rbara', 55);
CALL insertCanton('San Rafael', 55);
CALL insertCanton('San Isidro', 55);
CALL insertCanton('Bel�n', 55);
CALL insertCanton('Flores', 55);
CALL insertCanton('San Pablo', 55);
CALL insertCanton('Sarapiqu�', 55);


CALL insertCanton('Lim�n', 56); -- Cant�n de Lim�n
CALL insertCanton('Pococ�', 56);
CALL insertCanton('Siquirres', 56);
CALL insertCanton('Talamanca', 56);
CALL insertCanton('Matina', 56);
CALL insertCanton('Gu�cimo', 56);
#DISTRICTS
CALL insertDistrict('Carmen', 1);
    CALL insertDistrict('Merced', 1);
    CALL insertDistrict('Hospital', 1);
    CALL insertDistrict('Catedral', 1);
    CALL insertDistrict('Zapote', 1);
    CALL insertDistrict('San Francisco', 1);
    CALL insertDistrict('Uruca', 1);
    CALL insertDistrict('Mata Redonda', 1);
    CALL insertDistrict('Pavas', 1);
    CALL insertDistrict('Hatillo', 1);
    CALL insertDistrict('San Sebasti�n', 1);
    CALL insertDistrict('Escaz�', 2);
    CALL insertDistrict('San Antonio', 2);
    CALL insertDistrict('San Rafael', 2);
    -- Contin�a con la lista de distritos en los otros cantones de San Jos� seg�n sea necesario



    -- Cant�n de Desamparados
    CALL insertDistrict('Desamparados', 3);
    CALL insertDistrict('San Miguel', 3);
    CALL insertDistrict('San Juan de Dios', 3);
    CALL insertDistrict('San Rafael Arriba', 3);
    CALL insertDistrict('San Rafael Abajo', 3);
    CALL insertDistrict('Los Guido', 3);
    CALL insertDistrict('San Antonio', 3);
    CALL insertDistrict('Frailes', 3);
    CALL insertDistrict('Patarr�', 3);
    CALL insertDistrict('San Crist�bal', 3);
    
    -- Cant�n de Puriscal
    CALL insertDistrict('Santiago', 4);
    CALL insertDistrict('Mercedes Sur', 4);
    CALL insertDistrict('Barbacoas', 4);
    CALL insertDistrict('Grifo Alto', 4);
    CALL insertDistrict('San Rafael', 4);
    CALL insertDistrict('Candelarita', 4);
    
    -- Cant�n de Tarraz�
    CALL insertDistrict('San Marcos', 5);
    CALL insertDistrict('San Lorenzo', 5);
    CALL insertDistrict('San Carlos', 5);
    CALL insertDistrict('San Juan', 5);
    CALL insertDistrict('San Cris�stomo', 5);
    
    -- Cant�n de Aserr�
    CALL insertDistrict('Aserr�', 6);
    CALL insertDistrict('Tarbaca', 6);
    CALL insertDistrict('Vuelta de Jorco', 6);
    CALL insertDistrict('San Gabriel', 6);
    CALL insertDistrict('Legua', 6);
    
    -- Cant�n de Mora
    CALL insertDistrict('Col�n', 7);
    CALL insertDistrict('Guayabo', 7);
    CALL insertDistrict('Tabarcia', 7);
    CALL insertDistrict('Piedras Negras', 7);
    
    -- Cant�n de Goicoechea
    CALL insertDistrict('Guadalupe', 8);
    CALL insertDistrict('San Francisco', 8);
    CALL insertDistrict('Calle Blancos', 8);
    CALL insertDistrict('Mata de Pl�tano', 8);
    
    -- Cant�n de Santa Ana
    CALL insertDistrict('Santa Ana', 9);
    CALL insertDistrict('Salitral', 9);
    CALL insertDistrict('Pozos', 9);
    CALL insertDistrict('Uruca', 9);
    
    -- Cant�n de Alajuelita
    CALL insertDistrict('Alajuelita', 10);
    CALL insertDistrict('San Josecito', 10);
    CALL insertDistrict('San Antonio', 10);
    CALL insertDistrict('Concepci�n', 10);
    
    -- Cant�n de V�squez de Coronado
    CALL insertDistrict('San Isidro', 11);
    CALL insertDistrict('San Rafael', 11);
    CALL insertDistrict('Dulce Nombre', 11);
    CALL insertDistrict('Patalillo', 11);
    CALL insertDistrict('Cascajal', 11);
    
    -- Cant�n de Acosta
    CALL insertDistrict('San Ignacio', 12);
    CALL insertDistrict('Guaitil', 12);
    CALL insertDistrict('Palmichal', 12);
    CALL insertDistrict('Cangrejal', 12);
    CALL insertDistrict('Sabanillas', 12);
    
    -- Cant�n de Tib�s
    CALL insertDistrict('Tib�s', 13);
    CALL insertDistrict('Cinco Esquinas', 13);
    CALL insertDistrict('Anselmo Llorente', 13);
    
    -- Cant�n de Moravia
    CALL insertDistrict('San Vicente', 14);
    CALL insertDistrict('San Jer�nimo', 14);
    CALL insertDistrict('La Trinidad', 14);
    
    -- Cant�n de Montes de Oca
    CALL insertDistrict('San Pedro', 15);
    CALL insertDistrict('Sabanilla', 15);
    CALL insertDistrict('Mercedes', 15);
    
    -- Cant�n de Turrubares
    CALL insertDistrict('San Pablo', 16);
    CALL insertDistrict('San Pedro', 16);
    
    -- Cant�n de Dota
    CALL insertDistrict('Santa Mar�a', 17);
    CALL insertDistrict('Jard�n', 17);
    CALL insertDistrict('Copey', 17);
    
    -- Cant�n de Curridabat
    CALL insertDistrict('Curridabat', 18);
    CALL insertDistrict('Granadilla', 18);
    CALL insertDistrict('S�nchez', 18);
    
    -- Cant�n de P�rez Zeled�n
    CALL insertDistrict('San Isidro de El General', 19);
    CALL insertDistrict('Daniel Flores', 19);
    CALL insertDistrict('Rivas', 19);
    CALL insertDistrict('San Pedro', 19);
    CALL insertDistrict('Platanares', 19);
    CALL insertDistrict('Pejibaye', 19);
    CALL insertDistrict('Caj�n', 19);
    CALL insertDistrict('Bar�', 19);
    CALL insertDistrict('R�o Nuevo', 19);
    CALL insertDistrict('P�ramo', 19);
    CALL insertDistrict('La Amistad', 19);
    
    -- Cant�n de Le�n Cort�s
    CALL insertDistrict('San Pablo', 20);
    CALL insertDistrict('San Andr�s', 20);
    CALL insertDistrict('Llano Bonito', 20);
    CALL insertDistrict('San Isidro', 20);
    CALL insertDistrict('Santa Cruz', 20);
    

    -- Cant�n de Alajuela
    CALL insertDistrict('Alajuela', 21);
    CALL insertDistrict('San Jos�', 21);
    CALL insertDistrict('Carrizal', 21);
    CALL insertDistrict('San Antonio', 21);
    CALL insertDistrict('Gu�cima', 21);
    CALL insertDistrict('San Isidro', 21);
    CALL insertDistrict('Sabanilla', 21);
    CALL insertDistrict('R�o Segundo', 21);
    CALL insertDistrict('Desamparados', 21);
    CALL insertDistrict('Turr�cares', 21);
    CALL insertDistrict('Tambor', 21);
    CALL insertDistrict('Garita', 21);
    CALL insertDistrict('Sarapiqu�', 21);

    -- Cant�n de San Ram�n
    CALL insertDistrict('San Ram�n', 22);
    CALL insertDistrict('Santiago', 22);
    CALL insertDistrict('San Juan', 22);
    CALL insertDistrict('Piedades Norte', 22);
    CALL insertDistrict('Piedades Sur', 22);
    CALL insertDistrict('San Rafael', 22);
    CALL insertDistrict('San Isidro', 22);
    CALL insertDistrict('�ngeles', 22);
    CALL insertDistrict('Alfaro', 22);
    CALL insertDistrict('Volio', 22);
    CALL insertDistrict('Concepci�n', 22);
    CALL insertDistrict('Zapotal', 22);
    CALL insertDistrict('Pe�as Blancas', 22);

    -- Cant�n de Grecia
    CALL insertDistrict('Grecia', 23);
    CALL insertDistrict('San Isidro', 23);
    CALL insertDistrict('San Jos�', 23);
    CALL insertDistrict('San Roque', 23);
    CALL insertDistrict('Tacares', 23);
    CALL insertDistrict('R�o Cuarto', 23);
    CALL insertDistrict('Santa Isabel', 23);
    CALL insertDistrict('Santa Gertrudis', 23);

-- Canton San mATEO

    CALL insertDistrict('San Mateo', 24);
    CALL insertDistrict('Desmonte', 24);
    CALL insertDistrict('Jesus Maria', 24);
    CALL insertDistrict('Labrador', 24);


    -- Cant�n de Atenas
    CALL insertDistrict('Atenas', 25);
    CALL insertDistrict('Jes�s', 25);
    CALL insertDistrict('Mercedes', 25);
    CALL insertDistrict('San Isidro', 25);
    CALL insertDistrict('Concepci�n', 25);
    CALL insertDistrict('San Jos�', 25);
    CALL insertDistrict('Santa Eulalia', 25);
    CALL insertDistrict('Escobal', 25);

    -- Cant�n de Naranjo
    CALL insertDistrict('Naranjo', 26);
    CALL insertDistrict('San Miguel', 26);
    CALL insertDistrict('San Jos�', 26);
    CALL insertDistrict('Cirr� Sur', 26);
    CALL insertDistrict('San Jer�nimo', 26);
    CALL insertDistrict('San Juan', 26);
    CALL insertDistrict('El Rosario', 26);

    -- Cant�n de Palmares
    CALL insertDistrict('Palmares', 27);
    CALL insertDistrict('Zaragoza', 27);
    CALL insertDistrict('Buenos Aires', 27);
    CALL insertDistrict('Santiago', 27);
    CALL insertDistrict('Candelaria', 27);
    CALL insertDistrict('Esquipulas', 27);
    CALL insertDistrict('La Granja', 27);

    -- Cant�n de Po�s
    CALL insertDistrict('San Pedro', 28);
    CALL insertDistrict('San Juan', 28);
    CALL insertDistrict('San Rafael', 28);
    CALL insertDistrict('Carrillos', 28);
    CALL insertDistrict('Sabana Redonda', 28);

    -- Cant�n de Orotina
    CALL insertDistrict('Orotina', 29);
    CALL insertDistrict('El Mastate', 29);
    CALL insertDistrict('Hacienda Vieja', 29);
    CALL insertDistrict('Coyolar', 29);
    CALL insertDistrict('La Ceiba', 29);
    CALL insertDistrict('La Garita', 29);

    -- Cant�n de San Carlos
    CALL insertDistrict('Quesada', 30);
    CALL insertDistrict('Florencia', 30);
    CALL insertDistrict('Buenavista', 30);
    CALL insertDistrict('Aguas Zarcas', 30);
    CALL insertDistrict('Venecia', 30);
    CALL insertDistrict('Pital', 30);
    CALL insertDistrict('La Fortuna', 30);
    CALL insertDistrict('La Tigra', 30);
    CALL insertDistrict('La Palmera', 30);
    CALL insertDistrict('Venado', 30);
    CALL insertDistrict('Cutris', 30);
    CALL insertDistrict('Monterrey', 30);

    -- Cant�n de Alfaro Ruiz
    CALL insertDistrict('Zarcero', 31);
    CALL insertDistrict('Laguna', 31);
    CALL insertDistrict('Tapezco', 31);
    CALL insertDistrict('Guadalupe', 31);
    CALL insertDistrict('Palmira', 31);
    CALL insertDistrict('Zapote', 31);

    -- Cant�n de Valverde Vega
    CALL insertDistrict('Sarch�', 32);
    CALL insertDistrict('San Pedro', 32);
    CALL insertDistrict('Rodr�guez', 32);
    CALL insertDistrict('Upala', 32);
    CALL insertDistrict('Aguas Claras', 32);

    -- Cant�n de Upala
    CALL insertDistrict('Upala', 33);
    CALL insertDistrict('Aguas Claras', 33);
    CALL insertDistrict('San Jos�', 33);
    CALL insertDistrict('Bijagua', 33);
    CALL insertDistrict('Delicias', 33);
    CALL insertDistrict('Dos R�os', 33);
    CALL insertDistrict('Yolillal', 33);
    CALL insertDistrict('Canalete', 33);

    -- Cant�n de Los Chiles
    CALL insertDistrict('Los Chiles', 34);
    CALL insertDistrict('Ca�o Negro', 34);
    CALL insertDistrict('El Amparo', 34);
    CALL insertDistrict('San Jorge', 34);

    -- Cant�n de Guatuso
    CALL insertDistrict('San Rafael', 35);
    CALL insertDistrict('Buenavista', 35);
    CALL insertDistrict('Cote', 35);
    
    -- Cant�n de Rio Cuarto
    CALL insertDistrict('Rio Cuarto', 36);
    CALL insertDistrict('Santa Rita', 36);
    CALL insertDistrict('Santa Isabel', 36);

    

    -- Cant�n de Cartago
    CALL insertDistrict('Cartago', 37);
    CALL insertDistrict('Oriental', 37);
    CALL insertDistrict('Occidental', 37);
    CALL insertDistrict('Carmen', 37);
    CALL insertDistrict('San Nicol�s', 37);
    CALL insertDistrict('Agua Caliente', 37);
    CALL insertDistrict('Guadalupe', 37);
    CALL insertDistrict('Corralillo', 37);
    CALL insertDistrict('Tierra Blanca', 37);
    CALL insertDistrict('Dulce Nombre', 37);
    CALL insertDistrict('Llano Grande', 37);
    CALL insertDistrict('Quebradilla', 37);
    CALL insertDistrict('Para�so', 37);
    CALL insertDistrict('Santiago', 37);
    CALL insertDistrict('Orosi', 37);
    CALL insertDistrict('Cach�', 37);
    CALL insertDistrict('Llanos de Santa Luc�a', 37);

    -- Cant�n de Para�so
    CALL insertDistrict('Para�so', 38);
    CALL insertDistrict('Santiago', 38);
    CALL insertDistrict('Orosi', 38);
    CALL insertDistrict('Cach�', 38);
    CALL insertDistrict('Llanos de Santa Luc�a', 38);

    -- Cant�n de La Uni�n
    CALL insertDistrict('Tres R�os', 39);
    CALL insertDistrict('San Diego', 39);
    CALL insertDistrict('R�o Azul', 39);
    CALL insertDistrict('San Juan', 39);
    CALL insertDistrict('San Rafael', 39);
    CALL insertDistrict('Concepci�n', 39);
    CALL insertDistrict('Dulce Nombre', 39);
    CALL insertDistrict('San Ram�n', 39);
    CALL insertDistrict('Rodeo', 39);

    -- Cant�n de Jim�nez
    CALL insertDistrict('Juan Vi�as', 40);
    CALL insertDistrict('Tucurrique', 40);
    CALL insertDistrict('Pejibaye', 40);

    -- Cant�n de Turrialba
    CALL insertDistrict('Turrialba', 41);
    CALL insertDistrict('La Suiza', 41);
    CALL insertDistrict('Peralta', 41);
    CALL insertDistrict('Santa Cruz', 41);
    CALL insertDistrict('Santa Teresita', 41);
    CALL insertDistrict('Pavones', 41);
    CALL insertDistrict('Tuis', 41);
    CALL insertDistrict('Tayutic', 41);
    CALL insertDistrict('Santa Rosa', 41);
    CALL insertDistrict('Tres Equis', 41);
    CALL insertDistrict('La Isabel', 41);
    CALL insertDistrict('Chirrip�', 41);

    -- Cant�n de Alvarado
    CALL insertDistrict('Pacayas', 42);
    CALL insertDistrict('Cervantes', 42);
    CALL insertDistrict('Capellades', 42);

    -- Cant�n de Oreamuno
    CALL insertDistrict('San Rafael', 43);
    CALL insertDistrict('Cot', 43);
    CALL insertDistrict('Potrero Cerrado', 43);
    CALL insertDistrict('Cipreses', 43);
    CALL insertDistrict('Santa Rosa', 43);
    CALL insertDistrict('Bainbridge', 43);
    CALL insertDistrict('Oro', 43);

    -- Cant�n de El Guarco
    CALL insertDistrict('Tejar', 44);
    CALL insertDistrict('San Isidro', 44);
    CALL insertDistrict('Tobosi', 44);

    
    -- Cant�n de Puntarenas
    CALL insertDistrict('Puntarenas', 45);
    CALL insertDistrict('Pitahaya', 45);
    CALL insertDistrict('Chomes', 45);
    CALL insertDistrict('Lepanto', 45);
    CALL insertDistrict('Paquera', 45);
    CALL insertDistrict('Manzanillo', 45);
    CALL insertDistrict('Guacimal', 45);
    CALL insertDistrict('Barranca', 45);
    CALL insertDistrict('Monteverde', 45);
    CALL insertDistrict('Isla del Coco', 45);
    
    -- Cant�n de Esparza
    CALL insertDistrict('Esp�ritu Santo', 46);
    CALL insertDistrict('San Juan Grande', 46);
    CALL insertDistrict('Macacona', 46);
    
    -- Cant�n de Buenos Aires
    CALL insertDistrict('Buenos Aires', 47);
    CALL insertDistrict('Volc�n', 47);
    CALL insertDistrict('Potrero Grande', 47);
    CALL insertDistrict('Boruca', 47);
    CALL insertDistrict('Pilas', 47);
    
    -- Cant�n de Montes de Oro
    CALL insertDistrict('Miramar', 48);
    CALL insertDistrict('La Uni�n', 48);
    CALL insertDistrict('San Isidro', 48);
    CALL insertDistrict('Puerto Cort�s', 48);
    
    -- Cant�n de Osa
    CALL insertDistrict('Puerto Cort�s', 49);
    CALL insertDistrict('Palmar', 49);
    CALL insertDistrict('Sierpe', 49);
    CALL insertDistrict('Bah�a Ballena', 49);
    CALL insertDistrict('Piedras Blancas', 49);
    CALL insertDistrict('Bah�a Drake', 49);
    
    -- Cant�n de Aguirre
    CALL insertDistrict('Quepos', 50);
    CALL insertDistrict('Savegre', 50);
    CALL insertDistrict('Naranjito', 50);
    
    -- Cant�n de Golfito
    CALL insertDistrict('Golfito', 51);
    CALL insertDistrict('Puerto Jim�nez', 51);
    CALL insertDistrict('Guaycar�', 51);
    CALL insertDistrict('Pav�n', 51);
    
    -- Cant�n de Coto Brus
    CALL insertDistrict('San Vito', 52);
    CALL insertDistrict('Sabalito', 52);
    CALL insertDistrict('Aguabuena', 52);
    CALL insertDistrict('Limoncito', 52);
    CALL insertDistrict('Pittier', 52);
    
    -- Cant�n de Parrita
    CALL insertDistrict('Parrita', 53);
    CALL insertDistrict('Caballo', 53);
    CALL insertDistrict('Quepos', 53);
    
    -- Cant�n de Corredores
    CALL insertDistrict('Corredores', 54);
    CALL insertDistrict('La Cuesta', 54);
    CALL insertDistrict('Paso Canoas', 54);

    -- Cant�n de Garabito
    CALL insertDistrict('Jac�', 55);
    CALL insertDistrict('T�rcoles', 55);

    -- Cant�n de Monte Verde
    CALL insertDistrict('Monte Verde', 56);


    
    	
    -- Cant�n de Liberia
    CALL insertDistrict('Liberia', 57);
    CALL insertDistrict('Ca�as Dulces', 57);
    CALL insertDistrict('Mayorga', 57);
    CALL insertDistrict('Nacascolo', 57);
    CALL insertDistrict('Curuband�', 57);

    -- Cant�n de Nicoya
    CALL insertDistrict('Nicoya', 58);
    CALL insertDistrict('Mansi�n', 58);
    CALL insertDistrict('Quebrada Honda', 58);
    CALL insertDistrict('S�mara', 58);
    CALL insertDistrict('Nosara', 58);
    CALL insertDistrict('Bel�n de Nosarita', 58);

    -- Cant�n de Santa Cruz
    CALL insertDistrict('Santa Cruz', 59);
    CALL insertDistrict('Bols�n', 59);
    CALL insertDistrict('Veintisiete de Abril', 59);
    CALL insertDistrict('Tempate', 59);
    CALL insertDistrict('Cartagena', 59);


    -- Cant�n de Bagaces
    CALL insertDistrict('Bagaces', 60);
    CALL insertDistrict('La Fortuna', 60);
    CALL insertDistrict('Mogote', 60);

    -- Cant�n de Carrillo
    CALL insertDistrict('Filadelfia', 61);
    CALL insertDistrict('Palmira', 61);
    CALL insertDistrict('Sardinal', 61);
    CALL insertDistrict('Bel�n', 61);

    -- Cant�n de Ca�as
    CALL insertDistrict('Ca�as', 62);
    CALL insertDistrict('Palmira', 62);
    CALL insertDistrict('San Miguel', 62);
    CALL insertDistrict('Bebedero', 62);

    

    -- Cant�n de Abangares
    CALL insertDistrict('Las Juntas', 63);
    CALL insertDistrict('Sierra', 63);
    CALL insertDistrict('San Juan', 63);
    CALL insertDistrict('Colorado', 63);
    
    
    -- Cant�n de Tilar�n
    CALL insertDistrict('Tilar�n', 64);
    CALL insertDistrict('Quebrada Grande', 64);
    CALL insertDistrict('Tronadora', 64);
    CALL insertDistrict('Santa Rosa', 64);
    CALL insertDistrict('L�bano', 64);

    -- Cant�n de Nandayure
    CALL insertDistrict('Carmona', 65);
    CALL insertDistrict('Santa Rita', 65);
    CALL insertDistrict('Zapotal', 65);

    -- Cant�n de La Cruz
    CALL insertDistrict('La Cruz', 66);
    CALL insertDistrict('Santa Cecilia', 66);
    CALL insertDistrict('La Garita', 66);

    -- Cant�n de Hojancha
    CALL insertDistrict('Hojancha', 67);
    CALL insertDistrict('Monte Romo', 67);
    CALL insertDistrict('Puerto Carrillo', 67);
    
    
    -- Cant�n de Heredia
    CALL insertDistrict('Heredia', 68);
    CALL insertDistrict('Mercedes', 68);
    CALL insertDistrict('San Francisco', 68);
    CALL insertDistrict('Ulloa', 68);
    CALL insertDistrict('Varablanca', 68);

    -- Cant�n de Barva
    CALL insertDistrict('Barva', 69);
    CALL insertDistrict('San Pedro', 69);
    CALL insertDistrict('San Pablo', 69);
    CALL insertDistrict('San Roque', 69);
    CALL insertDistrict('Santa Luc�a', 69);

    -- Cant�n de Santo Domingo
    CALL insertDistrict('Santo Domingo', 70);
    CALL insertDistrict('San Vicente', 70);
    CALL insertDistrict('San Miguel', 70);
    CALL insertDistrict('Paracito', 70);
    CALL insertDistrict('Santo Tom�s', 70);
    CALL insertDistrict('Santa Rosa', 70);
    CALL insertDistrict('Tures', 70);

    -- Cant�n de Santa B�rbara
    CALL insertDistrict('Santa B�rbara', 71);
    CALL insertDistrict('San Pedro', 71);
    CALL insertDistrict('San Juan', 71);
    CALL insertDistrict('Jes�s', 71);
    CALL insertDistrict('Santo Domingo', 71);
    CALL insertDistrict('Purab�', 71);

    -- Cant�n de San Rafael
    CALL insertDistrict('San Rafael', 72);
    CALL insertDistrict('San Josecito', 72);
    CALL insertDistrict('Santiago', 72);
    CALL insertDistrict('�ngeles', 72);
    CALL insertDistrict('Concepci�n', 72);

    -- Cant�n de San Isidro
    CALL insertDistrict('San Isidro', 73);
    CALL insertDistrict('San Jos�', 73);
    CALL insertDistrict('Concepci�n', 73);
    CALL insertDistrict('San Francisco', 73);
    CALL insertDistrict('San Antonio', 73);

    -- Cant�n de Bel�n
    CALL insertDistrict('San Antonio', 74);
    CALL insertDistrict('La Ribera', 74);
    CALL insertDistrict('La Asunci�n', 74);

    -- Cant�n de Flores
    CALL insertDistrict('San Joaqu�n', 75);
    CALL insertDistrict('Barrantes', 75);
    CALL insertDistrict('Llorente', 75);

    -- Cant�n de San Pablo
    CALL insertDistrict('San Pablo', 76);
    CALL insertDistrict('Rinc�n de Sabanilla', 76);
    CALL insertDistrict('Rinc�n de Naranjo', 76);
    
    
    -- Cant�n de Sarapiqu�
    CALL insertDistrict('Sarapiqu�', 77);
    CALL insertDistrict('Puerto Viejo', 77);
    CALL insertDistrict('La Virgen', 77);
    CALL insertDistrict('Horquetas', 77);
    CALL insertDistrict('Llanuras del Gaspar', 77);
    CALL insertDistrict('Cure�a', 77);
    
    
    
    -- Cant�n de Lim�n
    CALL insertDistrict('Lim�n', 78);
    CALL insertDistrict('Valle La Estrella', 78);
    CALL insertDistrict('R�o Blanco', 78);
    CALL insertDistrict('Matama', 78);

    -- Cant�n de Pococ�
    CALL insertDistrict('Gu�piles', 79);
    CALL insertDistrict('Jim�nez', 79);
    CALL insertDistrict('La Rita', 79);
    CALL insertDistrict('Roxana', 79);
    CALL insertDistrict('Cariari', 79);
    CALL insertDistrict('Colorado', 79);

    -- Cant�n de Siquirres
    CALL insertDistrict('Siquirres', 80);
    CALL insertDistrict('Pacuarito', 80);
    CALL insertDistrict('Florida', 80);
    CALL insertDistrict('Germania', 80);
    CALL insertDistrict('Cairo', 80);
    CALL insertDistrict('Alegr�a', 80);

    -- Cant�n de Talamanca
    CALL insertDistrict('Bribri', 81);
    CALL insertDistrict('Bratsi', 81);
    CALL insertDistrict('Sixaola', 81);
    CALL insertDistrict('Cahuita', 81);
    CALL insertDistrict('Telire', 81);

    -- Cant�n de Matina
    CALL insertDistrict('Matina', 82);
    CALL insertDistrict('Bat�n', 82);
    CALL insertDistrict('Carrandi', 82);

    -- Cant�n de Gu�cimo
    CALL insertDistrict('Gu�cimo', 83);
    CALL insertDistrict('Mercedes', 83);
    CALL insertDistrict('Pocora', 83);
    CALL insertDistrict('R�o Jim�nez', 83);
    CALL insertDistrict('Duacar�', 83);
#Colores
CALL insertColor('Negro');
    CALL insertColor('Blanco');
    CALL insertColor('Rojo');
    CALL insertColor('Azul');
    CALL insertColor('Amarillo');
    CALL insertColor('Rosa');
    CALL insertColor('Marr�n');
    CALL insertColor('Gris');
#DISEASES
CALL insertDisease('Resfriado com�n');
    CALL insertDisease('Alergias');
    CALL insertDisease('Diarrea');
    CALL insertDisease('Infecci�n de o�do');
    CALL insertDisease('Pulgas y garrapatas');
    CALL insertDisease('V�mitos frecuentes');
    CALL insertDisease('Gripe canina');
    CALL insertDisease('Estre�imiento');
    CALL insertDisease('Problemas dentales');
    CALL insertDisease('Afecciones de la piel');
    CALL insertDisease('Infecciones del tracto urinario');
    CALL insertDisease('Obesidad');
    CALL insertDisease('Problemas de comportamiento');
    CALL insertDisease('Cataratas');
    CALL insertDisease('Alergias alimentarias');
    CALL insertDisease('Artritis');
    CALL insertDisease('Infecciones respiratorias');
#EASE
CALL insertEase('Muy f�cil');
    CALL insertEase('F�cil');
    CALL insertEase('Requiere paciencia');
    CALL insertEase('Dif�cil');
    CALL insertEase('Muy dif�cil');
#ENERGY
CALL insertEnergy('Atl�tico');
    CALL insertEnergy('Corredor');
    CALL insertEnergy('Caminador');
    CALL insertEnergy('Para ver TV');
    CALL insertEnergy('Nivel de energ�a no es importante');
#SEVERITY
CALL insertSeverity('Estado cr�tico');
    CALL insertSeverity('Mal estado');
    CALL insertSeverity('Buen estado');
    CALL insertSeverity('Estado moderado');
    CALL insertSeverity('Estado grave');
#RACE

#STATUS
CALL insertStatus('Saludable');
    CALL insertStatus('No tan Saludable');
    CALL insertStatus('No Saludable');
    



SELECT * FROM RACE;

CALL insertRace('Schnauzer', 3);
    CALL insertRace('Chihuahua', 3);
    CALL insertRace('Pastor Alem�n', 3);
    CALL insertRace('Labrador Retriever', 3);
    CALL insertRace('Golden Retriever', 3);
    CALL insertRace('Bulldog', 3);
    CALL insertRace('Beagle', 3);
    CALL insertRace('Poodle', 3);
    CALL insertRace('Rottweiler', 3);
    CALL insertRace('Yorkshire Terrier', 3);
    CALL insertRace('Dachshund', 3);
    CALL insertRace('Boxer', 3);
    CALL insertRace('Shih Tzu', 3);
    CALL insertRace('Pug', 3);
    CALL insertRace('Doberman Pinscher', 3);
    CALL insertRace('Shetland Sheepdog', 3);
    CALL insertRace('Great Dane', 3);
    CALL insertRace('Cocker Spaniel', 3);
    CALL insertRace('Siberian Husky', 3);
    CALL insertRace('Australian Shepherd', 3);
    CALL insertRace('German Shorthaired Pointer', 3);
    CALL insertRace('Basset Hound', 3);
    CALL insertRace('Border Collie', 3);
    CALL insertRace('Pomeranian', 3);
    CALL insertRace('Miniature Schnauzer', 3);
    CALL insertRace('Chow Chow', 3);
    CALL insertRace('Pekingese', 3);
    CALL insertRace('Maltese', 3);
    CALL insertRace('Bloodhound', 3);
    CALL insertRace('Chinese Crested', 3);
    
    
    
    
    select * from person;
CALL InsertPerson('104', 'Johnny', 'Joaquin', 'Smith', 'Arias', 123499999, '1990-01-15', 'password1$', '1@example.com', '0');




CALL InsertPerson('104', 'Alicia', 'Maria', 'Perez', 'Bolaños', 987654322, '1985-04-23', 'password2$', '2lice@example.com', '1');
CALL InsertPerson('104', 'Bob', 'James', 'Williams', 'James', 567890122, '1982-07-10', 'password3$', 'bo3b@example.com', '2');
CALL InsertPerson('104', 'Eva', 'Maria', 'Brown', 'Maria', 345678902, '1988-12-05', 'password4$', 'ev4a@example.com', '1');
CALL InsertPerson('104', 'Michael', 'Anthony', 'Davis', 'Anthony', 234567891, '1977-09-30', 'password5$', 'mich5ael@example.com', '0');
CALL InsertPerson('104', 'Sophia', 'Olivia', 'Martinez', 'Olivia', 654321987, '1995-03-18', 'password6$', 'sophi6a@example.com', '1');
CALL InsertPerson('104', 'David', 'Joseph', 'Miller', 'Joseph', 789012345, '1980-06-20', 'password7$', 'davi7d@example.com', '0');
CALL InsertPerson('104', 'Mia', 'Lily', 'Jones', 'Lily', 876543211, '1992-11-11', 'password8$', 'mi8a@example.com', '2');
CALL InsertPerson('104', 'William', 'Daniel', 'Wilson', 'Daniel', 456789012, '1983-02-08', 'password9$', 'will7iam@example.com', '0');
CALL InsertPerson('104', 'Emily', 'Ava', 'Harris', 'Ava', 567890123, '1991-08-14', 'password10$', 'emily6@example.com', '1');
CALL InsertPerson('104', 'Daniel', 'Thomas', 'Taylor', 'Thomas', 321098765, '1986-05-27', 'password11$', 'dani6el@example.com', '0');
CALL InsertPerson('104', 'Olivia', 'Grace', 'Anderson', 'Grace', 432109876, '1989-03-04', 'password12$', 'oliv6ia@example.com', '1');
CALL InsertPerson('104', 'Liam', 'William', 'Walker', 'William', 654321098, '1993-12-01', 'password13$', 'li6am@example.com', '2');
CALL InsertPerson('104', 'Emma', 'Chloe', 'Turner', 'Chloe', 765432109, '1981-10-22', 'password14$', 'em65ma@example.com', '1');
CALL InsertPerson('104', 'Aiden', 'Lucas', 'White', 'Lucas', 543210987, '1987-04-16', 'password15$', 'aid5en@example.com', '0');
CALL InsertPerson('104', 'Grace', 'Sofia', 'Scott', 'Sofia', 876543210, '1994-07-29', 'password16$', 'gra5ce@example.com', '1');
CALL InsertPerson('104', 'Henry', 'Alexander', 'Clark', 'Alexander', 234567890, '1984-09-08', 'password17$', 'hen5ry@example.com', '0');
CALL InsertPerson('104', 'Ella', 'Avery', 'Gonzalez', 'Avery', 987654321, '1996-02-03', 'password18$', 'ell5a@example.com', '1');
CALL InsertPerson('104', 'Liam', 'Jackson', 'Rodriguez', 'Jackson', 345678901, '1990-06-12', 'password19$', 'lia2@example.com', '2');
CALL InsertPerson('104', 'Ana', 'Scarlett', 'Campos', 'Viquez', 402610862, '1999-04-06', 'password20$', 'av5a@example.com', '1');
