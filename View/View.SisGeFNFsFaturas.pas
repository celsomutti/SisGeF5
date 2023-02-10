unit View.SisGeFNFsFaturas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Common.ENum,
  Common.Utils, System.Actions, Vcl.ActnList, Controller.SisGeFNFsFaturas, cxCheckBox, ShellAPI, cxLabel;

type
  Tview_SisGeFNFsFaturas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    tipoData: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dataInicial: TcxDateEdit;
    dxLayoutItem2: TdxLayoutItem;
    dataFinal: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    Panel1: TPanel;
    dxLayoutItem5: TdxLayoutItem;
    Panel2: TPanel;
    gridFaturasDBTableView1: TcxGridDBTableView;
    gridFaturasLevel1: TcxGridLevel;
    gridFaturas: TcxGrid;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton6: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    memTableFaturas: TFDMemTable;
    ds: TDataSource;
    memTableFaturascod_cadastro: TIntegerField;
    memTableFaturasCPFCNPJCadastro: TStringField;
    memTableFaturasnom_cadastro: TStringField;
    memTableFaturasnom_favorecido: TStringField;
    memTableFaturasnum_cpf_cnpj_favorecido: TStringField;
    memTableFaturasnom_razao_mei: TStringField;
    memTableFaturasnum_cnpj_mei: TStringField;
    memTableFaturasdat_vencimento: TDateField;
    memTableFaturasdat_envio: TDateField;
    memTableFaturasnom_arquivo: TStringField;
    memTableFaturasdes_localizacao_arquivo: TStringField;
    memTableFaturasdom_aceite: TBooleanField;
    memTableFaturasdom_credito: TBooleanField;
    cxButton7: TcxButton;
    gridFaturasDBTableView1cod_cadastro: TcxGridDBColumn;
    gridFaturasDBTableView1num_cnpj: TcxGridDBColumn;
    gridFaturasDBTableView1nom_cadastro: TcxGridDBColumn;
    gridFaturasDBTableView1nom_favorecido: TcxGridDBColumn;
    gridFaturasDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn;
    gridFaturasDBTableView1nom_razao_mei: TcxGridDBColumn;
    gridFaturasDBTableView1num_cnpj_mei: TcxGridDBColumn;
    gridFaturasDBTableView1dat_vencimento: TcxGridDBColumn;
    gridFaturasDBTableView1dat_envio: TcxGridDBColumn;
    gridFaturasDBTableView1nom_arquivo: TcxGridDBColumn;
    gridFaturasDBTableView1des_localizacao_arquivo: TcxGridDBColumn;
    gridFaturasDBTableView1dom_aceite: TcxGridDBColumn;
    gridFaturasDBTableView1dom_credito: TcxGridDBColumn;
    actionList: TActionList;
    actionSearchPeriod: TAction;
    actionExpandGridGroup: TAction;
    actionCollapseGroup: TAction;
    actionGroupPanelView: TAction;
    actionSave: TAction;
    actionCancel: TAction;
    actionExportGrid: TAction;
    actionCloseForm: TAction;
    memTableFaturasid_fatura: TIntegerField;
    gridFaturasDBTableView1id_fatura: TcxGridDBColumn;
    cxButton5: TcxButton;
    actionDownload: TAction;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    labelAviso: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    actionAccept: TAction;
    cxButton10: TcxButton;
    SaveDialog: TSaveDialog;
    procedure actionSearchPeriodExecute(Sender: TObject);
    procedure actionExpandGridGroupExecute(Sender: TObject);
    procedure actionCollapseGroupExecute(Sender: TObject);
    procedure actionGroupPanelViewExecute(Sender: TObject);
    procedure actionCancelExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionSaveExecute(Sender: TObject);
    procedure actionDownloadExecute(Sender: TObject);
    procedure actionAcceptExecute(Sender: TObject);
  private
    { Private declarations }
    procedure SearchPeriod;
    procedure CancelOperation;
    procedure ExportGrid;
    procedure Accept;
    procedure SaveData;
    procedure SFTPDownload(sPath, sFile: String);
  public
    { Public declarations }
  end;

var
  view_SisGeFNFsFaturas: Tview_SisGeFNFsFaturas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_SisGeFNFsFaturas }

