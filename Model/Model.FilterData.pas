unit Model.FilterData;

interface

  uses FireDAC.Comp.Client, System.Classes, Forms, Windows, Data.DB, System.StrUtils, System.DateUtils,
  System.SysUtils;

  type
    TFilterData = class
    private
      FMemTab: TFDMemTable;
      FListFieldCaption: TStringList;
      FListFieldName: TStringList;
      FListFieldType: array of TFieldType;
      FParams: TStringList;
      FTextFilter: String;
      aOperador: Array of String;
      aCondicoes: Array of String;
    public
      constructor Create();
      property MemTab: TFDMemTable read FMemTab write FMemTab;
      property TextFilter: String read FTextFilter write FTextFilter;
      property ListFieldCaption: TStringList read FListFieldCaption write FListFieldCaption;
      property ListFieldName: TStringList read FListFieldName write FListFieldName;
      property Params: TStringList read FParams write FParams;
      procedure MountFilter(bGrupo: Boolean; iOperador: Integer; iCampo: Integer; iCondicao: Integer; sValor1: String;
                            sValor2: String);
      procedure PopulateFListFields;
      procedure CreateGroup(iOperador: Integer);
      function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
    end;

implementation

uses Global.Parametros;

{ TFilterData }

constructor TFilterData.Create;
begin
  FListFieldCaption := TStringList.Create;
  FListFieldName := TStringList.Create;
  FParams := TStringList.Create;
  SetLength(aOperador,4);
  aOperador := ['', ' e ', ' ou ', ' não '];
  aCondicoes := [' igual a ', ' diferente de ',  ' maior que ', ' menor que ', ' maior ou igual a ', ' menor ou igual a ',
                 ' entre ',  ' em ',  ' contendo '];
end;

procedure TFilterData.CreateGroup(iOperador: Integer);
var
  i : Integer;
begin
  if iOperador = 0 then Exit;
  i := Pred(FParams.Count);
  FParams[i] := FParams[i] + ') ' + aOperador[iOperador] + ' (';
  FTextFilter := FTextFilter + ') ' + Global.Parametros.OPERATORS[iOperador] + ' (';
end;

function TFilterData.IIf(Expressao, ParteTRUE, ParteFALSE: Variant): Variant;
begin
  if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
end;

procedure TFilterData.MountFilter(bGrupo: Boolean; iOperador, iCampo, iCondicao: Integer; sValor1, sValor2: String);
var
  sLinhaTitulo: String;
  sLinhaSQL: String;
  sLinhaIn: TStringList;
  i: Integer;

