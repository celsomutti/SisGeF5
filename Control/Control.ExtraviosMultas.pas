unit Control.ExtraviosMultas;

interface

uses Model.ExtraviosMultas, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum, Classes;

type
  TExtraviosMultasControl = class
  private
    FExtravios: TExtraviosMultas;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Finalizar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function ValidaCampos(): Boolean;
    function ValidaExclusao(): Boolean;
    function ValidaEstorno(): Boolean;
    function RetornaTotaisExtravios(aParam: Array of variant): TFDQuery;
    function ExtraviosExtrato(): TFDquery;
    function ExtraviosExtratoEntregadores(): Boolean;
    function EncerraExtravio(aParam: Array of variant): Boolean;
    function ExtravioExiste(): Integer;

    property Extravios: TExtraviosMultas read FExtravios write FExtravios;

  end;

implementation

{ TExtraviosMultasControl }

uses Global.Parametros;

constructor TExtraviosMultasControl.Create;
begin
  FExtravios := TExtraviosMultas.Create;
end;

destructor TExtraviosMultasControl.Destroy;
begin
  FExtravios.Free;
  inherited;
end;

function TExtraviosMultasControl.EncerraExtravio(aParam: array of variant): Boolean;
begin
  Result := FExtravios.EncerraExtravio(aParam);
end;

function TExtraviosMultasControl.ExtravioExiste: Integer;
begin
  Result := FExtravios.ExtravioExiste();
end;

function TExtraviosMultasControl.ExtraviosExtrato(): TFDquery;
begin
  Result := FExtravios.ExtraviosExtrato();
end;

function TExtraviosMultasControl.ExtraviosExtratoEntregadores: Boolean;
begin
  REsult := FExtravios.ExtraviosExtratoEntregadores();
end;

function TExtraviosMultasControl.Finalizar: Boolean;
var
  lLog: TStringList;
begin
  Result := False;
  lLog := TStringList.Create;
  lLog.Text := FExtravios.Obs;
  FExtravios.Total := FExtravios.ValorProduto + FExtravios.Multa + FExtravios.Multa;
  FExtravios.Percentual := 0;
  lLog.Add('Finalizado em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now()) + ' por ' + Global.Parametros.pUser_Name);
  FExtravios.Obs := lLog.Text;
  Result := FExtravios.Gravar();
end;

function TExtraviosMultasControl.GetId: Integer;
begin
  Result := FExtravios.GetID;
end;

function TExtraviosMultasControl.Gravar: Boolean;
begin
  Result := False;
  if Extravios.Acao = Common.ENum.tacExcluir then
  begin
    if not ValidaExclusao() then Exit;
  end
  else
  begin
    if not ValidaCampos then Exit;
  end;
  Result := FExtravios.Gravar;
end;

function TExtraviosMultasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FExtravios.Localizar(aParam);
end;

function TExtraviosMultasControl.RetornaTotaisExtravios(aParam: array of variant): TFDQuery;
begin
  Result := FExtravios.RetornaTotaisExtravios(aParam);
end;

function TExtraviosMultasControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FExtravios.NN.IsEmpty then
  begin
    Application.MessageBox('Informe o nosso n�mero!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  if FExtravios.Tipo = -1 then
  begin
    Application.MessageBox('Informe o tipo!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  if Extravios.Acao = Common.ENum.tacIncluir  then
  begin
    if Extravios.ExtravioExiste() > 0 then
    begin
      Application.MessageBox('Existe um extravio/multa cadastrado este Nosso N�mero!', 'Aten��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;
  if (FExtravios.Data = 0) or (DateTimeToStr(FExtravios.Data).IsEmpty) then
  begin
    Application.MessageBox('Informe a data do extravio/multa!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  if FExtravios.Entregador = 0 then
  begin
    Application.MessageBox('Informe o entregador!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  if FExtravios.Agente = 0 then
  begin
    Application.MessageBox('Informe o c�digo da Base do entregador!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  if FExtravios.Tipo = 0 then
  begin
    if FExtravios.ValorProduto = 0 then
    begin
      Application.MessageBox('Informe o valor do produto!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  end;
  if FExtravios.Tipo = 1 then
  begin
    if FExtravios.ValorProduto = 0 then
    begin
      Application.MessageBox('Informe o valor do produto!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
    if FExtravios.Multa > 0 then
    begin
      Application.MessageBox('N�o se aplica a multa neste tipo de extravio!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
    if FExtravios.Verba > 0 then
    begin
      Application.MessageBox('N�o se aplica o d�bito da verba neste tipo de extravio!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  end;
  if FExtravios.Tipo = 2 then
  begin
    if FExtravios.ValorProduto > 0 then
    begin
      Application.MessageBox('N�o se aplica o valor do produto neste tipo de extravio!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
    if FExtravios.Multa = 0 then
    begin
      Application.MessageBox('Informe o valor da multa!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
    if FExtravios.Verba > 0 then
    begin
      Application.MessageBox('N�o se aplica o d�bito da verba neste tipo de extravio!', 'Aten��o', MB_OK + MB_ICONASTERISK);
      Exit;
    end;
  end;
  if Fextravios.Descricao.IsEmpty then
  begin
    Application.MessageBox('Informe o motivo/descri��o do extravio/multa!', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  Result := True;
end;

function TExtraviosMultasControl.ValidaEstorno: Boolean;
begin
  Result := False;
  if FExtravios.Restricao = 'E' then
  begin
    Application.MessageBox('Estorno j� processado para este Extravio/Multa!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if FExtravios.Extrato = 'S' then
  begin
    Application.MessageBox('Estorno recusado! Extravio j� debitado da Franquia!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if FExtravios.Tipo = 1 then
  begin
    Application.MessageBox('Estorno recusado! Extravio gerado por Sinistro!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  Result := True;
end;

function TExtraviosMultasControl.ValidaExclusao: Boolean;
begin
  Result := False;
  if FExtravios.Restricao = 'S' then
  begin
    Application.MessageBox('Extravio/Multa j� foi finalizado! Exclus�o cancelada.', 'Aten��o', MB_OK + MB_ICONASTERISK);
    Exit;
  end;
  Result := True;
end;

end.
