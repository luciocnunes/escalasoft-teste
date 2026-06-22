program PCaixaExeletronico;

uses
  Vcl.Forms,
  UPrincipal in 'src\view\UPrincipal.pas' {Form6},
  UDmPrincipal in 'src\view\UDmPrincipal.pas' {DMPrincipal: TDataModule},
  UEstoque in 'src\view\UEstoque.pas' {FrmEstoque},
  uClassNotificacao in 'src\model\uClassNotificacao.pas',
  UCaixa in 'src\model\UCaixa.pas',
  uClassCliente in 'src\controller\uClassCliente.pas',
  USaque in 'src\view\USaque.pas' {frmSaque},
  UCliente in 'src\view\UCliente.pas' {frmCliente},
  UNotificacoes in 'src\view\UNotificacoes.pas' {frmNotificacao};

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
