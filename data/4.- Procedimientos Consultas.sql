use DBMatriculas
go
------------------------Procedimientos Basicos------------------------------

-------------------------------DPC------------------------------
if exists (select * from sysobjects where id = object_id('dbo.dpc'))
  drop function dbo.dpc
GO
CREATE FUNCTION dpc() -- dpc(@...)
RETURNS TABLE
AS
--declare @...
   RETURN(
	select a.* from 
	(
		SELECT codigo,nombre,creditos,categoria FROM asignatura
  		where 
        		curricula_fk='01'
    		and
        		asignatura.pre_req1 in (select asignatura_fk from fichaSeguimiento)
		union
		SELECT codigo,nombre,creditos,categoria FROM asignatura 
		where 
			asignatura.pre_req1='' 
		and 
			curricula_fk='01'
	) a
	where
  		a.codigo not in (select distinct asignatura_fk from fichaSeguimiento)
        )
GO
--select * from dpc()

-------------------------------Cursos DisponiblesPorHorario------------------------------
if exists (select * from sysobjects where id = object_id('dbo.DisponiblesPorHorario') and sysstat & 0xf = 4) 
  drop procedure dbo.DisponiblesPorHorario
GO

create procedure DisponiblesPorHorario
@codigo		varchar(8)
as
begin
	select b.asignatura_fk as codigo,a.nombre,a.creditos,a.categoria,b.dia,b.hora from 
	(
		select a.* from 
		(
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q cumplen pre-req
  		where 
        		asignatura.pre_req1 in (select asignatura_fk from fichaSeguimiento
						where
							fichaSeguimiento.alumno_fk=@codigo)
		union
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q no tienen pre-req
		where 
			asignatura.pre_req1='' 
		and 
			asignatura.curricula_fk in (select curricula_fk from alumno
						    where
						    	alumno.codigo=@codigo)
		) a
		where
  			a.codigo not in (select distinct asignatura_fk from fichaSeguimiento where alumno_fk=@codigo) ) a
		,
		(select * from horario) b
	where a.codigo=b.asignatura_fk 
end
GO
--exec DisponiblesPorHorario '061711-E'

-------------------------------Cursos DisponiblesPorCurso------------------------------
if exists (select * from sysobjects where id = object_id('dbo.DisponiblesPorCurso') and sysstat & 0xf = 4) 
  drop procedure dbo.DisponiblesPorCurso
GO
create procedure DisponiblesPorCurso
@codigo		varchar(8)
as
begin
select a.* from 
	(
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q cumplen pre-req
  		where 
        		asignatura.pre_req1 in (select asignatura_fk from fichaSeguimiento
						where
							fichaSeguimiento.alumno_fk=@codigo)
		union
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q no tienen pre-req
		where 
			asignatura.pre_req1='' 
		and 
			asignatura.curricula_fk in (select curricula_fk from alumno
						    where
						    	alumno.codigo=@codigo)
	) a
	where
  		a.codigo not in (select distinct asignatura_fk from fichaSeguimiento where alumno_fk=@codigo)
end
GO
--exec DisponiblesPorCurso '061711-E'

-------------------------------Matricular------------------------------
if exists (select * from sysobjects where id = object_id('dbo.Matricular') and sysstat & 0xf = 4) 
  drop procedure dbo.Matricular
GO

create procedure Matricular

@codigo		varchar(8),
@semestre_fk	varchar(7),
@tipo_fk	varchar(10),
@alumno_fk	varchar(8),
@creditos	int,
@fecha		dateTime,
@observacion	TObservacion,

