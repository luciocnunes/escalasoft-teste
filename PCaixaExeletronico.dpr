program PCaixaExeletronico;

uses
  Vcl.Forms,
<<<<<<< HEAD
  UPrincipal in 'src\view\UPrincipal.pas' {Form6},
  UDmPrincipal in 'src\view\UDmPrincipal.pas' {DMPrincipal: TDataModule},
  UEstoque in 'src\view\UEstoque.pas' {FrmEstoque},
  uClassNotificacao in 'src\model\uClassNotificacao.pas',
  UCaixa in 'src\model\UCaixa.pas',
  uClassCliente in 'src\controller\uClassCliente.pas',
  USaque in 'src\view\USaque.pas' {frmSaque},
  UCliente in 'src\view\UCliente.pas' {frmCliente},
  UNotificacoes in 'src\view\UNotificacoes.pas' {frmNotificacao};
=======
  UPrincipal in 'UPrincipal.pas' {Form6};
>>>>>>> d604cf916c505542d6ed3a6fd8b147b05ba5e265

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
<<<<<<< HEAD
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TFrmEstoque, FrmEstoque);
  Application.CreateForm(TfrmSaque, frmSaque);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmNotificacao, frmNotificacao);
=======
>>>>>>> d604cf916c505542d6ed3a6fd8b147b05ba5e265
  Application.Run;
end.
