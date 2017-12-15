use DBMatriculas
go
------------------------DECLARACION DE TIPOS------------------------------
exec sp_addtype TNombre, 	"varchar(40)","NOT NULL"
exec sp_addtype TObservacion, 	"varchar(50)","NOT NULL"
go
----------------------------CREAR TABLAS----------------------------------

-----------------------Pais------------
create  table Pais(
        id_pais		int Identity(1,1) NOT NULL,   
	nombre		TNombre,

        PRIMARY KEY (nombre)
)    
go
--drop table Pais
select * from Pais

-----------------------Region------------
create  table Region(
        id_region	int Identity(1,1) NOT NULL,   
	nombre		TNombre,
	pais_fk		TNombre,

        PRIMARY KEY (nombre),
        FOREIGN KEY(pais_fk) References Pais
)    
go
--drop table Region
select * from Region

-----------------------Provincia------------
create  table Provincia(
        id_provincia	int Identity(1,1) NOT NULL,   
	nombre		TNombre,
	region_fk	TNombre,

        PRIMARY KEY (nombre),
        FOREIGN KEY(region_fk) References Region
)    
go
--drop table Provincia
select * from Provincia

-----------------------Universidad------------
create  table Universidad(
        id_universidad  int Identity(1,1) NOT NULL,   
	nombre		varchar(60) NOT NULL,
	provincia_fk	TNombre,

        PRIMARY KEY (nombre),
        FOREIGN KEY(provincia_fk) References Provincia
)    
go
--drop table Universidad
select * from Universidad

-----------------------Facultad------------
create  table Facultad(
        id_facultad	int Identity(1,1) NOT NULL,   
	codigo       	varchar(8) NOT NULL,
	nombre		TNombre,

        PRIMARY KEY (codigo)
)    
go
--drop table Facultad
select * from Facultad

-----------------------Carrera------------
create  table Carrera(
        id_Carrera	int Identity(1,1) NOT NULL,   
	codigo       	varchar(2) NOT NULL,
	nombre		TNombre,
	facultad_fk	varchar(8) NOT NULL,

        PRIMARY KEY (codigo),
        FOREIGN KEY(facultad_fk) References Facultad
)    
go
--drop table Carrera
select * from Carrera

-----------------------Curricula------------------------
create  table Curricula(
        id_curricula    int Identity(1,1) NOT NULL,   
	codigo	        varchar(2) NOT NULL, 
        nombre	        TNombre, 
	creditos	int check(creditos>=0) NOT NULL, 
        carrera_fk	varchar(2) NOT NULL, 
	inicio		dateTime,
	fin		dateTime,

        PRIMARY KEY (codigo),
        FOREIGN KEY(carrera_fk) References Carrera
)    
go
--drop table Curricula
select * from Curricula

-----------------------Semestre------------
create  table Semestre(
        id_Semestre	int Identity(1,1) NOT NULL,   
	codigo		varchar(7) NOT NULL,
	inicio		dateTime NOT NULL,
	fin		dateTime NOT NULL,

        PRIMARY KEY (codigo)
)    
go
--drop table Semestre
select * from Semestre

-----------------------Alumno---------------------------
create  table Alumno(
        id_alumno       int Identity(1,1) NOT NULL,   
	codigo	        varchar(8) NOT NULL, 
	apellidos	TNombre, 
        nombres	        TNombre, 
        carrera_fk	varchar(2) NOT NULL, 
	curricula_fk	varchar(2) NOT NULL, 
        habilitado	char(2) check (habilitado in ('SI','NO'))NOT NULL,
	observaciones	TObservacion,	
	direccion	varchar(40) NOT NULL, 
        doc_identidad   varchar(8),
        email	        varchar(40),   
	telefono	varchar(15),
	nacimiento	dateTime NOT NULL, 
	sexo	        varchar(1) check (sexo in ('M','F'))NOT NULL,
        pais_fk	        TNombre, 
        region_fk    	TNombre,
        provincia_fk    TNombre,
 
        PRIMARY KEY (codigo),
        FOREIGN KEY(carrera_fk) References Carrera,
        FOREIGN KEY(curricula_fk) References Curricula,
        FOREIGN KEY(pais_fk) References Pais,
        FOREIGN KEY(region_fk) References Region,
        FOREIGN KEY(provincia_fk) References Provincia
)    
go
--drop table Alumno
select * from Alumno