@curso1		varchar(8), @curso2		varchar(8), @curso3		varchar(8),
@curso4		varchar(8), @curso5		varchar(8), @curso6		varchar(8),
@curso7		varchar(8), @curso8		varchar(8), @curso9		varchar(8),
@curso10	varchar(8), @curso11		varchar(8), @curso12		varchar(8)
as
begin		
  if exists(select codigo from MatriculaGeneral where (codigo = @codigo) or (@alumno_fk = alumno_fk))--like or =
	select('error ya existe la Matricula')
  else
  begin
    insert into MatriculaGeneral values(@codigo,@semestre_fk,@tipo_fk,@alumno_fk,@creditos,@fecha,@observacion)
    if @curso1!=''
      insert into MatriculaDetallada values(@codigo,@curso1)
    if @curso2!=''
      insert into MatriculaDetallada values(@codigo,@curso2)
    if @curso3!=''
      insert into MatriculaDetallada values(@codigo,@curso3)
    if @curso4!=''
      insert into MatriculaDetallada values(@codigo,@curso4)
    if @curso5!=''
      insert into MatriculaDetallada values(@codigo,@curso5)
    if @curso6!=''
      insert into MatriculaDetallada values(@codigo,@curso6)
    if @curso7!=''
      insert into MatriculaDetallada values(@codigo,@curso7)
    if @curso8!=''
      insert into MatriculaDetallada values(@codigo,@curso8)
    if @curso9!=''
      insert into MatriculaDetallada values(@codigo,@curso9)
    if @curso10!=''
      insert into MatriculaDetallada values(@codigo,@curso10)
    if @curso11!=''
      insert into MatriculaDetallada values(@codigo,@curso11)
    if @curso12!=''
      insert into MatriculaDetallada values(@codigo,@curso12)
  end
end
GO
--exec Matricular '666','2006-2','Regular','666',25,'15/07/2006','','curso1','curso2','curso3','curso4','curso5','curso6','','','','','',''
--select * from MatriculaGeneral
--select * from MatriculaDetallada

-------------------------------creditosAlumno------------------------------
if exists (select * from sysobjects where id = object_id('dbo.creditosAlumno') and sysstat & 0xf = 4) 
  drop procedure dbo.creditosAlumno
GO
create procedure creditosAlumno
@codigo     varchar(8)
as
begin
	select sum(creditos) as creditos from asignatura,fichaSeguimiento 
	where 
		asignatura.codigo=fichaSeguimiento.asignatura_fk 
	and 
		fichaSeguimiento.alumno_fk = @codigo
end
GO
--exec creditosAlumno '061711-E' 

-------------------------------creditosTipo------------------------------
if exists (select * from sysobjects where id = object_id('dbo.creditosTipo') and sysstat & 0xf = 4) 
  drop procedure dbo.creditosTipo
GO
create procedure creditosTipo
@codigo     varchar(8),
@categoria  varchar(2)
as
begin
	select sum(creditos) as creditos from asignatura,fichaSeguimiento 
	where 
		asignatura.codigo=fichaSeguimiento.asignatura_fk 
	and 
		fichaSeguimiento.alumno_fk = @codigo
	and
		asignatura.categoria=@categoria
end
GO
--exec creditosTipo '034577-A','eE'

-------------------------------creditosRecientes------------------------------
if exists (select * from sysobjects where id = object_id('dbo.creditosRecientes') and sysstat & 0xf = 4) 
  drop procedure dbo.creditosRecientes
GO
create procedure creditosRecientes
@codigo     varchar(8)
as
begin
--declare @hola varchar(8)
	select sum(creditos) as creditos from asignatura,fichaSeguimiento 
	where 
		asignatura.codigo=fichaSeguimiento.asignatura_fk 
	and 
		fichaSeguimiento.alumno_fk = @codigo
	and
		fichaSeguimiento.semestre_fk = (select max(codigo) from semestre
						where 
							codigo<(select max(codigo) from semestre))
end
GO
--exec creditosRecientes '061711-E'

-------------------------------creditosDisponibles------------------------------
if exists (select * from sysobjects where id = object_id('dbo.creditosDisponibles') and sysstat & 0xf = 4) 
  drop procedure dbo.creditosDisponibles
