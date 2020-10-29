unit Control.Sistema;

interface

uses
  System.SysUtils, Forms, System.Classes, DAO.Conexao, Common.Utils, Global.Parametros, Control.Bases,
  FireDAC.Comp.Client;

  type
    TSistemaControl = class
    private

      FConexao: TConexao;
      FStart: Boolean;
      FBases: TBasesControl;

      class var FInstante : TSistemaControl;

    public

      constructor Create;
      destructor Destroy; override;

      class function GetInstance: TSistemaControl;

      property Conexao: TConexao read FConexao write FConexao;
      property Start: Boolean read FStart write FStart;
      property Base: TBasesControl read FBases write FBases;
      function StartGlobal(): Boolean;
      function SaveParamINI(sSection: String; sKey: String; sValue: String): Boolean;
      function ReturSkin(iIndex: Integer): String;
      function LoadSkinsINI(): TStringList;
      procedure CarregaBases(pParam: Array of variant);
    end;
const
  INIFILE = 'database.ini';

implementation

{ TSistemaControl }

procedure TSistemaControl.CarregaBases(pParam: array of variant);
var
  FDQuery : TFDQuery;
begin
  try
    FDQuery := FConexao.ReturnQuery;
    FDQuery := FBases.Localizar(pParam);
    if not FDQuery.IsEmpty then
    begin
      FBases.Bases.Codigo := FDquery.FieldByName('COD_AGENTE').AsInteger;
      FBases.Bases.RazaoSocial := FDQuery.FieldByName('DES_RAZAO_SOCIAL').AsString;
      FBases.Bases.NomeFantasia := FDQuery.FieldByName('NOM_FANTASIA').AsString;
      FBases.Bases.TipoDoc := FDQuery.FieldByName('DES_TIPO_DOC').AsString;
      FBases.Bases.CNPJCPF := FDQuery.FieldByName('NUM_CNPJ').AsString;
      FBases.Bases.IE := FDQuery.FieldByName('NUM_IE').AsString;
      FBases.Bases.IEST := FDQuery.FieldByName('NUM_IEST').AsString;
      FBases.Bases.IM := FDQuery.FieldByName('NUM_IM').AsString;
      FBases.Bases.CNAE := FDQuery.FieldByName('COD_CNAE').AsString;
      FBases.Bases.CRT := FDQuery.FieldByName('COD_CRT').AsInteger;
      FBases.Bases.NumeroCNH := FDQuery.FieldByName('NUM_CNH').AsString;
      FBases.Bases.CategoriaCNH := FDQuery.FieldByName('DES_CATEGORIA_CNH').AsString;
      FBases.Bases.ValidadeCNH := FDQuery.FieldByName('DAT_VALIDADE_CNH').AsDateTime;
      FBases.Bases.PaginaWeb := FDQuery.FieldByName('DES_PAGINA').AsString;
      FBases.Bases.Status := FDQuery.FieldByName('COD_STATUS').AsInteger;
      FBases.Bases.Obs := FDQuery.FieldByName('DES_OBSERVACAO').AsString;
      FBases.Bases.DataCadastro := FDQuery.FieldByName('DAT_CADASTRO').AsDateTime;
      FBases.Bases.DataAlteracao := FDQuery.FieldByName('DAT_ALTERACAO').AsDateTime;
      FBases.Bases.ValorVerba := FDQuery.FieldByName('VAL_VERBA').AsFloat;
      FBases.Bases.TipoConta := FDQuery.FieldByName('DES_TIPO_CONTA').AsString;
      FBases.Bases.CodigoBanco := FDQuery.FieldByName('COD_BANCO').AsString;
      FBases.Bases.NumeroAgente := FDQuery.FieldByName('COD_AGENCIA').AsString;
      FBases.Bases.NumeroConta := FDQuery.FieldByName('NUM_CONTA').AsString;
      FBases.Bases.NomeFavorecido := FDQuery.FieldByName('NOM_FAVORECIDO').AsString;
      FBases.Bases.CNPJCPFFavorecido := FDQuery.FieldByName('NUM_CPF_CNPJ_FAVORECIDO').AsString;
      FBases.Bases.FormaPagamento := FDQuery.FieldByName('DES_FORMA_PAGAMENTO').AsString;
      FBases.Bases.CentroCusto := FDQuery.FieldByName('COD_CENTRO_CUSTO').AsInteger;
      FBases.Bases.Grupo := FDQuery.FieldByName('COD_GRUPO').AsInteger;
    end
    else
    begin
      FBases.Bases.Codigo := 0;
      FBases.Bases.RazaoSocial := 'NONE';
      FBases.Bases.NomeFantasia := 'NONE';
      FBases.Bases.TipoDoc := 'NONE';
      FBases.Bases.CNPJCPF := 'NONE';
      FBases.Bases.IE := 'NONE';
      FBases.Bases.IEST := 'NONE';
      FBases.Bases.IM := 'NONE';
      FBases.Bases.CNAE := 'NONE';
      FBases.Bases.CRT := 0;
      FBases.Bases.NumeroCNH := 'NONE';
      FBases.Bases.CategoriaCNH := 'NONE';
      FBases.Bases.ValidadeCNH := 0;
      FBases.Bases.PaginaWeb := 'NONE';
      FBases.Bases.Status := 0;
      FBases.Bases.Obs := '';
      FBases.Bases.DataCadastro := 0;
      FBases.Bases.DataAlteracao := 0;
      FBases.Bases.ValorVerba := 0;
      FBases.Bases.TipoConta := 'NONE';
      FBases.Bases.CodigoBanco := '0';
      FBases.Bases.NumeroAgente := '0';
      FBases.Bases.NumeroConta := '0';
      FBases.Bases.NomeFavorecido := 'NONE';
      FBases.Bases.CNPJCPFFavorecido := 'NONE';
      FBases.Bases.FormaPagamento := 'NONE';
      FBases.Bases.CentroCusto := 0;
      FBases.Bases.Grupo := 0;
    end;
  finally
    FDQuery.Free;
  end;
