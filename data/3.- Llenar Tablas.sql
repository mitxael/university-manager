use DBMatriculas
go
------------------------Llenado de tablas------------------------------

-----------------------Pais----------------------------------------
insert into Pais values('Argentina')
insert into Pais values('Bolivia')
insert into Pais values('Brazil')
insert into Pais values('Chile')
insert into Pais values('Colombia')
insert into Pais values('Ecuador')
insert into Pais values('Paraguay')
insert into Pais values('Peru')
insert into Pais values('Uruguay')
insert into Pais values('Venezuela')

select * from Pais
--delete from Pais
-----------------------Region----------------------------------------
insert into Region values('Buenos Aires','Argentina')
insert into Region values('La Paz','Bolivia')
insert into Region values('Rio de Janeiro','Brazil')
insert into Region values('Santiago','Chile')
insert into Region values('Bogota','Colombia')
insert into Region values('Quito','Ecuador')
insert into Region values('Asuncion','Paraguay')
insert into Region values('Amazonas','Peru')
insert into Region values('Ancash','Peru')
insert into Region values('Apurimac','Peru')
insert into Region values('Arequipa','Peru')
insert into Region values('Ayacucho','Peru')
insert into Region values('Cajamarca','Peru')
insert into Region values('Cusco','Peru')
insert into Region values('Huancavelica','Peru')
insert into Region values('Huanuco','Peru')
insert into Region values('Ica','Peru')
insert into Region values('Junin','Peru')
insert into Region values('La Libertad','Peru')
insert into Region values('Lambayeque','Peru')
insert into Region values('Lima','Peru')
insert into Region values('Loreto','Peru')
insert into Region values('Madre de Dios','Peru')
insert into Region values('Moquegua','Peru')
insert into Region values('Pasco','Peru')
insert into Region values('Piura','Peru')
insert into Region values('Puno','Peru')
insert into Region values('San Martin','Peru')
insert into Region values('Tacna','Peru')
insert into Region values('tumbes','Peru')
insert into Region values('Ucayali','Peru')
insert into Region values('Montevideo','Uruguay')
insert into Region values('Caracas','Venezuela')

select * from Region
--delete from Region

-----------------------Provincia----------------------------------------
insert into Provincia values('Buenos Aires','Buenos Aires')
insert into Provincia values('La Paz','La Paz')
insert into Provincia values('Rio de Janeiro','Rio de Janeiro')
insert into Provincia values('Santiago','Santiago')
insert into Provincia values('Bogota','Bogota')
insert into Provincia values('Quito','Quito')
insert into Provincia values('Asuncion','Asuncion')
insert into Provincia values('Chachapoyas','Amazonas')
insert into Provincia values('Huaraz','Ancash')
insert into Provincia values('Abancay','Apurimac')
insert into Provincia values('Arequipa','Arequipa')
insert into Provincia values('Ayacucho','Ayacucho')
insert into Provincia values('Cajamarca','Cajamarca')
insert into Provincia values('Acomayo','Cusco')
insert into Provincia values('Anta','Cusco')
insert into Provincia values('Calca','Cusco')
insert into Provincia values('Canas','Cusco')
insert into Provincia values('Canchis','Cusco')
insert into Provincia values('Cusco','Cusco')
insert into Provincia values('Chumbivilcas','Cusco')
insert into Provincia values('Espinar','Cusco')
insert into Provincia values('La Convencion','Cusco')
insert into Provincia values('Paruro','Cusco')
insert into Provincia values('Paucartambo','Cusco')
insert into Provincia values('Quispicanchis','Cusco')
insert into Provincia values('Urubamba','Cusco')
insert into Provincia values('Huancavelica','Huancavelica')
insert into Provincia values('Huánuco','Huanuco')
insert into Provincia values('Ica','Ica')
insert into Provincia values('Huancayo','Junin')
insert into Provincia values('Trujillo','La Libertad')
insert into Provincia values('Chiclayo','Lambayeque')
insert into Provincia values('Barranca','Lima')
insert into Provincia values('Cajatambo','Lima')
insert into Provincia values('Callao','Lima')
insert into Provincia values('Canta','Lima')
insert into Provincia values('Canete','Lima')
insert into Provincia values('Huaral','Lima')
insert into Provincia values('Huarochiri','Lima')
insert into Provincia values('Huaura','Lima')
insert into Provincia values('Lima','Lima')
insert into Provincia values('Oyon','Lima')
insert into Provincia values('Yauyos','Lima')
insert into Provincia values('Iquitos','Loreto')
insert into Provincia values('Tambopata','Madre de Dios')
insert into Provincia values('Moquegua','Moquegua')
insert into Provincia values('Cerro de Pasco','Pasco')
insert into Provincia values('Piura','Piura')
insert into Provincia values('Puno','Puno')
insert into Provincia values('Moyobamba','San Martin')
insert into Provincia values('Tacna','Tacna')
insert into Provincia values('Tumbes','Tumbes')
insert into Provincia values('Pucallpa','Ucayali')
insert into Provincia values('Montevideo','Montevideo')
insert into Provincia values('Caracas','Caracas')

select * from Provincia
--select Pais.nombre,Region.nombre,Provincia.nombre from Pais,Region,Provincia where (Pais.nombre=Region.pais_fk and Region.nombre=Provincia.region_fk) order by Pais.nombre,Region.nombre
--delete from Provincia

