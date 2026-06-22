program PCaixaExeletronico;

uses
  Vcl.Forms,
  UPrincipal in 'view\UPrincipal.pas' {Form6},
  UDmPrincipal in 'view\UDmPrincipal.pas' {DMPrincipal: TDataModule},
  UEstoque in 'view\UEstoque.pas' {FrmEstoque},
  uClassNotificacao in 'model\uClassNotificacao.pas',
  UCaixa in 'model\UCaixa.pas',
  uClassCliente in 'controller\uClassCliente.pas',
  USaque in 'view\USaque.pas' {frmSaque},
  UCliente in 'view\UCliente.pas' {frmCliente},
  UNotificacoes in 'view\UNotificacoes.pas' {frmNotificacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFrmEstoque, FrmEstoque);
  Application.CreateForm(TfrmSaque, frmSaque);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmNotificacao, frmNotificacao);
  Application.Run;
end.
