unit Controller.SisGeFCadastroCandidatos;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFCadastroCandidatos, services.SisGeFTabelaCandidatos, Generics.Collections;

  type
    TCadastroCandidatosController = class
      private
      public
        FCandidatos : TCadastroCandidatosModel;
        FTabela : TObjectList<TTabelaCandidatos>;
        Constructor Create();
        function    GetNextID   (sIdName: string)         : Integer;
        function    CustomSearch(aParams: array of string): boolean;
        function    SaveRecord  ()                        : boolean;
        function    SetupRecords()                        : boolean;
        function    Validate()                            : boolean;
        procedure   SetupTabela;
        procedure   SetupTabelaRecords;
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
  SetupTabelaRecords;
  Result := FCandidatos.SaveRecord;
end;

function TCadastroCandidatosController.SetupRecords: boolean;
begin
  Result := FCandidatos.SetupRecords;
end;

procedure TCadastroCandidatosController.SetupTabela;
begin
  if SetupRecords then
  begin
    FTabela := TObjectList<TTabelaCandidatos>.Create;
    FTabela.Add(TTabelaCandidatos.Create);
    with FCandidatos do
    begin
      FTabela[0].COD_CANDIDATO :=  aRecord.COD_CANDIDATO;
      FTabela[0].id_categoria :=  aRecord.id_categoria;
      FTabela[0].NOM_CANDIDATO := aRecord.NOM_CANDIDATO;
      FTabela[0].DES_EMAIL := aRecord.DES_EMAIL;
      FTabela[0].NUM_TELEFONE := aRecord.NUM_TELEFONE;
      FTabela[0].NUM_CELULAR := aRecord.NUM_CELULAR ;
      FTabela[0].NUM_CEP := aRecord.NUM_CEP;
      FTabela[0].DES_ENDERECO := aRecord.DES_ENDERECO;
      FTabela[0].NUM_ENDERECO := aRecord.NUM_ENDERECO;
      FTabela[0].DES_COMPLEMENTO := aRecord.DES_COMPLEMENTO ;
      FTabela[0].DES_BAIRRO := aRecord.DES_BAIRRO;
      FTabela[0].DES_CIDADE := aRecord.DES_BAIRRO;
      FTabela[0].DES_UF := aRecord.DES_UF ;
      FTabela[0].DAT_VALIDADE_CNH := aRecord.DAT_VALIDADE_CNH;
      FTabela[0].DES_CATEGORIA_CNH := aRecord.DES_CATEGORIA_CNH;
      FTabela[0].DES_TIPO_VEICULO := aRecord.DES_TIPO_VEICULO;
      FTabela[0].DES_MODELO_VEICULO := aRecord.DES_MODELO_VEICULO;
      FTabela[0].DES_ANO_VEICULO := aRecord.DES_ANO_VEICULO;
      FTabela[0].DES_TIPO_COMBUSTIVEL := aRecord.DES_TIPO_COMBUSTIVEL;
      FTabela[0].DES_EXPERIENCIA := aRecord.DES_EXPERIENCIA;
      FTabela[0].DES_REGIOES := aRecord.DES_REGIOES;
      FTabela[0].DOM_EXPERIENCIA := aRecord.DOM_EXPERIENCIA;
      FTabela[0].DOM_ANTECEDENTES := aRecord.DOM_ANTECEDENTES;
      FTabela[0].DOM_RESTRICOES := aRecord.DOM_RESTRICOES;
      FTabela[0].DOM_LICENCIAMENTO_IPVA := aRecord.DOM_LICENCIAMENTO_IPVA;
      FTabela[0].DOM_DISPONIBILIDADE := aRecord.DOM_DISPONIBILIDADE;
    end;
  end;
end;

procedure TCadastroCandidatosController.SetupTabelaRecords;
begin
  with FCandidatos do
  begin
    aRecord.COD_CANDIDATO := FTabela[0].COD_CANDIDATO;
    aRecord.id_categoria := FTabela[0].id_categoria;
    aRecord.NOM_CANDIDATO := FTabela[0].NOM_CANDIDATO;
    aRecord.DES_EMAIL := FTabela[0].DES_EMAIL;
    aRecord.NUM_TELEFONE := FTabela[0].NUM_TELEFONE;
    aRecord.NUM_CELULAR  := FTabela[0].NUM_CELULAR;
    aRecord.NUM_CEP := FTabela[0].NUM_CEP;
    aRecord.DES_ENDERECO := FTabela[0].DES_ENDERECO;
    aRecord.NUM_ENDERECO := FTabela[0].NUM_ENDERECO;
    aRecord.DES_COMPLEMENTO  := FTabela[0].DES_COMPLEMENTO;
    aRecord.DES_BAIRRO := FTabela[0].DES_BAIRRO;
    aRecord.DES_BAIRRO := FTabela[0].DES_CIDADE;
    aRecord.DES_UF  := FTabela[0].DES_UF;
    aRecord.DAT_VALIDADE_CNH := FTabela[0].DAT_VALIDADE_CNH;
    aRecord.DES_CATEGORIA_CNH := FTabela[0].DES_CATEGORIA_CNH;
    aRecord.DES_TIPO_VEICULO := FTabela[0].DES_TIPO_VEICULO;
    aRecord.DES_MODELO_VEICULO := FTabela[0].DES_MODELO_VEICULO;
    aRecord.DES_ANO_VEICULO := FTabela[0].DES_ANO_VEICULO;
    aRecord.DES_TIPO_COMBUSTIVEL := FTabela[0].DES_TIPO_COMBUSTIVEL;
    aRecord.DES_EXPERIENCIA := FTabela[0].DES_EXPERIENCIA;
    aRecord.DES_REGIOES := FTabela[0].DES_REGIOES;
    aRecord.DOM_EXPERIENCIA := FTabela[0].DOM_EXPERIENCIA;
    aRecord.DOM_ANTECEDENTES := FTabela[0].DOM_ANTECEDENTES;
    aRecord.DOM_RESTRICOES := FTabela[0].DOM_RESTRICOES;
    aRecord.DOM_LICENCIAMENTO_IPVA := FTabela[0].DOM_LICENCIAMENTO_IPVA;
    aRecord.DOM_DISPONIBILIDADE := FTabela[0].DOM_DISPONIBILIDADE;
  end;
end;

function TCadastroCandidatosController.Validate: boolean;
begin
  Result := False;
  if FTabela[0].NOM_CANDIDATO = EmptyStr then
  begin
    FCandidatos.Mensagem := 'Informe o nome do candidato.';
    Exit;
  end;
  if FTabela[0].DES_EMAIL = EmptyStr then
  begin
    FCandidatos.Mensagem := 'Informe o endereço de e-mail do candidato.';
    Exit;
  end;
  if FTabela[0].DES_ENDERECO <> EmptyStr then
  begin
    if FTabela[0].DES_BAIRRO = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe o bairro do endereço.';
      Exit;
    end;
    if FTabela[0].DES_CIDADE = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe a cidade do endereço.';
      Exit;
    end;
    if FTabela[0].DES_UF = EmptyStr then
    begin
      FCandidatos.Mensagem := 'Informe o estado do endereço.';
      Exit;
    end;
  end;
  Result := True;

end;

end.