-----------------------Universidad----------------------------------------
insert into Universidad values ('Universidad Nac. Toribio Rodríguez de Mendoza de Amazonas','Chachapoyas')
insert into Universidad values ('Universidad de Chimbote', 'Huaraz')
insert into Universidad values ('Universidad Nac. de Ancash Santiago Antúnez de Mayolo','Huaraz')
insert into Universidad values ('Universidad Nac. del Santa', 'Huaraz')
insert into Universidad values ('Universidad Privada Los Angeles','Huaraz')
insert into Universidad values ('Universidad Privada San Pedro', 'Huaraz')
insert into Universidad values ('Universidad Tecnológica de los Andes' , 'Abancay')
insert into Universidad values ('Universidad Católica Santa María' , 'Arequipa') 
insert into Universidad values ('Universidad Nac. de San Agustín de Arequipa' , 'Arequipa')
insert into Universidad values ('Universidad San Pablo' , 'Arequipa')
insert into Universidad values ('Universidad Nac. de San Cristóbal de Huamanga' , 'Ayacucho')
insert into Universidad values ('Universidad Nac. de Cajamarca' , 'Cajamarca')
insert into Universidad values ('Universidad Privada de Jaén' , 'Cajamarca')
insert into Universidad values ('Universidad Nac. San Antonio Abad del Cusco','Cusco') 
insert into Universidad values ('Universidad Particular Andina del Cusco','Cusco')  
insert into Universidad values ('Universidad Nac. de Huancavelica' , 'Huancavelica')
insert into Universidad values ('Universidad Nac. Agraria de la Selva' ,'Huánuco') 
insert into Universidad values ('Universidad Nac. Hermilio Valdizán' ,'Huánuco')
insert into Universidad values ('Universidad San Luis de Gonzaga' , 'Ica')
insert into Universidad values ('Universidad Nac. del Centro del Perú' , 'Huancayo')
insert into Universidad values ('Universidad Peruana Los Andes' , 'Huancayo')
insert into Universidad values ('Universidad César Vallejo' , 'Trujillo')
insert into Universidad values ('Universidad Nac. de Trujillo' , 'Trujillo')
insert into Universidad values ('Universidad Privada Antenor Orrego' , 'Trujillo')
insert into Universidad values ('Universidad de Chiclayo' , 'Chiclayo')
insert into Universidad values ('Universidad Nac. Pedro Ruiz Gallo' , 'Chiclayo')
insert into Universidad values ('Facultad de Teología Pontificia y Civil de Lima' , 'Chiclayo')
insert into Universidad values ('Pontificia Universidad Católica del Perú' , 'Lima')
insert into Universidad values ('Universidad Alas Peruanas' , 'Lima')
insert into Universidad values ('Universidad Científica del Sur' , 'Lima')
insert into Universidad values ('Universidad de Lima' , 'Lima')
insert into Universidad values ('Universidad del Pacífico' , 'Lima')
insert into Universidad values ('Universidad Femenina del Sagrado Corazón' , 'Lima')
insert into Universidad values ('Universidad Inca Garcilaso de la Vega' , 'Lima')
insert into Universidad values ('Universidad Marcelino Champagnat' , 'Lima')
insert into Universidad values ('Universidad Nac. Agraria La Molina' , 'Lima')
insert into Universidad values ('Universidad Nac. de Educación Enrique Guzmán y Valle' , 'Lima')
insert into Universidad values ('Universidad Nac. de Ingeniería' , 'Lima')
insert into Universidad values ('Universidad Nac. del Callao' , 'Callao')
insert into Universidad values ('Universidad Nac. Federico Villarreal' , 'Lima')
insert into Universidad values ('Universidad Nac. José Faustino Sánchez Carrión' , 'Lima')
insert into Universidad values ('Universidad Nac. Mayor de San Marcos' , 'Lima')
insert into Universidad values ('Universidad Norbert Wiener' , 'Lima')
insert into Universidad values ('Universidad Peruana Cayetano Heredia' , 'Lima')
insert into Universidad values ('Universidad Peruana de Ciencias Aplicadas' , 'Lima')
insert into Universidad values ('Universidad Peruana Unión' , 'Lima')
insert into Universidad values ('Universidad Ricardo Palma' , 'Lima')
insert into Universidad values ('Universidad San Ignacio de Loyola' , 'Lima') 
insert into Universidad values ('Universidad San Martín de Porres' , 'Lima')
insert into Universidad values ('Universidad Tecnológica del Perú' , 'Lima')
insert into Universidad values ('Universidad Nac. de la Amazonía Peruana' , 'Iquitos')
insert into Universidad values ('Universidad Nac. Amazoníca de Madre de Dios' , 'Iquitos')
insert into Universidad values ('Universidad Nac. Daniel Alcides Carrión' , 'Cerro de Pasco')
insert into Universidad values ('Universidad de Piura' , 'Piura') 
insert into Universidad values ('Universidad Nac. de Piura' , 'Piura')
insert into Universidad values ('Universidad Andina Néstor Cáceres Velásquez' , 'Puno')
insert into Universidad values ('Universidad Nac. del Altiplano' , 'Puno')
insert into Universidad values ('Universidad Nac. de San Martín' , 'Moyobamba')
insert into Universidad values ('Universidad Nac. Jorge Basadre Grohmann' , 'Tacna')
insert into Universidad values ('Universidad Privada de Tacna' , 'Tacna')
insert into Universidad values ('Universidad Nac. de Tumbes' , 'Tumbes')

select * from Universidad order by universidad.provincia_fk
--delete from Universidad

-----------------------Facultad----------------------------------------
insert into Facultad values('CDS','CS DE LA SALUD')
insert into Facultad values('EAC','CS ECONOMICAS, ADMIN y CONTAB')
insert into Facultad values('CSE','CS SOCIALES Y EDUCACION')
insert into Facultad values('DCP','DERECHO Y CIENCIAS POLITICAS')
insert into Facultad values('ING','INGENIERIA')

select * from Facultad
--delete from Facultad

-----------------------Carrera----------------------------------------
insert into Carrera values('EN','Enfermeria','CDS')
insert into Carrera values('ES','Estomatologia','CDS')
insert into Carrera values('OB','Obstetricia','CDS')
insert into Carrera values('OD','Odontologia','CDS')
insert into Carrera values('AD','Administracion','EAC')
insert into Carrera values('CO','Contabilidad','EAC')
insert into Carrera values('EC','Economia','EAC')
insert into Carrera values('ED','Educacion','CSE')
insert into Carrera values('TU','Turismo','CSE')
insert into Carrera values('DE','Derecho','DCP')
insert into Carrera values('IS','Ingenieria De Sistemas','ING')
insert into Carrera values('IC','Ingenieria Civil','ING')
insert into Carrera values('II','Ingenieria Industrial','ING')

select * from Carrera
--delete from Carrera

-----------------------Curricula----------------------------------------
insert into Curricula values('01','CURRICULA ANTIGUA',220,'IS','1998/01/01','2001/12/31')
insert into Curricula values('02','CURRICULA NUEVA',220,'IS','2001/01/01','')

select * from Curricula
--delete from  Curricula

-----------------------Semestre----------------------------------------

insert into Semestre values('2000-1','2000/01/01','2000/04/30')
insert into Semestre values('2000-2','2000/05/01','2000/08/31')
insert into Semestre values('2000-3','2000/09/01','2000/12/31')

insert into Semestre values('2001-1','2001/03/01','2001/07/31')
insert into Semestre values('2001-2','2001/08/01','2001/11/30')

insert into Semestre values('2002-1','2002/01/01','2002/04/30')
insert into Semestre values('2002-2','2002/05/01','2002/08/31')
insert into Semestre values('2002-3','2002/09/01','2002/12/31')

insert into Semestre values('2003-1','2003/03/01','2003/07/31')
insert into Semestre values('2003-2','2003/08/01','2003/11/30')

insert into Semestre values('2004-1','2004/01/01','2004/04/30')
insert into Semestre values('2004-2','2004/05/01','2004/08/31')
insert into Semestre values('2004-3','2004/09/01','2004/12/31')

insert into Semestre values('2005-1','2005/03/01','2005/07/31')
insert into Semestre values('2005-2','2005/08/01','2005/11/30')

insert into Semestre values('2006-1','2006/01/01','2006/04/30')
insert into Semestre values('2006-2','2006/05/01','2006/08/31')
--insert into Semestre values('2006-3','01/09/2006','31/12/2006')

select * from Semestre
--delete from Semestre

-----------------------Alummno----------------------------------------

insert into Alumno values('003034-A','Romero Salazar','Ruben','IS','01','SI','Ninguna','Av. Paucarpata #161','73179216','rubero@hotmail.com','232976','1979/08/19','M','Peru','Cusco','Anta')
insert into Alumno values('010393-H','Kasparov Champi','Garis','IS','01','SI','Ninguna','Calle Ajedrez #64','98362718','garischa@hotmail.com','428102','1983/09/29','M','Peru','Lima','Barranca')
insert into Alumno values('029239-K','Siguar Carlincsky','Carlomario','IS','01','SI','Ninguna','Av. Peruanidad #140','57493182','carlomario@hotmail.com','837392','1977/12/13','M','Peru','Cusco','Canas')
insert into Alumno values('031233-P','Nokimno Chullpi','Ponencio','IS','01','SI','Ninguna','Av. Canizares #8943','82730172','ponencito@hotmail.com','287368','1983/11/18','M','Peru','Cusco','Canchis')
insert into Alumno values('034577-A','Zubizarreta Gomez','Darla','IS','01','SI','Ninguna','Av. Kennedy #2541','28372619','darla_yo@hotmail.com','802618','1978/12/22','F','Peru','Cusco','Cusco')
insert into Alumno values('041312-W','Rodriguez Mori','Claudia','IS','01','SI','Ninguna','Av. Puscas #5412','42810861','claudita@hotmail.com','228729','1981/29/08','F','Peru','Cusco','Cusco')
insert into Alumno values('049244-E','Illescas del Matto','Jorge','IS','01','SI','Ninguna','Av. Las traviesas #666','27192806','jorgete@hotmail.com','283729','1981/02/07','M','Peru','Cusco','Espinar')
insert into Alumno values('061313-C','Lopez Sanpi','Fiorella','IS','02','SI','Ninguna','Av. Cascas #231','23771928','fiore@hotmail.com','239424','1966/06/06','F','Peru','Cusco','Urubamba')
insert into Alumno values('061234-G','Salas Buenavista','Maria Ines','IS','02','SI','Ninguna','Urb. Las Begonias #101','28170187','inesinha@hotmail.com','827192','1982/03/06','F','Peru','Cusco','Cusco')
insert into Alumno values('061711-E','Vasquez Otazu','Michael','IS','01','SI','Ninguna','Av. Huayruropata #1620','42380914','mitxael@hotmail.it','224343','1983/11/30','M','Peru','Cusco','Cusco')

