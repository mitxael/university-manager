---------------------Creacion de Base de datos----------------------------
use Master
--Cabecera para borrar (siempre se utiliza)
if exists (select Name from sysdatabases where name in ('DBMatriculas'))
begin --borrar la base de Datos
   drop database DBMatriculas
end

Create DATABASE DBMatriculas  --creates the DataBase
on 
(NAME=DBMatriculas, ---Primary data File
FILENAME= 'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBMatriculas.mdf',
--FILENAME= 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\DBMatriculas.mdf',
--FILENAME= 'C:\Archivos de programa\Microsoft SQL Server\MSSQL.1\MSSQL\Data\DBMatriculas.mdf',
--FILENAME= 'C:\Archivos de programa\Microsoft SQL Server\MSSQL\Data\DBMatriculas.mdf',
--FILENAME= 'C:\MSSQL7\Data\DBMatriculas.mdf',
SIZE=5MB,
FILEGROWTH=1MB
)
LOG ON
(NAME=DBMatriculas_Log, ---Log file
FILENAME= 'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBMatriculas.ldf',
--FILENAME= 'C:\Archivos de programa\Microsoft SQL Server\MSSQL.1\MSSQL\Data\DBMatriculas.ldf',
--FILENAME= 'C:\Archivos de programa\Microsoft SQL Server\MSSQL\Data\DBMatriculas.ldf',
--FILENAME= 'C:\MSSQL7\Data\DBMatriculas.ldf',
SIZE=4MB,
FILEGROWTH=1MB
)
go

use DBMatriculas
go