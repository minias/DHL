program DHL20;

uses
  Forms,
  main in 'main.pas' {Frm_main},
  UEncrypt in 'UEncrypt.pas',
  env in 'env.pas',
  RegExpr in 'RegExpr.pas',
  version in 'version.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DHL2.1 by 미니어스';
  Application.CreateForm(TFrm_main, Frm_main);
  Application.Run;
end.