--egresante : 034577-A
--ponderado : 049244-E
--ingresante: 061234-G
--regular   : 061711-E

select * from Alumno
--delete from Alumno

-----------------------Recibo----------------------------------------
insert into Recibo values ('12345670','034577-A')
insert into Recibo values ('12345671','049244-E')
insert into Recibo values ('12345672','061234-G')
insert into Recibo values ('12345678','061711-E')

select * from Recibo
--delete from Recibo

-----------------------Docente----------------------------------------
insert into Docente values('DO201-IS','Acurio Gutierrez','Maria Isabel','contratado','Docente','IS','iacurio','maria','Av.Lopez Albujar #6563','75494124','iacurio@hotmail.com',274744,'1978/11/13','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO202-IS','Carrasco Poblete','Edwin','nombrado','Docente','IS','ecarrasco','edwin','Jr. Solemnidad #523','27189653','ecarrasco@hotmail.com',273987,'1965/03/18','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO203-IS','Chavez Centeno','Javier','contratado','Docente','IS','jchavez','javier','Av.Jirones #6775','97261572','jchavez@hotmail.com',281715,'1967/12/09','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO204-IS','Cuba del Castillo','Maria Yorneth','contratado','Docente','IS','ycuba','maria','Urb. Manzanales #613','86517362','ycuba@hotmail.com',281635,'1962/11/21','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO205-IS','Ganvini Valcarcel','Christian','nombrado','Docente','IS','cganvini','christian','Av.Ottero #242','76253821','cganvini@hotmail.com',243151,'1970/03/30','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO206-IS','Marca Aima','Ariadna','nombrado','Jefe de Dpto.','IS','mmarca','ariadna','Calle Ilostirochi #63','72718265','mmarca@hotmail.com',227356,'1968/12/31','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO207-IS','Miranda Pomacondor','Reynaldo','contratado','Docente','IS','rmiranda','reynaldo','Av.Fraternidad #163','37196142','rmiranda@hotmail.com',821652,'1972/03/06','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO208-IS','Nunez Pacheco','Maruja','contratado','Docente','IS','mnunez','maruja','Av.Borgues #312','83625178','mnunez@hotmail.com',251892,'1961/02/21','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO209-IS','Palomino Cahuaya','Ariadna','nombrado','Coordinador','IS','apalomino','ariadna','Av.KKK #132','65278172','apalomino@hotmail.com',223131,'1965/08/24','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO210-IS','Palomino Olivera','Emilio','nombrado','Docente','IS','empaoliv','emilio','Av.los heroes #64','24864986','empaoliv@hotmail.com',260473,'1969/12/20','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO211-IS','Quevedo Velazco','David','contratado','Docente','IS','dquevedo','david','Av.Sumarry #232','24514231','dquevedo@hotmail.com',826372,'1963/12/15','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO212-IS','Quispe Salazar','Moises','contratado','Docente','IS','mquispe','moises','Av.Infinito #666','12518462','mquispe@hotmail.com',253765,'1967/09/20','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO213-IS','Romero Florez','Robert','contratado','Docente','IS','rromero','robert','Av.Misiones #982','42710986','iacurio@hotmail.com',293654,'1966/08/27','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO214-IS','Sanchez Lechuga','Maria','contratado','Docente','IS','msanchez','maria','Av.Giro 163','42819762','msanchez@hotmail.com',827192,'1971/06/27','F','Peru','Cusco','Cusco','activo')
insert into Docente values('DO215-IS','Sota Orellana','Luis','contratado','Docente','IS','lsota','luis','Av.Los ultimos #927','28172910','lsota@hotmail.com',228171,'1962/11/18','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO216-IS','Vildoso Rodriguez','Jorge','contratado','Admin. laboratorios','IS','jvildoso','jorge','Av.Marizales #242','75380182','jvildoso@hotmail.com',229816,'1967/07/07','M','Peru','Cusco','Cusco','activo')
insert into Docente values('DO217-IS','Villafuerte Fernandez','Luis','contratado','Docente','IS','ivillafuerte','luis','Urb. Cristalina #321','72615782','ivillafuerte@hotmail.com',229107,'11/04/1968','M','Peru','Cusco','Cusco','activo')

select * from Docente
--delete from Docente

