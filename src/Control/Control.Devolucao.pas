unit Control.Devolucao;

interface

uses System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Model.Devolucao, TFO.Barras, System.StrUtils;

type
  TDevolucaoControl = class
  private
    FDevolucao : TDevolucao;
    FBarras: TBarrTFO;
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function ValidaImportacao(): Boolean;
    function ValidaEdicao(): Boolean;
    function ValidaExclusao(): Boolean;
    property Devolucao: TDevolucao read FDevolucao write FDevolucao;
  end;

implementation

{ TDevolucaoControl }

constructor TDevolucaoControl.Create;
begin
  FDevolucao := TDevolucao.Create;
end;

destructor TDevolucaoControl.Destroy;
begin
  FDevolucao.Free;
  inherited;
end;

function TDevolucaoControl.GetId: Integer;
begin
  Result := FDevolucao.GetID;
end;

function TDevolucaoControl.Gravar: Boolean;
begin
  Result := FDevolucao.Gravar;
end;

function TDevolucaoControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FDevolucao.Localizar(aParam);
end;

function TDevolucaoControl.ValidaEdicao: Boolean;
var
  sNN: String;
  sDV: String;
begin
  try
    Result := False;
    sNN := '';
    sDV := '';
    FBarras := TbarrTFO.Create;
    if FDevolucao.Agente = 0 then
    begin
      Application.MessageBox('Informe a Base!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FDevolucao.Expedicao = StrToDate('30/12/1899') then
    begin
      Application.MessageBox('Informe uma data de expectativa v�lida!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FDevolucao.NossoNumero.IsEmpty then
    begin
      Application.MessageBox('Informe o nosso n�mero!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    if FDevolucao.Descricao.IsEmpty then
    begin
      Application.MessageBox('A descri��o da devolu��o!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    sNN := LeftStr(FDevolucao.NossoNumero,10);
    sDV := RightStr(FDevolucao.NossoNumero, 1);
    if sDV <>  FBarras.RetDV(sNN) then
    begin
      Application.MessageBox('Nosso N�mero informado � inv�lido!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
    Result := True;
  finally
    FBarras.Free;
  end;
end;

function TDevolucaoControl.ValidaExclusao: Boolean;
begin
  Result := False;
  if FDevolucao.StatusContainer <> 0 then
  begin
    Application.MessageBox('COntainer j� foi processado!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FDevolucao.Statusobjeto <> 0 then
  begin
    Application.MessageBox('Objeto n�o est� mais em expectativa!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

function TDevolucaoControl.ValidaImportacao: Boolean;
begin
  Result := False;
  if FDevolucao.Expedicao = StrToDate('30/12/1899') then
  begin
    Application.MessageBox('Informe uma data de expectativa v�lida!', 'Aten��o', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

end.
