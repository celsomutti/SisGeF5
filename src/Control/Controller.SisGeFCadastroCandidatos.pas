unit Controller.SisGeFCadastroCandidatos;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFCadastroCandidatos;

  type
    TCadastroCandidatosController = class
      private
      public
        FCandidatos : TCadastroCandidatosModel;
        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;
        function    Validate()                            : boolean;
    end;

implementation

{ TCadastroCandidatosController }

constructor TCadastroCandidatosController.Create;
begin
  FCandidatos := TCadastroCandidatosModel.Create;
end;

function TCadastroCandidatosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FCandidatos.CustomSearch(aParams);
end;

function TCadastroCandidatosController.GetNextID(sIdName: string): Integer;
begin
  Result := FCandidatos.GetNextID(sIdName);
end;

function TCadastroCandidatosController.SaveRecord: boolean;
begin
  Result := FCandidatos.SaveRecord;
end;

function TCadastroCandidatosController.SetupRecords: boolean;
begin
  Result := FCandidatos.SetupRecords;
end;

function TCadastroCandidatosController.Validate: boolean;
begin
  Result := False;
  if FCandidatos.Query.FieldByName('NOM_CANDIDATO').AsString = EmptyStr then
  begin
    FCandidatos.Mensagem := 'Informe o nome do candidato.';
    Exit;
  end;
  if FCandidatos.Query.FieldByName('DES_EMAIL').AsString = EmptyStr then
  begin
    FCandidatos.Mensagem := 'Informe o endereço de e-mail do candidato.';
    Exit;
  end;
  if FCandidatos.Query.FieldByName('DES_ENDERECO').AsString <> EmptyStr then
  begin
    if FCandidatos.Query.FieldByName('DES_BAIRRO').AsString = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe o bairro do endereço.';
      Exit;
    end;
    if FCandidatos.Query.FieldByName('DES_CIDADE').AsString = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe a cidade do endereço.';
      Exit;
    end;
    if FCandidatos.Query.FieldByName('DES_UF').AsString = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe o estado do endereço.';
      Exit;
    end;
  end;
  Result := True;

end;

end.
