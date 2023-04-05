unit Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFrmFuncionarios = class(TForm)
    editBuscarNome: TEdit;
    ebNome: TRadioButton;
    rbCPF: TRadioButton;
    txtBuscarCPF: TMaskEdit;
    Label1: TLabel;
    editNome: TEdit;
    lbNome: TLabel;
    lbCPF: TLabel;
    lbEnderešo: TLabel;
    editEnderešo: TEdit;
    lbCargo: TLabel;
    Label2: TLabel;
    MaskEditCPF: TMaskEdit;
    MaskEditTelefone: TMaskEdit;
    cbCargo: TComboBox;
    DBGrid1: TDBGrid;
    btnNovo: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

end.
