unit clBarrTFO;

interface

uses
  System.Classes, Vcl.Dialogs, Vcl.Forms, System.SysUtils, System.StrUtils,
  System.Math;

type
  TBarrTFO = Class(Tobject)
  private
    procedure Chr_ETab(var c: String; var n: Integer);

    function BinToInt(sBinario: String): Integer;
    function IntToBin(iNumero: Integer): String;
    function BinToLong(sBinario: String): Int64;
    function LongToBin(iNumero: Int64): String;
  protected
  public
    function CompactInt(iNumero: Integer): String;
    function ExpandInt(sDigitos: String): Integer;
    function CompactLong(iNumero: Int64): String;
    function ExpandLong(sDigitos: String): Int64;
    function RetDV(sCod: String): String;
  End;

const
  STAB = 'ABCDEFGHIJKLMNOPQRSTUVXZ1234567';

implementation

function TBarrTFO.CompactInt(iNumero: Integer): String;
var
  sBinario, sRetorno, sGrupo, ch: String;
  n: Byte;
begin
  try
    sBinario := IntToBin(iNumero);
    for n := 1 to 3 do
    begin
      sGrupo := Copy(sBinario, (n - 1) * 5 + 2, 5);
      if StrToInt(sGrupo) <> 0 then
      begin
        // Chr_ETab(ch, BinToInt(sGrupo));
        sRetorno := ch;
      end
      else
      begin
        sRetorno := sRetorno + '0';
      end;
    end;
  finally
    Result := sRetorno;
  end;
end;

function TBarrTFO.ExpandInt(sDigitos: string): Integer;
var
  n: Byte;
  iNumero, iPos: Integer;
  sBinario, ch: String;
begin
  try
    iNumero := 0;
    sDigitos := RightStr('000' + sDigitos, 3);
    for n := 1 to 3 do
    begin
      iPos := 0;
      ch := Copy(sDigitos, n, 1);
      if ch <> '0' then
      begin
        Chr_ETab(ch, iPos);
        sBinario := sBinario + RightStr(IntToBin(iPos), 5);
      end
      else
      begin
        sBinario := sBinario + '00000';
      end;
    end;
    iNumero := BinToInt('0' + sBinario);
  finally
    Result := iNumero;
  end;
end;

procedure TBarrTFO.Chr_ETab(var c: string; var n: Integer);
begin
  if n <> 0 then
  begin
    c := Copy(STAB, n, 1);
  end
  else
  begin
    n := Pos(c, STAB);
  end;
end;

function TBarrTFO.BinToInt(sBinario: string): Integer;
var
  nNumero: Integer;
  n: Byte;
  c: String;
begin
  try
    nNumero := 0;
    sBinario := RightStr(StringOfChar('0', 16) + sBinario, 16);
    For n := 1 To Length(sBinario) do
    begin
      c := Copy(sBinario, n, 1);
      If c <> '0' then
      begin
        nNumero := nNumero + Round(Power(2, (16 - n)));
      end;
    end;
  finally
    Result := nNumero;
  end;
end;

function TBarrTFO.IntToBin(iNumero: Integer): String;
var
  nResto, nDiv: Integer;
  sRetorno, sInvert: String;
begin
  try
    repeat
      nDiv := Trunc(iNumero / 2);
      nResto := iNumero Mod 2;
      sRetorno := sRetorno + FormatFloat('0', nResto);
      iNumero := nDiv;
    until iNumero = 0;
    For nDiv := 1 To Length(sRetorno) do
    begin
      sInvert := sInvert + Copy(sRetorno, Length(sRetorno) - nDiv + 1, 1);
    end;
    sInvert := RightStr(StringOfChar('0', 16) + sInvert, 16);
  finally
    Result := sInvert;
  end;
end;

function TBarrTFO.CompactLong(iNumero: Int64): String;
var
  sBinario, sRetorno, sGrupo, ch: String;
  n: Byte;
begin
  try
    sBinario := LongToBin(iNumero);
    For n := 1 To 7 do
    begin
      sGrupo := Copy(sBinario, (n - 1) * 5 + 1, 5);
      If StrToInt(sGrupo) <> 0 then
      begin
        // Chr_ETab(ch, BintoInt(sGrupo));
        sRetorno := sRetorno + ch;
      end
      else
      begin
        sRetorno := sRetorno + '0';
      end;
    end;
  finally
    Result := sRetorno
  end;
end;

function TBarrTFO.ExpandLong(sDigitos: string): Int64;
var
  n: Byte;
  Numero, nPos, i: Integer;
  Binario, ch, s: String;
begin
  try
    Numero := 0;
    sDigitos := RightStr('0000000' + sDigitos, 7);
    For n := 1 To 7 do
    begin
      nPos := 0;
      ch := Copy(sDigitos, n, 1);
      If ch <> '0' then
      begin
        Chr_ETab(ch, nPos);
        Binario := Binario + RightStr(IntToBin(nPos), IfThen(n <> 7, 5, 2));
      end
      else
      begin
        Binario := Binario + IfThen(n <> 7, '00000', '00');
      end;
    end;
    Numero := BinToLong(Binario)
  finally
    Result := Numero;
  end;
end;

function TBarrTFO.BinToLong(sBinario: string): Int64;
var
  nNumero: Integer;
  n: Byte;
  c: String;
begin
  try
    nNumero := 0;
    sBinario := RightStr(StringOfChar('0', 32) + sBinario, 32);
    For n := 1 To Length(sBinario) do
    begin
      c := Copy(sBinario, n, 1);
      If c <> '0' then
      begin
        nNumero := nNumero + Trunc(Power(2, (32 - n)));
      end;
    end;
  finally
    Result := nNumero;
  end;
end;

function TBarrTFO.LongToBin(iNumero: Int64): String;
var
  nResto: Integer;
  nDiv: Integer;
  sRetorno, sInvert: String;
begin
  try
    repeat
      nDiv := Round(iNumero / 2);
      nResto := iNumero Mod 2;
      sRetorno := sRetorno + IntToStr(Round(nResto));
      iNumero := nDiv;
    until iNumero = 0;
    For nDiv := 1 To Length(sRetorno) do
    begin
      sInvert := sInvert + Copy(sRetorno, Length(sRetorno) - nDiv + 1, 1);
    end;
    sInvert := RightStr(StringOfChar('0', 32) + sInvert, 32);
  finally
    Result := sInvert;
  end;
end;

function TBarrTFO.RetDV(sCod: String): String;
var
  Aux: Byte;
  sRetorno, sPonderacao: String;
  nResto, nNumero, DV: Integer;
begin
  sPonderacao := '7586423597';
  sCod := Trim(sCod);
  sRetorno := '';
  if sCod <> '' Then
  begin
    nNumero := 0;
    sCod := FormatFloat('0000000000', StrToInt(sCod));
    for Aux := 1 To 10 do
      nNumero := nNumero + StrToInt(Copy(sCod, Aux, 1)) *
        StrToInt(Copy(sPonderacao, Aux, 1));
    nResto := nNumero Mod 11;
    if nResto = 0 then
      DV := 5
    else if nResto = 1 then
      DV := 0
    else
      DV := 11 - nResto;
    sRetorno := Trim(IntToStr(DV));
  end;
  Result := sRetorno;
end;

end.
