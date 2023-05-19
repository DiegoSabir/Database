#------------------------------------------------------------------------
#	CREAMOS LA BASE DE DATOS DatosGalicia
#------------------------------------------------------------------------
	drop database if exists DatosGalicia;
	create database 		DatosGalicia
								character set	utf32
								collate			utf32_spanish2_ci;
	use 					DatosGalicia;
#------------------------------------------------------------------------
#	CREAMOS LA TABLA Datos CON LOS SIGUIENTES CAMPOS:
#		idDatos			entero, clave primaria e incremental
#		Provincia		cadena de 20 caracteres
#		Comarca			cadena de 30 caracteres
#		Concello		cadena de 30 caracteres
#		Superficie		número float
#		Mujeres			número entero
#		Hombres			número entero
#------------------------------------------------------------------------
  create table Datos (
	idDatos		INT	AUTO_INCREMENT,
    Provincia 	VARCHAR ( 20 ),
    Comarca 	VARCHAR ( 30 ),
    Concello 	VARCHAR ( 30 ),
    Superficie 	FLOAT,
    Mujeres 	INT,
    Hombres 	INT,
    
    PRIMARY KEY (idDatos)
);
#------------------------------------------------------------------------
#	CREAMOS DOS TABLAS (Datos_Modificados Y Datos_Borrados) CON LA MISMA ESTRUCTURA QUE LA TABLA Datos
#------------------------------------------------------------------------
CREATE TABLE DatosModificados LIKE Datos;
    
