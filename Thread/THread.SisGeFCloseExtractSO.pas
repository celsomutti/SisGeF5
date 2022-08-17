unit THread.SisGeFCloseExtractSO;

interface

uses
  System.Classes, DAO.Conexao, FireDAC.Comp.Client, Controller.SisGeFOrderServices, Common.Utils, System.SysUtils;

type
  TTHread_SisGeFCloseExtractSO = class(TThread)
  private
    FAbortProcess: boolean;
    FFlagClosed: integer;
    FMensagem: string;
    FCreditDate: TDate;
    FFlagClose: string;
    FInProcess: boolean;
    FConnection : TConexao;
    FOS: TSisGeFOrderServicesController;
    FUtils : Common.Utils.TUtils;
    FTypeOS: integer;
    FExtractNumber: string;
    procedure ExecuteProcessExtractOS;
  protected
    procedure Execute; override;
  public
    property CreditDate: TDate read FCreditDate write FCreditDate;
    property FlagClose: string read FFlagClose write FFlagClose;
    property FlagClosed: integer read FFlagClosed write FFlagClosed;
    property TypeOS: integer read FTypeOS write FTypeOS;
    property InProcess: boolean read FInProcess;
    property AbortProcess: boolean read FAbortProcess write FAbortProcess;
    property Mensagem: string read FMensagem write FMensagem;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TTHread_SisGeFCloseExtractSO.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses Data.SisGeF, Common.ENum;

{ TTHread_SisGeFCloseExtractSO }

procedure TTHread_SisGeFCloseExtractSO.Execute;
begin
  { Place thread code here }
  FInProcess := True;
  FAbortProcess := False;
  ExecuteProcessExtractOS;
end;

procedure TTHread_SisGeFCloseExtractSO.ExecuteProcessExtractOS;
var
  aParam: array of variant;
begin
  try
    FConnection := TConexao.Create;
    FOS := TSisGeFOrderServicesController.Create;
    FUtils := Common.Utils.TUtils.Create;
    SetLength(aParam,2);
    with Data_Sisgef do
    begin
      if memTableExtractSO.IsEmpty then
        Exit;
      memTableExtractSO.First;
      while not memTableExtractSO.Eof do
      begin
        aParam := ['OS', memTableExtractSOnum_os.AsInteger];
        if FOS.Search(aParam) then
        begin
          if FOS.SetupClass() then
          begin
            FOS.OS.Action := tacAlterar;
            FOS.OS.ClosedFlag := FFlagClose;
            FOS.OS.ClosureFlag := FFlagClosed;
            if FFLagClose = 'S' then
              FExtractNumber := FUtils.ExpressStatementNumber(FCreditDate,FCreditDate,FOS.OS.PersonCode,'')
            else
              FExtractNumber := '';
            FOS.OS.ExtractNumber := FExtractNumber;
            if TypeOS = 1 then
            begin
              FOS.OS.PayDay := FCreditDate;
            end;
            if not FOS.Save then
            begin
              FMensagem := 'Ocorreu um erro ao tentar gravar a OS ' + memTableExtractSOnum_os.AsString + ' !';
              FInProcess := False;
              FAbortProcess := True;
              Exit;
            end;
          end
          else
          begin
            FMensagem := 'Ocorreu um erro ao tentar configurar a classe da OS ' + memTableExtractSOnum_os.AsString + ' !';
            FInProcess := False;
            FAbortProcess := True;
            Exit;
          end;
        end;
        memTableExtractSO.Next;
      end;
    end;
  finally
    Futils.Free;
    FOS.Free;
    FConnection.Free;
    FInProcess := False;
  end;
end;

end.
