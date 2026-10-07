unit Controller.SisGeFFuncionariosEnderecos;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFFuncionariosEnderecos;

  type TFuncionariosEnderecosController = class
        private
    public
      FEnderecos : TFuncionariosEnderecosModel;

      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
      function    Validate    ()                        : boolean;
  end;
implementation

{ TFuncionariosEnderecosController }

constructor TFuncionariosEnderecosController.Create;
begin
  FEnderecos := TFuncionariosEnderecosModel.Create;
end;

function TFuncionariosEnderecosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FEnderecos.CustomSearch(aParams);
end;

function TFuncionariosEnderecosController.SaveRecord: boolean;
begin
  Result := FEnderecos.SaveRecord;
end;

function TFuncionariosEnderecosController.SetupRecord: boolean;
begin
  Result := Fenderecos.SetupRecords;
end;

function TFuncionariosEnderecosController.Validate: boolean;
begin
  Result := False;
  with FEnderecos.Records do
  begin
    if des_logradouro <> EmptyStr then
    begin
      if num_logradouro = EmptyStr then
      num_logradouro := 'S/N';
      if des_bairro = EmptyStr then
      begin
        FEnderecos.Mensagem := 'Informe o bairro do endereço do funcionário.';
        Exit;
      end;
      if nom_cidade = EmptyStr then
      begin
        FEnderecos.Mensagem := 'Informe a cidade do endereço do funcionário.';
        Exit;
      end;
      if uf_estado = EmptyStr then
      begin
        FEnderecos.Mensagem := 'Informe a sigla do estado do endereço do funcionário.';
        Exit;
      end;
    end;
  end;
  Result := True;
end;

end.
