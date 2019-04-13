unit UFrmLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TFrmLogin = class(TForm)
    edt_user: TEdit;
    edt_senha: TEdit;
    lb_user: TLabel;
    lb_senha: TLabel;
    btn_cadastra: TCornerButton;
    btn_login: TCornerButton;
    btn_sair: TCornerButton;
    procedure btn_cadastroClick(Sender: TObject);
    procedure btn_logarClick(Sender: TObject);
    procedure btn_cancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

uses UFrmTela, UFrmCadastro;

procedure TFrmLogin.btn_cadastroClick(Sender: TObject);
begin
  FrmCadstro := TFrmCadstro.Create(Application);
  FrmCadstro.ShowModal;
end;

procedure TFrmLogin.btn_cancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.btn_logarClick(Sender: TObject);
begin
 if (edt_user.Text = 'Marcos') and (edt_senha.Text = '123') then
 begin
    ShowMessage('Marcos bem vindo!');
 end
 else
 begin
    ShowMessage('Deu Ruim!');
 end;

end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  FrmTela := TFrmTela.Create(nil);
  FrmTela.ShowModal;
end;

end.
