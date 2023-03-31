unit U_produto;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;
type
  TFrm_produto = class(TFrm_padrao)
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    db_descricao: TDBEdit;
    Label13: TLabel;
    db_vl_custo: TDBEdit;
    Label14: TLabel;
    db_vl_venda: TDBEdit;
    Label15: TLabel;
    db_estoque: TDBEdit;
    Label16: TLabel;
    db_estoque_minimo: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DB_cadastro: TDBEdit;
    Label19: TLabel;
    db_id_fornecedor: TDBEdit;
    Label20: TLabel;
    db_nome: TDBEdit;
    dbc_unidade: TDBComboBox;
    Q_padraoID_PRODUTO: TIntegerField;
    Label11: TLabel;
    db_id_produto: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_produto: TFrm_produto;
implementation
{$R *.dfm}

uses U_pesq_produto;
procedure TFrm_produto.bt_novoClick(Sender: TObject);
begin
  inherited;
DB_cadastro.Text:=DateTostr(now);
db_id_produto.SetFocus;
end;
procedure TFrm_produto.bt_pesquisarClick(Sender: TObject);
begin
  Frm_pesq_produto:=TFrm_pesq_produto.Create(self);
  Frm_pesq_produto.ShowModal;
  try
     if Frm_pesq_produto.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_PRODUTO', Frm_pesq_PRODUTO.codigo,[],); // localizamos o que foi pesquisada  no form pesquisa
    end;
  finally
    Frm_pesq_produto.Free;
    Frm_pesq_produto:=nil;
  end;


end;

end.