CREATE TABLE DatosBorrados LIKE Datos;
#------------------------------------------------------------------------
#	AGREGAMOS TODOS LOS DATOS
#------------------------------------------------------------------------
INSERT INTO Datos ( Provincia, Comarca, Concello, Superficie, Mujeres, Hombres )	VALUES 
		('A Coruña','Arzúa','Arzúa',155.48,3015,2996), 
		('A Coruña','Arzúa','Boimorto',82.34,971,988), 
		('A Coruña','Arzúa','O Pino',132.15,2304,2348), 
		('A Coruña','Arzúa','Touro',115.34,1768,1748), 
		('A Coruña','Barbanza','Boiro',86.58,9708,9176), 
		('A Coruña','Barbanza','A Pobra do Caramiñal',32.51,4774,4544), 
		('A Coruña','Barbanza','Rianxo',58.79,5645,5368), 
		('A Coruña','Barbanza','Ribeira',68.83,13609,13239), 
		('A Coruña','A Barcala','A Baña',98.19,2007,1804), 
		('A Coruña','A Barcala','Negreira',115.1,3506,3282), 
		('A Coruña','Bergantiños','Cabana de Bergantiños',100.23,2183,2033), 
		('A Coruña','Bergantiños','Carballo',186.09,16052,15377), 
		('A Coruña','Bergantiños','Coristanco',141.28,3099,2851), 
		('A Coruña','Bergantiños','A Laracha',125.95,5787,5619), 
		('A Coruña','Bergantiños','Laxe',36.78,1489,1501), 
		('A Coruña','Bergantiños','Malpica de Bergantiños',61.22,2732,2620), 
		('A Coruña','Bergantiños','Ponteceso',91.97,2742,2755), 
		('A Coruña','Betanzos','Aranga',119.59,886,948), 
		('A Coruña','Betanzos','Betanzos',24.21,6864,6189), 
		('A Coruña','Betanzos','Coirós',33.6,933,920), 
		('A Coruña','Betanzos','Curtis',116.7,2011,2042), 
		('A Coruña','Betanzos','Irixoa',68.59,666,674), 
		('A Coruña','Betanzos','Miño',32.97,3133,3144), 
		('A Coruña','Betanzos','Oza-Cesuras',151.62,2523,2573), 
		('A Coruña','Betanzos','Paderne',39.83,1208,1175), 
		('A Coruña','Betanzos','Vilarmaior',30.35,591,618), 
		('A Coruña','Betanzos','Vilasantar',59.17,578,633), 
		('A Coruña','A Coruña','Abegondo',83.9,2733,2665), 
		('A Coruña','A Coruña','Arteixo',93.68,16487,16251), 
		('A Coruña','A Coruña','Bergondo',32.72,3419,3242), 
		('A Coruña','A Coruña','Cambre',40.74,12641,11953), 
		('A Coruña','A Coruña','Carral',48.03,3297,3176), 
		('A Coruña','A Coruña','A Coruña',37.83,132828,114776), 
		('A Coruña','A Coruña','Culleredo',61.73,15881,14804), 
		('A Coruña','A Coruña','Oleiros',43.66,18880,17654), 
		('A Coruña','A Coruña','Sada',27.49,8267,7919), 
		('A Coruña','Eume','Cabanas',30.3,1676,1598), 
		('A Coruña','Eume','A Capela',58,616,605), 
		('A Coruña','Eume','Monfero',171.67,923,984), 
		('A Coruña','Eume','Pontedueme',29.26,4054,3699), 
		('A Coruña','Eume','Pontes de García Rodríguez',249.37,5166,4902), 
		('A Coruña','Ferrol','Ares',18.31,2970,2859), 
		('A Coruña','Ferrol','Cedeira',85.42,3350,3326), 
		('A Coruña','Ferrol','Fene',26.31,6718,6150), 
		('A Coruña','Ferrol','Ferrol',82.65,34675,30885), 
		('A Coruña','Ferrol','Moeche',48.5,617,569), 
		('A Coruña','Ferrol','Mugardos',12.77,2681,2534), 
		('A Coruña','Ferrol','Narón',66.91,20177,18879), 
		('A Coruña','Ferrol','Neda',24.46,2575,2448), 
		('A Coruña','Ferrol','San Sadurniño',98.98,1406,1378), 
		('A Coruña','Ferrol','As Somozas',70.91,540,543), 
		('A Coruña','Ferrol','Valdomiño',88.22,3667,3175), 
		('A Coruña','Fisterra','Cee',57.45,3944,3606), 
		('A Coruña','Fisterra','Corcubión',6.52,807,783), 
		('A Coruña','Fisterra','Dumbría',125.19,1525,1410), 
		('A Coruña','Fisterra','Fisterra',29.43,2316,2381), 
		('A Coruña','Fisterra','Muxía',121.19,2372,2224), 
		('A Coruña','Muros','Carnota',70.9,2055,1844), 
		('A Coruña','Muros','Muros',72.91,4357,4070), 
		('A Coruña','Noia','Lousame',93.65,1644,1624), 
		('A Coruña','Noia','Noia',37.21,7434,6840), 
		('A Coruña','Noia','Outes',99.74,3190,2965), 
		('A Coruña','Noia','Porto do Son',94.58,4594,4548), 
		('A Coruña','Ordes','Cerceda',111.27,2534,2474), 
		('A Coruña','Ordes','Frades',81.56,1156,1146), 
		('A Coruña','Ordes','Mesía',107.21,1261,1236), 
		('A Coruña','Ordes','Ordes',157.23,6467,6158), 
		('A Coruña','Ordes','Oroso',72.59,3810,3723), 
		('A Coruña','Ordes','Tordoia',124.55,1704,1555), 
		('A Coruña','Ordes','Trazo',101.3,1528,1485), 
		('A Coruña','Ortegal','Cariño',47.19,1903,1872), 
		('A Coruña','Ortegal','Cerdido',52.72,555,532), 
		('A Coruña','Ortegal','Mañon',82.21,668,651), 
		('A Coruña','Ortegal','Ortiguiera',209.6,2598,2675), 
		('A Coruña','Santiago','Ames',80.1,16660,15444), 
		('A Coruña','Santiago','Boqueixón',73.18,2131,2075), 
		('A Coruña','Santiago','Brión',74.73,4118,3805), 
		('A Coruña','Santiago','Santiago de Compostela',220.01,52376,45472), 
		('A Coruña','Santiago','Teo',79.25,9497,9135), 
		('A Coruña','Santiago','Val do Dubra',108.64,2005,1846), 
		('A Coruña','Santiago','Vedra',52.78,2544,2462), 
		('A Coruña','O Sar','Dodro',36.12,1426,1324), 
		('A Coruña','O Sar','Padrón',48.37,4331,4035), 
		('A Coruña','O Sar','Rois',92.93,2368,2137), 
		('A Coruña','Terra de Melide','Melide',101.3,3754,3665), 
		('A Coruña','Terra de Melide','Santiso',67.39,742,802), 
		('A Coruña','Terra de Melide','Sobrado',120.57,830,900), 
		('A Coruña','Terra de Melide','Toques',77.93,533,574), 
		('A Coruña','Terra de Soneira','Camariñas',51.6,2669,2540), 
		('A Coruña','Terra de Soneira','Vimianzo',187.27,3615,3348), 
		('A Coruña','Terra de Soneira','Zas',133.29,2281,2112), 
		('A Coruña','Xallas','Mazaricos',187.3,2020,1821), 
		('A Coruña','Xallas','Santa Comba',203.7,4826,4536), 
		('Lugo','Os Ancares','Baralla',141.16,1179,1303), 
		('Lugo','Os Ancares','Becerreá',172.05,1404,1403), 
		('Lugo','Os Ancares','Cervantes',277.63,550,744), 
		('Lugo','Os Ancares','Navia de Suarna',243.85,474,588), 
		('Lugo','Os Ancares','As Nogais',110.34,492,555), 
		('Lugo','Os Ancares','Pedrafita do Cebreiro',104.91,442,527), 
		('Lugo','Chantada','Carballedo',138.85,1066,1073), 
		('Lugo','Chantada','Chantada',176.73,4229,3928), 
		('Lugo','Chantada','Taboada',146.67,1420,1296), 
		('Lugo','A Fonsagrada','Baleira',168.82,570,656), 
		('Lugo','A Fonsagrada','A Fonsagrada',438.42,1616,1773), 
		('Lugo','A Fonsagrada','Negueira de Muñiz',72.27,99,116), 
		('Lugo','Lugo','Castroverde',174.15,1253,1342), 
		('Lugo','Lugo','O Corgo',157.39,1674,1748), 
		('Lugo','Lugo','Friol',292.29,1802,1862), 
		('Lugo','Lugo','Guntín',154.78,1275,1353), 
		('Lugo','Lugo','Lugo',329.78,52951,45568), 
		('Lugo','Lugo','Outiero de Rei',134.2,2534,2676), 
		('Lugo','Lugo','Portomarín',115.1,678,734), 
		('Lugo','Lugo','Rábade',5.17,758,747), 
		('Lugo','A Mariña Central','Alfoz',77.5,856,803), 
		('Lugo','A Mariña Central','Burela',7.78,4776,4722), 
		('Lugo','A Mariña Central','Foz',100.29,5140,4876), 
		('Lugo','A Mariña Central','Lourenzá',62.64,1100,1039), 
		('Lugo','A Mariña Central','Mondoñedo',142.69,1870,1669), 
		('Lugo','A Mariña Central','O Valadouro',110.45,1039,939), 
		('Lugo','A Mariña Occidental','Cervo',77.86,2144,2074), 
		('Lugo','A Mariña Occidental','Ourol',142.07,487,508), 
		('Lugo','A Mariña Occidental','O Vicedo',75.96,840,816), 
		('Lugo','A Mariña Occidental','Viveiro',109.34,7852,7539), 
		('Lugo','A Mariña Occidental','Xove',89.12,1646,1631), 
		('Lugo','A Mariña Oriental','Barreiros',72.42,1513,1412), 
		('Lugo','A Mariña Oriental','A Pontenova',135.8,1148,1053), 
		('Lugo','A Mariña Oriental','Ribadeo',109.14,5169,4691), 
		('Lugo','A Mariña Oriental','Trabada',82.59,586,541), 
		('Lugo','Meira','Meira',46.55,865,883), 
		('Lugo','Meira','Pol',125.9,814,809), 
		('Lugo','Meira','Ribeira de Piquín',72.99,245,268), 
		('Lugo','Meira','Riotorto',66.33,618,617), 
		('Lugo','Quiroga','Folgoso do courel',193.32,487,520), 
		('Lugo','Quiroga','Quiroga',317.38,1674,1495), 
		('Lugo','Quiroga','Ribas do Sil',67.78,461,470), 
		('Lugo','Sarria','O Incio',146.09,736,684), 
		('Lugo','Sarria','Láncara',121.61,1257,1327), 
		('Lugo','Sarria','Paradela',121.12,873,866), 
		('Lugo','Sarria','O Páramo',74.8,677,667), 
		('Lugo','Sarria','Samos',136.77,584,662), 
		('Lugo','Sarria','Sarria',184.62,6862,6476), 
		('Lugo','Sarria','Triacastela',51.18,317,320), 
		('Lugo','Terra Chá','Abadín',196.04,1178,1144), 
		('Lugo','Terra Chá','Begonte',126.8,1480,1498), 
		('Lugo','Terra Chá','Castro de Rei',176.97,2565,2508), 
		('Lugo','Terra Chá','Cospeito',144.79,2248,2147), 
		('Lugo','Terra Chá','Guitiriz',293.97,2759,2731), 
		('Lugo','Terra Chá','Muras',163.82,312,307), 
		('Lugo','Terra Chá','A Pastoriza',174.99,1469,1494), 
		('Lugo','Terra Chá','Vilalba',379.36,7274,6805), 
		('Lugo','Terra Chá','Xermade',166.27,908,875), 
		('Lugo','Terra de Lemos','Bóveda',91.11,708,742), 
		('Lugo','Terra de Lemos','Monforte de Lemos',199.52,9635,8712), 
		('Lugo','Terra de Lemos','Pantón',143.24,1238,1219), 
		('Lugo','Terra de Lemos','A Pobra do Brollón',176.71,831,801), 
		('Lugo','Terra de Lemos','O Saviñao',196.55,1787,1847), 
		('Lugo','Terra de Lemos','Sober',133.35,1134,1126), 
		('Lugo','A Ulloa','Antas de Ulla',103.6,983,957), 
		('Lugo','A Ulloa','Monterroso',114.59,1820,1279), 
		('Lugo','A Ulloa','Palas de Rei',199.68,1646,1680), 
		('Ourense','Allariz-Maceda','Allariz',86,3133,3112), 
		('Ourense','Allariz-Maceda','Baños de Molgas',67.64,750,743), 
		('Ourense','Allariz-Maceda','Maceda',101.93,1425,1414), 
		('Ourense','Allariz-Maceda','Paderne de Allariz',38.76,693,679), 
		('Ourense','Allariz-Maceda','Xunqueira de Ambía',60.21,679,695), 
		('Ourense','Allariz-Maceda','Xunqueira de Espadanedo',27.65,378,373), 
		('Ourense','Baixa Limia','Bande',98.96,749,749), 
		('Ourense','Baixa Limia','Entrimo',84.52,580,529), 
		('Ourense','Baixa Limia','Lobeira',68.88,391,377), 
		('Ourense','Baixa Limia','Lobios',168.38,839,839), 
		('Ourense','Baixa Limia','Muíños',109.56,725,741), 
		('Ourense','O Carballiño','Beariz',55.97,534,436), 
		('Ourense','O Carballiño','Boborás',87.82,1160,1063), 
		('Ourense','O Carballiño','O Carballiño',54.33,7562,6527), 
		('Ourense','O Carballiño','O Irixo',121.05,746,684), 
		('Ourense','O Carballiño','Maside',40.04,1362,1347), 
		('Ourense','O Carballiño','Piñor',52.69,577,606), 
		('Ourense','O Carballiño','Punxín',17.08,359,349), 
		('Ourense','O Carballiño','San Amaro',29.03,541,511), 
		('Ourense','O Carballiño','San Cristovo de Cea',94.44,1065,1024), 
		('Ourense','A Limia','Baltar',94.71,430,512), 
		('Ourense','A Limia','Os Blancos',47.56,350,405), 
		('Ourense','A Limia','Calvos de Randín',97.87,360,375), 
		('Ourense','A Limia','Porqueira',43.4,438,385), 
		('Ourense','A Limia','Rairiz de Veiga',72.11,601,627), 
		('Ourense','A Limia','Sandiás',52.84,635,563), 
		('Ourense','A Limia','Sarreaus',77.29,575,570), 
		('Ourense','A Limia','Trasmiras',56.74,632,631), 
		('Ourense','A Limia','Vilar de Barrio',106.74,629,654), 
		('Ourense','A Limia','Vilar de Santos',20.7,410,384), 
		('Ourense','A Limia','Xinzo de Limia',132.67,4942,4695), 
		('Ourense','Ourense','Amoeiro',39.68,1141,1155), 
		('Ourense','Ourense','Barbadás',30.24,5708,5450), 
		('Ourense','Ourense','Coles',38.11,1516,1559), 
		('Ourense','Ourense','Esgos',37.79,535,568), 
		('Ourense','Ourense','Nogueira de Ramuín',98.31,978,1010), 
		('Ourense','Ourense','Ourense',84.55,57752,47891), 
		('Ourense','Ourense','Pereiro de Aguiar',60.89,3091,3259), 
		('Ourense','Ourense','A Peroxa',54.52,920,890), 
		('Ourense','Ourense','San Cibrao das Viñas',39.48,2667,2728), 
		('Ourense','Ourense','Taboadela',25.19,698,815), 
		('Ourense','Ourense','Toén',58.29,1144,1209), 
		('Ourense','Ourense','Vilamarín',56.09,897,955), 
		('Ourense','O Ribadeo','A Arnoia',20.69,488,489), 
		('Ourense','O Ribadeo','Avión',121.13,938,798), 
		('Ourense','O Ribadeo','Beade',6.4,186,198), 
		('Ourense','O Ribadeo','Carballeda de Avia',46.37,652,619), 
		('Ourense','O Ribadeo','Castrelo de Miño',39.74,665,675), 
		('Ourense','O Ribadeo','Cenlle',29.03,557,543), 
		('Ourense','O Ribadeo','Cortegada',26.89,539,531), 
		('Ourense','O Ribadeo','Leiro',38.25,781,744), 
		('Ourense','O Ribadeo','Melón',53.25,600,556), 
		('Ourense','O Ribadeo','Ribadavia',25.16,2544,2468), 
		('Ourense','Terra de Caldelas','Castro Caldelas',87.61,590,614), 
		('Ourense','Terra de Caldelas','Montederramo',135.57,327,372), 
		('Ourense','Terra de Caldelas','Parada de Sil',62.43,254,292), 
		('Ourense','Terra de Caldelas','A Teixeira',27.64,157,158), 
		('Ourense','Terra de Celanova','A Bola',34.9,595,518), 
		('Ourense','Terra de Celanova','Cartelle',94.29,1319,1270), 
		('Ourense','Terra de Celanova','Celanova',66.31,2993,2651), 
		('Ourense','Terra de Celanova','Gomesende',28.31,367,347), 
		('Ourense','Terra de Celanova','A Merca',50.99,971,941), 
		('Ourense','Terra de Celanova','Padrenda',57.04,851,820), 
		('Ourense','Terra de Celanova','Pontedeva',9.86,256,238), 
		('Ourense','Terra de Celanova','Quintela de Leirado',31.26,348,282), 
		('Ourense','Terra de Celanova','Ramirás',40.66,827,724), 
		('Ourense','Terra de Celanova','Verea',94.23,477,435), 
		('Ourense','Terra de Trives','Chandrexa de Queixa',171.81,203,269), 
		('Ourense','Terra de Trives','Manzaneda',114.57,433,410), 
		('Ourense','Terra de Trives','A Pobra de Trives',84.2,1014,1000), 
		('Ourense','Terra de Trives','San Xoán de Río',61.14,247,259), 
		('Ourense','Valdeorras','O Barco de Valdeorras',85.43,6898,6533), 
		('Ourense','Valdeorras','O Bolo',91.17,421,429), 
		('Ourense','Valdeorras','Carballeda de Valdeorras',222.69,716,783), 
		('Ourense','Valdeorras','Larouco',23.69,213,204), 
		('Ourense','Valdeorras','Petín',30.48,428,421), 
		('Ourense','Valdeorras','A Rúa',35.91,2163,2120), 
		('Ourense','Valdeorras','Rubiá',100.79,711,672), 
		('Ourense','Valdeorras','A Veiga',290.49,419,438), 
		('Ourense','Valdeorras','Vilamartín de Valdeorras',88.26,884,928), 
		('Ourense','Verín','Castrelo do Val',122.05,477,481), 
		('Ourense','Verín','Cualedro',117.77,802,866), 
		('Ourense','Verín','Laza',215.91,579,644), 
		('Ourense','Verín','Monterrei',119.14,1241,1451), 
		('Ourense','Verín','Oímbra',71.48,783,937), 
		('Ourense','Verín','Riós',114.27,711,750), 
		('Ourense','Verín','Verín',94.11,7089,6558), 
		('Ourense','Verín','Vilardevós',152.55,862,940), 
		('Ourense','Viana','A Gudiña',171.42,610,626), 
		('Ourense','Viana','A Mezquita',104.27,484,529), 
		('Ourense','Viana','Viana do Bolo',270.41,1395,1423), 
		('Ourense','Viana','Vilariño de Conso',200.23,220,304), 
		('Pontevedra','O Baixo Miño','A Guarda',20.5,5124,4901), 
		('Pontevedra','O Baixo Miño','Oia',83.3,1539,1510), 
		('Pontevedra','O Baixo Miño','O Rosal',44.13,3197,3092), 
		('Pontevedra','O Baixo Miño','Tomiño',106.61,6739,6827), 
		('Pontevedra','O Baixo Miño','Tui',68.32,8914,8409), 
		('Pontevedra','Caldas','Caldas de Reis',68.25,5076,4699), 
		('Pontevedra','Caldas','Catoira',29.44,1716,1615), 
		('Pontevedra','Caldas','Cuntis',79.88,2450,2215), 
		('Pontevedra','Caldas','Moraña',41.24,2135,2012), 
		('Pontevedra','Caldas','Pontecesures',6.69,1549,1504), 
		('Pontevedra','Caldas','Portas',22.71,1496,1410), 
		('Pontevedra','Caldas','Valga',40.64,2958,2866), 
		('Pontevedra','O Condado','Mondariz',82.33,2225,2185), 
		('Pontevedra','O Condado','Mondariz-Balneario',2.31,313,324), 
		('Pontevedra','O Condado','As Neves',65.84,1965,1838), 
		('Pontevedra','O Condado','Ponteareas',125.53,11819,11121), 
		('Pontevedra','O Condado','Salvaterra do Miño',62.54,4991,4999), 
		('Pontevedra','Deza','Agolada',147.85,1151,1153), 
		('Pontevedra','Deza','Dozón',74.1,513,560), 
		('Pontevedra','Deza','Lalín',326.96,10343,9864), 
		('Pontevedra','Deza','Rodeiro',154.91,1179,1214), 
		('Pontevedra','Deza','Silleda',167.96,4565,4296), 
		('Pontevedra','Deza','Vila de Cruces',154.96,2630,2578), 
		('Pontevedra','O Morrazo','Bueu',30.84,6072,5878), 
		('Pontevedra','O Morrazo','Cangas',38.08,13387,13195), 
		('Pontevedra','O Morrazo','Marín',36.66,12182,12060), 
		('Pontevedra','O Morrazo','Moaña',35.06,9997,9455), 
		('Pontevedra','A Paradanta','Arbo',42.66,1241,1335), 
		('Pontevedra','A Paradanta','A Cañiza',105.04,2612,2510), 
		('Pontevedra','A Paradanta','Covelo',134.7,1170,1198), 
		('Pontevedra','A Paradanta','Crecente',57.46,1021,973), 
		('Pontevedra','Pontevedra','Barro',37.55,1839,1784), 
		('Pontevedra','Pontevedra','Campo Lameiro',63.77,937,841), 
		('Pontevedra','Pontevedra','Cerdedo-Cotobade',213.27,2926,2771), 
		('Pontevedra','Pontevedra','A Lama',111.76,1205,1192), 
		('Pontevedra','Pontevedra','Poio',33.93,8611,8462), 
		('Pontevedra','Pontevedra','Ponte Caldelas',87,2863,2670), 
		('Pontevedra','Pontevedra','Pontevedra',118.47,43916,39344), 
		('Pontevedra','Pontevedra','Vilaboa',36.9,3027,2892), 
		('Pontevedra','O Salnés','Cambados',23.44,7091,6630), 
		('Pontevedra','O Salnés','O Grove',21.89,5340,5178), 
		('Pontevedra','O Salnés','A Illa de Arousa',6.91,2483,2449), 
		('Pontevedra','O Salnés','Meaño',27.77,2729,2593), 
		('Pontevedra','O Salnés','Meis',52.39,2485,2270), 
		('Pontevedra','O Salnés','Ribadumia',19.71,2621,2484), 
		('Pontevedra','O Salnés','Sanxenxo',45.08,8806,8608), 
		('Pontevedra','O Salnés','Vilagarcía de Arousa',44.24,19576,17989), 
		('Pontevedra','O Salnés','Vilanova de Arousa',33.65,5279,4960), 
		('Pontevedra','Tabeirós-Terra de Montes','A Estrada',280.74,10580,9771), 
		('Pontevedra','Tabeirós-Terra de Montes','Forcarei',169.66,1739,1569), 
		('Pontevedra','Vigo','Baiona',34.47,6152,5977), 
		('Pontevedra','Vigo','Fornelo de Montes',79.01,830,768), 
		('Pontevedra','Vigo','Gondomar',74.51,7399,7303), 
		('Pontevedra','Vigo','Mos',53.29,7635,7428), 
		('Pontevedra','Vigo','Nigrán',34.77,9035,8710), 
		('Pontevedra','Vigo','Pazos de Borbén',49.99,1510,1455), 
		('Pontevedra','Vigo','O Porriño',61.17,10190,9910), 
		('Pontevedra','Vigo','Redondela',52.08,15039,14202), 
		('Pontevedra','Vigo','Salceda de Caselas',35.92,4593,4580), 
		('Pontevedra','Vigo','Soutomaior',24.99,3724,3702), 
		('Pontevedra','Vigo','Vigo',109.06,156528,140164);