-----------------------Recibo---------------------------
create  table Recibo(
        id_recibo       int Identity(1,1) NOT NULL,   
	codigo	        varchar(8) NOT NULL, 
        alumno_fk   varchar(8),
 
        PRIMARY KEY (codigo),
        UNIQUE (alumno_fk),
        FOREIGN KEY(alumno_fk) References Alumno,
)    
go
--drop table Recibo
select * from Recibo

-----------------------Docente---------------------------
create  table Docente(
        id_docente      int Identity(1,1) NOT NULL,   
	codigo	        varchar(8) NOT NULL, 
	apellidos	TNombre, 
        nombres	        TNombre, 
	condicion	varchar(10) check (condicion in ('Nombrado','Contratado'))NOT NULL,
	Cargo		varchar(30) check (cargo in ('Docente','Admin. laboratorios','Coordinador','Jefe de Dpto.'))NOT NULL,	
        carrera_fk	varchar(2) NOT NULL, 
	nick		varchar(20),
	clave		varchar(20),
	direccion	varchar(40) NOT NULL, 
        doc_identidad   varchar(8),
        email	        varchar(40),   
	telefono	varchar(15),
	nacimiento	dateTime NOT NULL, 
	sexo	        varchar(1) check (sexo in ('M','F'))NOT NULL,
        pais_fk	        TNombre,
        region_fk   	TNombre,
        provincia_fk    TNombre,
        estado		char(7) check (estado in ('activo','retirado'))NOT NULL, 

        PRIMARY KEY (codigo),
        FOREIGN KEY(carrera_fk) References Carrera,
        FOREIGN KEY(pais_fk) References Pais,
        FOREIGN KEY(region_fk) References Region,
        FOREIGN KEY(provincia_fk) References Provincia
)    
go
--drop table Docente
select * from Docente

-----------------------Asignatura------------------------
create  table Asignatura(
        id_asignatura    int Identity(1,1) NOT NULL,   
	codigo	         varchar(8) NOT NULL, 
        nombre	         TNombre, 
	categoria	 char(2) check (categoria in ('EE','OE','CG','NC'))NOT NULL, 
	curricula_fk	 varchar(2) NOT NULL, 
	equivalente	 varchar(8),
	creditos	 int check(creditos>=0) NOT NULL, 
	vacantes	 int,
	pre_req1	 varchar(8),
	pre_req2	 varchar(8),
	pre_req3	 varchar(8),
	doc_teoria_fk    varchar(8),
	doc_practica_fk  varchar(8),
	horas_teoricas	 int,
	horas_practicas	 int,

        PRIMARY KEY (codigo),
        FOREIGN KEY(curricula_fk) References Curricula,
        --FOREIGN KEY(doc_teoria_fk) References Docente,
        --FOREIGN KEY(doc_practica_fk) References Docente
)    
go
--drop table Asignatura
select * from Asignatura

-----------------------Horario------------------------
create  table Horario(
        id_horario	int Identity(1,1) NOT NULL,   
        asignatura_fk	varchar(8) NOT NULL, 
	aula		varchar(8),
	dia		char(1) check (dia in ('L','M','W','J','V','S','D'))NOT NULL, 
	hora		int NOT NULL, 

        UNIQUE (asignatura_fk,aula,dia,hora),
        FOREIGN KEY(asignatura_fk) References Asignatura
)    
go
--drop table Horario
select * from Horario

-----------------------FichaSeguimiento------------
create  table FichaSeguimiento(
        id_ficha	int Identity(1,1) NOT NULL,   
	alumno_fk       varchar(8) NOT NULL,
	asignatura_fk   varchar(8) NOT NULL,
	nota	        int NOT NULL, check(nota>=0), check(nota<=20),
	semestre_fk	varchar(7),
	docente_fk	varchar(8),	

        UNIQUE (alumno_fk,asignatura_fk),
        FOREIGN KEY(alumno_fk) References Alumno,
        FOREIGN KEY(asignatura_fk ) References Asignatura,
        FOREIGN KEY(semestre_fk) References Semestre,
        FOREIGN KEY(docente_fk) References Docente
)    
go
--drop table FichaSeguimiento
select * from FichaSeguimiento

