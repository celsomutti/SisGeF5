unit Model.MergeCadastroGeral;

interface

uses Data.SisGeF, Control.CadastroGeral, Control.CadastroEnderecos, Control.CadastroContatos, Control.CadastroFinanceiro,
  Control.CadastroRH, Control.CadastroGR, Control.CadastroHistorico, FireDAC.Comp.Client;

type
  TMergeCadastroGeral = class

  private
    FCadastro : TCadastrosControl;
    FEnderecos : TCadastroEnderecosControl;
    FContatos : TCadastroContatosControl;
    FRH : TCadastroRHControl;
    FGR : TCadastroGRControl;
    FHistorico : TCadastroHistoricoControl;
  public
    constructor Create;
    destructor Destroy;
    function FetchCadastroGeral(iId: Integer;iTipo: Integer): TFDQuery;
  end;

implementation

{ TMergeCadastroGeral }

constructor TMergeCadastroGeral.Create;
begin
  FCadastro := TCadastrosControl.Create;
  FEnderecos := TCadastroEnderecosControl.Create;
  FContatos := TCadastroContatosControl.Create;
  FRH := TCadastroRHControl.Create;
  FGR := TCadastroGRControl.Create;
  FHistorico := TCadastroHistoricoControl.Create;
end;

destructor TMergeCadastroGeral.Destroy;
begin
  FCadastro.Free;
  FEnderecos.Free;
  FContatos.Free;
  FRH.Free;
  FGR.Free;
  FHistorico.Free;
end;

function TMergeCadastroGeral.FetchCadastroGeral(iId, iTipo: Integer): TFDQuery;
var
  FCadastro : TFDQuery;
begin
  FCadastro := Data_Sisgef.fdQueryCadastroGeral;
  FCadastro.ParamByName('PID').AsInteger := iId;
  FCadastro.ParamByName('PTIPO').AsInteger := iTipo;
  FCadastro.Open;
  Result := FCadastro;
end;

end.