-----------------------Asignatura----------------------------------------
----------------CURRICULA 1 -------------------------------------
insert into Asignatura values('0111-AIS','CursoA1','CG','01','S111-AIS',03,40,'','','','','',56,0)
insert into Asignatura values('0112-AIS','CursoB1','CG','01','S112-AIS',03,40,'','','','','',56,0)
insert into Asignatura values('0113-AIS','CursoC1','CG','01','S113-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0114-AIS','CursoD1','CG','01','S114-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0115-AIS','CursoL1','CG','01','S115-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0116-AIS','CursoL2','CG','01','S116-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0211-AIS','CursoA2','CG','01','S211-AIS',03,40,'0111-AIS','','','','',56,0)
insert into Asignatura values('0212-AIS','CursoB2','CG','01','S212-AIS',03,40,'0112-AIS','','','','',56,0)
insert into Asignatura values('0213-AIS','CursoC2','OE','01','S213-AIS',04,50,'0113-AIS','','','','',64,10)
insert into Asignatura values('0214-AIS','CursoD2','OE','01','S214-AIS',04,50,'0114-AIS','','','','',64,10)
insert into Asignatura values('0215-AIS','CursoL3','CG','01','S215-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0216-AIS','CursoL4','EE','01','S216-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0311-AIS','CursoA3','CG','01','S311-AIS',03,40,'0211-AIS','','','','',56,0)
insert into Asignatura values('0312-AIS','CursoB3','CG','01','S312-AIS',03,40,'0212-AIS','','','','',56,0)
insert into Asignatura values('0313-AIS','CursoC3','OE','01','S313-AIS',04,50,'0213-AIS','','','','',64,10)
insert into Asignatura values('0314-AIS','CursoD3','OE','01','S314-AIS',04,50,'0214-AIS','','','','',64,10)
insert into Asignatura values('0315-AIS','CursoL5','CG','01','S315-AIS',04,50,'0215-AIS','','','','',64,10)
insert into Asignatura values('0316-AIS','CursoL6','EE','01','S316-AIS',04,50,'','','','','',64,10)
--
insert into Asignatura values('0411-AIS','CursoA4','CG','01','S411-AIS',03,40,'0311-AIS','','','','',56,0)
insert into Asignatura values('0412-AIS','CursoB4','CG','01','S412-AIS',03,40,'0312-AIS','','','','',56,0)
insert into Asignatura values('0413-AIS','CursoC4','OE','01','S413-AIS',04,50,'0313-AIS','','','','',64,10)
insert into Asignatura values('0414-AIS','CursoD4','OE','01','S414-AIS',04,50,'0314-AIS','','','','',64,10)
insert into Asignatura values('0415-AIS','CursoL7','CG','01','S415-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0416-AIS','CursoL8','EE','01','S416-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0511-AIS','CursoA5','CG','01','S511-AIS',03,40,'0411-AIS','','','','',56,0)
insert into Asignatura values('0512-AIS','CursoB5','CG','01','S512-AIS',03,40,'0412-AIS','','','','',56,0)
insert into Asignatura values('0513-AIS','CursoC5','OE','01','S513-AIS',04,50,'0413-AIS','','','','',64,10)
insert into Asignatura values('0514-AIS','CursoD5','OE','01','S514-AIS',04,50,'0414-AIS','','','','',64,10)
insert into Asignatura values('0515-AIS','CursoL9','CG','01','S515-AIS',04,50,'0415-AIS','','','','',64,10)
insert into Asignatura values('0516-AIS','CursoL10','EE','01','S516-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0611-AIS','CursoA6','CG','01','S611-AIS',03,40,'0511-AIS','','','','',56,0)
insert into Asignatura values('0612-AIS','CursoB6','CG','01','S612-AIS',03,40,'0512-AIS','','','','',56,0)
insert into Asignatura values('0613-AIS','CursoC6','OE','01','S613-AIS',04,50,'0513-AIS','','','','',64,10)
insert into Asignatura values('0614-AIS','CursoD6','OE','01','S614-AIS',04,50,'0514-AIS','','','','',64,10)
insert into Asignatura values('0615-AIS','CursoL11','CG','01','S615-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0616-AIS','CursoL12','EE','01','S616-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0711-AIS','CursoA7','CG','01','S711-AIS',03,40,'0611-AIS','','','','',56,0)
insert into Asignatura values('0712-AIS','CursoB7','CG','01','S712-AIS',03,40,'0612-AIS','','','','',56,0)
insert into Asignatura values('0713-AIS','CursoC7','OE','01','S713-AIS',04,50,'0613-AIS','','','','',64,10)
insert into Asignatura values('0714-AIS','CursoD7','OE','01','S714-AIS',04,50,'0614-AIS','','','','',64,10)
insert into Asignatura values('0715-AIS','CursoL13','CG','01','S715-AIS',04,50,'0615-AIS','','','','',64,10)
insert into Asignatura values('0716-AIS','CursoL14','EE','01','S716-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0811-AIS','CursoA8','CG','01','S811-AIS',03,40,'0711-AIS','','','','',56,0)
insert into Asignatura values('0812-AIS','CursoB8','CG','01','S812-AIS',03,40,'0712-AIS','','','','',56,0)
insert into Asignatura values('0813-AIS','CursoC8','OE','01','S813-AIS',04,50,'0713-AIS','','','','',64,10)
insert into Asignatura values('0814-AIS','CursoD8','OE','01','S814-AIS',04,50,'0714-AIS','','','','',64,10)
insert into Asignatura values('0815-AIS','CursoL15','CG','01','S815-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('0816-AIS','CursoL16','EE','01','S816-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('0911-AIS','CursoA9','CG','01','S911-AIS',03,40,'0811-AIS','','','','',56,0)
insert into Asignatura values('0912-AIS','CursoB9','CG','01','S912-AIS',03,40,'0812-AIS','','','','',56,0)
insert into Asignatura values('0913-AIS','CursoC9','OE','01','S913-AIS',04,50,'0813-AIS','','','','',64,10)
insert into Asignatura values('0914-AIS','CursoD9','OE','01','S914-AIS',04,50,'0814-AIS','','','','',64,10)
insert into Asignatura values('0915-AIS','CursoL17','CG','01','S915-AIS',04,50,'0815-AIS','','','','',64,10)
insert into Asignatura values('0916-AIS','CursoL18','EE','01','S916-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('1011-AIS','CursoA10','CG','01','S101-AIS',03,40,'0911-AIS','','','','',56,0)
insert into Asignatura values('1012-AIS','CursoB10','CG','01','S102-AIS',03,40,'0912-AIS','','','','',56,0)
insert into Asignatura values('1013-AIS','CursoC10','OE','01','S103-AIS',04,50,'0913-AIS','','','','',64,10)
insert into Asignatura values('1014-AIS','CursoD10','OE','01','S104-AIS',04,50,'0914-AIS','','','','',64,10)
insert into Asignatura values('1015-AIS','CursoL19','CG','01','S105-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('1016-AIS','CursoL20','EE','01','S106-AIS',04,50,'','','','','',64,10)

--------------------CURRICULA2----------------------------------------
insert into Asignatura values('S111-AIS','CursoNuevaA1','CG','02','0111-AIS',03,40,'','','','','',56,0)
insert into Asignatura values('S112-AIS','CursoNuevaB1','CG','02','0112-AIS',03,40,'','','','','',56,0)
insert into Asignatura values('S113-AIS','CursoNuevaC1','CG','02','0113-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('S114-AIS','CursoNuevaD1','CG','02','0114-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('S115-AIS','CursoNuevaL1','CG','02','0115-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('S116-AIS','CursoNuevaL2','CG','02','0116-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('S211-AIS','CursoNuevaA2','CG','02','0211-AIS',03,40,'S111-AIS','','','','',56,0)
insert into Asignatura values('S212-AIS','CursoNuevaB2','CG','02','0212-AIS',03,40,'S112-AIS','','','','',56,0)
insert into Asignatura values('S213-AIS','CursoNuevaC2','OE','02','0213-AIS',04,50,'S113-AIS','','','','',64,10)
insert into Asignatura values('S214-AIS','CursoNuevaD2','OE','02','0214-AIS',04,50,'S114-AIS','','','','',64,10)
insert into Asignatura values('S215-AIS','CursoNuevaL3','CG','02','0215-AIS',04,50,'','','','','',64,10)
insert into Asignatura values('S216-AIS','CursoNuevaL4','EE','02','0216-AIS',04,50,'','','','','',64,10)

insert into Asignatura values('S311-AIS','CursoA3','CG','02','0311-AIS',03,40,'S211-AIS','','','','',56,0)
insert into Asignatura values('S312-AIS','CursoB3','CG','02','0312-AIS',03,40,'S212-AIS','','','','',56,0)
insert into Asignatura values('S313-AIS','CursoC3','OE','02','0313-AIS',04,50,'S213-AIS','','','','',64,10)
insert into Asignatura values('S314-AIS','CursoD3','OE','02','0314-AIS',04,50,'S214-AIS','','','','',64,10)
insert into Asignatura values('S315-AIS','CursoL5','CG','02','0315-AIS',04,50,'S215-AIS','','','','',64,10)
insert into Asignatura values('S316-AIS','CursoL6','EE','02','0316-AIS',04,50,'','','','','',64,10)

select * from Asignatura
--delete from Asignatura

-----------------------Horario----------------------------------------
------------CURRICULA1----------------------------
insert into Horario values('0111-AIS','ING-101','M',7)
insert into Horario values('0111-AIS','ING-101','M',8)
insert into Horario values('0111-AIS','ING-101','J',7)
insert into Horario values('0111-AIS','ING-101','J',8)

insert into Horario values('0112-AIS','ING-102','M',9)
insert into Horario values('0112-AIS','ING-102','M',10)
insert into Horario values('0112-AIS','ING-102','J',9)
insert into Horario values('0112-AIS','ING-102','J',10)

insert into Horario values('0113-AIS','ING-103','L',7)
insert into Horario values('0113-AIS','ING-103','L',8)
insert into Horario values('0113-AIS','ING-103','W',7)
insert into Horario values('0113-AIS','ING-103','W',8)
insert into Horario values('0113-AIS','ING-103','V',7)

insert into Horario values('0114-AIS','ING-104','L',9)
insert into Horario values('0114-AIS','ING-104','L',10)
insert into Horario values('0114-AIS','ING-104','W',9)
insert into Horario values('0114-AIS','ING-104','W',10)
insert into Horario values('0114-AIS','ING-104','V',8)

insert into Horario values('0115-AIS','ING-105','L',11)
insert into Horario values('0115-AIS','ING-105','L',12)
insert into Horario values('0115-AIS','ING-105','W',11)
insert into Horario values('0115-AIS','ING-105','W',12)
insert into Horario values('0115-AIS','ING-105','V',9)

insert into Horario values('0116-AIS','ING-106','L',13)
insert into Horario values('0116-AIS','ING-106','L',14)
insert into Horario values('0116-AIS','ING-106','W',13)
insert into Horario values('0116-AIS','ING-106','W',14)
insert into Horario values('0116-AIS','ING-106','V',10)


insert into Horario values('0211-AIS','ING-201','M',7)
insert into Horario values('0211-AIS','ING-201','M',8)
insert into Horario values('0211-AIS','ING-201','J',7)
insert into Horario values('0211-AIS','ING-201','J',8)

insert into Horario values('0212-AIS','ING-202','M',9)
insert into Horario values('0212-AIS','ING-202','M',10)
insert into Horario values('0212-AIS','ING-202','J',9)
insert into Horario values('0212-AIS','ING-202','J',10)

insert into Horario values('0213-AIS','ING-203','L',7)
insert into Horario values('0213-AIS','ING-203','L',8)
insert into Horario values('0213-AIS','ING-203','W',7)
insert into Horario values('0213-AIS','ING-203','W',8)
insert into Horario values('0213-AIS','ING-203','V',7)

insert into Horario values('0214-AIS','ING-204','L',9)
insert into Horario values('0214-AIS','ING-204','L',10)
insert into Horario values('0214-AIS','ING-204','W',9)
insert into Horario values('0214-AIS','ING-204','W',10)
insert into Horario values('0214-AIS','ING-204','V',8)

insert into Horario values('0215-AIS','ING-205','L',11)
insert into Horario values('0215-AIS','ING-205','L',12)
insert into Horario values('0215-AIS','ING-205','W',11)
insert into Horario values('0215-AIS','ING-205','W',12)
insert into Horario values('0215-AIS','ING-205','V',9)

insert into Horario values('0216-AIS','ING-206','L',13)
insert into Horario values('0216-AIS','ING-206','L',14)
insert into Horario values('0216-AIS','ING-206','W',13)
insert into Horario values('0216-AIS','ING-206','W',14)
insert into Horario values('0216-AIS','ING-206','V',10)


insert into Horario values('0311-AIS','ING-301','M',7)
insert into Horario values('0311-AIS','ING-301','M',8)
insert into Horario values('0311-AIS','ING-301','J',7)
insert into Horario values('0311-AIS','ING-301','J',8)

insert into Horario values('0312-AIS','ING-302','M',9)
insert into Horario values('0312-AIS','ING-302','M',10)
insert into Horario values('0312-AIS','ING-302','J',9)
insert into Horario values('0312-AIS','ING-302','J',10)

insert into Horario values('0313-AIS','ING-303','L',7)
insert into Horario values('0313-AIS','ING-303','L',8)
insert into Horario values('0313-AIS','ING-303','W',7)
insert into Horario values('0313-AIS','ING-303','W',8)
insert into Horario values('0313-AIS','ING-303','V',7)

insert into Horario values('0314-AIS','ING-304','L',9)
insert into Horario values('0314-AIS','ING-304','L',10)
insert into Horario values('0314-AIS','ING-304','W',9)
insert into Horario values('0314-AIS','ING-304','W',10)
insert into Horario values('0314-AIS','ING-304','V',8)

insert into Horario values('0315-AIS','ING-305','L',11)
insert into Horario values('0315-AIS','ING-305','L',12)
insert into Horario values('0315-AIS','ING-305','W',11)
insert into Horario values('0315-AIS','ING-305','W',12)
insert into Horario values('0315-AIS','ING-305','V',9)

insert into Horario values('0316-AIS','ING-306','L',13)
insert into Horario values('0316-AIS','ING-306','L',14)
insert into Horario values('0316-AIS','ING-306','W',13)
insert into Horario values('0316-AIS','ING-306','W',14)
insert into Horario values('0316-AIS','ING-306','V',10)
--
insert into Horario values('0411-AIS','ING-401','M',7)
insert into Horario values('0411-AIS','ING-401','M',8)
insert into Horario values('0411-AIS','ING-401','J',7)
insert into Horario values('0411-AIS','ING-401','J',8)

insert into Horario values('0412-AIS','ING-402','M',9)
insert into Horario values('0412-AIS','ING-402','M',10)
insert into Horario values('0412-AIS','ING-402','J',9)
insert into Horario values('0412-AIS','ING-402','J',10)

insert into Horario values('0413-AIS','ING-403','L',7)
insert into Horario values('0413-AIS','ING-403','L',8)
insert into Horario values('0413-AIS','ING-403','W',7)
insert into Horario values('0413-AIS','ING-403','W',8)
insert into Horario values('0413-AIS','ING-403','V',7)

insert into Horario values('0414-AIS','ING-404','L',9)
insert into Horario values('0414-AIS','ING-404','L',10)
insert into Horario values('0414-AIS','ING-404','W',9)
insert into Horario values('0414-AIS','ING-404','W',10)
insert into Horario values('0414-AIS','ING-404','V',8)

insert into Horario values('0415-AIS','ING-405','L',11)
insert into Horario values('0415-AIS','ING-405','L',12)
insert into Horario values('0415-AIS','ING-405','W',11)
insert into Horario values('0415-AIS','ING-405','W',12)
insert into Horario values('0415-AIS','ING-405','V',9)

insert into Horario values('0416-AIS','ING-406','L',13)
insert into Horario values('0416-AIS','ING-406','L',14)
insert into Horario values('0416-AIS','ING-406','W',13)
insert into Horario values('0416-AIS','ING-406','W',14)
insert into Horario values('0416-AIS','ING-406','V',10)
--
insert into Horario values('0511-AIS','ING-501','M',7)
insert into Horario values('0511-AIS','ING-501','M',8)
insert into Horario values('0511-AIS','ING-501','J',7)
insert into Horario values('0511-AIS','ING-501','J',8)

insert into Horario values('0512-AIS','ING-502','M',9)
insert into Horario values('0512-AIS','ING-502','M',10)
insert into Horario values('0512-AIS','ING-502','J',9)
insert into Horario values('0512-AIS','ING-502','J',10)

insert into Horario values('0513-AIS','ING-503','L',7)
insert into Horario values('0513-AIS','ING-503','L',8)
insert into Horario values('0513-AIS','ING-503','W',7)
insert into Horario values('0513-AIS','ING-503','W',8)
insert into Horario values('0513-AIS','ING-503','V',7)

insert into Horario values('0514-AIS','ING-504','L',9)
insert into Horario values('0514-AIS','ING-504','L',10)
insert into Horario values('0514-AIS','ING-504','W',9)
insert into Horario values('0514-AIS','ING-504','W',10)
insert into Horario values('0514-AIS','ING-504','V',8)

insert into Horario values('0515-AIS','ING-505','L',11)
insert into Horario values('0515-AIS','ING-505','L',12)
insert into Horario values('0515-AIS','ING-505','W',11)
insert into Horario values('0515-AIS','ING-505','W',12)
insert into Horario values('0515-AIS','ING-505','V',9)

insert into Horario values('0516-AIS','ING-506','L',13)
insert into Horario values('0516-AIS','ING-506','L',14)
insert into Horario values('0516-AIS','ING-506','W',13)
insert into Horario values('0516-AIS','ING-506','W',14)
insert into Horario values('0516-AIS','ING-506','V',10)
--
insert into Horario values('0611-AIS','ING-107','M',7)
insert into Horario values('0611-AIS','ING-107','M',8)
insert into Horario values('0611-AIS','ING-107','J',7)
insert into Horario values('0611-AIS','ING-107','J',8)

insert into Horario values('0612-AIS','ING-108','M',9)
insert into Horario values('0612-AIS','ING-108','M',10)
insert into Horario values('0612-AIS','ING-108','J',9)
insert into Horario values('0612-AIS','ING-108','J',10)

insert into Horario values('0613-AIS','ING-109','L',7)
insert into Horario values('0613-AIS','ING-109','L',8)
insert into Horario values('0613-AIS','ING-109','W',7)
insert into Horario values('0613-AIS','ING-109','W',8)
insert into Horario values('0613-AIS','ING-109','V',7)

insert into Horario values('0614-AIS','ING-110','L',9)
insert into Horario values('0614-AIS','ING-110','L',10)
insert into Horario values('0614-AIS','ING-110','W',9)
insert into Horario values('0614-AIS','ING-110','W',10)
insert into Horario values('0614-AIS','ING-110','V',8)

insert into Horario values('0615-AIS','ING-111','L',11)
insert into Horario values('0615-AIS','ING-111','L',12)
insert into Horario values('0615-AIS','ING-111','W',11)
insert into Horario values('0615-AIS','ING-111','W',12)
insert into Horario values('0615-AIS','ING-111','V',9)

insert into Horario values('0616-AIS','ING-112','L',13)
insert into Horario values('0616-AIS','ING-112','L',14)
insert into Horario values('0616-AIS','ING-112','W',13)
insert into Horario values('0616-AIS','ING-112','W',14)
insert into Horario values('0616-AIS','ING-112','V',10)
--
insert into Horario values('0711-AIS','ING-207','M',7)
insert into Horario values('0711-AIS','ING-207','M',8)
insert into Horario values('0711-AIS','ING-207','J',7)
insert into Horario values('0711-AIS','ING-207','J',8)

insert into Horario values('0712-AIS','ING-208','M',9)
insert into Horario values('0712-AIS','ING-208','M',10)
insert into Horario values('0712-AIS','ING-208','J',9)
insert into Horario values('0712-AIS','ING-208','J',10)

insert into Horario values('0713-AIS','ING-209','L',7)
insert into Horario values('0713-AIS','ING-209','L',8)
insert into Horario values('0713-AIS','ING-209','W',7)
insert into Horario values('0713-AIS','ING-209','W',8)
insert into Horario values('0713-AIS','ING-209','V',7)

insert into Horario values('0714-AIS','ING-210','L',9)
insert into Horario values('0714-AIS','ING-210','L',10)
insert into Horario values('0714-AIS','ING-210','W',9)
insert into Horario values('0714-AIS','ING-210','W',10)
insert into Horario values('0714-AIS','ING-210','V',8)

insert into Horario values('0715-AIS','ING-211','L',11)
insert into Horario values('0715-AIS','ING-211','L',12)
insert into Horario values('0715-AIS','ING-211','W',11)
insert into Horario values('0715-AIS','ING-211','W',12)
insert into Horario values('0715-AIS','ING-211','V',9)

insert into Horario values('0716-AIS','ING-212','L',13)
insert into Horario values('0716-AIS','ING-212','L',14)
insert into Horario values('0716-AIS','ING-212','W',13)
insert into Horario values('0716-AIS','ING-212','W',14)
insert into Horario values('0716-AIS','ING-212','V',10)
--
insert into Horario values('0811-AIS','ING-307','M',7)
insert into Horario values('0811-AIS','ING-307','M',8)
insert into Horario values('0811-AIS','ING-307','J',7)
insert into Horario values('0811-AIS','ING-307','J',8)

insert into Horario values('0812-AIS','ING-308','M',9)
insert into Horario values('0812-AIS','ING-308','M',10)
insert into Horario values('0812-AIS','ING-308','J',9)
insert into Horario values('0812-AIS','ING-308','J',10)

insert into Horario values('0813-AIS','ING-309','L',7)
insert into Horario values('0813-AIS','ING-309','L',8)
insert into Horario values('0813-AIS','ING-309','W',7)
insert into Horario values('0813-AIS','ING-309','W',8)
insert into Horario values('0813-AIS','ING-309','V',7)

insert into Horario values('0814-AIS','ING-310','L',9)
insert into Horario values('0814-AIS','ING-310','L',10)
insert into Horario values('0814-AIS','ING-310','W',9)
insert into Horario values('0814-AIS','ING-310','W',10)
insert into Horario values('0814-AIS','ING-310','V',8)

insert into Horario values('0815-AIS','ING-311','L',11)
insert into Horario values('0815-AIS','ING-311','L',12)
insert into Horario values('0815-AIS','ING-311','W',11)
insert into Horario values('0815-AIS','ING-311','W',12)
insert into Horario values('0815-AIS','ING-311','V',9)

insert into Horario values('0816-AIS','ING-312','L',13)
insert into Horario values('0816-AIS','ING-312','L',14)
insert into Horario values('0816-AIS','ING-312','W',13)
insert into Horario values('0816-AIS','ING-312','W',14)
insert into Horario values('0816-AIS','ING-312','V',10)
--
insert into Horario values('0911-AIS','ING-407','M',7)
insert into Horario values('0911-AIS','ING-407','M',8)
insert into Horario values('0911-AIS','ING-407','J',7)
insert into Horario values('0911-AIS','ING-407','J',8)

insert into Horario values('0912-AIS','ING-408','M',9)
insert into Horario values('0912-AIS','ING-408','M',10)
insert into Horario values('0912-AIS','ING-408','J',9)
insert into Horario values('0912-AIS','ING-408','J',10)

insert into Horario values('0913-AIS','ING-409','L',7)
insert into Horario values('0913-AIS','ING-409','L',8)
insert into Horario values('0913-AIS','ING-409','W',7)
insert into Horario values('0913-AIS','ING-409','W',8)
insert into Horario values('0913-AIS','ING-409','V',7)

insert into Horario values('0914-AIS','ING-410','L',9)
insert into Horario values('0914-AIS','ING-410','L',10)
insert into Horario values('0914-AIS','ING-410','W',9)
insert into Horario values('0914-AIS','ING-410','W',10)
insert into Horario values('0914-AIS','ING-410','V',8)

insert into Horario values('0915-AIS','ING-411','L',11)
insert into Horario values('0915-AIS','ING-411','L',12)
insert into Horario values('0915-AIS','ING-411','W',11)
insert into Horario values('0915-AIS','ING-411','W',12)
insert into Horario values('0915-AIS','ING-411','V',9)

insert into Horario values('0916-AIS','ING-412','L',13)
insert into Horario values('0916-AIS','ING-412','L',14)
insert into Horario values('0916-AIS','ING-412','W',13)
insert into Horario values('0916-AIS','ING-412','W',14)
insert into Horario values('0916-AIS','ING-412','V',10)
--
insert into Horario values('1011-AIS','ING-507','M',7)
insert into Horario values('1011-AIS','ING-507','M',8)
insert into Horario values('1011-AIS','ING-507','J',7)
insert into Horario values('1011-AIS','ING-507','J',8)

insert into Horario values('1012-AIS','ING-508','M',9)
insert into Horario values('1012-AIS','ING-508','M',10)
insert into Horario values('1012-AIS','ING-508','J',9)
insert into Horario values('1012-AIS','ING-508','J',10)

insert into Horario values('1013-AIS','ING-509','L',7)
insert into Horario values('1013-AIS','ING-509','L',8)
insert into Horario values('1013-AIS','ING-509','W',7)
insert into Horario values('1013-AIS','ING-509','W',8)
insert into Horario values('1013-AIS','ING-509','V',7)

insert into Horario values('1014-AIS','ING-510','L',9)
insert into Horario values('1014-AIS','ING-510','L',10)
insert into Horario values('1014-AIS','ING-510','W',9)
insert into Horario values('1014-AIS','ING-510','W',10)
insert into Horario values('1014-AIS','ING-510','V',8)

insert into Horario values('1015-AIS','ING-511','L',11)
insert into Horario values('1015-AIS','ING-511','L',12)
insert into Horario values('1015-AIS','ING-511','W',11)
insert into Horario values('1015-AIS','ING-511','W',12)
insert into Horario values('1015-AIS','ING-511','V',9)

insert into Horario values('1016-AIS','ING-512','L',13)
insert into Horario values('1016-AIS','ING-512','L',14)
insert into Horario values('1016-AIS','ING-512','W',13)
insert into Horario values('1016-AIS','ING-512','W',14)
insert into Horario values('1016-AIS','ING-512','V',10)

------------CURRICULA2----------------------------
insert into Horario values('S111-AIS','ING-301','M',7)
insert into Horario values('S111-AIS','ING-301','M',8)
insert into Horario values('S111-AIS','ING-301','J',7)
insert into Horario values('S111-AIS','ING-301','J',8)

insert into Horario values('S112-AIS','ING-302','M',9)
insert into Horario values('S112-AIS','ING-302','M',10)
insert into Horario values('S112-AIS','ING-302','J',9)
insert into Horario values('S112-AIS','ING-302','J',10)

insert into Horario values('S113-AIS','ING-303','L',7)
insert into Horario values('S113-AIS','ING-303','L',8)
insert into Horario values('S113-AIS','ING-303','W',7)
insert into Horario values('S113-AIS','ING-303','W',8)
insert into Horario values('S113-AIS','ING-303','V',7)

insert into Horario values('S114-AIS','ING-304','L',9)
insert into Horario values('S114-AIS','ING-304','L',10)
insert into Horario values('S114-AIS','ING-304','W',9)
insert into Horario values('S114-AIS','ING-304','W',10)
insert into Horario values('S114-AIS','ING-304','V',8)

insert into Horario values('S115-AIS','ING-305','L',11)
insert into Horario values('S115-AIS','ING-305','L',12)
insert into Horario values('S115-AIS','ING-305','W',11)
insert into Horario values('S115-AIS','ING-305','W',12)
insert into Horario values('S115-AIS','ING-305','V',9)

insert into Horario values('S116-AIS','ING-306','L',13)
insert into Horario values('S116-AIS','ING-306','L',14)
insert into Horario values('S116-AIS','ING-306','W',13)
insert into Horario values('S116-AIS','ING-306','W',14)
insert into Horario values('S116-AIS','ING-306','V',10)


insert into Horario values('S211-AIS','ING-401','M',7)
insert into Horario values('S211-AIS','ING-401','M',8)
insert into Horario values('S211-AIS','ING-401','J',7)
insert into Horario values('S211-AIS','ING-401','J',8)

insert into Horario values('S212-AIS','ING-402','M',9)
insert into Horario values('S212-AIS','ING-402','M',10)
insert into Horario values('S212-AIS','ING-402','J',9)
insert into Horario values('S212-AIS','ING-402','J',10)

insert into Horario values('S213-AIS','ING-403','L',7)
insert into Horario values('S213-AIS','ING-403','L',8)
insert into Horario values('S213-AIS','ING-403','W',7)
insert into Horario values('S213-AIS','ING-403','W',8)
insert into Horario values('S213-AIS','ING-403','V',7)

insert into Horario values('S214-AIS','ING-404','L',9)
insert into Horario values('S214-AIS','ING-404','L',10)
insert into Horario values('S214-AIS','ING-404','W',9)
insert into Horario values('S214-AIS','ING-404','W',10)
insert into Horario values('S214-AIS','ING-404','V',8)

insert into Horario values('S215-AIS','ING-407','L',11)
insert into Horario values('S215-AIS','ING-407','L',12)
insert into Horario values('S215-AIS','ING-407','W',11)
insert into Horario values('S215-AIS','ING-407','W',12)
insert into Horario values('S215-AIS','ING-407','V',9)

insert into Horario values('S216-AIS','ING-408','L',13)
insert into Horario values('S216-AIS','ING-408','L',14)
insert into Horario values('S216-AIS','ING-408','W',13)
insert into Horario values('S216-AIS','ING-408','W',14)
insert into Horario values('S216-AIS','ING-408','V',10)


insert into Horario values('S311-AIS','ING-501','M',7)
insert into Horario values('S311-AIS','ING-501','M',8)
insert into Horario values('S311-AIS','ING-501','J',7)
insert into Horario values('S311-AIS','ING-501','J',8)

insert into Horario values('S312-AIS','ING-502','M',9)
insert into Horario values('S312-AIS','ING-502','M',10)
insert into Horario values('S312-AIS','ING-502','J',9)
insert into Horario values('S312-AIS','ING-502','J',10)

insert into Horario values('S313-AIS','ING-503','L',7)
insert into Horario values('S313-AIS','ING-503','L',8)
insert into Horario values('S313-AIS','ING-503','W',7)
insert into Horario values('S313-AIS','ING-503','W',8)
insert into Horario values('S313-AIS','ING-503','V',7)

insert into Horario values('S314-AIS','ING-504','L',9)
insert into Horario values('S314-AIS','ING-504','L',10)
insert into Horario values('S314-AIS','ING-504','W',9)
insert into Horario values('S314-AIS','ING-504','W',10)
insert into Horario values('S314-AIS','ING-504','V',8)

insert into Horario values('S315-AIS','ING-509','L',11)
insert into Horario values('S315-AIS','ING-509','L',12)
insert into Horario values('S315-AIS','ING-509','W',11)
insert into Horario values('S315-AIS','ING-509','W',12)
insert into Horario values('S315-AIS','ING-509','V',9)

insert into Horario values('S316-AIS','ING-510','L',13)
insert into Horario values('S316-AIS','ING-510','L',14)
insert into Horario values('S316-AIS','ING-510','W',13)
insert into Horario values('S316-AIS','ING-510','W',14)
insert into Horario values('S316-AIS','ING-510','V',10)

select * from Horario
--delete from Horario

-----------------------FichaSeguimiento----------------------------------------
--egresante : 034577-A
insert into FichaSeguimiento values('034577-A','0111-AIS',13,'2002-3','DO201-IS')
insert into FichaSeguimiento values('034577-A','0112-AIS',11,'2002-3','DO202-IS')
insert into FichaSeguimiento values('034577-A','0113-AIS',11,'2002-3','DO203-IS')
insert into FichaSeguimiento values('034577-A','0114-AIS',13,'2002-3','DO204-IS')
insert into FichaSeguimiento values('034577-A','0115-AIS',12,'2002-3','DO205-IS')
insert into FichaSeguimiento values('034577-A','0116-AIS',13,'2002-3','DO206-IS')

insert into FichaSeguimiento values('034577-A','0211-AIS',12,'2003-1','DO207-IS')
insert into FichaSeguimiento values('034577-A','0212-AIS',16,'2003-1','DO208-IS')
insert into FichaSeguimiento values('034577-A','0213-AIS',13,'2003-1','DO209-IS')
insert into FichaSeguimiento values('034577-A','0214-AIS',16,'2003-1','DO210-IS')
insert into FichaSeguimiento values('034577-A','0215-AIS',12,'2003-1','DO211-IS')
insert into FichaSeguimiento values('034577-A','0216-AIS',14,'2003-1','DO212-IS')

insert into FichaSeguimiento values('034577-A','0311-AIS',12,'2003-2','DO201-IS')
insert into FichaSeguimiento values('034577-A','0312-AIS',16,'2003-2','DO202-IS')
insert into FichaSeguimiento values('034577-A','0313-AIS',14,'2003-2','DO203-IS')
insert into FichaSeguimiento values('034577-A','0314-AIS',16,'2003-2','DO204-IS')
insert into FichaSeguimiento values('034577-A','0315-AIS',11,'2003-2','DO205-IS')
insert into FichaSeguimiento values('034577-A','0316-AIS',11,'2003-2','DO206-IS')
--
insert into FichaSeguimiento values('034577-A','0411-AIS',13,'2004-1','DO207-IS')
insert into FichaSeguimiento values('034577-A','0412-AIS',14,'2004-1','DO208-IS')
insert into FichaSeguimiento values('034577-A','0413-AIS',12,'2004-1','DO209-IS')
insert into FichaSeguimiento values('034577-A','0414-AIS',12,'2004-1','DO210-IS')
insert into FichaSeguimiento values('034577-A','0415-AIS',12,'2004-1','DO211-IS')
insert into FichaSeguimiento values('034577-A','0416-AIS',14,'2004-1','DO212-IS')

insert into FichaSeguimiento values('034577-A','0511-AIS',13,'2004-2','DO201-IS')
insert into FichaSeguimiento values('034577-A','0512-AIS',12,'2004-2','DO202-IS')
insert into FichaSeguimiento values('034577-A','0513-AIS',12,'2004-2','DO203-IS')
insert into FichaSeguimiento values('034577-A','0514-AIS',12,'2004-2','DO204-IS')
insert into FichaSeguimiento values('034577-A','0515-AIS',13,'2004-2','DO205-IS')
insert into FichaSeguimiento values('034577-A','0516-AIS',15,'2004-2','DO206-IS')

insert into FichaSeguimiento values('034577-A','0611-AIS',12,'2004-3','DO207-IS')
insert into FichaSeguimiento values('034577-A','0612-AIS',15,'2004-3','DO208-IS')
insert into FichaSeguimiento values('034577-A','0613-AIS',13,'2004-3','DO209-IS')
insert into FichaSeguimiento values('034577-A','0614-AIS',15,'2004-3','DO210-IS')
insert into FichaSeguimiento values('034577-A','0615-AIS',12,'2004-3','DO211-IS')
insert into FichaSeguimiento values('034577-A','0616-AIS',13,'2004-3','DO212-IS')

insert into FichaSeguimiento values('034577-A','0711-AIS',14,'2005-1','DO201-IS')
insert into FichaSeguimiento values('034577-A','0712-AIS',15,'2005-1','DO202-IS')
insert into FichaSeguimiento values('034577-A','0713-AIS',11,'2005-1','DO203-IS')
insert into FichaSeguimiento values('034577-A','0714-AIS',11,'2005-1','DO204-IS')
insert into FichaSeguimiento values('034577-A','0715-AIS',11,'2005-1','DO205-IS')
insert into FichaSeguimiento values('034577-A','0716-AIS',11,'2005-1','DO206-IS')

insert into FichaSeguimiento values('034577-A','0811-AIS',15,'2005-2','DO207-IS')
insert into FichaSeguimiento values('034577-A','0812-AIS',14,'2005-2','DO208-IS')
insert into FichaSeguimiento values('034577-A','0813-AIS',11,'2005-2','DO209-IS')
insert into FichaSeguimiento values('034577-A','0814-AIS',14,'2005-2','DO210-IS')
insert into FichaSeguimiento values('034577-A','0815-AIS',13,'2005-2','DO211-IS')
insert into FichaSeguimiento values('034577-A','0816-AIS',13,'2005-2','DO212-IS')

insert into FichaSeguimiento values('034577-A','0911-AIS',12,'2006-1','DO201-IS')
insert into FichaSeguimiento values('034577-A','0912-AIS',12,'2006-1','DO202-IS')
insert into FichaSeguimiento values('034577-A','0913-AIS',12,'2006-1','DO203-IS')
insert into FichaSeguimiento values('034577-A','0914-AIS',13,'2006-1','DO204-IS')

--regular   : 061711-E
insert into FichaSeguimiento values('061711-E','0111-AIS',13,'2005-1','DO201-IS')
insert into FichaSeguimiento values('061711-E','0112-AIS',14,'2005-1','DO202-IS')
insert into FichaSeguimiento values('061711-E','0113-AIS',15,'2005-1','DO203-IS')
insert into FichaSeguimiento values('061711-E','0115-AIS',16,'2005-1','DO205-IS')

insert into FichaSeguimiento values('061711-E','0211-AIS',13,'2005-2','DO207-IS')
insert into FichaSeguimiento values('061711-E','0212-AIS',14,'2005-2','DO208-IS')
insert into FichaSeguimiento values('061711-E','0216-AIS',15,'2005-2','DO212-IS')

insert into FichaSeguimiento values('061711-E','0311-AIS',12,'2006-1','DO201-IS')
insert into FichaSeguimiento values('061711-E','0312-AIS',16,'2006-1','DO202-IS')
insert into FichaSeguimiento values('061711-E','0313-AIS',14,'2006-1','DO203-IS')
insert into FichaSeguimiento values('061711-E','0314-AIS',16,'2006-1','DO204-IS')
insert into FichaSeguimiento values('061711-E','0315-AIS',11,'2006-1','DO205-IS')
insert into FichaSeguimiento values('061711-E','0316-AIS',11,'2006-1','DO206-IS')

--ingresante: 061234-G

--ponderado : 049244-E
insert into FichaSeguimiento values('049244-E','0111-AIS',13,'2004-2','DO201-IS')
insert into FichaSeguimiento values('049244-E','0112-AIS',14,'2004-2','DO202-IS')
insert into FichaSeguimiento values('049244-E','0113-AIS',15,'2004-2','DO203-IS')
insert into FichaSeguimiento values('049244-E','0115-AIS',16,'2004-2','DO205-IS')

insert into FichaSeguimiento values('049244-E','0211-AIS',13,'2004-3','DO207-IS')
insert into FichaSeguimiento values('049244-E','0212-AIS',14,'2004-3','DO208-IS')
insert into FichaSeguimiento values('049244-E','0216-AIS',15,'2004-3','DO212-IS')

insert into FichaSeguimiento values('049244-E','0311-AIS',12,'2005-1','DO201-IS')
insert into FichaSeguimiento values('049244-E','0312-AIS',16,'2005-1','DO202-IS')
insert into FichaSeguimiento values('049244-E','0313-AIS',14,'2005-1','DO203-IS')
insert into FichaSeguimiento values('049244-E','0314-AIS',16,'2005-1','DO204-IS')
insert into FichaSeguimiento values('049244-E','0315-AIS',11,'2005-1','DO205-IS')
insert into FichaSeguimiento values('049244-E','0316-AIS',11,'2005-1','DO206-IS')

insert into FichaSeguimiento values('049244-E','0411-AIS',13,'2005-2','DO207-IS')
insert into FichaSeguimiento values('049244-E','0412-AIS',14,'2005-2','DO208-IS')
insert into FichaSeguimiento values('049244-E','0413-AIS',12,'2005-2','DO209-IS')
insert into FichaSeguimiento values('049244-E','0414-AIS',12,'2005-2','DO210-IS')
insert into FichaSeguimiento values('049244-E','0415-AIS',12,'2005-2','DO211-IS')
insert into FichaSeguimiento values('049244-E','0416-AIS',14,'2005-2','DO212-IS')

insert into FichaSeguimiento values('049244-E','0511-AIS',14,'2006-1','DO201-IS')
insert into FichaSeguimiento values('049244-E','0512-AIS',15,'2006-1','DO202-IS')
insert into FichaSeguimiento values('049244-E','0513-AIS',14,'2006-1','DO203-IS')
insert into FichaSeguimiento values('049244-E','0514-AIS',16,'2006-1','DO204-IS')
insert into FichaSeguimiento values('049244-E','0515-AIS',17,'2006-1','DO205-IS')
insert into FichaSeguimiento values('049244-E','0516-AIS',15,'2006-1','DO206-IS')


select * from FichaSeguimiento
--delete from FichaSeguimiento

-----------------------MatriculaGeneral----------------------------------------
--insert into MatriculaGeneral values('52312124','2006-2','Regular','061711-E',25,'2006/07/15','')
select * from MatriculaGeneral
--delete from MatriculaGeneral

-----------------------MatriculaDetallada----------------------------------------
--insert into MatriculaDetallada values('52312124','1052-AIS')--ope2
--insert into MatriculaDetallada values('52312124','0906-AIS')--fica3
--insert into MatriculaDetallada values('52312124','IS05')--intro ing
--insert into MatriculaDetallada values('52312124','AN01')--realidad
--insert into MatriculaDetallada values('52312124','2715-AIS')--softw
--insert into MatriculaDetallada values('52312124','2716-AIS')--lga
--insert into MatriculaDetallada values('52312124','1032-AIS')--ing costos

select * from MatriculaDetallada
--delete from MatriculaDetallada

-----------------------HomologacionGeneral----------------------------------------
insert into HomologacionGeneral values('RE-345464-HO','','2006/02/25','2006-1','061711-E',31,24,'S')

select * from HomologacionGeneral
--delete from HomologacionGeneral

-----------------------HomologacionDetallada----------------------------------------
--insert into HomologacionDetallada values('RE-345464-HO','Matematica Basica A','CG',03,13,'0111-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Matematica Basica B','CG',03,13,'0112-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Realidad Nacional','CG',04,15,'0113-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Introduccion a la Ing','CG',04,16,'0115-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Calculo I','CG',03,13,'0211-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Geometria Descriptiva','CG',03,14,'0212-AIS')
--insert into HomologacionDetallada values('RE-345464-HO','Filosofia','EE',04,15,'0216-AIS')

select * from HomologacionDetallada
--delete from HomologacionDetallada

-----------------------Traslado----------------------------------------
insert into Traslado values('RE-564546-TR','','RE-345464-HO','2006/02/10','061711-E','Universidad Nac. San Antonio Abad del Cusco','Informatica','IS')

select * from Traslado
--delete from Traslado



