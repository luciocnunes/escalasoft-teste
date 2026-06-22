unit uClassEstoque;

interface

type
  TEstoque = class
  private
    FDinheiro: string;
    FValor: Double;
    FQuantidade: Integer;
    function GetCaminhoLog: String;
    procedure GravarNoArquivo;
  public

    property DataHora: TDateTime read FDataHora write FDataHora;
    property Descricao: string read FDescricao write FDescricao;
  end;


implementation

end.
