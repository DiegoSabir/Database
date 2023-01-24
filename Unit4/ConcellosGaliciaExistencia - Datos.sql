#*******************************************************************************************
#	DATOS DE LAS PROVINCIAS - AGREGAR POR EXISTENCIA
#*******************************************************************************************
    INSERT INTO ProvinciasGalicia
		VALUES	( 10, 'A Coruña' ),
				( 11, 'Lugo' ),
				( 12, 'Ourense' ),
				( 13, 'Pontevedra' );    
#*******************************************************************************************
#	DATOS DE LAS ComarcasGalicia
#*******************************************************************************************
    INSERT INTO	ComarcasGalicia
		VALUES 	( 100, 'Arzúa', 10 ),
				( 101, 'Barbanza', 10 ),
				( 102, 'A Barcala', 10 ),
                ( 103, 'Bergantiños', 10 ),
                ( 104, 'Betanzos', 10 ),
                ( 105, 'A Coruña', 10 ),
                ( 106, 'Eume', 10 ),
                ( 107, 'Ferrol', 10 ),
                ( 108, 'Fisterra', 10 ),
                ( 109, 'Muros', 10 ),
                ( 110, 'Noia', 10 ),
                ( 111, 'Ordes', 10 ),
                ( 112, 'Ortegal', 10 ),
                ( 113, 'Santiago', 10 ),
                ( 114, 'O Sar', 10 ),
                ( 115, 'Terra de Melide', 10 ),
                ( 116, 'Terra de Soneira', 10 ),
                ( 117, 'Xallas', 10 ),
                ( 118, 'Os Ancares', 11 ),
                ( 119, 'Chantada', 11 ),
                ( 120, 'A Fonsagrada', 11 ),
                ( 121, 'Lugo', 11 ),
                ( 122, 'A Mariña Central', 11 ),
                ( 123, 'A Mariña Occidental', 11 ),
                ( 124, 'A Mariña Oriental', 11 ),
                ( 125, 'Meira', 11 ),
                ( 126, 'Quiroga', 11 ),
                ( 127, 'Sarria', 11 ),
                ( 128, 'Terra Chá', 11 ),
                ( 129, 'Terra de Lemos', 11 ),
                ( 130, 'A Ulloa', 11 ),
                ( 131, 'Allariz-Maceda', 12 ),
                ( 132, 'Baixa Limia', 12 ),
                ( 133, 'O Carballiño', 12 ),
                ( 134, 'A Limia', 12 ),
                ( 135, 'Ourense', 12 ),
                ( 136, 'O Ribadeo', 12 ),
                ( 137, 'Terra de Caldelas', 12 ),
                ( 138, 'Terra de Celanova', 12 ),
                ( 139, 'Terra de Trives', 12 ),
                ( 140, 'Valdeorras', 12 ),
                ( 141, 'Verín', 12 ),
                ( 142, 'Viana', 12 ),
                ( 143, 'O Baixo Miño', 13 ),
                ( 144, 'Caldas', 13 ),
                ( 145, 'O Condado', 13 ),
                ( 146, 'Deza', 13 ),
                ( 147, 'O Morrazo', 13 ),
                ( 148, 'A Paradanta', 13 ),
                ( 149, 'Pontevedra', 13 ),
                ( 150, 'O Salnés', 13 ),
                ( 151, 'Tabeirós-Terra de Montes', 13 ),
                ( 152, 'Vigo', 13 );

