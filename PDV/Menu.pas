unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Movimentaes2: TMenuItem;
    Sair1: TMenuItem;
    Usuarios1: TMenuItem;
    Funcionarios1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Usuarios1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos;



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
Frmusuarios.ShowModal;
end;

end.