#------------------------------------------------------------------------
#------------------------------------------------------------------------
#------------------------------------------------------------------------
#	PROCEDIMIENTO PARA CORREGIR LA SUPERFICIE DE UN CONCELLO Y EL NUEVO VALOR LO PASAMOS COMO PARÁMETRO
#------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS actualizarSuperficie;
DELIMITER //
CREATE PROCEDURE actualizarSuperficie (IN newConcello VARCHAR ( 30 ), IN newSuperficie FLOAT)
BEGIN
	UPDATE Datos
    SET Superficie = newSuperficie
    WHERE Concello = newConcello;
END //
DELIMITER ;

CALL actualizarSuperficie('Vigo', 109);
#------------------------------------------------------------------------
#	PROCEDIMIENTO PARA BORRAR LOS CONCELLOS CUYA SUPERFICIE OSCILE ENTRE UNOS VALORE MÍNIMO Y MÁXIMO PASADOS COMO PARÁMETROS
#------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS eliminarConcellosPorSuperficie;
DELIMITER //
CREATE PROCEDURE eliminarConcellosPorSuperficie (IN minSuperficie FLOAT, IN maxSuperficie FLOAT)
BEGIN
	DELETE FROM Datos
    WHERE Superficie BETWEEN minSuperficie AND maxSuperficie;