GO
create procedure creditosDisponibles
@codigo     varchar(8)
as
begin
--declare @hola varchar(8)
select sum(a.creditos) as creditos from 
	(
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q cumplen pre-req
  		where 
        		asignatura.pre_req1 in (select asignatura_fk from fichaSeguimiento
						where
							fichaSeguimiento.alumno_fk=@codigo)
		union
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q no tienen pre-req
		where 
			asignatura.pre_req1='' 
		and 
			asignatura.curricula_fk in (select curricula_fk from alumno
						    where
						    	alumno.codigo=@codigo)
	) a
	where
  		a.codigo not in (select distinct asignatura_fk from fichaSeguimiento where alumno_fk=@codigo)
end
GO
--exec creditosDisponibles '061711-E'

-------------------------------creditosRestantes------------------------------
if exists (select * from sysobjects where id = object_id('dbo.creditosRestantes') and sysstat & 0xf = 4) 
  drop procedure dbo.creditosRestantes
GO
create procedure creditosRestantes
@codigo     varchar(8)
as
begin
--declare @hola varchar(8)
select sum(a.creditos) as creditos from 
	(
		SELECT codigo,nombre,creditos,categoria,curricula_fk FROM asignatura --todos los q no tienen pre-req
		where
			asignatura.curricula_fk in (select curricula_fk from alumno
						    where
						    	alumno.codigo=@codigo)
	) a
	where
  		a.codigo not in (select distinct asignatura_fk from fichaSeguimiento where alumno_fk=@codigo)
end
GO
--exec creditosRestantes '061711-E'

-------------------------------promedioReciente------------------------------
if exists (select * from sysobjects where id = object_id('dbo.promedioReciente') and sysstat & 0xf = 4) 
  drop procedure dbo.promedioReciente
GO
create procedure promedioReciente
@codigo     varchar(8)
as
begin
--declare @hola varchar(8)
	select sum(nota)/(
			select count(nota) as numero from asignatura,fichaSeguimiento 
			where 
				asignatura.codigo=fichaSeguimiento.asignatura_fk 
			and 
				fichaSeguimiento.alumno_fk = @codigo
			and
				fichaSeguimiento.semestre_fk = (select max(codigo) from semestre
								where 
									codigo<(select max(codigo) from semestre))
			) as promedio from asignatura,fichaSeguimiento 
	where 
		asignatura.codigo=fichaSeguimiento.asignatura_fk 
	and 
		fichaSeguimiento.alumno_fk = @codigo
	and
		fichaSeguimiento.semestre_fk = (select max(codigo) from semestre
						where 
							codigo<(select max(codigo) from semestre))
end
GO
--exec promedioReciente '061711-E'

-------------------------------crucesDeCurso------------------------------
if exists (select * from sysobjects where id = object_id('dbo.crucesDeCurso') and sysstat & 0xf = 4) 
  drop procedure dbo.crucesDeCurso
GO
create procedure crucesDeCurso
@codigo     varchar(8),
@codigo1     varchar(8),
@codigo2     varchar(8),
@codigo3     varchar(8),
@codigo4     varchar(8),
@codigo5     varchar(8),
@codigo6     varchar(8),
@codigo7     varchar(8),
@codigo8     varchar(8),
@codigo9     varchar(8),
@codigo10     varchar(8),
@codigo11     varchar(8),
@codigo12     varchar(8),
@codigo13     varchar(8)
as
begin
	select distinct count (a.asignatura_fk) as numero from (select * from horario) a,(select * from horario) b
	where a.asignatura_fk<>b.asignatura_fk
	and a.dia=b.dia
	and a.hora=b.hora
	and a.asignatura_fk=@codigo
	and 
		(b.asignatura_fk=@codigo1
		or b.asignatura_fk=@codigo2
		or b.asignatura_fk=@codigo3
		or b.asignatura_fk=@codigo4
		or b.asignatura_fk=@codigo5
		or b.asignatura_fk=@codigo6
		or b.asignatura_fk=@codigo7
		or b.asignatura_fk=@codigo8
		or b.asignatura_fk=@codigo9
		or b.asignatura_fk=@codigo10
		or b.asignatura_fk=@codigo11
		or b.asignatura_fk=@codigo12
		or b.asignatura_fk=@codigo13
	)
end
GO
--exec crucesDeCurso '0111-AIS','0211-AIS','','','','','','','','','','','',''