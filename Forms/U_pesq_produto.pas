unit U_pesq_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_produto = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_PRODUTO: TIntegerField;
    Q_pesq_padraoPRODUTO_DESCRICAO: TStringField;
    Q_pesq_padraoVL_CUSTO: TFMTBCDField;
    Q_pesq_padraoVL_VENDA: TFMTBCDField;
    Q_pesq_padraoESTOQUE: TFMTBCDField;
    Q_pesq_padraoESTOQUE_MIN: TFMTBCDField;
    Q_pesq_padraoUNIDADE: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_produto: TFrm_pesq_produto;

implementation

{$R *.dfm}

procedure TFrm_pesq_produto.bt_pesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;     //fechou a query
  Q_pesq_padrao.SQL.add(''); // adicionou no sql vazio
  q_pesq_padrao.Params.Clear; // limpou os parametros
  Q_pesq_padrao.SQL.Clear; // limpou o sql
  Q_pesq_padrao.SQL.Add('SELECT A.ID_PRODUTO ,'
       +'A.PRODUTO_DESCRICAO ,'
       +'A.VL_CUSTO ,'
       +'A.VL_VENDA ,'
       +'A.ESTOQUE ,'
       +'A.ESTOQUE_MIN ,'
       +'A.UNIDADE ,'
       +'A.CADASTRO ,'
       +'A.ID_FORNECEDOR ,'
       +'B.NOME '
       +'FROM PRODUTO A '
       +'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR'); // adicionou o sql das colunas/dados

  case cb_chave_pesquisa.ItemIndex of
    0:begin        // pesquisa por codigo
    Q_pesq_padrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO'); // com a condição id recebendo pid criando parametro
    Q_pesq_padrao.ParamByName('PID_PRODUTO').AsString:=ed_nome.Text; // nome recebeu um texto para fazer a pesquisa em PID apontando para o compo parametro
    end;

    1:begin // pesquisa por DESCRICAO
      Q_pesq_padrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO'); // com a condição id recebendo pid criando parametro
      Q_pesq_padrao.ParamByName('PDESCRICAO').AsString:= '%' + ed_nome.Text + '%'; // nome recebeu um texto para fazer a pesquisa em PID apontando para o compo parametro
    end;

    2:begin    // pesquisa por data
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
    end;

    3:begin    // pesquisa por periodo
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
    end;

    4:begin   // PESQUISA TODOS USUARIOS.
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_PRODUTO');
    end;

    5:begin   // PESQUISA TODOS FORNECEDOR.
      Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR'); // com a condição id recebendo pid criando parametro
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text;
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

procedure TFrm_pesq_produto.bt_TransferirClick(Sender: TObject);
begin
 if Q_pesq_padrao.RecordCount > 0 then    // se query for maior que 0
    begin
      codigo:=Q_pesq_padraoID_PRODUTO.AsInteger;     //variavel codigo recebeu idcliente
    end
    else
    abort;
end;

end.
