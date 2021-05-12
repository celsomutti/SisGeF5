{**************************************************************************************************************************
* Classe/Objeto : TAbrangenciaExpressasControl
* Finalidade    : M�dulo controller da classe TAbrangenciaExpressas
* N�vel         : Controller
* Autor         : Celso Mutti
* Data          : 12/05/2021
* Vers�o        : 1
* Hist�rico     : 12/05/2021 - Cria��o - Celso Mutti (1)
**************************************************************************************************************************}
unit Control.AbrangenciaExpressas;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.AbrangenciaExpressas;

  type
  TAbrangenciaExpressasControl = class
  private
    FAbrangerncia : TAbrangenciaExpressas;

    constructor Create;
    destructor  Destroy; override;
  public
    function    Search(aParam : array of variant)  : boolean;  // realiza pesquisa em banco de dados
    function    Save()  : Boolean;  // salva, exclue dados no banco de dados
    function    GetField(sField : String; sKey : String; sKeyValue : String) : String; // localiza e retorna o valor de um campo de uma tabela
    procedure   SetupSelf(fdQuery : TFDQuery);  //  atribui os valores dos campos de uma query �s propriedades da classe
    procedure   ClearSelf();  //  limpa as propriedades da dos campos da tabela da classe
  end;

implementation

{ TAbrangenciaExpressasControl }

procedure TAbrangenciaExpressasControl.ClearSelf;
begin
  FAbrangerncia.ClearSelf;
end;

constructor TAbrangenciaExpressasControl.Create;
begin
  FAbrangerncia := TAbrangenciaExpressas.Create;
end;

destructor TAbrangenciaExpressasControl.Destroy;
begin
  FAbrangerncia.Free;
  inherited;
end;

function TAbrangenciaExpressasControl.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FAbrangerncia.GetField(sField, sKey, sKeyValue);
end;

function TAbrangenciaExpressasControl.Save: Boolean;
begin
  Result := FAbrangerncia.Save();
end;

function TAbrangenciaExpressasControl.Search(aParam: array of variant): boolean;
begin
  Result := FAbrangerncia.Search(aParam)
end;

procedure TAbrangenciaExpressasControl.SetupSelf(fdQuery: TFDQuery);
begin
  FAbrangerncia.SetupSelf(fdQuery);
end;

end.