END //
DELIMITER ;

CALL eliminarConcellosPorSuperficie(50.00, 100.00);
#------------------------------------------------------------------------
#	FUNCIÓN QUE DEVUELVA LA SUMA DE LAS DIFERENCIAS ENTRE MUJERES Y HOMBRES DE UNA DETERMINADA COMARCA PASADA COMO PARÁMETRO
#------------------------------------------------------------------------
DROP FUNCTION IF EXISTS diferenciaTotalMujeresHombres;
DELIMITER //
CREATE FUNCTION diferenciaTotalMujeresHombres (ComarcaNombre VARCHAR ( 30 ))
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE diferenciaTotal INT;
    
    SELECT SUM(ABS(Mujeres - Hombres)) INTO diferenciaTotal
    FROM Datos
    WHERE Comarca = ComarcaNombre;
    RETURN diferenciaTotal;
END //
DELIMITER ;

SELECT diferenciaTotalMujeresHombres('Muros');
#------------------------------------------------------------------------
#	FUNCIÓN QUE DEVUELVA LA SUPERFICE MEDIA DE LOS CONCELLOS DE UNA DETERMINADA COMARCA PASADA COMO PARÁMETRO
#------------------------------------------------------------------------
DROP FUNCTION IF EXISTS superficieMedia;
Delimiter //
CREATE FUNCTION SuperficieMedia (ComarcaNombre VARCHAR (30))
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE superficieMedia FLOAT;
    SELECT AVG (Superficie) INTO superficieMedia FROM Datos WHERE Comarca = ComarcaNombre;
    RETURN superficieMedia;
