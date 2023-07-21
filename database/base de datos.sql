CREATE DATABASE proyp1;
USE proyp1;

CREATE TABLE Tipousuario(
ID_Tu INT(10)NOT NULL,
tipo_de_usuario VARCHAR(50)NOT NULL,
PRIMARY KEY(ID_Tu)
);

CREATE TABLE Estados(
ID_Estados INT(10)NOT NULL,
Nombre VARCHAR(50)NOT NULL,
PRIMARY KEY(ID_Estados)
);

CREATE TABLE Municipios(
ID_Municipio INT(10)NOT NULL,
Nombre VARCHAR(50)NOT NULL,
ID_Estado1 INT(10)NOT  NULL,
PRIMARY KEY(ID_Municipio),
FOREIGN KEY(ID_Estado1)REFERENCES Estados(ID_Estados)
);

CREATE TABLE Servicios(
ID_Servicio INT(10)NOT NULL,
Nombre VARCHAR(50)NOT NULL,
Costo INT(10)NOT NULL,
PRIMARY KEY(ID_Servicio)
);

CREATE TABLE Direccion(
ID_Direccion INT(10)NOT NULL,
Calle VARCHAR(50)NOT NULL,
Colonia VARCHAR(50)NOT NULL,
No_interior INT(4)NOT NULL,
No_exterior INT(4)NOT NULL,
PRIMARY KEY(ID_Direccion),
ID_Municipio1 INT(10)NOT NULL,
FOREIGN KEY(ID_Municipio1)REFERENCES Municipios(ID_Municipio),
ID_Servicios1 INT(10)NOT NULL,
FOREIGN KEY(ID_Servicios1)REFERENCES Servicios(ID_Servicios)
);

CREATE TABLE Usuarios(
ID_Usuario INT(10)NOT NULL,
ID_Tu1 INT(10)NOT NULL,
Nombre VARCHAR(50)NOT NULL,
Apellidos VARCHAR(50)NOT NULL,
Genero VARCHAR(10)NOT NULL,
Telefono INT(10)NOT NULL,
Correo_electronico VARCHAR(50)NOT NULL,
Contraseña VARCHAR(20)NOT NULL,
Direccion INT(10)NOT NULL,
PRIMARY KEY(ID_Usuario),
FOREIGN KEY(ID_Tu1)REFERENCES Tipousuario(ID_Tu),
FOREIGN KEY(Direccion)REFERENCES Direccion(ID_Direccion)
);

CREATE TABLE Cita(
ID_Cita INT(10)NOT NULL,
Fecha_cita DATE,
Hora_inicio TIME,
Hora_fin TIME,
PRIMARY KEY (ID_Cita),
ID_Usuario1 INT(10)NOT NULL,
FOREIGN KEY(ID_Usuario1)REFERENCES Usuarios(ID_Usuario),
ID_Servicios1 INT(10)NOT NULL,
FOREIGN KEY(ID_Servicios1)REFERENCES Servicios(ID_Servicios)
);

