unit Controller.SisGeFFuncoesRH;

interface
  uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.SisGeFCadastroFuncoesRH;

  type
    TFuncoesRHController = class
    private
      FFuncoes : TFuncoesRH;
    public
      Constructor Create();
      function    GetNextID   (sIdName: string)         : Integer;
      function    Search      (aParams: array of string): boolean;
      function    CustomSearch(aParams: array of string): boolean;
      function    SaveRecord  ()                        : boolean;
      function    SetupRecord ()                        : boolean;
    end;

implementation


{ TFuncoesRHController }

constructor TFuncoesRHController.Create;
begin
  FFuncoes := TFuncoesRH.Create();
end;

function TFuncoesRHController.CustomSearch(aParams: array of string): boolean;
begin
  Result := FFuncoes.CustomSearch(aParams);
end;

function TFuncoesRHController.GetNextID(sIdName: string): Integer;
begin
  Result := FFuncoes.GetNextID(sIdName);
end;

function TFuncoesRHController.SaveRecord: boolean;
begin
  Result := FFuncoes.SaveRecord();
end;

function TFuncoesRHController.Search(aParams: array of string): boolean;
begin
  Result := FFuncoes.Search(aParams);
end;

function TFuncoesRHController.SetupRecord: boolean;
begin
  Result := FFuncoes.SetupRecord;
end;

end.
