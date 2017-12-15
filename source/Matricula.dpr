program Matricula;

uses
  Forms,
  Principal in '..\Comunes\Principal.pas' {f_principal},
  Login in '..\Comunes\Login.pas' {f_login},
  dataModule in '..\Comunes\dataModule.pas' {DM_matriculas: TDataModule},
  Matricular in '..\Comunes\Matricular.pas' {f_matricular},
  AcercaDe in '..\Comunes\AcercaDe.pas' {f_acercade},
  MantenimientoAlumno in '..\Comunes\MantenimientoAlumno.pas' {f_mantenimientoAlumno},
  MantenimientoDocente in '..\Comunes\MantenimientoDocente.pas' {f_mantenimientoDocente},
  MantenimientoCarrera in '..\Comunes\MantenimientoCarrera.pas' {f_mantenimientoCarrera},
  MantenimientoMatricula in '..\Comunes\MantenimientoMatricula.pas' {f_mantenimientoMatricula},
  MantenimientoNotas in '..\Comunes\MantenimientoNotas.pas' {f_mantenimientoNotas},
  MantenimientoSemestre in '..\Comunes\MantenimientoSemestre.pas' {f_mantenimientoSemestre},
  Traslado in '..\Comunes\Traslado.pas' {f_traslado},
  Homologacion in '..\Comunes\Homologacion.pas' {f_homologacion},
  Reportes in '..\Comunes\Reportes.pas' {f_reportes},
  Ayuda in '..\Comunes\Ayuda.pas' {f_ayuda},
  MantenimientoAsignatura in '..\Comunes\MantenimientoAsignatura.pas' {f_mantenimientoAsignatura},
  MantenimientoFacultad in '..\Comunes\MantenimientoFacultad.pas' {f_mantenimientoFacultad},
  MantenimientoCurricula in '..\Comunes\MantenimientoCurricula.pas' {f_mantenimientoCurricula},
  CargaAcademica in '..\Comunes\CargaAcademica.pas' {f_cargaDocente};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Sistema de Matricula';
  Application.CreateForm(Tf_principal, f_principal);
  Application.CreateForm(TDM_matriculas, DM_matriculas);
  Application.Run;
end.