CREATE TABLE Registropago(
ID_Pago INT(10)NOT NULL,
Num_Tarjeta INT(18)NOT NULL,
Fecha_Pago DATE,
Monto_Total INT(10)NOT NULL,
ID_Cita1 INT(10)NOT NULL,
PRIMARY KEY (ID_Pago),
FOREIGN KEY(ID_Cita1)REFERENCES Cita(ID_Cita),
FOREIGN KEY(Monto_Total)REFERENCES Servicios(ID_Servicios) 
);
----------------------------Inserción de Datos---------------------------
/*Tipos de Usuarios*/
INSERT INTO Tipousuario VALUES('1','Psicologos');
INSERT INTO Tipousuario VALUES('2','Clientes');
/*Estados*/
INSERT INTO Estados VALUES('1','Estado de México');
INSERT INTO Estados VALUES('2','Ciudad de México');
INSERT INTO Estados VALUES('3','Veracruz');
INSERT INTO Estados VALUES('4','Hidalgo');
INSERT INTO Estados VALUES('5','Oaxaca');
/*Municipios*/
INSERT INTO Municipios VALUES('1','Metepec','1');
INSERT INTO Municipios VALUES('2','Toluca','1');
INSERT INTO Municipios VALUES('3','Tenango','1');
INSERT INTO Municipios VALUES('4','Almoloya','1');
INSERT INTO Municipios VALUES('5','Iztapan del Oro','1');
INSERT INTO Municipios VALUES('6','Texcoco','1');
INSERT INTO Municipios VALUES('7','Chalco','1');
INSERT INTO Municipios VALUES('8','Amecameca','1');
INSERT INTO Municipios VALUES('9','Teotihuacan','1');
INSERT INTO Municipios VALUES('10','Tejupilco','1');
INSERT INTO Municipios VALUES('11','Alvaro Obregon','2');
INSERT INTO Municipios VALUES('12','Azcapotzalco','2');
INSERT INTO Municipios VALUES('13','Coyoacan','2');
INSERT INTO Municipios VALUES('14','Cuauhtemoc','2');
INSERT INTO Municipios VALUES('15','Cuajimalpa de Morelos','2');
INSERT INTO Municipios VALUES('16','Iztacalco','2');
INSERT INTO Municipios VALUES('17','Iztapalapa','2');
INSERT INTO Municipios VALUES('18','Benito Juarez','2');
INSERT INTO Municipios VALUES('19','Tlahuac','2');
INSERT INTO Municipios VALUES('20','Xochimilco','2');
INSERT INTO Municipios VALUES('21','Acajete','3');
INSERT INTO Municipios VALUES('22','Acula','3');
INSERT INTO Municipios VALUES('23','Alvarada','3');
INSERT INTO Municipios VALUES('24','Banderilla','3');
INSERT INTO Municipios VALUES('25','Catemaco','3');
INSERT INTO Municipios VALUES('26','Coatepec','3');
INSERT INTO Municipios VALUES('27','Espinal','3');
INSERT INTO Municipios VALUES('28','Fortin','3');
INSERT INTO Municipios VALUES('29','Huatusco','3');
INSERT INTO Municipios VALUES('30','Ixcatepec','3');
INSERT INTO Municipios VALUES('31','Actopan','4');
INSERT INTO Municipios VALUES('32','El Arenal','4');
INSERT INTO Municipios VALUES('33','Calnali','4');
INSERT INTO Municipios VALUES('34','Emiliano Zapata','4');
INSERT INTO Municipios VALUES('35','Huautla','4');
INSERT INTO Municipios VALUES('36','La Mision','4');
INSERT INTO Municipios VALUES('37','Pacula','4');
INSERT INTO Municipios VALUES('38','San Salvador','4');
INSERT INTO Municipios VALUES('39','Teteapulco','4');
INSERT INTO Municipios VALUES('40','Yahualica','4');
INSERT INTO Municipios VALUES('41','Abejones','5');
INSERT INTO Municipios VALUES('42','Ayotzintepec','5');
INSERT INTO Municipios VALUES('43','Calihuala','5');
INSERT INTO Municipios VALUES('44','La Compañia','5');
INSERT INTO Municipios VALUES('45','Cosolapa','5');
INSERT INTO Municipios VALUES('46','Cosoltepec','5');
INSERT INTO Municipios VALUES('47','El Espinal','5');
INSERT INTO Municipios VALUES('48','Villa Hidalgo','5');
INSERT INTO Municipios VALUES('49','Loma Bonita','5');
INSERT INTO Municipios VALUES('50','Natividad','5');
/*Costos*/
INSERT INTO Servicios VALUES('1','Consulta','500');
INSERT INTO Servicios VALUES('2','Consulta en parejas','600');
INSERT INTO Servicios VALUES('3','Consulta grupal','700');
INSERT INTO Servicios VALUES('4','Consulata de estudiantes','800');
INSERT INTO Servicios VALUES('5','Consulta personalizada','900');
/*Direccion*/
INSERT INTO Direccion VALUES('1','5 De Febrero','AGRÍCOLA ÁLVARO OBREGÓN','45','45','1');
INSERT INTO Direccion VALUES('2','14 De Diciembre','Lerdo','100','100','2');
INSERT INTO Direccion VALUES('3','Centro','Arista','21','21','3');
INSERT INTO Direccion VALUES('4','Armando Bernal','Almoloya de Juarez','23','23','4');
INSERT INTO Direccion VALUES('5','Callejon Magnolia','Ayalita','43','43','5');
INSERT INTO Direccion VALUES('6','Francisco Javier Mina','Ahuehuetes','63','63','6');
INSERT INTO Direccion VALUES('7','ORIENTE 37','Carlos Salinas de Gortari','26','26','7');
INSERT INTO Direccion VALUES('8','Francisco I. Madero','Cuiloxotitla','50','50','8');
INSERT INTO Direccion VALUES('9','Adolfo López Mateos','Teotihuacan','17','17','9');
INSERT INTO Direccion VALUES('10','Chucunpun','Bejucos','92','92','10');
INSERT INTO Direccion VALUES('11','Hacienda De Guadalupe','delegación','85','85','11');
INSERT INTO Direccion VALUES('12','Independencia','delegación Azcapotzalco','43','43','12');
INSERT INTO Direccion VALUES('13','Calzada de la virgen','Oaxtepec','58','58','13');
INSERT INTO Direccion VALUES('14','','','56','56','14');
INSERT INTO Direccion VALUES('15','','','41','41','15');
INSERT INTO Direccion VALUES('16','','','18','18','16');
INSERT INTO Direccion VALUES('17','','','20','20','17');
INSERT INTO Direccion VALUES('18','','','87','87','18');
INSERT INTO Direccion VALUES('19','','','49','49','19');
INSERT INTO Direccion VALUES('20','','','6','6','20');
INSERT INTO Direccion VALUES('21','','','7','7','21');
INSERT INTO Direccion VALUES('22','','','10','10','22');
INSERT INTO Direccion VALUES('23','','','25','25','23');
INSERT INTO Direccion VALUES('24','','','63','63','24');
INSERT INTO Direccion VALUES('25','','','141','141','25');
INSERT INTO Direccion VALUES('26','','','68','68','26');
INSERT INTO Direccion VALUES('27','','','75','75','27');
INSERT INTO Direccion VALUES('28','','','54','54','28');
INSERT INTO Direccion VALUES('29','','','31','31','29');
INSERT INTO Direccion VALUES('30','','','60','60','30');
INSERT INTO Direccion VALUES('31','','','94','94','31');
INSERT INTO Direccion VALUES('32','','','152','152','32');
INSERT INTO Direccion VALUES('33','','','70','70','33');
INSERT INTO Direccion VALUES('34','','','81','81','34');
INSERT INTO Direccion VALUES('35','','','56','56','35');
INSERT INTO Direccion VALUES('36','','','12','12','36');
INSERT INTO Direccion VALUES('37','','','90','90','37');
INSERT INTO Direccion VALUES('38','','','65','65','38');
INSERT INTO Direccion VALUES('39','','','35','35','39');
INSERT INTO Direccion VALUES('40','','','24','24','40');
INSERT INTO Direccion VALUES('41','','','84','84','41');
INSERT INTO Direccion VALUES('42','','','100','100','42');
INSERT INTO Direccion VALUES('43','','','42','42','43');
INSERT INTO Direccion VALUES('44','','','170','170','44');
INSERT INTO Direccion VALUES('45','','','150','150','45');
INSERT INTO Direccion VALUES('46','','','85','85','46');
INSERT INTO Direccion VALUES('47','','','17','17','47');
INSERT INTO Direccion VALUES('48','','','52','52','48');
INSERT INTO Direccion VALUES('49','','','40','40','49');
INSERT INTO Direccion VALUES('50','','','30','30','50');
/*Usuarios*/
INSERT INTO Usuarios VALUES(10000001,'1','Alejandro','Garcia Perez','MASCULINO','7264538704','ale123@gmail.com','halohalo55','1','1');
INSERT INTO Usuarios VALUES(10000002,'1','Vanessa','Gonzalez Baeza','FEMENINO','7292456362','vane_baez234@gmail.com','2','2');
INSERT INTO Usuarios VALUES(10000003,'1','Pedro','Ramirez Garcia','MASCULINO','7256753532','pedro456@gmail.com','3','3');
INSERT INTO Usuarios VALUES(10000004,'1','Jorge','Peñasco Perez','MASCULINO','4276543789','jorge_23peñas@gmail.com','4','4');
INSERT INTO Usuarios VALUES(10000005,'1','Fernanda','Herrera Meneses','FEMENINO','7223468765','fer_meneses@gmail.com','5','5');
INSERT INTO Usuarios VALUES(10000006,'1','Martha Gisell','Campos Camacho','MASCULINO','7928765379','gisellmart_234@gmail.com','6','6');
INSERT INTO Usuarios VALUES(10000007,'1','Kathia','Lopez Perez','MASCULINO','7223451278','kat234_34@gmail.com','7','7');
INSERT INTO Usuarios VALUES(10000008,'1','Emmanuel','Hernandez Sanabria','MASCULINO','4273450971','emmanuel123@gmail.com','8','8');
INSERT INTO Usuarios VALUES(10000009,'1','Yessenia','Alcantara Hernandez','FEMENINO','7654890652','yesi_345@gmail.com','9','9');
INSERT INTO Usuarios VALUES(10000010,'1','Rodrigo','Zepeda Gonzalez','MASCULINO','7896543689','rodri234_zep@gmail.com','10','10');
INSERT INTO Usuarios VALUES(10000011,'1','Santiago Angel','Figueroa Hernandez','MASCULINO','725467990','anti23_angel454@gmail.com','11','11');
INSERT INTO Usuarios VALUES(10000012,'1','German Alen','Reyes Hernandez','FEMENINO','7224560098','alen4563@gmail.com','12','12');
INSERT INTO Usuarios VALUES(10000013,'1','Sofia','Hernandez Sanabria','FEMENINO','7265643928','sofi_hdz23@gmail.com','13','13');
INSERT INTO Usuarios VALUES(10000014,'1','Ximena Daniela','Alcantara Perez','FEMENINO','7234569087','ximedan_234@gmail.com','14');
INSERT INTO Usuarios VALUES(10000015,'1','Daniela','Garcia Ramirez','FEMENINO','7234686706','dani_gar456gmail.com','15','14');
INSERT INTO Usuarios VALUES(10000016,'1','Adriana','Garcia Estrada','FEMENINO','7257890054','adrigar78@gmail.com','16','16');
INSERT INTO Usuarios VALUES(10000017,'1','Armando','Sanchez Estrada','MASCULINO','4276543890','armand4456@gmail.com','17','17');
INSERT INTO Usuarios VALUES(10000018,'1','Araceli','Maldonado Estrada','FEMENINO','7234789097','aramaldonado23@gmail.com','18','18');
INSERT INTO Usuarios VALUES(10000019,'1','Esthela','Maqueda Garcia','FEMENINO','7265480987','elamaq35@gmail.com','19','19');
INSERT INTO Usuarios VALUES(10000020,'1','Julio Cesar','Alvarado Maqueda','MASCULINO','4275678905','cesaralvarado45@gmail.com','20','20');
INSERT INTO Usuarios VALUES(10000021,'1','Luis Angel','Alvarado Maqueda','MASCULINO','7287890543','luis_alvarado30@gmail.com','21','21');
INSERT INTO Usuarios VALUES(10000022,'1','Eduardo Antonio','Garcia Maqueda','MASCULINO','7254789061','lalo_maq25@gmail.com','22','22');
INSERT INTO Usuarios VALUES(10000023,'1','Marina','Camacho Nova','FEMENINO','7267895433','marinova_345@gmail.com','23','23');
INSERT INTO Usuarios VALUES(10000024,'1','Michelle','Hernandez Ruiz','FEMENINO','7678987643','michelle456@gmail.com','24','24');
INSERT INTO Usuarios VALUES(10000025,'1','Diego','Estrada Gomez','MASCULINO','4235689085','diego34_estr@gmail.com','25','25');
INSERT INTO Usuarios VALUES(10000026,'2','Yeimy Belen','Huchim Onofre','FEMENINO','4267896543','yeimihuch34@gmail.com','26','26');
INSERT INTO Usuarios VALUES(10000027,'2','Marco Cesar','Cabrera Valeriano','MASCULINO','7654321908','marco_val345@gmail.com','27','27');
INSERT INTO Usuarios VALUES(10000028,'2','Yahir','Perez Lopez','MASCULINO','72234589008','yahir23445@gmail.com','28','28');
INSERT INTO Usuarios VALUES(10000029,'2','Alejandro','Espinoza Hernandez','MASCULINO','7234670980','alejohdz265@gmail.com','29','29');
INSERT INTO Usuarios VALUES(10000030,'2','Fatima','Lopez Perez','FEMENINO','7278009468','fatima234_lp@gmail.com','30','30');
INSERT INTO Usuarios VALUES(10000031,'2','Naydelin','Carrillo Lopez','FEMENINO','4726537920','naycarri_3456@gmail.com','31','31');
INSERT INTO Usuarios VALUES(10000032,'2','Maria Fernanda','Valdez Osorio','FEMENINO','7221450986','mariferval345_osorio@gmail.com','32','32');
INSERT INTO Usuarios VALUES(10000033,'2','Arizbelda','Flores Colon','FEMENINO','76568957456','ariz465_colon@gmail.com','33','33');
INSERT INTO Usuarios VALUES(10000034,'2','Oscar','Garcia Flores','MASCULINO','7354765342','oscar_183764@gmail.com','34','34');
INSERT INTO Usuarios VALUES(10000035,'2','Citlali','Flores Escutia','FEMENINO','7264538704','citlali_8974@gmail.com','35','35');
INSERT INTO Usuarios VALUES(10000036,'2','Francisco','Gomez Alcantara','MASCULINO','7654389097','fran_567ga@gmail.com','36','36');
INSERT INTO Usuarios VALUES(10000037,'2','Maria','Gonzalez Hernandez','FEMENINO','7243109705','mar345_gon@gmail.com','37','37');
INSERT INTO Usuarios VALUES(10000038,'2','Fernando','Iturbide Gomez','MASCULINO','7265420091','fernan454_itur@gmail.com','38','38');
INSERT INTO Usuarios VALUES(10000039,'2','Armando','Escutia Peralta','MASCULINO','4274567890','arm234_per4@gmail.com','39','39');
INSERT INTO Usuarios VALUES(10000040,'2','Pedro','Garcia Perez','MASCULINO','7247897653','ale123@gmail.com','40','40');
INSERT INTO Usuarios VALUES(10000041,'2','Zaira Montserrath','Pelaez Baeza','FEMENINO','7265789043','zaira_mon234@gmail.com','41','41');
INSERT INTO Usuarios VALUES(10000042,'2','Karla Vanessa','Alcantara Hernandez','FEMENINO','7209875390','kar12_alcan654@gmail.com','42','42');
INSERT INTO Usuarios VALUES(10000043,'2','Roberto','Alvarado Garcia','MASCULINO','4274560934','robert778_alvarado@gmail.com','43','43');
INSERT INTO Usuarios VALUES(10000044,'2','Leilani','Carapia Hernandez','FEMENINO','7256789054','leila_carapia456@gmail.com','44','44');
INSERT INTO Usuarios VALUES(10000045,'2','Leonardo','Hernandez Maqueda','MASCULINO','7292875552','leohdzmaq1606@gmail.com','45','45');
INSERT INTO Usuarios VALUES(10000046,'2','Jared','Garcia Lopez','MASCULINO','7296578790','jared_7865@gmail.com','46','46');
INSERT INTO Usuarios VALUES(10000047,'2','Esperanza','Garcia Gonzalez','FEMENINO','7266789087','espe_gonz@gmail.com','47','47');
INSERT INTO Usuarios VALUES(10000048,'2','Brenda','Escutia','MASCULINO','7267894350','bren_esc456@gmail.com','48','48');
INSERT INTO Usuarios VALUES(10000049,'2','Ana','Ferrer Escamilla','FEMENINO','7886789765','ana6544_yui@gmail.com','49','49');
INSERT INTO Usuarios VALUES(10000050,'2','Rene','Garcia Perdomo','MASCULINO','7225846741','rene_4175@gmail.com','50','50');
/*Citas*/
INSERT INTO Cita VALUES(100000002,'2023-05-8','8:00','9:00','10000002','2');
INSERT INTO Cita VALUES(100000003,'2023-01-21','10:00','11:00','10000003','3');
INSERT INTO Cita VALUES(100000004,'2023-08-30','11:00','12:00','10000004','4');
INSERT INTO Cita VALUES(100000005,'2023-04-28','13:00','14:00','10000005','5');
INSERT INTO Cita VALUES(100000006,'2023-03-28','14:00','15:00','10000006','6');
INSERT INTO Cita VALUES(100000007,'2023-09-25','15:00','16:00','10000007','7');
INSERT INTO Cita VALUES(100000008,'2023-01-10','16:00','17:00','10000008','8');
INSERT INTO Cita VALUES(100000009,'2023-04-18','12:00','13:00','10000009','9');
INSERT INTO Cita VALUES(100000010,'2023-09-9','9:00','10:00','10000010','10');
INSERT INTO Cita VALUES(100000011,'2023-04-5','10:00','11:00','10000011','11');
INSERT INTO Cita VALUES(100000012,'2023-05-15','16:00','17:00','10000012','12');
INSERT INTO Cita VALUES(100000013,'2023-10-6','18:00','19:00','10000013','13');
INSERT INTO Cita VALUES(100000014,'2023-12-9','14:00','15:00','10000014','14');
INSERT INTO Cita VALUES(100000015,'2023-01-10','16:00','17:00','10000015','15');
INSERT INTO Cita VALUES(100000016,'2023-04-1','11:00','12:00','10000016','16');
INSERT INTO Cita VALUES(100000017,'2023-09-2','12:00','13:00','10000017','17');
INSERT INTO Cita VALUES(100000018,'2023-08-6','14:00','15:00','10000018','18');
INSERT INTO Cita VALUES(100000019,'2023-05-4','10:00','11:00','10000019','19');
INSERT INTO Cita VALUES(100000020,'2023-06-20','11:00','12:00','10000020','20');
INSERT INTO Cita VALUES(100000021,'2023-05-6','18:00','19:00','10000021','21');
INSERT INTO Cita VALUES(100000022,'2023-04-7','19:00',,'20:00''10000022','22');
INSERT INTO Cita VALUES(100000023,'2023-09-9','10:00','11:00','10000023','23');
INSERT INTO Cita VALUES(100000024,'2023-04-6','8:00','9:00','10000024','24');
INSERT INTO Cita VALUES(100000025,'2023-08-8','9:00','10:00','10000025','25');
INSERT INTO Cita VALUES(100000026,'2023-10-5','15:00','16:00','10000051','26');
INSERT INTO Cita VALUES(100000027,'2023-05-20','14:00','15:00','10000052','27');
INSERT INTO Cita VALUES(100000028,'2023-06-30','10:00','11:00','10000053','28');
INSERT INTO Cita VALUES(100000029,'2023-09-29','12:00','13:00','10000054','29');
INSERT INTO Cita VALUES(100000030,'2023-12-30','13:00','14:00','10000055','30');
INSERT INTO Cita VALUES(100000031,'2023-12-9','16:00','17:00','10000056','31');
INSERT INTO Cita VALUES(100000032,'2023-09-11','10:00','11:00','10000057','32');
INSERT INTO Cita VALUES(100000033,'2023-07-12','18:00','19:00','10000058','33');
INSERT INTO Cita VALUES(100000034,'2023-06-10','10:00','11:00','10000059','34');
INSERT INTO Cita VALUES(100000035,'2023-04-11','18:00','19:00','10000060','35');
INSERT INTO Cita VALUES(100000036,'2023-01-24','12:00','13:00','10000061','36');
INSERT INTO Cita VALUES(100000037,'2023-02-13','11:00','12:00','10000062','37');
INSERT INTO Cita VALUES(100000038,'2023-05-19','10:00','11:00','10000063','38');
INSERT INTO Cita VALUES(100000039,'2023-07-25','15:00','16:00','10000064','39');
INSERT INTO Cita VALUES(100000040,'2023-01-9','16:00','17:00','10000065','40');
INSERT INTO Cita VALUES(100000041,'2023-12-6','14:00','15:00','10000066','41');
INSERT INTO Cita VALUES(100000042,'2023-07-16','10:00','11:00','10000067','42');
INSERT INTO Cita VALUES(100000043,'2023-05-20','11:00','12:00','10000068','43');
INSERT INTO Cita VALUES(100000044,'2023-03-30','9:00','10:00','10000069','44');
INSERT INTO Cita VALUES(100000045,'2023-07-5','8:00','9:00','10000070','45');
INSERT INTO Cita VALUES(100000046,'2023-09-6','11:00','12:00','10000071','46');
INSERT INTO Cita VALUES(100000047,'2023-04-9','12:00','13:00','10000072','47');
INSERT INTO Cita VALUES(100000048,'2023-09-7','14:00','15:00','10000073','48');
INSERT INTO Cita VALUES(100000049,'2023-05-8','17:00','18:00','10000074','49');
INSERT INTO Cita VALUES(100000050,'2023-10-26','18:00','19:00','10000075','50');

