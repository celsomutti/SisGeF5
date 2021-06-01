{**************************************************************************************************************************
* Classe/Objeto : TFinanceiroPrazosExtratosControl
* Finalidade    : M�dulo controller da classe TFinanceiroPrazosExtratos
* N�vel         : Controller
* Autor         : Celso Mutti
* Data          : 01/06/2021
* Vers�o        : 1
* Hist�rico     : 01/06/2021 - Cria��o - Celso Mutti (1)
**************************************************************************************************************************}
unit Control.FinanceiroPrazosExtratos;

interface

uses Model.FinanceiroPrazosExtratos, System.SysUtils, FireDAC.Comp.Client, Common.ENum;

type
  TFinanceiroPrazosExtratosControl = class
  private

    FPrazos : TFinanceiroPrazosExtratos;

  public
    constructor Create;
    destructor  Destroy; override;

    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    function    MountPeriod(iAno, iMes: integer): boolean; // monta as data do per�odo e a data do pagamento;
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query �s propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe

    property  Prazos: TFinanceiroPrazosExtratos read  FPrazos write FPrazos;

  end;

implementation

{ TFinanceiroPrazosExtratosControl }

procedure TFinanceiroPrazosExtratosControl.ClearSelf;
begin
  FPrazos.ClearSelf;
end;

constructor TFinanceiroPrazosExtratosControl.Create;
begin
  FPrazos := TFinanceiroPrazosExtratos.Create;
end;

destructor TFinanceiroPrazosExtratosControl.Destroy;
begin
  FPrazos.Free;
  inherited;
end;

function TFinanceiroPrazosExtratosControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FPRazos.GetField(sField, sKey, sKeyValue);
end;

function TFinanceiroPrazosExtratosControl.MountPeriod(iAno, iMes: integer): boolean;
begin
  Result := FPrazos.MountPeriod(iAno, iMes);
end;

function TFinanceiroPrazosExtratosControl.Save: Boolean;
begin
  Result := FPrazos.Save();
end;

function TFinanceiroPrazosExtratosControl.Search(aParam: array of variant): boolean;
begin
  Result := FPrazos.Search(aParam);
end;

procedure TFinanceiroPrazosExtratosControl.SetupSelf(fdQuery: TFDQuery);
begin
  FPrazos.SetupSelf(fdQuery);
end;

end.
