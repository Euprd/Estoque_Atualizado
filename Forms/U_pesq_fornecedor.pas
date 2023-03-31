unit U_pesq_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_fornecedor = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoEMAIL: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_pesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_fornecedor: TFrm_pesq_fornecedor;

implementation

{$R *.dfm}

procedure TFrm_pesq_fornecedor.bt_pesquisaClick(Sender: TObject);
begin
  Q_pesq_padrao.Close;     //fechou a query
  Q_pesq_padrao.SQL.add(''); // adicionou no sql vazio
  q_pesq_padrao.Params.Clear; // limpou os parametros
  Q_pesq_padrao.SQL.Clear; // limpou o sql
  Q_pesq_padrao.SQL.Add('SELECT ID_FORNECEDOR, '
  +'NOME ,'     //,' concatenar
  +'ENDERECO ,' //,' concatenar
  +'NUMERO ,' //,' concatenar
  +'BAIRRO ,' //,' concatenar
  +'CIDADE ,' //,' concatenar
  +'UF ,' //,' concatenar
  +'CEP ,' //,' concatenar
  +'TELEFONE ,' //,' concatenar
  +'CNPJ ,' //,' concatenar
  +'EMAIL ,' //,' concatenar
  +'CADASTRO '
  +'FROM FORNECEDOR'); // adicionou o sql das colunas/dados

  case cb_chave_pesquisa.ItemIndex of
  0:begin        // pesquisa por codigo
    Q_pesq_padrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR'); // com a condição id recebendo pid criando parametro
    Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text; // nome recebeu um texto para fazer a pesquisa em PID apontando para o compo parametro
    end;

    1:begin // pesquisa por nome
    Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // com a condição id recebendo pid criando parametro
    Q_pesq_padrao.ParamByName('PNOME').AsString:= '%' + ed_nome.Text + '%'; // nome recebeu um texto para fazer a pesquisa em PID apontando para o compo parametro
    end;

    2:begin    // pesquisa por data
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
    end;

    3:begin    // pesquisa por periodo
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
    end;

    4:begin   // PESQUISA TODOS USUARIOS.
      Q_pesq_padrao.SQL.Add('ORDER BY ID_FORNECEDOR');
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

end.
