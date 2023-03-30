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
    lb_nome: TLabel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_pesquisa: TBitBtn;
    bt_Transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrm_pesquisa_padrao.bt_pesquisaClick(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
  0:begin // pesquisa pelo codigo
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=False;
    mk_fim.Visible:=False;
    lb_nome.Visible:=True;
    lb_nome.Caption:='Digito o código';
    lb_fim.Visible:=false;
    lb_inicio.Visible:=false;
  end;

  1:begin // pesquisa pelo nome
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=False;
    mk_fim.Visible:=False;
    lb_nome.Visible:=True;
    lb_nome.Caption:='Digito o nome';
    lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
  end;

  2:begin //seleção por data
    ed_nome.Visible:=False;
    mk_inicio.Visible:=true;
    mk_inicio.SetFocus;
    mk_fim.Visible:=false;
    lb_nome.Visible:=false;
    lb_inicio.Visible:=True;
    lb_inicio.Caption:='Digite a data';
    lb_fim.Visible:=false;
  end;

    3:begin // por periodo
    ed_nome.Visible:=false;
    mk_inicio.Visible:=true;
    mk_inicio.SetFocus;
    mk_fim.Visible:=true;
    lb_nome.Visible:=false;
    lb_inicio.Visible:=True;
    lb_inicio.Caption:='Digite o periodo';
    lb_fim.Visible:=True;
  end;

  end;
end;

procedure TFrm_pesquisa_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin

  //faz função do tab

  if key=#13 then
  begin
    Key:=#0;
    Perform(wm_nextDlgCtl,0,0);
  end;
end;

end.