END //
Delimiter ;
SELECT SuperficieMedia('Muros');
#------------------------------------------------------------------------
#	TRIGGER PARA QUE CADA VEZ QUE MODIFIQUEMOS UN DATO GUARDE EL VALOR ANTERIOR EN LA TABLA Datos_Modificados
#------------------------------------------------------------------------
DROP TRIGGER IF EXISTS DatosModificados;
Delimiter //
CREATE TRIGGER DatosModificados BEFORE UPDATE ON Datos FOR EACH ROW
BEGIN
	INSERT INTO DatosModificados (Provincia, Comarca, Concello, Superficie, Mujeres, Hombres)
    VALUES (OLD.Provincia, OLD.Comarca, OLD.Concello, OLD.Superficie, OLD.Mujeres, OLD.Hombres);
END //
Delimiter ;

UPDATE Datos SET Superficie = '200' WHERE idDatos = 100;
#------------------------------------------------------------------------
#	TRIGGER PARA QUE CADA VEZ QUE BORREMOS UNA TUPLA LA GUARDE EN LA TABLA Datos_Borrados
#------------------------------------------------------------------------
DROP TRIGGER IF EXISTS DatosBorrados;
Delimiter //
CREATE TRIGGER DatosBorrados BEFORE DELETE ON Datos FOR EACH ROW
BEGIN
	INSERT INTO DatosEliminados (idDatos, Provincia, Comarca, Concello, Superficie, Mujeres, Hombres)
	VALUES (OLD.idDatos, OLD.Provincia, OLD.Comarca, OLD.Concello, OLD.Superficie, OLD.Mujeres, OLD.Hombres);
END //
Delimiter ;

DELETE FROM DATOS WHERE idDatos = 5;
#------------------------------------------------------------------------
#	PROCEDIMIENTO PARA RESTAURAR TODOS LOS DATOS ELIMINADOS
#------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS RestauracionDatos;
Delimiter //
CREATE PROCEDURE RestauracionDatos()
BEGIN
	INSERT INTO Datos (idDatos, Provincia, Comarca, Concello, Superficie, Mujeres, Hombres)
    SELECT idDatos, Provincia, Comarca, Concello, Superficie, Mujeres, Hombres FROM DatosBorrados;
END //
Delimiter ;

CALL RestauracionDatos();
#------------------------------------------------------------------------
#	PROCEDIMIENTO PARA LIMPIAR LA TABLA Datos_Borrados
#------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS Limpieza;
Delimiter //
CREATE PROCEDURE Limpieza()
BEGIN
    DELETE FROM DatosBorrados;
END //
Delimiter ;

CALL Limpieza();
#------------------------------------------------------------------------