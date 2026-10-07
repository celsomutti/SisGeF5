unit Controller.SisGeFFuncionarios;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFCadastroFuncionarios;

  type
    TFuncionariosController= class
    private
      FFuncionario: TFuncionariosModel;
    public
      property Funcionario: TFuncionariosModel read FFuncionario write FFuncionario;
      Constructor Create();
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord ()                         : boolean;
      function    SetupRecord()                         : boolean;
      function    Validate()                            : boolean;
  end;

implementation

{ TFuncionariosController }

constructor TFuncionariosController.Create;
begin
  FFuncionario := TFuncionariosModel.Create;
end;

function TFuncionariosController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FFuncionario.CustomSearch(aParams);
end;

function TFuncionariosController.SaveRecord: boolean;
begin
  Result := FFuncionario.SaveRecord;
end;

function TFuncionariosController.SetupRecord: boolean;
begin
  Result := FFuncionario.SetupRecord;
end;

function TFuncionariosController.Validate: boolean;
begin
  Result := False;
  with FFuncionario.ARecord do
  begin
    if nom_funcionario = EmptyStr then
    begin
      FFuncionario.Mensagem := 'Informe o nome do funcionário.';
      Exit;
    end;
    if num_cpf = EmptyStr then
    begin
      FFuncionario.Mensagem := 'Informe o CPF do funcionário.';
      Exit;
    end;
    if num_rg <> EmptyStr then
    begin
      if dat_emissao_rg = 0 then
      begin
        FFuncionario.Mensagem := 'Informe o emissor do RG do funcionário.';
        Exit;
      end;
      if nom_emissor_rg = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe o emissor do RG do funcionário.';
        Exit;
      end;
      if uf_emissor_rg = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe a sigla do estado do RG do funcionário.';
        Exit;
      end;
    end;
    if des_naturalidade <> EmptyStr then
    begin
      if uf_naturalidade = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe a sigla do estado da naturalidade do funcionário.';
        Exit;
      end;
    end;
    if num_cnh <> EmptyStr then
    begin
      if num_registro_cnh = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe o número do registro da CNH do funcionário.';
        Exit;
      end;
    end;
    if num_registro_cnh <> EmptyStr then
    begin
      if des_categoria_cnh = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe a categoria da CNH do funcionário.';
        Exit;
      end;
      if dat_validade_cnh = 0 then
      begin
        FFuncionario.Mensagem := 'Informe a data de validade da CNH do funcionário.';
        Exit;
      end;
      if dat_validade_cnh = 0 then
      begin
        FFuncionario.Mensagem := 'Informe a data de emissão da CNH do funcionário.';
        Exit;
      end;
      if uf_cnh = EmptyStr then
      begin
        FFuncionario.Mensagem := 'Informe a sigla do estado da CNH do funcionário.';
        Exit;
      end;
      if dat_primeira_cnh = 0 then
      begin
        FFuncionario.Mensagem := 'Informe a data da emissão da primeira CNH do funcionário.';
        Exit;
      end;
    end;
    if id_funcao <> 0 then
    begin
      if id_departamento = 0 then
      begin
        FFuncionario.Mensagem := 'Informe o departamento do funcionário.';
        Exit;
      end;
      if val_remuneracao = 0 then
      begin
        FFuncionario.Mensagem := 'Informe o valor da remuneração do funcionário.';
        Exit;
      end;
    end;
  end;
  Result := True;
end;

end.