procedure Tview_SisGeFNFsFaturas.Accept;
begin
  if gridFaturasDBTableView1.Controller.SelectedRowCount = 0 then
  begin
    MessageDlg('Nehum registro selecionado!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  memTableFaturas.Edit;
  memTableFaturasdom_aceite.AsBoolean := True;
  memTableFaturas.Post;
end;

procedure Tview_SisGeFNFsFaturas.actionAcceptExecute(Sender: TObject);
begin
  Accept;
end;

procedure Tview_SisGeFNFsFaturas.actionCancelExecute(Sender: TObject);
begin
  CancelOperation;
end;

procedure Tview_SisGeFNFsFaturas.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFNFsFaturas.actionCollapseGroupExecute(Sender: TObject);
begin
  gridFaturasDBTableView1.ViewData.Collapse(True);
end;

procedure Tview_SisGeFNFsFaturas.actionDownloadExecute(Sender: TObject);
begin
  SFTPDownload(memTableFaturasdes_localizacao_arquivo.AsString, memTableFaturasnom_arquivo.AsString);
end;

procedure Tview_SisGeFNFsFaturas.actionExpandGridGroupExecute(Sender: TObject);
begin
  gridFaturasDBTableView1.ViewData.Expand(True);
end;

procedure Tview_SisGeFNFsFaturas.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFNFsFaturas.actionGroupPanelViewExecute(Sender: TObject);
begin
  gridFaturasDBTableView1.OptionsView.GroupByBox := (not gridFaturasDBTableView1.OptionsView.GroupByBox);
end;

procedure Tview_SisGeFNFsFaturas.actionSaveExecute(Sender: TObject);
begin
  SaveData;
end;

procedure Tview_SisGeFNFsFaturas.actionSearchPeriodExecute(Sender: TObject);
begin
  SearchPeriod;
end;

procedure Tview_SisGeFNFsFaturas.CancelOperation;
begin
  if MessageDlg('Confirma cancelar a operação ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
    Exit;
  tipoData.ItemIndex := 0;
  dataInicial.Clear;
  dataFinal.Clear;
  memTableFaturas.Active := False;
  tipoData.SetFocus;
end;

procedure Tview_SisGeFNFsFaturas.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridFaturasDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridFaturas,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFNFsFaturas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_SisGeFNFsFaturas := nil;
end;

procedure Tview_SisGeFNFsFaturas.SaveData;
var
  FFaturas : TControllerSisGeFNFsFaturas;
  sMessage: string;
begin
  try
    FFaturas := TControllerSisGeFNFsFaturas.Create;
    if not memTableFaturas.IsEmpty then
    begin
      if MessageDlg('Confirma salvar os dados ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
        Exit;
      memTableFaturas.First;
      while not memTableFaturas.Eof do
      begin
        FFaturas.Faturas.Acao := tacAlterar;
        FFaturas.Faturas.ID := memTableFaturas.FieldByName('id_fatura').AsInteger;
        FFaturas.Faturas.Cadastro := memTableFaturas.FieldByName('cod_cadastro').AsInteger;
        FFaturas.Faturas.DataVencimento := memTableFaturas.FieldByName('dat_vencimemto').AsDateTime;
        FFaturas.Faturas.Arquivo := memTableFaturas.FieldByName('nom_arquivo').AsString;
        FFaturas.Faturas.Path := memTableFaturas.FieldByName('des_localizacao_arquivo').AsString;
        FFaturas.Faturas.Aceite := memTableFaturas.FieldByName('dom_aceite').AsBoolean;
        FFaturas.Faturas.Credito := memTableFaturas.FieldByName('dom_credito').AsBoolean;
        FFaturas.Faturas.DataEnvio := memTableFaturas.FieldByName('dat_envio').AsDateTime;
        if not FFaturas.Save() then
        begin
          sMessage := 'Ocorreu um problema ao salvar o registro número ' +  FFaturas.Faturas.ID.ToString + ' !';
          MessageDlg(sMessage, mtWarning, [mbOK], 0);
        end;
        memTableFaturas.Next;
      end;
      gridFaturasDBTableView1.DataController.DataSource.DataSet.First;
      MessageDlg('Registros gravados com sucesso.', mtInformation, [mbOK], 0);
    end;
  finally
    FFaturas.Free;
  end;
end;

procedure Tview_SisGeFNFsFaturas.SearchPeriod;
var
  FFaturas : TControllerSisGeFNFsFaturas;
begin
  try
    FFaturas := TControllerSisGeFNFsFaturas.Create;
    if tipoData.ItemIndex <= 0 then
    begin
      MessageDlg('Informe o tipo de período!', mtWarning, [mbCancel], 0);
      tipoData.SetFocus;
      Exit;
    end;
    memTableFaturas.Active := False;
    if FFaturas.ReturnExtract(dataInicial.Date, dataFinal.Date, tipoData.ItemIndex) then
    begin
      memTableFaturas.Active := True;
      memTableFaturas.CopyDataSet(FFaturas.Faturas.Query);
      FFaturas.Faturas.Query.Connection.Connected := False;
    end
    else
    begin
      MessageDlg('Nehum registro encontrado!', mtWarning, [mbCancel], 0);
      dataInicial.SetFocus;
      Exit;
    end;
    gridFaturasDBTableView1.DataController.DataSource.DataSet.First;
  finally
    FFaturas.Free;
  end;
end;

procedure Tview_SisGeFNFsFaturas.SFTPDownload(sPath, sFile: String);
var
  sDestino: string;
begin
  if gridFaturasDBTableView1.Controller.SelectedRowCount = 0 then
  begin
    MessageDlg('Nehum registro selecionado!', mtWarning, [mbCancel], 0);
    Exit;
  end;
  SaveDialog.FileName := sFile;
  if SaveDialog.Execute then
    sDestino := SaveDialog.FileName
  else
    Exit;
  if FileExists(sDestino) then
  begin
    if MessageDlg('Arquivo já existe na pasta destino! Deseja sobrepor?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;
  labelAviso.Caption := 'Efetuando o download. Aguarde...';
  labelAviso.Refresh;
  with Data_Sisgef do
  begin
    try
      begin
        ScSSHClient.Connect;
        ScSFTPClient.SSHClient := ScSSHClient;
        ScSFTPClient.Initialize;
        ScSFTPClient.DownloadFile(sPath + sFile, sDestino ,True);
        ScSSHClient.Disconnect;
        labelAviso.Caption := '';
        labelAviso.Refresh;
        if FileExists(sDestino) then
        begin
          if MessageDlg('Dowbload efetuado com sucesso! Deseja visualizar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            ShellExecute(0, nil, pchar(sFile), nil, PChar('C:\Users\Public\Downloads\'), SW_NORMAL);
        end
        else
        begin
          MessageDlg('Ocorreu um problema no download! Arquivo não foi encontrado.', mtWarning, [mbCancel], 0);
        end;
      end;
    except
      Raise Exception.Create('Erro de conexão...');
    end;
  end;
end;

end.
