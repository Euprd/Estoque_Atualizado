unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_Usuario: TSpeedButton;
    SpeedButton3: TSpeedButton;
    bt_cliente: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    menu_usuario: TMenuItem;
    menu_empresa: TMenuItem;
    menu_clientes: TMenuItem;
    menu_fornecedor: TMenuItem;
    menu_produtos: TMenuItem;
    menu_forma_de_pgto: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaClientes2: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_UsuarioClick(Sender: TObject);
    procedure Abre_tela_usuario();
    procedure SpeedButton3Click(Sender: TObject);
    procedure Abre_tela_empresa();
    procedure menu_empresaClick(Sender: TObject);
    procedure bt_clienteClick(Sender: TObject);
    procedure Abre_Tela_Cliente();
    procedure menu_clientesClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Abre_tela_Fornecedor();
    procedure menu_fornecedorClick(Sender: TObject);
    procedure menu_usuarioClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Abre_tela_produto();
    procedure menu_produtosClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Abre_tela_forma_pgto();
    procedure menu_forma_de_pgtoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_usuario, U_empresa, U_cliente, U_fornecedor, U_produto, U_formas_pgto;



procedure TFrm_Principal.Abre_Tela_Cliente;
begin
Frm_cliente:=Tfrm_cliente.Create(self);
Frm_cliente.ShowModal;
try

finally
  frm_cliente.Free;
  frm_cliente:=nil;
end;
end;

procedure TFrm_Principal.Abre_tela_empresa;
begin
  Frm_empresa:=Tfrm_empresa.Create(self);
  frm_empresa.ShowModal;
try

finally
     frm_empresa.Free;
     frm_empresa:=nil;
end;
end;

procedure TFrm_Principal.Abre_tela_forma_pgto;
begin
Frm_forma_pgto:=Tfrm_forma_pgto.Create(self);
frm_forma_pgto.ShowModal;
try

finally
  frm_forma_pgto.Free;
  frm_forma_pgto:=nil;
end;
end;

procedure TFrm_Principal.Abre_tela_Fornecedor;
begin
Frm_fornecedor:=Tfrm_fornecedor.Create(self);
Frm_fornecedor.ShowModal;
try

finally
  frm_fornecedor.Free;
  frm_fornecedor:=nil;
end;
end;

procedure TFrm_Principal.Abre_tela_produto;
begin
Frm_produto:=Tfrm_produto.Create(self);
frm_produto.ShowModal;
try

finally
  frm_produto.Free;
  frm_produto:=nil;
end;
end;

procedure TFrm_Principal.Abre_tela_usuario;
begin
frm_Usuario:=Tfrm_usuario.Create(self);
frm_usuario.ShowModal;
try

finally
  frm_usuario.Free;
  frm_usuario:=nil;
end;
end;

procedure TFrm_Principal.bt_clienteClick(Sender: TObject);
begin
Abre_Tela_Cliente;
end;

procedure TFrm_Principal.bt_UsuarioClick(Sender: TObject);
begin
 Abre_tela_usuario;
end;

procedure TFrm_Principal.menu_clientesClick(Sender: TObject);
begin
Abre_Tela_Cliente;
end;

procedure TFrm_Principal.menu_empresaClick(Sender: TObject);
begin
Abre_tela_empresa;
end;

procedure TFrm_Principal.menu_forma_de_pgtoClick(Sender: TObject);
begin
Abre_tela_forma_pgto;
end;

procedure TFrm_Principal.menu_fornecedorClick(Sender: TObject);
begin
 Abre_tela_fornecedor;
end;

procedure TFrm_Principal.menu_produtosClick(Sender: TObject);
begin
Abre_tela_produto;
end;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
if messagedlg('Deseja sair do sistema?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
   begin
     application.Terminate;
   end
   else
    abort;
end;


procedure TFrm_Principal.SpeedButton3Click(Sender: TObject);
begin
 Abre_tela_empresa;
end;

procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  Abre_tela_Fornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
Abre_tela_produto;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
 Abre_tela_forma_pgto;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
// insere dados no status bar
Statusbar1.Panels[0].Text:=DateTostr(now);
Statusbar1.Panels[1].Text:=TimeTostr(now);
Statusbar1.Panels[2].Text:='SEJA BEM VINDO AO SISTEMA';
end;

procedure TFrm_Principal.menu_usuarioClick(Sender: TObject);
begin
Abre_tela_usuario;
end;

end.
