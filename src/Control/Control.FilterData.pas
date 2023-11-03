unit Control.FilterData;

interface

uses Model.FilterData, Forms, VCL.Controls, System.SysUtils;

  type
    TFilterDataControl = class
    private
      FFilter : TFilterData;
    public
      constructor Create;
      destructor Destroy; override;
      property Filtro: TFilterData read FFilter write FFilter;
      procedure MountFilter(bGrupo: Boolean; iOperador: Integer; iCampo: integer; iCondicao: Integer; sValor1: String;
                            sValor2: String);
      procedure PopulateFListFields;
      procedure CreateGroup(iOperador: Integer);
    end;

implementation

{ TFilterDataControl }

constructor TFilterDataControl.Create;
begin
  FFilter := TFilterData.Create();
end;

procedure TFilterDataControl.CreateGroup(iOperador: Integer);
begin
  FFilter.CreateGroup(iOperador);
end;

destructor TFilterDataControl.Destroy;
begin
  FFilter.Free;
  inherited;
end;

procedure TFilterDataControl.MountFilter(bGrupo: Boolean; iOperador, iCampo, iCondicao: Integer; sValor1, sValor2: String);
begin
  FFilter.MountFilter(bGrupo, iOperador, iCampo, iCondicao, sValor1, sValor2);
end;


procedure TFilterDataControl.PopulateFListFields;
begin
  FFilter.PopulateFListFields;
end;

end.
