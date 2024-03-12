unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList;

type
  TFrmMenu = class(TForm)
    MenuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    mnuProdutos: TMenuItem;
    mnuFornecedores: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Movimentaes2: TMenuItem;
    mnuUsuarios: TMenuItem;
    mnuFuncionarios: TMenuItem;
    mnuCargos: TMenuItem;
    mnuPosicaoEstoque: TMenuItem;
    mnuCadastros: TActionList;
    actProdutos: TAction;
    actFornecedores: TAction;
    actUsuarios: TAction;
    actFuncionarios: TAction;
    actCargos: TAction;
    N1: TMenuItem;
    actSair: TAction;
    mnuSair: TMenuItem;
    procedure Usuarios1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses
  Usuarios, Funcionarios, Cargos, Produtos;

procedure TFrmMenu.actProdutosExecute(Sender: TObject);
var
  frmProdutos: TfrmProdutos;
begin
  frmProdutos := TfrmProdutos.Create(Self);
  try
    frmProdutos.ShowModal;
  finally
    frmProdutos.Free;
  end;
end;

procedure TFrmMenu.actSairExecute(Sender: TObject);
begin
  if (MessageDlg('Deseja sair do sistema ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    Exit;

  Application.Terminate;
end;

procedure TFrmMenu.Cargos1Click(Sender: TObject);
begin
  FrmCargos := TFrmCargos.Create(FrmMenu);
  FrmCargos.ShowModal;
end;

procedure TFrmMenu.Funcionarios1Click(Sender: TObject);
begin
  FrmFuncionarios := TFrmFuncionarios.Create(FrmMenu);
  FrmFuncionarios.ShowModal;
end;

procedure TFrmMenu.Usuarios1Click(Sender: TObject);
begin
  FrmUsuarios := TFrmUsuarios.Create(FrmMenu) ;
  FrmUsuarios.ShowModal;
end;

end.
