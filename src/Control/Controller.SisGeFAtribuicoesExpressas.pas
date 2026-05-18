unit Controller.SisGeFAtribuicoesExpressas;

interface

  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGefAtribuicoesExpressas;

  type
    TAtribuicoesController = class
    private
      FAtribuicoes : TAtribuicoesModel;
    public
      Constructor Create();

      function GetID(): Integer;
      function Search(vParam: array of variant): boolean;
      function Gravar(): Boolean;
      function CustomSearch(sParams: array of string): boolean;

      property Atribuicoes : TAtribuicoesModel read FAtribuicoes write FAtribuicoes;
    end;

implementation

{ TAtribuicoesController }

constructor TAtribuicoesController.Create;
begin
  Atribuicoes := TAtribuicoesModel.Create;
end;

function TAtribuicoesController.CustomSearch(sParams: array of string): boolean;
begin
  Result := Atribuicoes.CustomSearch(sParams);
end;

function TAtribuicoesController.GetID: Integer;
begin
  Result := Atribuicoes.GetID;
end;

function TAtribuicoesController.Gravar: Boolean;
begin
  Result := Atribuicoes.Gravar;
end;

function TAtribuicoesController.Search(vParam: array of variant): boolean;
begin
  Result := Atribuicoes.Search(vParam);
end;

end.
