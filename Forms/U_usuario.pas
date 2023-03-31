unit U_usuario;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;
type
  TFrm_usuario = class(TFrm_padrao)
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoSENHA: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    db_senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
    procedure bt_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_usuario: TFrm_usuario;
implementation
{$R *.dfm}

uses U_pesq_usuario;




  procedure TFrm_usuario.bt_novoClick(Sender: TObject);
begin
  inherited;
 db_cadastro.Text:=DateTostr(now);
 db_nome.SetFocus;
end;



  procedure TFrm_usuario.bt_pesquisarClick(Sender: TObject);
begin
frm_pesq_usuario:=Tfrm_pesq_usuario.Create(self);
frm_pesq_usuario.ShowModal;
try
   if Frm_pesq_usuario.codigo > 0 then
    begin
      Q_padrao.Open;
      Q_padrao.Locate('ID_USUARIO', Frm_pesq_usuario.codigo,[],); // localizamos o que foi pesquisada  no form pesquisa
    end;
finally
   frm_pesq_usuario.Free;
   frm_pesq_usuario:=nil;
end;
end;

procedure TFrm_usuario.bt_sairClick(Sender: TObject);
begin
  inherited;
  close;
end;
end.
