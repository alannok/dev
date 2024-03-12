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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtUsuarioChange(Sender: TObject);
  private
    { Private declarations }
    procedure CentralizarPainel;
    procedure FazerLogin ;
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
    MessageDlg('Preencha o Usuário! ', mtInformation, [mbOK] , 0) ;
    txtUsuario.SetFocus;
    Exit;
  end;

  if Trim (txtSenha.Text) = '' then
  begin
    MessageDlg('Preencha a Senha! ', TMsgDlgType.mtInformation, mbOKCancel, 0) ;
    txtSenha.SetFocus;
    Exit;
  end;

  FazerLogin;
end;

procedure TFrmLogin.CentralizarPainel;
begin
  pnlLogin.Top  := (self.Height div 2) - (pnlLogin.Height div 2);
  pnlLogin.left := (self.Width div 2) - (pnlLogin.Width div 2);
end;

procedure TFrmLogin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then // verifica se foi o ENTER
  begin
    if txtUsuario.Focused then
      if txtSenha.CanFocus then
        txtSenha.SetFocus;

    if txtSenha.Focused then
      if (txtSenha.Text <> '') then
          btnLogin.Click;
  end;

  if (key = 27) then // Verificar se foi o ESC
    Application.Terminate;
end;

procedure TFrmLogin.FormResize(Sender: TObject);
begin
  CentralizarPainel;
end;

procedure TFrmLogin.txtUsuarioChange(Sender: TObject);
begin
  txtSenha.Clear;
end;

procedure TFrmLogin.FazerLogin;
begin
  // AQUI VIRA O CODIGO DE LOGIN

  if (txtUsuario.Text = 'adm') and (txtSenha.Text = '123') then
  begin
    FrmMenu := TfrmMenu.Create(FrmLogin) ;
    FrmMenu.ShowModal;
  end
  else begin
    MessageDlg('Usuário e senha inválidos!', mtInformation, [mbOK],0);
    if txtUsuario.CanFocus then
      txtUsuario.SetFocus;
  end;

end;

end.
