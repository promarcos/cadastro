program PTelaCadastro2;

uses
  System.StartUpCopy,
  FMX.Forms,
  UFrmTela in 'UFrmTela.pas' {FrmTela},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UFrmCadastro in 'UFrmCadastro.pas' {FrmCadstro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
