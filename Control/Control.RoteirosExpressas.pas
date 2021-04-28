unit Control.RoteirosExpressas;

interface

uses FireDAC.Comp.Client, Common.ENum, Model.RoteirosExpressas, Control.Sistema, System.Classes, System.SysUtils;

type
  TRoteirosExpressasControl = class
  private
    FRoteiros : TRoteirosExpressas;
    procedure StartProcess();
    procedure UpdateProcess(dCount: Double);
    procedure TerminateProcess();
  public
    constructor Create;
    destructor Destroy; override;
    function Gravar: Boolean;
    function Localizar(aParam: array of variant): TFDQuery;
    function GetId(): Integer;
    function DeleteCliente(iCliente: Integer): Boolean;
    function PopulateRoteiros(sRoteiro: string): Boolean;
    procedure ImportRoteiros(sFile: String; iCliente: Integer);
    function SaveData(): Boolean;
    function ListRoteiro(): TFDQuery;
    function SetupModel(FDQuery: TFDQuery): Boolean;
    property Roteiros: TRoteirosExpressas read FRoteiros write FRoteiros;
  end;

implementation

{ TRoteirosExpressasControl }

uses View.RoteirosExpressas, Data.SisGeF, Global.Parametros, Common.Utils, System.Threading;

constructor TRoteirosExpressasControl.Create;
begin
  FRoteiros := TRoteirosExpressas.Create;
end;

function TRoteirosExpressasControl.DeleteCliente(iCliente: Integer): Boolean;
begin
  Result := FRoteiros.DeleteCliente(iCliente);
end;

destructor TRoteirosExpressasControl.Destroy;
begin
  FRoteiros.Free;
  inherited;
end;

function TRoteirosExpressasControl.GetId: Integer;
begin
  Result := FRoteiros.GetID();
end;

function TRoteirosExpressasControl.Gravar: Boolean;
begin
  Result := FRoteiros.Gravar();
end;

procedure TRoteirosExpressasControl.ImportRoteiros(sFile: String; iCliente: Integer);
var
  ArquivoCSV: TextFile;
  sLinha: String;
  sDetalhe: TStringList;
  iTotal : Integer;
  dCount : Double;
  i : Integer;
  iTipo: Integer;
begin
  TTask.Run(procedure
  begin
    TThread.Synchronize(nil, procedure
          begin
            Self.StartProcess();
          end);
    if Data_Sisgef.mtbRoteirosExpressas.Active then Data_Sisgef.mtbRoteirosExpressas.Close;
    Data_Sisgef.mtbRoteirosExpressas.Open;
    AssignFile(ArquivoCSV, sFile);
    sDetalhe := TStringList.Create;
    sDetalhe.StrictDelimiter := True;
    sDetalhe.Delimiter := ';';
    Reset(ArquivoCSV);
    iTotal := Common.Utils.TUtils.NumeroDeLinhasTXT(sFile);
    i := 0;
    dCount := 0;
    while not Eoln(ArquivoCSV) do
    begin
      Readln(ArquivoCSV, sLinha);
      sDetalhe.DelimitedText := sLinha + ';';
      if Common.Utils.TUtils.ENumero(sDetalhe[0]) then
      begin
        iTipo := 0;
        Data_Sisgef.mtbRoteirosExpressas.Insert;
        Data_Sisgef.mtbRoteirosExpressasid_roteiro.AsInteger := 0;
        Data_Sisgef.mtbRoteirosExpressascod_ccep5.AsString:= sDetalhe[7];
        Data_Sisgef.mtbRoteirosExpressasdes_roteiro.AsString := UTF8ToString(sDetalhe[8]);
        Data_Sisgef.mtbRoteirosExpressasnum_cep_inicial.AsString := sDetalhe[0];
        if sDetalhe[1] = '' then
        begin
          Data_Sisgef.mtbRoteirosExpressasnum_cep_final.AsString := sDetalhe[0];
        end
        else
        begin
          Data_Sisgef.mtbRoteirosExpressasnum_cep_final.AsString := sDetalhe[1];
        end;
        Data_Sisgef.mtbRoteirosExpressasdes_prazo.AsString := UTF8ToString(sDetalhe[2]);
        Data_Sisgef.mtbRoteirosExpressasdom_zona.AsString := Copy(sDetalhe[3],1,1);
        if sDetalhe[4] = 'ABRANG. LEVE e PESADO' then
        begin
          iTipo := 3;
        end
        else if sDetalhe[4] = 'NÃO FAZ' then
        begin
          iTipo := 0;
        end
        else if Pos('FAZ PESADO', sDetalhe[4]) > 0 then
        begin
          iTipo := 2;
        end
        else if sDetalhe[4] = 'SÓ FAZ LEVE' then
        begin
          iTipo := 1;
        end;
        Data_Sisgef.mtbRoteirosExpressascod_tipo.AsInteger := iTipo;
        Data_Sisgef.mtbRoteirosExpressasdes_logradouro.AsString := UTF8ToString(sDetalhe[5]);
        Data_Sisgef.mtbRoteirosExpressasdes_bairro.AsString := UTF8ToString(sdetalhe[6]);
        if sDetalhe.Count > 10 then
        begin
          Data_Sisgef.mtbRoteirosExpressascod_leve.AsInteger := StrToIntDef(sDetalhe[11], 0);
          Data_Sisgef.mtbRoteirosExpressascod_pesado.AsInteger := StrToIntDef(sDetalhe[12], 0);
        end
        else
        begin
          Data_Sisgef.mtbRoteirosExpressascod_leve.AsInteger := 0;
          Data_Sisgef.mtbRoteirosExpressascod_pesado.AsInteger := 0;
        end;
        Data_Sisgef.mtbRoteirosExpressascod_cliente.AsInteger := iCliente;
        Data_Sisgef.mtbRoteirosExpressas.Post;
      end;
      Inc(i);
      dCount := (i / iTotal) * 100;
      TThread.Synchronize(nil, procedure
        begin
          Self.UpdateProcess(dCount);
        end);
    end;
    CloseFile(ArquivoCSV);
    TThread.Synchronize(nil, procedure
      begin
        Self.TerminateProcess;
      end);
  end);