#*******************************************************************************************
#	DATOS DE LOS CONCELLOS
#*******************************************************************************************
	#ALTER TABLE ConcellosGalicia	AUTO_INCREMENT = 1000;
    INSERT INTO	ConcellosGalicia
		VALUES 	( 1000, 'Arzúa'							, 155.48	, 100 ),	# Arzúa
				( 1001, 'Boimorto'						,  82.34	, 100 ),
                ( 1002, 'O Pino'						, 132.15	, 100 ),
                ( 1003, 'Touro'							, 115.34	, 100 ),
                ( 1004, 'Boiro'							,  86.58	, 101 ),	# Barbanza
                ( 1005, 'A Pobra do Caramiñal'			,  32.51	, 101 ),
                ( 1006, 'Rizanxo'							,  58.79	, 101 ),
                ( 1007, 'Ribeira'							,  68.83	, 101 ),
                ( 1008, 'A Baña'							,  98.19	, 102 ),	# A Barcala
                ( 1009, 'Negreira'						, 115.1		, 102 ),
                ( 1010, 'Cabana de Bergantiños'			, 100.23	, 103 ),	# Bergantiños
                ( 1011, 'Carballo'						, 186.09	, 103 ),
                ( 1012, 'Coristanco'						, 141.28	, 103 ),
                ( 1013, 'A Laracha'						, 125.95	, 103 ),
                ( 1014, 'Laxe'							,  36.78	, 103 ),
                ( 1015, 'Malpica de Bergantiños'			,  61.22	, 103 ),
                ( 1016, 'Ponteceso'						,  91.97	, 103 ),
                ( 1017, 'Aranga'							, 119.59	, 104 ),	# Betanzos
                ( 1018, 'Betanzos'						,  24.21	, 104 ),
                ( 1019, 'Coirós'							,  33.6		, 104 ),
                ( 1020, 'Curtis'							, 116.7		, 104 ),
                ( 1021, 'Irixoa'							,  68.59	, 104 ),
                ( 1022, 'Miño'							,  32.97	, 104 ),
                ( 1023, 'Oza-Cesuras'						, 151.62	, 104 ),
                ( 1024, 'Paderne'							,  39.83	, 104 ),
                ( 1025, 'Vilarmaior'						,  30.35	, 104 ),
                ( 1026, 'Vilasantar'						,  59.17	, 104 ),
                ( 1027, 'Abegondo'						,  83.9		, 105 ),	# A Coruña
                ( 1028, 'Arteixo'							,  93.68	, 105 ),
                ( 1029, 'Bergondo'						,  32.72	, 105 ),
                ( 1030, 'Cambre'							,  40.74	, 105 ),
                ( 1031, 'Carral'							,  48.03	, 105 ),
                ( 1032, 'A Coruña'						,  37.83	, 105 ),
                ( 1033, 'Culleredo'						,  61.73	, 105 ),
                ( 1034, 'Oleiros'							,  43.66	, 105 ),
                ( 1035, 'Sada'							,  27.49	, 105 ),
                ( 1036, 'Cabanas'							,  30.3		, 106 ),	# EUME
                ( 1037, 'A Capela'						,  58		, 106 ),
                ( 1038, 'Monfero'							, 171.67	, 106 ),
                ( 1039, 'Pontedueme'						,  29.26	, 106 ),
                ( 1040, 'Pontes de García Rodríguez'		, 249.37	, 106 ),
                ( 1041, 'Ares'							,  18.31	, 107 ),	# FERROL
                ( 1042, 'Cedeira'							,  85.42	, 107 ),
                ( 1043, 'Fene'							,  26.31	, 107 ),
                ( 1044, 'Ferrol'							,  82.65	, 107 ),
                ( 1045, 'Moeche'							,  48.5		, 107 ),
                ( 1046, 'Mugardos'						,  12.77	, 107 ),
                ( 1047, 'Narón'							,  66.91	, 107 ),
                ( 1048, 'Neda'							,  24.46	, 107 ),
                ( 1049, 'San Sadurniño'					,  98.98	, 107 ),
                ( 1050, 'As Somozas'						,  70.91	, 107 ),
                ( 1051, 'Valdomiño'						,  88.22	, 107 ),
                ( 1052, 'Cee'								,  57.45	, 108 ),	# FISTERRA
                ( 1053, 'Corcubión'						,   6.52	, 108 ),
                ( 1054, 'Dumbría'							, 125.19	, 108 ),
                ( 1055, 'Fisterra'						,  29.43	, 108 ),
                ( 1056, 'Muxía'							, 121.19	, 108 ),
                ( 1057, 'Carnota'							,  70.9		, 109 ),	# MUROS
                ( 1058, 'Muros'							,  72.91	, 109 ),
                ( 1059, 'Lousame'							,  93.65	, 110 ),	# NOIA
                ( 1060, 'Noia'							,  37.21	, 110 ),
                ( 1061, 'Outes'							,  99.74	, 110 ),
                ( 1062, 'Porto do Son'					,  94.58	, 110 ),
                ( 1063, 'Cerceda'							, 111.27	, 111 ),	# ORDES
                ( 1064, 'Frades'							,  81.56	, 111 ),
                ( 1065, 'Mesía'							, 107.21	, 111 ),
                ( 1066, 'Ordes'							, 157.23	, 111 ),
                ( 1067, 'Oroso'							,  72.59	, 111 ),
                ( 1068, 'Tordoia'							, 124.55	, 111 ),
                ( 1069, 'Trazo'							, 101.3		, 111 ),
                ( 1070, 'Cariño'							,  47.19	, 112 ),	# ORTEGAL
                ( 1071, 'Cerdido'							,  52.72	, 112 ),
                ( 1072, 'Mañon'							,  82.21	, 112 ),
                ( 1073, 'Ortiguiera'						, 209.6 	, 112 ),
                ( 1074, 'Ames'							,  80.1 	, 113 ),	# SANTIAGO
                ( 1075, 'Boqueixón'						,  73.18	, 113 ),
                ( 1076, 'Brión'							,  74.73	, 113 ),
                ( 1077, 'Santiago de Compostela'			, 220.01	, 113 ),
                ( 1078, 'Teo'								,  79.25	, 113 ),
                ( 1079, 'Val do Dubra'					, 108.64	, 113 ),
                ( 1080, 'Vedra'							,  52.78	, 113 ),
                ( 1081, 'Dodro'							,  36.12	, 114 ),	# O SAR
                ( 1082, 'Padrón'							,  48.37	, 114 ),
                ( 1083, 'Rois'							,  92.93	, 114 ),
                ( 1084, 'Melide'							, 101.3		, 115 ),	# TERRA DE MELIDE
                ( 1085, 'Santiso'							,  67.39	, 115 ),
                ( 1086, 'Sobrado'							, 120.57	, 115 ),
                ( 1087, 'Toques'							,  77.93	, 115 ),
                ( 1088, 'Camariñas'						,  51.6 	, 116 ),	# TERRA DE SONEIRA
                ( 1089, 'Vimianzo'						, 187.27	, 116 ),
                ( 1090, 'Zas'								, 133.29	, 116 ),
                ( 1091, 'Mazaricos'						, 187.3 	, 117 ),	# XALLAS
                ( 1092, 'Santa Comba'						, 203.7 	, 117 ),
                ( 1093, 'Baralla'							, 141.16	, 118 ),	# OS ANCARES
                ( 1094, 'Becerreá'						, 172.05	, 118 ),
                ( 1095, 'Cervantes'						, 277.63	, 118 ),
                ( 1096, 'Navia de Suarna'					, 243.85	, 118 ),
                ( 1097, 'As Nogais'						, 110.34	, 118 ),
                ( 1098, 'Pedrafita do Cebreiro'			, 104.91	, 118 ),
                ( 1099, 'Carballedo'						, 138.85	, 119 ),	# CHANTADA
                ( 1100, 'Chantada'						, 176.73	, 119 ),
                ( 1101, 'Taboada'							, 146.67	, 119 ),
                ( 1102, 'Baleira'							, 168.82	, 120 ),	# A FONSAGRADA
                ( 1103, 'A Fonsagrada'					, 438.42	, 120 ),
                ( 1104, 'Negueira de Muñiz'				,  72.27	, 120 ),
                ( 1105, 'Castroverde'						, 174.15	, 121 ),	# LUGO
                ( 1106, 'O Corgo'							, 157.39	, 121 ),
                ( 1107, 'Friol'							, 292.29	, 121 ),
                ( 1108, 'Guntín'							, 154.78	, 121 ),
                ( 1109, 'Lugo'							, 329.78	, 121 ),
                ( 1110, 'Outiero de Rei'					, 134.2 	, 121 ),
                ( 1111, 'Portomarín'						, 115.1 	, 121 ),
                ( 1112, 'Rábade'							,   5.17	, 121 ),
                ( 1113, 'Alfoz'							,  77.5 	, 122 ),	# A MARIÑA CENTRAL
                ( 1114, 'Burela'							,   7.78	, 122 ),
                ( 1115, 'Foz'								, 100.29	, 122 ),
                ( 1116, 'Lourenzá'						,  62.64	, 122 ),
                ( 1117, 'Mondoñedo'						, 142.69	, 122 ),
                ( 1118, 'O Valadouro'						, 110.45	, 122 ),
                ( 1119, 'Cervo'							,  77.86	, 123 ),	# A MARIÑA OCCIDENTAL
                ( 1120, 'Ourol'							, 142.07	, 123 ),
                ( 1121, 'O Vicedo'						,  75.96	, 123 ),
                ( 1122, 'Viveiro'							, 109.34	, 123 ),
                ( 1123, 'Xove'							,  89.12	, 123 ),
                ( 1124, 'Barreiros'						,  72.42	, 124 ),	# A MARIÑA ORIENTAL
                ( 1125, 'A Pontenova'						, 135.8 	, 124 ),
                ( 1126, 'Ribadeo'							, 109.14	, 124 ),
                ( 1127, 'Trabada'							,  82.59	, 124 ),
                ( 1128, 'Meira'							,  46.55	, 125 ),	# MEIRA
                ( 1129, 'Pol'								, 125.9 	, 125 ),
                ( 1130, 'Ribeira de Piquín'				,  72.99	, 125 ),
                ( 1131, 'Riotorto'						,  66.33	, 125 ),
                ( 1132, 'Folgoso do courel'				, 193.32	, 126 ),	# QUIROGA
                ( 1133, 'Quiroga'							, 317.38	, 126 ),
                ( 1134, 'Ribas do Sil'					,  67.78	, 126 ),
                ( 1135, 'O Incio'							, 146.09	, 127 ),	# SARRIA
                ( 1136, 'Láncara'							, 121.61	, 127 ),
                ( 1137, 'Paradela'						, 121.12	, 127 ),
                ( 1138, 'O Páramo'						,  74.8 	, 127 ),
                ( 1139, 'Samos'							, 136.77	, 127 ),
                ( 1140, 'Sarria'							, 184.62	, 127 ),
                ( 1141, 'Triacastela'						,  51.18	, 127 ),
                ( 1142, 'Abadín'							, 196.04	, 128 ),	# TERRA CHÁ
                ( 1143, 'Begonte'							, 126.8 	, 128 ),
                ( 1144, 'Castro de Rei'					, 176.97	, 128 ),
                ( 1145, 'Cospeito'						, 144.79	, 128 ),
                ( 1146, 'Guitiriz'						, 293.97	, 128 ),
                ( 1147, 'Muras'							, 163.82	, 128 ),
                ( 1148, 'A Pastoriza'						, 174.99	, 128 ),
                ( 1149, 'Vilalba'							, 379.36	, 128 ),
                ( 1150, 'Xermade'							, 166.27	, 128 ),
                ( 1151, 'Bóveda'							,  91.11	, 129 ),	# TERRA DE LEMOS
                ( 1152, 'Monforte de Lemos'				, 199.52	, 129 ),
                ( 1153, 'Pantón'							, 143.24	, 129 ),
                ( 1154, 'A Pobra do Brollón'				, 176.71	, 129 ),
                ( 1155, 'O Saviñao'						, 196.55	, 129 ),
                ( 1156, 'Sober'							, 133.35	, 129 ),
                ( 1157, 'Antas de Ulla'					, 103.6 	, 130 ),	# A ULLOA
                ( 1158, 'Monterroso'						, 114.59	, 130 ),
                ( 1159, 'Palas de Rei'					, 199.68	, 130 ),
                ( 1160, 'Allariz'							,  86   	, 131 ),	# ALLARIZ-MACEDA
                ( 1161, 'Baños de Molgas'					,  67.64	, 131 ),
                ( 1162, 'Maceda'							, 101.93	, 131 ),
                ( 1163, 'Paderne de Allariz'				,  38.76	, 131 ),
                ( 1164, 'Xunqueira de Ambía'				,  60.21	, 131 ),
                ( 1165, 'Xunqueira de Espadanedo'			,  27.65	, 131 ),
                ( 1166, 'Bande'							,  98.96	, 132 ),	# BAIXA LIMIA
                ( 1167, 'Entrimo'							,  84.52	, 132 ),
                ( 1168, 'Lobeira'							,  68.88	, 132 ),
                ( 1169, 'Lobios'							, 168.38	, 132 ),
                ( 1170, 'Muíños'							, 109.56	, 132 ),
                ( 1171, 'Beariz'							,  55.97	, 133 ),	# O CARBALLIÑO
                ( 1172, 'Boborás'							,  87.82	, 133 ),
                ( 1173, 'O Carballiño'					,  54.33	, 133 ),
                ( 1174, 'O Irixo'							, 121.05	, 133 ),
                ( 1175, 'Maside'							,  40.04	, 133 ),
                ( 1176, 'Piñor'							,  52.69	, 133 ),
                ( 1177, 'Punxín'							,  17.08	, 133 ),
                ( 1178, 'San Amaro'						,  29.03	, 133 ),
                ( 1179, 'San Cristovo de Cea'				,  94.44	, 133 ),
                ( 1180, 'Baltar'							,  94.71	, 134 ),	# A LIMIA
                ( 1181, 'Os Blancos'						,  47.56	, 134 ),
                ( 1182, 'Calvos de Randín'				,  97.87	, 134 ),
                ( 1183, 'Porqueira'						,  43.4 	, 134 ),
                ( 1184, 'Rairiz de Veiga'					,  72.11	, 134 ),
                ( 1185, 'Sandiás'							,  52.84	, 134 ),
                ( 1186, 'Sarreaus'						,  77.29	, 134 ),
                ( 1187, 'Trasmiras'						,  56.74	, 134 ),
                ( 1188, 'Vilar de Barrio'					, 106.74	, 134 ),
                ( 1189, 'Vilar de Santos'					,  20.7 	, 134 ),
                ( 1190, 'Xinzo de Limia'					, 132.67	, 134 ),
                ( 1191, 'Amoeiro'							,  39.68	, 135 ),	# OURENSE
                ( 1192, 'Barbadás'						,  30.24	, 135 ),
                ( 1193, 'Coles'							,  38.11	, 135 ),
                ( 1194, 'Esgos'							,  37.79	, 135 ),
                ( 1195, 'Nogueira de Ramuín'				,  98.31	, 135 ),
                ( 1196, 'Ourense'							,  84.55	, 135 ),
                ( 1197, 'Pereiro de Aguiar'				,  60.89	, 135 ),
                ( 1198, 'A Peroxa'						,  54.52	, 135 ),
                ( 1199, 'San Cibrao das Viñas'			,  39.48	, 135 ),
                ( 1200, 'Taboadela'						,  25.19	, 135 ),
                ( 1201, 'Toén'							,  58.29	, 135 ),
                ( 1202, 'Vilamarín'						,  56.09	, 135 ),
                ( 1203, 'A Arnoia'						,  20.69	, 136 ),	# O RIBEIRO
                ( 1204, 'Avión'							, 121.13	, 136 ),
                ( 1205, 'Beade'							,   6.4 	, 136 ),
                ( 1206, 'Carballeda de Avia'				,  46.37	, 136 ),
                ( 1207, 'Castrelo de Miño'				,  39.74	, 136 ),
                ( 1208, 'Cenlle'							,  29.03	, 136 ),
                ( 1209, 'Cortegada'						,  26.89	, 136 ),
                ( 1210, 'Leiro'							,  38.25	, 136 ),
                ( 1211, 'Melón'							,  53.25	, 136 ),
                ( 1212, 'Ribadavia'						,  25.16	, 136 ),
                ( 1213, 'Castro Caldelas'					,  87.61	, 137 ),	# TERRA DE CALDELAS
                ( 1214, 'Montederramo'					, 135.57	, 137 ),
                ( 1215, 'Parada de Sil'					,  62.43	, 137 ),
                ( 1216, 'A Teixeira'						,  27.64	, 137 ),
                ( 1217, 'A Bola'							,  34.9 	, 138 ),	# TERRA DE CELANOVA
                ( 1218, 'Cartelle'						,  94.29	, 138 ),
                ( 1219, 'Celanova'						,  66.31	, 138 ),
                ( 1220, 'Gomesende'						,  28.31	, 138 ),
                ( 1221, 'A Merca'							,  50.99	, 138 ),
                ( 1222, 'Padrenda'						,  57.04	, 138 ),
                ( 1223, 'Pontedeva'						,   9.86	, 138 ),
                ( 1224, 'Quintela de Leirado'				,  31.26	, 138 ),
                ( 1225, 'Ramirás'							,  40.66	, 138 ),
                ( 1226, 'Verea'							,  94.23	, 138 ),
                ( 1227, 'Chandrexa de Queixa'				, 171.81	, 139 ),	# TERRA DE TRIVES
                ( 1228, 'Manzaneda'						, 114.57	, 139 ),
                ( 1229, 'A Pobra de Trives'				,  84.2 	, 139 ),
                ( 1230, 'San Xoán de Río'					,  61.14	, 139 ),
                ( 1231, 'O Barco de Valdeorras'			,  85.43	, 140 ),	# VALDEORRAS
                ( 1232, 'O Bolo'							,  91.17	, 140 ),
                ( 1233, 'Carballeda de Valdeorras'		, 222.69	, 140 ),
                ( 1234, 'Larouco'							,  23.69	, 140 ),
                ( 1235, 'Petín'							,  30.48	, 140 ),
                ( 1236, 'A Rúa'							,  35.91	, 140 ),
                ( 1237, 'Rubiá'							, 100.79	, 140 ),
                ( 1238, 'A Veiga'							, 290.49	, 140 ),
                ( 1239, 'Vilamartín de Valdeorras'		,  88.26	, 140 ),
                ( 1240, 'Castrelo do Val'					, 122.05	, 141 ),	# VERÍN
                ( 1241, 'Cualedro'						, 117.77	, 141 ),
                ( 1242, 'Laza'							, 215.91	, 141 ),
                ( 1243, 'Monterrei'						, 119.14	, 141 ),
                ( 1244, 'Oímbra'							,  71.48	, 141 ),
                ( 1245, 'Riós'							, 114.27	, 141 ),
                ( 1246, 'Verín'							,  94.11	, 141 ),
                ( 1247, 'Vilardevós'						, 152.55	, 141 ),
                ( 1248, 'A Gudiña'						, 171.42	, 142 ),	# VIANA
                ( 1249, 'A Mezquita'						, 104.27	, 142 ),
                ( 1250, 'Viana do Bolo'					, 270.41	, 142 ),
                ( 1251, 'Vilariño de Conso'				, 200.23	, 142 ),
                ( 1252, 'A Guarda'						,  20.5 	, 143 ),	# O BIAXO MIÑO
                ( 1253, 'Oia'								,  83.3 	, 143 ),
                ( 1254, 'O Rosal'							,  44.13	, 143 ),
                ( 1255, 'Tomiño'							, 106.61	, 143 ),
                ( 1256, 'Tui'								,  68.32	, 143 ),
                ( 1257, 'Caldas de Reis'					,  68.25	, 144 ),	# CALDAS
                ( 1258, 'Catoira'							,  29.44	, 144 ),
                ( 1259, 'Cuntis'							,  79.88	, 144 ),
                ( 1260, 'Moraña'							,  41.24	, 144 ),
                ( 1261, 'Pontecesures'					,   6.69	, 144 ),
                ( 1262, 'Portas'							,  22.71	, 144 ),
                ( 1263, 'Valga'							,  40.64	, 144 ),
                ( 1264, 'Mondariz'						,  82.33	, 145 ),	# O CONDADO
                ( 1265, 'Mondariz-Balneario'				,   2.31	, 145 ),
                ( 1266, 'As Neves'						,  65.84	, 145 ),
                ( 1267, 'Ponteareas'						, 125.53	, 145 ),
                ( 1268, 'Salvaterra do Miño'				,  62.54	, 145 ),
                ( 1269, 'Agolada'							, 147.85	, 146 ),	# DEZA
                ( 1270, 'Dozón'							,  74.1 	, 146 ),
                ( 1271, 'Lalín'							, 326.96	, 146 ),
                ( 1272, 'Rodeiro'							, 154.91	, 146 ),
                ( 1273, 'Silleda'							, 167.96	, 146 ),
                ( 1274, 'Vila de Cruces'					, 154.96	, 146 ),
                ( 1275, 'Bueu'							,  30.84	, 147 ),	# O MORRAZO
                ( 1276, 'Cangas'							,  38.08	, 147 ),
                ( 1277, 'Marín'							,  36.66	, 147 ),
                ( 1278, 'Moaña'							,  35.06	, 147 ),
                ( 1279, 'Arbo'							,  42.66	, 148 ),	# A PARADANTA
                ( 1280, 'A Cañiza'						, 105.04	, 148 ),
                ( 1281, 'Covelo'							, 134.7 	, 148 ),
                ( 1282, 'Crecente'						,  57.46	, 148 ),
                ( 1283, 'Barro'							,  37.55	, 149 ),	# PONTEVEDRA
                ( 1284, 'Campo Lameiro'					,  63.77	, 149 ),
                ( 1285, 'Cerdedo-Cotobade'				, 213.27	, 149 ),
                ( 1286, 'A Lama'							, 111.76	, 149 ),
                ( 1287, 'Poio'							,  33.93	, 149 ),
                ( 1288, 'Ponte Caldelas'					,  87   	, 149 ),
                ( 1289, 'Pontevedra'						, 118.47	, 149 ),
                ( 1290, 'Vilaboa'							,  36.9 	, 149 ),
                ( 1291, 'Cambados'						,  23.44	, 150 ),	# O SALNÉS
                ( 1292, 'O Grove'							,  21.89	, 150 ),
                ( 1293, 'A Illa de Arousa'				,   6.91	, 150 ),
                ( 1294, 'Meaño'							,  27.77	, 150 ),
                ( 1295, 'Meis'							,  52.39	, 150 ),
                ( 1296, 'Ribadumia'						,  19.71	, 150 ),
                ( 1297, 'Sanxenxo'						,  45.08	, 150 ),
                ( 1298, 'Vilagarcía de Arousa'			,  44.24	, 150 ),
                ( 1299, 'Vilanova de Arousa'				,  33.65	, 150 ),
                ( 1300, 'A Estrada'						, 280.74	, 151 ),	# TABEIRÓS-TERRA DE MONTES
                ( 1301, 'Forcarei'						, 169.66	, 151 ),
                ( 1302, 'Baiona'							,  34.47	, 152 ),	# VIGO
                ( 1303, 'Fornelo de Montes'				,  79.01	, 152 ),
                ( 1304, 'Gondomar'						,  74.51	, 152 ),
                ( 1305, 'Mos'								,  53.29	, 152 ),
                ( 1306, 'Nigrán'							,  34.77	, 152 ),
                ( 1307, 'Pazos de Borbén'					,  49.99	, 152 ),
                ( 1308, 'O Porriño'						,  61.17	, 152 ),
                ( 1309, 'Redondela'						,  52.08	, 152 ),
                ( 1310, 'Salceda de Caselas'				,  35.92	, 152 ),
                ( 1311, 'Soutomaior'						,  24.99	, 152 ),
                ( 1312, 'Vigo'							, 109.06	, 152 );	

