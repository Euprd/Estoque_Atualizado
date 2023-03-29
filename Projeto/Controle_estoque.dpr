program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\Forms\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\Forms\U_usuario.pas' {Frm_usuario},
  U_empresa in '..\Forms\U_empresa.pas' {Frm_empresa},
  U_cliente in '..\Forms\U_cliente.pas' {Frm_cliente},
  U_fornecedor in '..\Forms\U_fornecedor.pas' {Frm_fornecedor},
  U_produto in '..\Forms\U_produto.pas' {Frm_produto},
  U_formas_pgto in '..\Forms\U_formas_pgto.pas' {Frm_forma_pgto},
  U_Form_pesquisa_padrao in '..\Forms\U_Form_pesquisa_padrao.pas' {Frm_pesquisa_padrao},
  U_pesq_usuario in '..\Forms\U_pesq_usuario.pas' {Frm_Pesq_usuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