-----------------------MatriculaGeneral-----------------
create  table MatriculaGeneral(
        id_mat_general	int Identity(1,1) NOT NULL,   
	codigo		varchar(8) NOT NULL,
	semestre_fk	varchar(7) NOT NULL,
	tipo		varchar(10) check(tipo in ('Ingresante','Regular','Ponderado','Egresante'))NOT NULL,
	alumno_fk	varchar(8) NOT NULL,
	creditos	int check(creditos>=0) NOT NULL,
	fecha		dateTime NOT NULL,
	observacion	TObservacion,

        PRIMARY KEY (codigo),
        FOREIGN KEY(semestre_fk) References Semestre,
        FOREIGN KEY(alumno_fk) References Alumno
)    
go
--drop table MatriculaGeneral
select * from MatriculaGeneral

-----------------------MatriculaDetallada-----------------
create  table MatriculaDetallada(
        id_mat_detallada int Identity(1,1) NOT NULL,   
	mat_general_fk	 varchar(8) NOT NULL,
	asignatura_fk	 varchar(8) NOT NULL,

        UNIQUE (mat_general_fk,asignatura_fk),
        FOREIGN KEY(mat_general_fk) References matriculaGeneral,
        FOREIGN KEY(asignatura_fk) References Asignatura
)    
go
--drop table MatriculaDetallada
select * from MatriculaDetallada

-----------------------HomologacionGeneral--------------
create  table HomologacionGeneral(
        id_homo_general	 int Identity(1,1) NOT NULL,   
	resolucion	 varchar(15) NOT NULL,
	proveido	 varchar(15),
	fecha		 dateTime,
	semestre_fk	 varchar(7) NOT NULL,
	alumno_fk	 varchar(8) NOT NULL,
	cred_solicitados int check(cred_solicitados>=0),
	cred_aceptados	 int check(cred_aceptados>=0),
	es_traslado	 char(1) check (es_traslado in ('S','N'))NOT NULL, 

        PRIMARY KEY (resolucion),
        FOREIGN KEY(semestre_fk) References Semestre,
	FOREIGN KEY(alumno_fk) References Alumno	
)    
go
--drop table HomologacionGeneral
select * from HomologacionGeneral

-----------------------HomologacionDetallada------------
create  table HomologacionDetallada(
        id_homo_detallada    int Identity(1,1) NOT NULL,  
	homo_general_fk	     varchar(15), 
	asig_soli_nombre     TNombre,
	asig_soli_categoria  varchar(2) NOT NULL,
	asig_soli_creditos   int check(asig_soli_creditos>=0) NOT NULL,
	asig_soli_nota	     int NOT NULL, check(asig_soli_nota>=0), check(asig_soli_nota<=20),
	asig_conv_codigo_fk  varchar(8) NOT NULL,

        UNIQUE (homo_general_fk,asig_conv_codigo_fk),
	FOREIGN KEY(homo_general_fk) References homologacionGeneral,
	FOREIGN KEY(asig_conv_codigo_fk) References Asignatura
)    
go
--drop table HomologacionDetallada
select * from HomologacionDetallada

-----------------------Traslado-----------------
create  table Traslado(
        id_traslado	 int Identity(1,1) NOT NULL,   
	resolucion	 varchar(15) NOT NULL,
	proveido	 varchar(15),
	homo_general_fk  varchar(15),
	fecha		 dateTime,
	alumno_fk	 varchar(8) NOT NULL,
	universidad_fk	 varchar(60),
	carrera_ori	 varchar(20) NOT NULL,
	carrera_dest_fk	 varchar(2) NOT NULL,

        PRIMARY KEY (resolucion),
        FOREIGN KEY(homo_general_fk) References homologacionGeneral,
	FOREIGN KEY(alumno_fk) References Alumno,
	FOREIGN KEY(universidad_fk) References Universidad,
	FOREIGN KEY(carrera_dest_fk) References Carrera
)    
go
--drop table Traslado
select * from Traslado




