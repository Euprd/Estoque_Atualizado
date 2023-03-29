unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_deletar: TBitBtn;
    bt_editar: TBitBtn;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bt_pesquisar: TBitBtn;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    bt_sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_deletarClick(Sender: TObject);
    procedure bt_editarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_atualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure bt_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao.bt_atualizarClick(Sender: TObject);
begin
//atuaaliza o registro
Tratabotoes;
Q_padrao.Refresh;
messagedlg('Registro atualizado com sucesso!', mtInformation, [mbOk],0);
end;

procedure TFrm_padrao.bt_cancelarClick(Sender: TObject);
begin
//cancela  a ação
Tratabotoes;
Q_padrao.Cancel;
Messagedlg('Ação Cancelada pelo usuario!',mtInformation, [mbOk],0);
end;

procedure TFrm_padrao.bt_deletarClick(Sender: TObject);
begin
//deleta o registro
Tratabotoes;
if messagedlg('Deseja deletar esse registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk  then
  begin
      Q_padrao.delete;
      Messagedlg('Registro deletado com sucesso!',mtInformation, [mbOk],0);
      Tratabotoes
  end
  else
  Tratabotoes;
  abort;
end;

procedure TFrm_padrao.bt_editarClick(Sender: TObject);
begin
//abre para edição
Tratabotoes;
  if messagedlg('Deseja editar esse registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk  then
  begin
      Q_padrao.Edit;
  end
  else
  Tratabotoes;
  abort;
end;

procedure TFrm_padrao.bt_gravarClick(Sender: TObject);
begin
//salva o registro
Tratabotoes;
  Q_padrao.post;
  Messagedlg('Registro Salvo com sucesso!',mtInformation,[mbOk],0);
end;

procedure TFrm_padrao.bt_novoClick(Sender: TObject);
begin
//cria um novo registro
Q_padrao.Open;
Tratabotoes;
Q_padrao.append;
end;

procedure TFrm_padrao.bt_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
// faz a função da tecla tab//
if key=#13 then
begin
  Key:=#0;
  Perform(wm_nextDlgCtl,0,0);
end;
end;

procedure TFrm_padrao.Tratabotoes;
begin
//habilita e desabilita os botões
bt_novo.Enabled:=not bt_novo.Enabled;
bt_deletar.Enabled:=not bt_deletar.Enabled;
bt_editar.Enabled:=not bt_editar.Enabled;
bt_gravar.Enabled:=not bt_gravar.Enabled;
bt_cancelar.Enabled:=not bt_cancelar.Enabled;
bt_atualizar.Enabled:=not bt_atualizar.Enabled;
end;

end.
