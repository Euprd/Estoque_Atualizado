unit U_Form_pesquisa_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_pesquisa_padrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    Label1: TLabel;
    ED_nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_pesquisa: TBitBtn;
    bt_Transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesquisa_padrao: TFrm_pesquisa_padrao;

implementation

{$R *.dfm}

uses U_DM;

end.
