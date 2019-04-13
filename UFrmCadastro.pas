unit UFrmCadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TFrmCadstro = class(TForm)
    edt_nome: TEdit;
    edt_idade: TEdit;
    edt_senha: TEdit;
    rd_macho: TRadioButton;
    rd_femea: TRadioButton;
    lb_Nome: TLabel;
    lb_idade: TLabel;
    lb_senha: TLabel;
    btn_cadastro: TCornerButton;
    btn_sair: TCornerButton;
    Label1: TLabel;
    procedure btn_cadastroClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadstro: TFrmCadstro;

implementation

{$R *.fmx}

procedure TFrmCadstro.btn_cadastroClick(Sender: TObject);
var nome,idade,sexo : String;
begin
  nome := edt_nome.Text;
  idade := edt_idade.Text;
  if rd_macho.IsChecked then
    sexo := 'O Caba é Macho!'
  else
    sexo := 'A Caba é Femia!';

  MessageDlg(
    'Nome: '+nome+#13+'Idade: '+idade+#13+'Sexo: '+sexo,
    System.UITypes.TMsgDlgType.mtConfirmation,
    [System.UITypes.TMsgDlgBtn.mbOK],
    0)
end;

procedure TFrmCadstro.btn_sairClick(Sender: TObject);
begin
 Close;
end;

end.