/*Registro de pago*/
INSERT INTO RegistroPago VALUES(1,'411879576543687276','2023-05-5','5','100000001');
INSERT INTO RegistroPago VALUES(2,'411876536993463832','2023-05-8','1','100000002');
INSERT INTO RegistroPago VALUES(3,'411876539059457473','2023-01-21','5','100000003');
INSERT INTO RegistroPago VALUES(4,'411876530950534543','2023-08-30','4','100000004');
INSERT INTO RegistroPago VALUES(5,'411876530925395658','2023-04-28','3','100000005');
INSERT INTO RegistroPago VALUES(6,'411876530925490099','2023-03-28','2','100000006');
INSERT INTO RegistroPago VALUES(7,'411876530920595743','2023-09-25','4','100000007');
INSERT INTO RegistroPago VALUES(8,'411876530929578567','2023-01-10','4','100000008');
INSERT INTO RegistroPago VALUES(9,'411876530925983453','2023-04-18','4','100000009');
INSERT INTO RegistroPago VALUES(10,'411876530234456665','2023-09-9','5','100000010');
INSERT INTO RegistroPago VALUES(11,'411876530989088755','2023-04-5','3','100000011');
INSERT INTO RegistroPago VALUES(12,'411876530920094532','2023-05-15','2','100000012');
INSERT INTO RegistroPago VALUES(13,'411876530925433223','2023-10-6','5','100000013');
INSERT INTO RegistroPago VALUES(14,'411876530925577899','2023-12-9','5','100000014');
INSERT INTO RegistroPago VALUES(15,'411876530925343322','2023-01-10','5','100000015');
INSERT INTO RegistroPago VALUES(16,'411876530927899765','2023-04-1','4','100000016');
INSERT INTO RegistroPago VALUES(17,'411876530925456778','2023-09-2','5','100000017');
INSERT INTO RegistroPago VALUES(18,'411876530925356788','2023-08-6','4','100000018');
INSERT INTO RegistroPago VALUES(19,'411876530925354334','2023-05-4','4','100000019');
INSERT INTO RegistroPago VALUES(20,'411876530925356767','2023-06-20','4','100000020');
INSERT INTO RegistroPago VALUES(21,'411876530925443345','2023-05-6','3','100000021');
INSERT INTO RegistroPago VALUES(22,'411876530776555445','2023-04-7','2','100000022');
INSERT INTO RegistroPago VALUES(23,'411876530925676567','2023-09-9','3','100000023');
INSERT INTO RegistroPago VALUES(24,'411876530925554466','2023-04-6','2','100000024');
INSERT INTO RegistroPago VALUES(25,'411876530925356543','2023-08-8','1','100000025');
INSERT INTO RegistroPago VALUES(26,'411876554467754332','2023-10-5','2','100000026');
INSERT INTO RegistroPago VALUES(27,'411876530677544455','2023-05-20','5','100000027');
INSERT INTO RegistroPago VALUES(28,'465443223476654578','2023-06-30','5','100000028');
INSERT INTO RegistroPago VALUES(29,'411876534566543456','2023-09-29','1','100000029');
INSERT INTO RegistroPago VALUES(30,'411876534333245678','2023-12-30','1','100000030');
INSERT INTO RegistroPago VALUES(31,'411876530920000987','2023-12-9','1','100000031');
INSERT INTO RegistroPago VALUES(32,'411876535456775443','2023-09-11','5','100000032');
INSERT INTO RegistroPago VALUES(33,'411876530925675467','2023-07-12','5','100000033');
INSERT INTO RegistroPago VALUES(34,'411876530445564334','2023-06-10','5','100000034');
INSERT INTO RegistroPago VALUES(35,'411876536786544667','2023-04-11','5','100000035');
INSERT INTO RegistroPago VALUES(36,'411876530345890989','2023-01-24','4','100000036');
INSERT INTO RegistroPago VALUES(37,'411876537689097567','2023-02-13','5','100000037');
INSERT INTO RegistroPago VALUES(38,'411876530925567889','2023-05-19','5','100000038');
INSERT INTO RegistroPago VALUES(39,'411876530956678989','2023-07-25','4','100000039');
INSERT INTO RegistroPago VALUES(40,'411876890098997643','2023-01-9','4','100000040');
INSERT INTO RegistroPago VALUES(41,'411876530920098665','2023-12-6','4','100000041');
INSERT INTO RegistroPago VALUES(42,'411867786544678877','2023-07-16','3','100000042');
INSERT INTO RegistroPago VALUES(43,'411876789087654466','2023-05-20','2','100000043');
INSERT INTO RegistroPago VALUES(44,'411878897545467655','2023-03-30','1','100000044');
INSERT INTO RegistroPago VALUES(45,'411876788654577656','2023-07-5','2','100000045');
INSERT INTO RegistroPago VALUES(46,'411876566766556777','2023-09-6','3','100000046');
INSERT INTO RegistroPago VALUES(47,'411876530433234567','2023-04-9','1','100000047');
INSERT INTO RegistroPago VALUES(48,'411876530098654678','2023-09-7','4','100000048');
INSERT INTO RegistroPago VALUES(49,'411876530925390476','2023-05-8','5','100000049');
INSERT INTO RegistroPago VALUES(50,'411876530567886564','2023-10-26','4','100000050');