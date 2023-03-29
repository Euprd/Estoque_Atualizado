unit U_pesq_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesq_usuario = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_USUARIO: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoTIPO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_usuario: TFrm_Pesq_usuario;

implementation

{$R *.dfm}

procedure TFrm_Pesq_usuario.bt_pesquisaClick(Sender: TObject);
begin


  Q_pesq_padrao.Close;     //fechou a query
  Q_pesq_padrao.SQL.add(''); // adicionou no sql vazio
  q_pesq_padrao.Params.Clear; // limpou os parametros
  Q_pesq_padrao.SQL.Clear; // limpou o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO'); // adicionou o sql das colunas/dados
  case cb_chave_pesquisa.ItemIndex of
  0:begin
    Q_pesq_padrao.SQL.Add('WHERE ID_USUARIO =:PID_USUARIO'); // com a condição id recebendo pid criando parametro
    Q_pesq_padrao.ParamByName('PID_USUARIO').AsString:=ed_nome.Text; // nome recebeu um texto para fazer a pesquisa em PID apontando para o compo parametro
    end;
  end;

  Q_pesq_padrao.Open; // Abriu a consulta  mostrando o resultado

  if Q_pesq_padrao.IsEmpty then     // caso nao tiver o registro vazio
  begin
    Messagedlg('Registro não encontrado!',mtInformation, [mbOk],0);   // mensagem de nao encontrado
  end
  else
   abort;
end;

procedure TFrm_Pesq_usuario.cb_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
  0:begin // pesquisa pelo codigo
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=False;
    mk_fim.Visible:=False;
  end;

  1:begin // pesquisa pelo nome
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=False;
    mk_fim.Visible:=False;
  end;

  2:begin //seleção por data
    ed_nome.Visible:=False;
    mk_inicio.SetFocus;
    mk_inicio.Visible:=true;
    mk_fim.Visible:=true;
  end;

    3:begin // por periodo
    ed_nome.Visible:=false;
    mk_inicio.SetFocus;
    mk_inicio.Visible:=true;
    mk_fim.Visible:=true;
  end;

  end;

end;

end.