end;

function TRoteirosExpressasControl.ListRoteiro: TFDQuery;
begin
  Result := FRoteiros.ListRoteiro();
end;

function TRoteirosExpressasControl.Localizar(aParam: array of variant): TFDQuery;
begin
  Result := FRoteiros.Localizar(aParam);
end;

function TRoteirosExpressasControl.PopulateRoteiros(sRoteiro: string): Boolean;
var
  fdQuery : TFDQuery;
  aParam : Array of variant;
begin
  try
    Result := False;
    SetLength(aParam, 2);
    aParam[0] := 'CCEP5';
    aParam[1] := sRoteiro;
    fdQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery();
    fdQuery := FRoteiros.Localizar(aParam);
    Finalize(aParam);
    if not fdQuery.IsEmpty then
    begin
      if Data_Sisgef.mtbRoteirosExpressas.Active then Data_Sisgef.mtbRoteirosExpressas.Close;
      Data_Sisgef.mtbRoteirosExpressas.Data := fdQuery.Data;
    end;
    if Data_Sisgef.mtbRoteirosExpressas.IsEmpty then
    begin
      Exit;
    end;
    Result := True;
  finally
    fdQuery.Connection.Close;
    fdQuery.Free;
  end;
end;

function TRoteirosExpressasControl.SaveData(): Boolean;
begin
  Result := FRoteiros.SaveData(Data_Sisgef.mtbRoteirosExpressas);
end;

function TRoteirosExpressasControl.SetupModel(FDQuery: TFDQuery): Boolean;
begin
  Result := FRoteiros.SetupModel(FDQuery);
end;

procedure TRoteirosExpressasControl.StartProcess;
begin
  view_RoteirosExpressas.ds.Enabled := False;
  view_RoteirosExpressas.pbProcesso.Position := 0;
  view_RoteirosExpressas.lyiProgresso.Visible := True;
  view_RoteirosExpressas.actGravarRoteiros.Enabled := False;
  view_RoteirosExpressas.actCancelar.Enabled := False;
end;

procedure TRoteirosExpressasControl.TerminateProcess;
begin
  view_RoteirosExpressas.pbProcesso.Position := 0;
  view_RoteirosExpressas.lyiProgresso.Visible := False;
  view_RoteirosExpressas.ds.Enabled := True;
  if not Data_Sisgef.mtbRoteirosExpressas.IsEmpty then
  begin
    view_RoteirosExpressas.actGravarRoteiros.Enabled := True;
    view_RoteirosExpressas.actCancelar.Enabled := True;
  end;
end;

procedure TRoteirosExpressasControl.UpdateProcess(dCount: Double);
begin
  view_RoteirosExpressas.pbProcesso.Position := dCount;
  view_RoteirosExpressas.pbProcesso.Refresh;
end;

end.
