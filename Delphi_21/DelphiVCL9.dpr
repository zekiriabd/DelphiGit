program DelphiVCL9;

uses
  Vcl.Forms,
  Unit12 in 'Unit12.pas' {Form12},
  SQLConst in 'SQLConst.pas',
  Unit13 in 'Unit13.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
