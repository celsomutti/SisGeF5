unit Controller.SisGeFFuncionariosDocumentosRH;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosDocumentosRH;

  type
    TFuncionariosDocumentosRHController = class
    private
    public
      FDocumentos : TFuncionariosDocumentoeRHModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
      function    Validate    ()                        : boolean;

    end;

implementation

{ TFuncionariosDocumentosRHController }

constructor TFuncionariosDocumentosRHController.Create;
begin
  FDocumentos := TFuncionariosDocumentoeRHModel.Create;
end;

function TFuncionariosDocumentosRHController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FDocumentos.CustomSearch(aParams);
end;

function TFuncionariosDocumentosRHController.SaveRecord: boolean;
begin
  Result := FDocumentos.SaveRecord;
end;

function TFuncionariosDocumentosRHController.SetupRecord: boolean;
begin
  Result := FDocumentos.SetupRecords;
end;

function TFuncionariosDocumentosRHController.Validate: boolean;
begin
  Result := False;
  with FDocumentos.Records do
  begin
    if num_ctps <> EmptyStr then
    begin
      if num_serie_ctps = EmptyStr then
      begin
        FDocumentos.Mensagem = 'Informe a série da CTPS do funcionário.';
        Exit;
      end;
      if uf_ctps = EmptyStr then
      begin
        FDocumentos.Mensagem = 'Informe a sigla do estado da CTPS do funcionário.';
        Exit;
      end;
    end;
    if num_titulo_eleitoral <> EmptyStr then
    begin
      if num_zona_eleitoral = EmptyStr then
      begin
        FDocumentos.Mensagem = 'Informe a zona eleitoral do título de eleitor do funcionário.';
        Exit;
      end;
      if num_secao_eleitoral = EmptyStr then
      begin
        FDocumentos.Mensagem = 'Informe a seção da zona eleitoral do título de eleitor do funcionário.';
        Exit;
      end;
    end;
  end;
  Result := True;
end;

end.
