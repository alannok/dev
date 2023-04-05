unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    imgFundo: TImage;
    pnlLogin: TPanel;
    imgLogin: TImage;
    txtUsuario: TEdit;
    txtSenha: TEdit;
    btnLogin: TSpeedButton;
    procedure FormResize(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
    procedure centralizarPainel;
    procedure login ;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Menu;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
  if Trim (txtUsuario.Text) = '' then
  begin
  MessageDlg('Preencha o Usuario! ', TMsgDlgType.mtInformation, mbOKCancel, 0) ;
  txtUsuario.SetFocus;
  exit;

  end;

  if Trim (txtSenha.Text) = '' then
  begin
  MessageDlg('Preencha a Senha! ', TMsgDlgType.mtInformation, mbOKCancel, 0) ;
  txtSenha.SetFocus;
  exit;
  end;



  login;

end;

procedure TFrmLogin.centralizarPainel;
begin
  pnlLogin.Top := (self.Height div 2) - (pnlLogin.Height div 2);
  pnlLogin.left := (self.Width div 2) - (pnlLogin.Width div 2);
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
           centralizarPainel;
end;

procedure TFrmLogin.Login;
begin
// AQUI VIRA O CODIGO DE LOGIN
FrmMenu := TfrmMenu.Create(FrmLogin) ;
FrmMenu.ShowModal;

end;

end.