begin
  sLinhaTitulo := '';
  sLinhaSQL := '';
  sLinhaTitulo := sLinhaTitulo + aOperador[iOperador] + FListFieldCaption[iCampo];
  sLinhaSQL := sLinhaSQL + Global.Parametros.OPERATORS[iOperador] + FListFieldName[iCampo];
  sLinhaIn := TStringList.Create;
  sLinhaIn.StrictDelimiter := True;
  sLinhaIn.Delimiter := ',';
  if (iCondicao >= 0) and (iCondicao <= 5) then
     begin
      sLinhaTitulo := sLinhaTitulo + aCondicoes[iCondicao];
      sLinhaSQL := sLinhaSQL + Global.Parametros.CONDITIONS[iCondicao];
      if FListFieldType[iCampo] = ftString then
      begin
        sLinhaSQL := sLinhaSQL + QuotedStr(sValor1);
        sLinhaTitulo := sLinhaTitulo + QuotedStr(sValor1);
      end
      else if FListFieldType[iCampo] = ftDate then
      begin
        sLinhaSQL := sLinhaSQL + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1)));
        sLinhaTitulo := sLinhaTitulo + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1)));
      end
      else if FListFieldType[iCampo] = ftDateTime then
      begin
        sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor1)));
        sLinhaTitulo := sLinhaTitulo + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1)));
      end
      else if FListFieldType[iCampo] = ftTime then
      begin
        sLinhaSQL := sLinhaSQL + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
        sLinhaTitulo := sLinhaTitulo + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
      end
      else if FListFieldType[iCampo] = ftInteger  then
      begin
       sLinhaSQL := sLinhaSQL + ReplaceStr(sValor1,'.','');
       sLinhaTitulo := sLinhaTitulo + ReplaceStr(sValor1,'.','');
      end
      else if FListFieldType[iCampo] = ftSmallint  then
      begin
       sLinhaSQL := sLinhaSQL + ReplaceStr(sValor1,'.','');
       sLinhaTitulo := sLinhaTitulo + ReplaceStr(sValor1,'.','');
      end
      else if FListFieldType[iCampo] = ftFloat then
      begin
       sLinhaSQL := sLinhaSQL + ReplaceStr(sValor1,'.','');
       sLinhaTitulo := sLinhaTitulo + ReplaceStr(sValor1,'.','');
      end
      else if FListFieldType[iCampo] = ftBoolean  then
      begin
       sLinhaSQL := sLinhaSQL +  sValor1;
       sLinhaTitulo := sLinhaTitulo + sValor1;
      end;
   end
   else if iCondicao = 6 then
   begin
      sLinhaTitulo := sLinhaTitulo + aCondicoes[iCondicao];
      sLinhaSQL := sLinhaSQL + Global.Parametros.CONDITIONS[iCondicao];
      if FListFieldType[iCampo] = ftString then
      begin
        sLinhaSQL := sLinhaSQL + QuotedStr(sValor1) + ' and ' + QuotedStr(sValor2);
        sLinhaTitulo := sLinhaTitulo + QuotedStr(sValor1) + ' e ' + QuotedStr(sValor2);
      end
      else if FListFieldType[iCampo] = ftDate then
      begin
        sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1))) + ' and ' +
                                  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor2)));
        sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1))) + ' e ' +
                                  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor2)));
      end
      else if FListFieldType[iCampo] = ftDateTime then
      begin
        sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor1))) + ' and ' +
                                  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor2)));
        sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor1))) + ' e ' +
                                  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor2)));
      end
      else if FListFieldType[iCampo] = ftTime then
      begin
        sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1))) + ' and ' +
                                  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
        sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1))) + ' e ' +
                                  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
      end
      else if FListFieldType[iCampo] = ftInteger  then
      begin
       sLinhaSQL := sLinhaSQL +  ReplaceStr(sValor1,'.','') + ' and ' + ReplaceStr(sValor2,'.','');
       sLinhaTitulo := sLinhaTitulo +  ReplaceStr(sValor1,'.','') + ' e ' + ReplaceStr(sValor2,'.','');
      end
      else if FListFieldType[iCampo] = ftFloat then
      begin
       sLinhaSQL := sLinhaSQL +  ReplaceStr(sValor1,'.','') + ' and ' + ReplaceStr(sValor2,'.','');
       sLinhaTitulo := sLinhaTitulo +  ReplaceStr(sValor1,'.','') + ' e ' + ReplaceStr(sValor2,'.','');
      end
      else if FListFieldType[iCampo] = ftBoolean  then
      begin
       sLinhaSQL := sLinhaSQL +  sValor1 + ' and ' + sValor2;
       sLinhaTitulo := sLinhaTitulo +  sValor1 + ' e ' + sValor2;
      end;
   end
   else if iCondicao = 7 then
   begin
      sLinhaTitulo := sLinhaTitulo + aCondicoes[iCondicao];
      sLinhaSQL := sLinhaSQL + Global.Parametros.CONDITIONS[iCondicao];
      if FListFieldType[iCampo] = ftString then
      begin
        sLinhaIn.DelimitedText := sValor1;
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + QuotedStr(sLinhaIn[i]),QuotedStr(sLinhaIn[i]));
          sLinhaTitulo := sLinhaTitulo +  iif(i > 0, ',' + QuotedStr(sLinhaIn[i]),QuotedStr(sLinhaIn[i]));
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftDate then
      begin
        sLinhaIn.DelimitedText := sValor1;
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +   iif(i > 0, ',' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sLinhaIn[i]))),
                                     QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sLinhaIn[i]))));
          sLinhaTitulo := sLinhaTitulo +   iif(i > 0, ',' + QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sLinhaIn[i]))),
                                     QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sLinhaIn[i]))));
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftDateTime then
      begin
        sLinhaIn.DelimitedText := sValor1;
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sLinhaIn[i]))));
          sLinhaTitulo := sLinhaTitulo +  iif(i > 0, ',' + QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sLinhaIn[i]))));
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftTime then
      begin
        sLinhaIn.DelimitedText := sValor1;
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))));
          sLinhaTitulo := sLinhaTitulo +  iif(i > 0, ',' + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))));
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftInteger  then
      begin
        sLinhaIn.DelimitedText := ReplaceStr(sValor1,'.','');
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))));
          sLinhaTitulo := sLinhaTitulo +  iif(i > 0, ',' + QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))),
                     QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sLinhaIn[i]))));
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftFloat then
      begin
        sLinhaIn.DelimitedText := ReplaceStr(sValor1,'.','');
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + sLinhaIn[i], sLinhaIn[i]);
          sLinhaTitulo := sLinhaTitulo +  iif(i > 0, ',' + sLinhaIn[i], sLinhaIn[i]);
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end
      else if FListFieldType[iCampo] = ftBoolean  then
      begin
        sLinhaIn.DelimitedText := sValor1;
        sValor1 := '';
        sLinhaSQL := sLinhaSQL + '(';
        sLinhaTitulo := sLinhaTitulo + '(';
        for i := 0 to Pred(sLinhaIn.Count) do
        begin
          sLinhaSQL := sLinhaSQL +  iif(i > 0, ',' + sLinhaIn[i], sLinhaIn[i]);
          sLinhaTitulo := sLinhaSQL +  iif(i > 0, ',' + sLinhaIn[i], sLinhaIn[i]);
        end;
        sLinhaSQL := sLinhaSQL + ')';
        sLinhaTitulo := sLinhaTitulo + ')';
      end;
   end
   else if iCondicao = 8 then
  begin
    sLinhaTitulo := sLinhaTitulo + aCondicoes[iCondicao];
    sLinhaSQL := sLinhaSQL + Global.Parametros.CONDITIONS[iCondicao];
    if FListFieldType[iCampo] = ftString then
    begin
      sLinhaSQL := sLinhaSQL +  QuotedStr(sValor1);
      sLinhaTitulo := sLinhaTitulo +  QuotedStr(sValor1);
    end
    else if FListFieldType[iCampo] = ftDate then
    begin
      sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1)));
      sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('yyyy-mm-dd', StrToDate(sValor1)));
    end
    else if FListFieldType[iCampo] = ftDateTime then
    begin
      sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor1)));
      sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm:ss', StrToDateTime(sValor1)));
    end
    else if FListFieldType[iCampo] = ftTime then
    begin
      sLinhaSQL := sLinhaSQL +  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
      sLinhaTitulo := sLinhaTitulo +  QuotedStr(FormatDateTime('hh:mm:ss', StrToTime(sValor1)));
    end
    else if FListFieldType[iCampo] = ftInteger  then
    begin
     sLinhaSQL := sLinhaSQL +  ReplaceStr(sValor1,'.','');
     sLinhaTitulo := sLinhaTitulo +  ReplaceStr(sValor1,'.','');
    end
    else if FListFieldType[iCampo] = ftFloat then
    begin
     sLinhaSQL := sLinhaSQL +  ReplaceStr(sValor1,'.','');
     sLinhaTitulo := sLinhaTitulo +  ReplaceStr(sValor1,'.','');
    end
    else if FListFieldType[iCampo] = ftBoolean  then
    begin
     sLinhaSQL := sLinhaSQL +  sValor1;
     sLinhaTitulo := sLinhaTitulo +  sValor1;
    end;
  end;
  if FParams.Count = 0 then
  begin
    FParams.Add('(' + sLinhaTitulo);
    FTextFilter := FTextFilter + '(' + sLinhaSQL;
  end
  else
  begin
    if bGrupo then
    begin
      FParams.Add(sLinhaTitulo + ') ' + aOperador[iOperador] + ' (');
      FTextFilter := FTextFilter + ') ' + Global.Parametros.OPERATORS[iOperador]  + ' (' + sLinhaTitulo;
      bGrupo := False;
    end
    else
    begin
      FParams.Add(sLinhaTitulo);
      FTextFilter := FTextFilter + sLinhaSQL;
    end;
  end;
end;

procedure TFilterData.PopulateFListFields;
var
  i: integer;
begin
  if MemTab = nil then Exit;
  if FListFieldCaption.Count > 0 then FListFieldCaption.Clear;
  if FListFieldName.Count > 0 then FListFieldName.Clear;
  SetLength(FListFieldType, Pred(MemTab.FieldCount));
  for i := 0 to Pred(MemTab.FieldCount) do
  begin
    FListFieldCaption.Add(MemTab.Fields[i].DisplayLabel);
    FListFieldName.Add(MemTab.Fields[i].FieldName);
    FListFieldType[i] := MemTab.Fields[i].DataType;
  end;
end;

end.
