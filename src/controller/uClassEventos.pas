unit uClassEventos;

interface

type
  TEvento = class
  private
    FDataHora: TDateTime;
    FDescricao: string;
    FCidade: string;
    FUF: string;
  public
    property DataHora: TDateTime read FDataHora write FDataHora;
    property Descricao: string read FDescricao write FDescricao;
    procedure Evento(const dDataHora:TDateTime);
  end;
implementation
procedure TEvento.Evento(const dDataHora:TDateTime);
begin
  try
    FDataHora := 0;
    FNome   := '';
    FCidade := '';
    FUf     := '';
    QryCliente := TFDQuery.Create( nil );
    QryCliente.Connection := DMConexao.FDConexao;
    QryCliente.SQL.Add('select codigo,nome,cidade,uf from clientes where codigo=:id_codigo');
    QryCliente.ParamByName('id_codigo').AsInteger := nCodigo;
    QryCliente.Open();
    if(QryCliente.RecordCount>0) then
    begin
      FCodigo := nCodigo;
      FNome   := QryCliente.FieldByName('nome').AsString;
      FCidade := QryCliente.FieldByName('cidade').AsString;
      FUf     := QryCliente.FieldByName('uf').AsString;
      vAchou := true;
    end;
    except
      on E : Exception do
        raise Exception.Create(E.Message);
  end;
end;

end.
