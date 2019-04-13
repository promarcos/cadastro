unit UFrmTela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TFrmTela = class(TForm)
    Panel1: TPanel;
    Lb_Sauda: TLabel;
    img: TImageControl;
    btn_login: TSpeedButton;
    procedure btn_loginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTela: TFrmTela;

implementation

{$R *.fmx}

uses UFrmLogin;
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TFrmTela.btn_loginClick(Sender: TObject);
begin
  //FrmLogin :=  TFrmLogin.Create(Application);
//  FrmLogin.ShowModal;
  close;
end;

procedure TFrmTela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLogin.Show;
end;

end.
