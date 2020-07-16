unit Control.Lancamentos;

interface

uses Model.Lancamentos, System.SysUtils, FireDAC.Comp.Client, Forms, Windows, Common.ENum;

type
  TLancamentosControl = class

  private

    FLancamentos: TLancamentos;

  public

    constructor Create;
    destructor Destroy; override;

    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function ValidaCampos(): Boolean;
    function ValidaExclusao(): Boolean;
    function ExtratoLancamentos(aParam: Array of variant): TFDQuery;
    function EncerraLancamentos(aParam: Array of variant): Boolean;

    property ALancamentos: TLancamentos read FLancamentos write FLancamentos;

  end;

implementation

{ TLancamentosControl }

constructor TLancamentosControl.Create;
begin
  FLancamentos := TLancamentos.Create;
end;

destructor TLancamentosControl.Destroy;
begin
  FLancamentos.Free;
  inherited;
end;

function TLancamentosControl.EncerraLancamentos(aParam: array of variant): Boolean;
begin
  Result:= FLancamentos.EncerraLancamentos(aParam);
end;

function TLancamentosControl.ExtratoLancamentos(aParam: array of variant): TFDQuery;
begin
  Result := FLancamentos.ExtratoLancamentos(aParam);
end;

function TLancamentosControl.GetId: Integer;
begin
  Result := FLancamentos.GetID;
end;

function TLancamentosControl.Gravar: Boolean;
begin
  Result := FLancamentos.Gravar;
end;

function TLancamentosControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FLancamentos.Localizar(aParam);
end;

function TLancamentosControl.ValidaCampos: Boolean;
begin
  Result := False;
  if FLancamentos.Descricao.IsEmpty then
  begin
    Application.MessageBox('Informe a descrição do lançamento.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if (DateTimeToStr(FLancamentos.Data).IsEmpty) or (FLancamentos.Data = 0) then
  begin
    Application.MessageBox('Informe a data do Lançamento.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FLancamentos.Cadastro = 0 then
  begin
    Application.MessageBox('Informe o código do Entregador.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if FLancamentos.Valor = 0 then
  begin
    Application.MessageBox('Informe o valor.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

function TLancamentosControl.ValidaExclusao: Boolean;
begin
  Result := False;
  if FLancamentos.Desconto = 'S' then
  begin
    Application.MessageBox('Lançamento já fechado! Impossível excluir.', 'Atenção', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  Result := True;
end;

end.