#*******************************************************************************************
#	DATOS DE LA POBLACION
#*******************************************************************************************
    INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1000,     3015,     2996 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1001,      971,      988 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1002,     2304,     2348 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1003,     1768,     1748 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1004,     9708,     9176 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1005,     4774,     4544 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1006,     5645,     5368 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1007,    13609,    13239 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1008,     2007,     1804 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1009,     3506,     3282 ); # Negreira
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1010,     2183,     2033 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1011,    16052,    15377 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1012,     3099,     2851 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1013,     5787,     5619 ); #
 	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1014,     1489,     1501 ); #
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1015,     2732,     2620 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1016,     2742,     2755 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1017,      886,      948 ); # Aranga
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1018,     6864,     6189 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1019,      933,      920 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1020,     2011,     2042 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1021,      666,      674 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1022,     3133,     3144 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1023,     2523,     2573 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1024,     1208,     1175 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1025,      591,      618 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1026,      578,      633 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1027,     2733,     2665 ); # Abegondo
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1028,    16487,    16251 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1029,     3419,     3242 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1030,    12641,    11953 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1031,     3297,     3176 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1032,   132828,   114776 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1033,    15881,    14804 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1034,    18880,    17654 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1035,     8267,     7919 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1036,     1676,     1598 ); # Cabanas
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1037,      616,      605 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1038,      923,      984 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1039,     4054,     3699 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1040,     5166,     4902 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1041,     2970,     2859 ); # Ares
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1042,     3350,     3326 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1043,     6718,     6150 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1044,    34675,    30885 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1045,      617,      569 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1046,     2681,     2534 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1047,    20177,    18879 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1048,     2575,     2448 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1049,     1406,     1378 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1050,      540,      543 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1051,     3667,     3175 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1052,     3944,     3606 ); # Cee
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1053,      807,      783 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1054,     1525,     1410 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1055,     2316,     2381 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1056,     2372,     2224 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1057,     2055,     1844 ); # Carnota
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1058,     4357,     4070 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1059,     1644,     1624 ); # Lousame
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1060,     7434,     6840 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1061,     3190,     2965 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1062,     4594,     4548 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1063,     2534,     2474 ); # Cerceda
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1064,     1156,     1146 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1065,     1261,     1236 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1066,     6467,     6158 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1067,     3810,     3723 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1068,     1704,     1555 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1069,     1528,     1485 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1070,     1903,     1872 ); # Cariño
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1071,      555,      532 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1072,      668,      651 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1073,     2598,     2675 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1074,    16660,    15444 ); # Ames
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1075,     2131,     2075 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1076,     4118,     3805 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1077,    52376,    45472 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1078,     9497,     9135 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1079,     2005,     1846 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1080,     2544,     2462 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1081,     1426,     1324 ); # Dodro
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1082,     4331,     4035 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1083,     2368,     2137 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1084,     3754,     3665 ); # Melide
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1085,      742,      802 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1086,      830,      900 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1087,      533,      574 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1088,     2669,     2540 ); # Camariñas
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1089,     3615,     3348 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1090,     2281,     2112 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1091,     2020,     1821 ); # Mazaricos
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1092,     4826,     4536 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1093,     1179,     1303 ); # Baralla
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1094,     1404,     1403 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1095,      550,      744 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1096,      474,      588 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1097,      492,      555 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1098,      442,      527 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1099,     1066,     1073 ); # Carballedo
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1100,     4229,     3928 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1101,     1420,     1296 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1102,      570,      656 ); # Baleira
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1103,     1616,     1773 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1104,       99,      116 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1105,     1253,     1342 ); # Castro verde
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1106,     1674,     1748 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1107,     1802,     1862 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1108,     1275,     1353 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1109,    52951,    45568 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1110,     2534,     2676 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1111,      678,      734 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1112,      758,      747 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1113,      856,      803 ); # Alfoz
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1114,     4776,     4722 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1115,     5140,     4876 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1116,     1100,     1039 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1117,     1870,     1669 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1118,     1039,      939 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1119,     2144,     2074 ); # Cervo
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1120,      487,      508 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1121,      840,      816 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1122,     7852,     7539 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1123,     1646,     1631 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1124,     1513,     1412 ); # Barreiros
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1125,     1148,     1053 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1126,     5169,     4691 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1127,      586,      541 ); #
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1128,      865,      883 ); # Meira
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1129,      814,      809 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1130,      245,      268 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1131,      618,      617 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1132,      487,      520 ); # Folgoso do courel
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1133,     1674,     1495 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1134,      461,      470 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1135,      736,      684 ); # O Incio
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1136,     1257,     1327 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1137,      873,      866 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1138,      677,      667 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1139,      584,      662 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1140,     6862,     6476 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1141,      317,      320 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1142,     1178,     1144 ); # Abadín
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1143,     1480,     1498 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1144,     2565,     2508 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1145,     2248,     2147 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1146,     2759,     2731 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1147,      312,      307 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1148,     1469,     1494 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1149,     7274,     6805 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1150,      908,      875 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1151,      708,      742 ); # Bóveda
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1152,     9635,     8712 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1153,     1238,     1219 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1154,      831,      801 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1155,     1787,     1847 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1156,     1134,     1126 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1157,      983,      957 ); # Antas de Ulla
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1158,     1820,     1279 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1159,     1646,     1680 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1160,     3133,     3112 ); # Allariz
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1161,      750,      743 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1162,     1425,     1414 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1163,      693,      679 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1164,      679,      695 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1165,      378,      373 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1166,      749,      749 ); # Bande
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1167,      580,      529 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1168,      391,      377 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1169,      839,      839 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1170,      725,      741 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1171,      534,      436 ); # Beariz
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1172,     1160,     1063 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1173,     7562,     6527 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1174,      746,      684 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1175,     1362,     1347 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1176,      577,      606 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1177,      359,      349 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1178,      541,      511 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1179,     1065,     1024 ); #
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1180,      430,      512 ); # Baltar
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1181,      350,      405 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1182,      360,      375 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1183,      438,      385 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1184,      601,      627 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1185,      635,      563 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1186,      575,      570 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1187,      632,      631 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1188,      629,      654 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1189,      410,      384 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1190,     4942,     4695 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1191,     1141,     1155 ); # Amoeiro
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1192,     5708,     5450 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1193,     1516,     1559 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1194,      535,      568 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1195,      978,     1010 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1196,    57752,    47891 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1197,     3091,     3259 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1198,      920,      890 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1199,     2667,     2728 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1200,      698,      815 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1201,     1144,     1209 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1202,      897,      955 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1203,      488,      489 ); # A Arnoia
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1204,      938,      798 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1205,      186,      198 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1206,      652,      619 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1207,      665,      675 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1208,      557,      543 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1209,      539,      531 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1210,      781,      744 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1211,      600,      556 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1212,     2544,     2468 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1213,      590,      614 ); # Castro Caldelas
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1214,      327,      372 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1215,      254,      292 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1216,      157,      158 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1217,      595,      518 ); # A Bola
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1218,     1319,     1270 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1219,     2993,     2651 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1220,      367,      347 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1221,      971,      941 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1222,      851,      820 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1223,      256,      238 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1224,      348,      282 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1225,      827,      724 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1226,      477,      435 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1227,      203,      269 ); # Chandrexa de Queixa
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1228,      433,      410 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1229,     1014,     1000 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1230,      247,      259 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1231,     6898,     6533 ); # O Barco de Valdeorras
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1232,      421,      429 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1233,      716,      783 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1234,      213,      204 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1235,      428,      421 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1236,     2163,     2120 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1237,      711,      672 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1238,      419,      438 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1239,      884,      928 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1240,      477,      481 ); # Castrelo do Val
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1241,      802,      866 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1242,      579,      644 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1243,     1241,     1451 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1244,      783,      937 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1245,      711,      750 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1246,     7089,     6558 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1247,      862,      940 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1248,      610,      626 ); # A Gudiña
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1249,      484,      529 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1250,     1395,     1423 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1251,      220,      304 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1252,     5124,     4901 ); # A Guarda
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1253,     1539,     1510 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1254,     3197,     3092 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1255,     6739,     6827 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1256,     8914,     8409 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1257,     5076,     4699 ); # Caldas de Reis
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1258,     1716,     1615 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1259,     2450,     2215 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1260,     2135,     2012 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1261,     1549,     1504 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1262,     1496,     1410 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1263,     2958,     2866 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1264,     2225,     2185 ); # Mondariz
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1265,      313,      324 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1266,     1965,     1838 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1267,    11819,    11121 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1268,     4991,     4999 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1269,     1151,     1153 ); # Agolada
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1270,      513,      560 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1271,    10343,     9864 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1272,     1179,     1214 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1273,     4565,     4296 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1274,     2630,     2578 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1275,     6072,     5878 ); # Bueu
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1276,    13387,    13195 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1277,    12182,    12060 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1278,     9997,     9455 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1279,     1241,     1335 ); # Arbo
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1280,     2612,     2510 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1281,     1170,     1198 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1282,     1021,      973 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1283,     1839,     1784 ); # Barro
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1284,      937,      841 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1285,     2926,     2771 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1286,     1205,     1192 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1287,     8611,     8462 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1288,     2863,     2670 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1289,    43916,    39344 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1290,     3027,     2892 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1291,     7091,     6630 ); # Cambados
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1292,     5340,     5178 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1293,     2483,     2449 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1294,     2729,     2593 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1295,     2485,     2270 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1296,     2621,     2484 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1297,     8806,     8608 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1298,    19576,    17989 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1299,     5279,     4960 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1300,    10580,     9771 ); # A Estrada
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1301,     1739,     1569 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1302,     6152,     5977 ); # Baiona
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1303,      830,      768 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1304,     7399,     7303 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1305,     7635,     7428 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1306,     9035,     8710 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1307,     1510,     1455 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1308,    10190,     9910 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1309,    15039,    14202 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1310,     4593,     4580 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1311,     3724,     3702 ); #
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2020, 1312,   156528,   140164 ); #

	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1000,     2983,     2981 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1001,      971,      972 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1002,     2290,     2349 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1003,     1765,     1730 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1004,     9749,     9206 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1005,     4748,     4543 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1006,     5622,     5382 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1007,    13605,    13234 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1008,     1792,     1597 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1009,     3507,     3268 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1010,     2163,     2022 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1011,    16067,    15347 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1012,     3054,     2824 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1013,     5852,     5669 );
 	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1014,     1493,     1511 );
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1015,     2727,     2605 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1016,     2727,     2730 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1017,      892,      941 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1018,     6843,     6187 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1019,      944,      929 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1020,     2033,     2048 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1021,      663,      677 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1022,     3209,     3214 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1023,     2559,     2611 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1024,     1208,     1185 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1025,      593,      626 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1026,      576,      643 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1027,     2793,     2701 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1028,    16622,    16272 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1029,     3486,     3331 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1030,    12630,    11986 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1031,     3342,     3232 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1032,   131662,   113806 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1033,    15938,    14820 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1034,    19091,    17831 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1035,     8376,     8006 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1036,     1714,     1645 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1037,      625,      617 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1038,      931,      977 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1039,     4004,     3683 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1040,     5132,     4900 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1041,     3046,     2951 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1042,     3326,     3324 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1043,     6718,     6114 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1044,    34312,    30473 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1045,      627,      573 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1046,     2684,     2542 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1047,    20062,    18851 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1048,     2581,     2451 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1049,     1417,     1395 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1050,      529,      547 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1051,     3515,     3357 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1052,     3951,     3617 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1053,      811,      795 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1054,     1522,     1405 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1055,     2321,     2393 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1056,     2371,     2193 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1057,     2033,     1821 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1058,     4351,     4048 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1059,     1617,     1618 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1060,     7430,     6810 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1061,     3193,     2957 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1062,     4598,     4557 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1063,     2530,     2466 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1064,     1171,     1135 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1065,     1246,     1233 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1066,     6445,     6160 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1067,     3812,     3718 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1068,     1694,     1534 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1069,     1556,     1503 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1070,     1908,     1855 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1071,      547,      528 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1072,      663,      646 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1073,     2891,     2594 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1074,    16614,    15379 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1075,     2136,     2050 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1076,     4130,     3817 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1077,    52353,    45505 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1078,     9591,     9187 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1079,     1987,     1829 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1080,     2554,     2478 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1081,     1406,     1304 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1082,     4306,     4011 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1083,     2348,     2145 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1084,     3766,     3661 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1085,      735,      794 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1086,      855,      923 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1087,      537,      564 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1088,     2672,     2552 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1089,     3577,     3348 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1090,     2276,     2108 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1091,     1997,     1809 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1092,     4821,     4538 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1093,     1166,     1279 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1094,     1412,     1414 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1095,      546,      742 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1096,      457,      584 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1097,      477,      541 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1098,      431,      512 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1099,     1058,     1065 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1100,     4203,     3931 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1101,     1400,     1289 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1102,      549,      641 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1103,     1577,     1751 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1104,      103,      120 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1105,     1266,     1343 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1106,     1674,     1766 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1107,     1808,     1874 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1108,     1284,     1354 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1109,    52574,    45039 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1110,     2531,     2685 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1111,      665,      717 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1112,      770,      754 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1113,      829,      781 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1114,     4711,     4717 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1115,     5198,     4880 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1116,     1097,     1032 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1117,     1851,     1629 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1118,     1025,      935 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1119,     2121,     2071 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1120,      478,      506 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1121,      845,      812 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1122,     7827,     7485 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1123,     1636,     1724 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1124,     1543,     1458 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1125,     1149,     1058 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1126,     5194,     4677 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1127,      576,      538 );
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1128,      855,      876 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1129,      818,      816 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1130,      243,      270 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1131,      606,      607 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1132,      477,      512 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1133,     1670,     1481 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1134,      465,      481 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1135,      750,      771 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1136,     1246,     1305 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1137,      862,      861 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1138,      672,      675 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1139,      574,      648 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1140,     6811,     6446 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1141,      314,      313 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1142,     1153,     1144 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1143,     1484,     1492 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1144,     2577,     2533 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1145,     2232,     2142 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1146,     2720,     2735 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1147,      301,      310 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1148,     1444,     1474 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1149,     7278,     6728 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1150,      901,      867 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1151,      689,      718 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1152,     9567,     8675 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1153,     1224,     1205 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1154,      821,      794 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1155,     1784,     1805 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1156,     1143,     1100 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1157,      981,      954 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1158,     1791,     1771 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1159,     1637,     1679 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1160,     3180,     3134 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1161,      740,      743 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1162,     1433,     1416 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1163,      699,      674 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1164,      677,      689 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1165,      373,      365 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1166,      735,      755 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1167,      589,      539 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1168,      386,      383 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1169,      834,      838 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1170,      715,      732 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1171,      531,      440 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1172,     1154,     1052 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1173,     7449,     6462 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1174,      727,      674 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1175,     1368,     1350 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1176,      565,      597 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1177,      364,      340 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1178,      546,      502 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1179,     1056,     1016 );
   	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1180,      423,      496 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1181,      341,      404 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1182,      350,      367 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1183,      446,      381 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1184,      598,      625 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1185,      616,      565 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1186,      567,      547 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1187,      629,      632 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1188,      622,      636 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1189,      407,      384 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1190,     4939,     4682 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1191,     1154,     1179 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1192,     5627,     5395 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1193,     1531,     1594 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1194,      545,      564 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1195,     1014,     1053 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1196,    57188,    47408 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1197,     3117,     3353 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1198,      920,      906 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1199,     2728,     2781 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1200,      714,      738 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1201,     1156,     1218 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1202,      904,      978 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1203,      479,      473 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1204,      948,      790 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1205,      181,      198 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1206,      639,      610 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1207,      653,      668 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1208,      552,      542 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1209,      538,      523 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1210,      767,      743 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1211,      587,      548 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1212,     2554,     2451 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1213,      583,      599 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1214,      327,      378 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1215,      256,      288 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1216,      164,      172 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1217,      567,      508 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1218,     1305,     1265 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1219,     2999,     2653 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1220,      351,      342 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1221,      971,      968 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1222,      854,      799 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1223,      250,      241 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1224,      342,      272 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1225,      802,      705 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1226,      473,      441 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1227,      219,      263 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1228,      431,      415 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1229,     1015,     1000 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1230,      243,      262 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1231,     6888,     6496 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1232,      408,      420 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1233,      701,      759 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1234,      219,      208 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1235,      443,      436 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1236,     2136,     2109 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1237,      708,      682 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1238,      434,      452 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1239,      897,      940 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1240,      490,      489 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1241,      779,      860 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1242,      590,      632 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1243,     1221,     1280 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1244,      777,      936 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1245,      710,      749 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1246,     7100,     6544 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1247,      843,      938 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1248,      607,      625 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1249,      478,      528 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1250,     1372,     1415 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1251,      220,      293 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1252,     5095,     4896 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1253,     1567,     1537 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1254,     3237,     3139 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1255,     6838,     6892 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1255,     8952,     8446 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1256,     8952,     8446 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1257,     5060,     4728 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1258,     1712,     1604 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1259,     2429,     2214 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1260,     2123,     1998 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1261,     1570,     1511 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1262,     1475,     1385 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1263,     2933,     2835 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1264,     2217,     2177 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1265,      332,      343 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1266,     1920,     1850 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1267,    11821,    11121 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1268,     5021,     5027 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1269,     1113,     1115 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1270,      507,      550 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1271,    10344,     9855 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1272,     1169,     1192 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1273,     4549,     4296 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1274,     2566,     2531 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1275,     6098,     5889 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1276,    13443,    13265 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1277,    12153,    12095 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1278,    10027,     9469 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1279,     1249,     1350 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1280,     2603,     2512 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1281,     1191,     1264 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1282,     1009,      952 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1283,     1844,     1778 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1284,      938,      831 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1285,     2939,     2780 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1286,     1215,     1195 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1287,     8684,     8546 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1288,     2863,     2685 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1289,    43800,    39314 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1290,     3040,     2915 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1291,     7073,     6600 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1292,     5450,     5249 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1293,     2516,     2435 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1294,     2723,     2591 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1295,     2485,     2311 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1296,     2641,     2516 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1297,     8924,     8711 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1298,    19546,    17999 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1299,     5310,     4996 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1300,    10525,     9736 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1301,     1711,     1557 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1302,     6243,     6043 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1303,      828,      766 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1304,     7483,     7437 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1305,     7692,     7498 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1306,     9148,     8857 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1307,     1516,     1459 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1308,    10297,     9915 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1309,    15042,    14150 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1310,     4614,     4635 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1311,     3749,     3733 );
	INSERT INTO PoblacionGalicia( año, Concello, mujeres, hombres )	VALUES ( 2021, 1312,   155203,   138634 );
