unit uClassNotificacao;

interface

uses
  SysUtils;

type
  TEventoLog = class
  private
    FDataHora: TDateTime;
    FDescricao: string;
    function GetCaminhoLog: string;
    procedure GravarNoArquivo;
  public
    constructor Create(const ADescricao: string);

    property DataHora: TDateTime read FDataHora write FDataHora;
    property Descricao: string read FDescricao write FDescricao;
  end;

implementation

{ TEventoLog }

constructor TEventoLog.Create(const ADescricao: string);
begin
  inherited Create;
  FDescricao := ADescricao;
  // Verifica se o texto termina com as quebras de linha (#13#10)
  if FDescricao.EndsWith(#13#10) then
  begin
    // Remove os 2 últimos caracteres (o Enter)
    SetLength(FDescricao, Length(FDescricao) - 2);
  end;

  FDataHora := Now;

  GravarNoArquivo;
end;

function TEventoLog.GetCaminhoLog: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + 'Log_Sistema.txt';
end;

procedure TEventoLog.GravarNoArquivo;
var
  Arquivo: TextFile;
  TextoLog: string;
  CaminhoArquivo: string;
begin
  CaminhoArquivo := GetCaminhoLog;
  TextoLog := Format('[%s] - %s', [DateTimeToStr(FDataHora), FDescricao]);

  AssignFile(Arquivo, CaminhoArquivo);
  try
    if FileExists(CaminhoArquivo) then
      Append(Arquivo)
    else
      Rewrite(Arquivo);

    WriteLn(Arquivo, TextoLog);
  finally
    CloseFile(Arquivo);
  end;
end;

end.
