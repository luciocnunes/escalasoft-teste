unit uClassCliente;

interface

uses
  SysUtils,DB, FireDAC.Comp.Client;

type
  TContaUsuario = class
  private
    FId: integer;
    FNome: string;
    FSaldo: Double;
    FDMCliente: TFDMemTable;
  public
    constructor Create(AId:Integer;AMemTable: TFDMemTable);

    // Métodos para movimentação do saldo
    procedure Debitar(AValor: Double);

    property Id: integer read FId;
    property Nome: String read FNome;
    property Saldo: Double read FSaldo;
  end;

implementation
uses uClassNotificacao;
{ TContaUsuario }

constructor TContaUsuario.Create(AId:Integer;AMemTable: TFDMemTable);
begin
  inherited Create;
  FDMCliente := AMemTable;
  // Localizar cliente
  if FDMCliente.Locate('id', AId, []) then
  Begin
    FId   := FDMCliente.FieldByName('id').AsInteger;
    FNome := FDMCliente.FieldByName('nome').AsString;
    FSaldo:= FDMCliente.FieldByName('saldo').AsFloat;
  End
  Else
  Begin
    FId   := -1;
    FNome := 'Não localizado';
    FSaldo:= -1;
  End;


end;

procedure TContaUsuario.Debitar(AValor: Double);
begin
  if AValor > FSaldo then
    raise Exception.Create('Saldo insuficiente para realizar a operação.');

  FSaldo := FSaldo - AValor;
  FDMCliente.Edit;
  FDMCliente.FieldByName('saldo').AsFloat := FSaldo;
  FDMCliente.Post;
  TEventoLog.Create(format('Saque na conta %d no valor de %m.',[id,AValor])).Free;

end;


end.