end;

constructor TSistemaControl.Create;
begin
  FStart := StartGlobal;
  if FStart then
  begin
    FConexao := TConexao.Create;
    FBases := TBasesControl.Create;
  end;
end;

destructor TSistemaControl.Destroy;
begin
  FConexao.Free;
  FBases.Free;
  inherited;
end;

class function TSistemaControl.GetInstance: TSistemaControl;
begin
  if not Assigned(Self.FInstante) then
  begin
    Self.FInstante := TSistemaControl.Create();
  end;
  Result := Self.FInstante;
end;

function TSistemaControl.LoadSkinsINI: TStringList;
var
  sSkinIni : String;
  lLista: TStringList;
  iIndex : Integer;
  sSkin: String;
begin
  sSkinINI := ExtractFilePath(Application.ExeName) + '\skins.ini';
  if not FileExists(sSkinINI) then Exit;
  iIndex := 0;
  lLista := TStringlist.Create();
  sSkin := 'NONE';
  while not sSKin.IsEmpty do
  begin
    sSkin := Common.Utils.TUtils.LeIni(sSkinINI,'Skin',iIndex.ToString);
    if not sSkin.IsEmpty then
    begin
      lLista.Add(sSkin);
    end;
    iIndex := iIndex + 1;
  end;
  Result := lLista;
end;

function TSistemaControl.ReturSkin(iIndex: Integer): String;
var
  sSkinIni : String;
  sSkin: String;
begin
  sSkin := '';
  sSkinINI := ExtractFilePath(Application.ExeName) + '\skins.ini';
  if not FileExists(sSkinINI) then Exit;
  Result := Common.Utils.TUtils.LeIni(sSkinINI,'Skin',iIndex.ToString);
end;

function TSistemaControl.SaveParamINI(sSection, sKey, sValue: String): Boolean;
begin
  Result := False;
  Common.Utils.TUtils.GravaIni(Global.Parametros.pFileIni,sSection,sKey,sValue);
  Result := True;
end;

function TSistemaControl.StartGlobal: Boolean;
begin
  Result := False;
  Global.Parametros.pFileIni := ExtractFilePath(Application.ExeName) + '\' + INIFILE;
  if not FileExists(Global.Parametros.pFileIni) then Exit;
  Global.Parametros.pDriverID := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','DriverID');
  Global.Parametros.pServer := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','HostName');
  Global.Parametros.pDatabase := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','Database');
  Global.Parametros.pPort := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','Port');
  Global.Parametros.pKBD := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','KBD');
  Global.Parametros.pUBD := Common.Utils.TUtils.DesCriptografa(Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','UBD'),StrToIntDef(Global.Parametros.pKBD,0));
  Global.Parametros.pPBD := Common.Utils.TUtils.DesCriptografa(Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','PBD'),StrToIntDef(Global.Parametros.pKBD,0));
  Global.Parametros.pSkin := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Database','Skin');
  Global.Parametros.pLastUser := Common.Utils.TUtils.LeIni(Global.Parametros.pFileIni,'Login','LastUser');
  Result := True;
end;

end.
