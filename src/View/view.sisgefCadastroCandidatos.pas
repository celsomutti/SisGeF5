unit view.sisgefCadastroCandidatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxButtonEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Common.Utils,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxMemo, cxCalendar, service.connectionMySQL,
  cxDBEdit;

type
  TviewCadastroCandidatos = class(TForm)
    lrgRoot: TdxLayoutGroup;
    lcRoot: TdxLayoutControl;
    lgpFooter: TdxLayoutGroup;
    lgpContainer: TdxLayoutGroup;
    lgpPesquisa: TdxLayoutGroup;
    lgpCadastro: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    parametro: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    actionList: TActionList;
    actionNewRegister: TAction;
    actionEditRegister: TAction;
    actionCloseForm: TAction;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    actionGroupPanel: TAction;
    actionExportGrid: TAction;
    actionSearchRecords: TAction;
    actionReturnGrid: TAction;
    actionClearSearch: TAction;
    actionSaveRegister: TAction;
    actionSearchDoc: TAction;
    actionSearchCEP: TAction;
    actionDocuments: TAction;
    actSearchCategory: TAction;
    actSearchFunction: TAction;
    cxButton3: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton6: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dsCandidatos: TDataSource;
    dsCategorias: TDataSource;
    cxLookupComboBox1: TcxLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    gridDBTableView1COD_CANDIDATO: TcxGridDBColumn;
    gridDBTableView1id_categoria: TcxGridDBColumn;
    gridDBTableView1NOM_CANDIDATO: TcxGridDBColumn;
    gridDBTableView1DES_EMAIL: TcxGridDBColumn;
    gridDBTableView1DES_ENDERECO: TcxGridDBColumn;
    gridDBTableView1NUM_ENDERECO: TcxGridDBColumn;
    gridDBTableView1DES_COMPLEMENTO: TcxGridDBColumn;
    gridDBTableView1DES_BAIRRO: TcxGridDBColumn;
    gridDBTableView1DES_CIDADE: TcxGridDBColumn;
    gridDBTableView1DES_UF: TcxGridDBColumn;
    gridDBTableView1NUM_TELEFONE: TcxGridDBColumn;
    gridDBTableView1NUM_CELULAR: TcxGridDBColumn;
    gridDBTableView1DOM_EXPERIENCIA: TcxGridDBColumn;
    gridDBTableView1DES_EXPERIENCIA: TcxGridDBColumn;
    gridDBTableView1DES_REGIOES: TcxGridDBColumn;
    gridDBTableView1DOM_ANTECEDENTES: TcxGridDBColumn;
    gridDBTableView1DOM_RESTRICOES: TcxGridDBColumn;
    gridDBTableView1DAT_VALIDADE_CNH: TcxGridDBColumn;
    gridDBTableView1DES_CATEGORIA_CNH: TcxGridDBColumn;
    gridDBTableView1DOM_VEICULO_PROPRIO: TcxGridDBColumn;
    gridDBTableView1DES_ANO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_TIPO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_MODELO_VEICULO: TcxGridDBColumn;
    gridDBTableView1DES_TIPO_COMBUSTIVEL: TcxGridDBColumn;
    gridDBTableView1DOM_LICENCIAMENTO_IPVA: TcxGridDBColumn;
    gridDBTableView1DOM_RASTREADO: TcxGridDBColumn;
    gridDBTableView1DOM_DISPONIBILIDADE: TcxGridDBColumn;
    gridDBTableView1createdAt: TcxGridDBColumn;
    gridDBTableView1updatedAt: TcxGridDBColumn;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxButton9: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    dbId: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbCategoria: TcxDBLookupComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dbNome: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dbEmail: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbTelefone: TcxDBMaskEdit;
    dxLayoutItem17: TdxLayoutItem;
    dbCelular: TcxDBMaskEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dbLogradouro: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dbNumero: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dbComplemento: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    procedure actCadastroLimparExecute(Sender: TObject);
    procedure actCadastroSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionGroupPanelExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionClearSearchExecute(Sender: TObject);
    procedure actionSearchRecordsExecute(Sender: TObject);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionReturnGridExecute(Sender: TObject);
  private
    FConn : TConnectionMySQL;

    procedure ShowForm;
    procedure CloseForm;
    procedure ExportGrid;
    procedure Search;
  public
    { Public declarations }
  end;

var
  viewCadastroCandidatos: TviewCadastroCandidatos;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewCadastroCandidatos.actCadastroLimparExecute(Sender: TObject);
begin
  parametro.Clear;
  parametro.SetFocus;
end;

procedure TviewCadastroCandidatos.actCadastroSairExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TviewCadastroCandidatos.actionClearSearchExecute(Sender: TObject);
begin
  parametro.Clear;
end;

procedure TviewCadastroCandidatos.actionCloseFormExecute(Sender: TObject);
begin
  CloseForm;
end;

procedure TviewCadastroCandidatos.actionExpandGridExecute(Sender: TObject);
begin
   gridDBTableView1.ViewData.Expand(True);
end;

procedure TviewCadastroCandidatos.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewCadastroCandidatos.actionGroupPanelExecute(Sender: TObject);
begin
  gridDBTableView1.OptionsView.GroupByBox := (not gridDBTableView1.OptionsView.GroupByBox);
end;

procedure TviewCadastroCandidatos.actionRetractGridExecute(Sender: TObject);
begin
   gridDBTableView1.ViewData.Collapse(True);
end;

procedure TviewCadastroCandidatos.actionReturnGridExecute(Sender: TObject);
begin
  lgpContainer.ItemIndex := 0;
end;

procedure TviewCadastroCandidatos.actionSearchRecordsExecute(Sender: TObject);
begin
  Search;
end;

procedure TviewCadastroCandidatos.CloseForm;
begin
  with Data_Sisgef do
  begin
    qryCandidatos.Active := False;
    FConn.Free;
  end;
  Self.Close;
end;

procedure TviewCadastroCandidatos.ExportGrid;
var
  utils : TUtils;
  sMensagem: String;
begin
  try
    utils := TUtils.Create;

    if gridDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      utils.ExportarDados(grid,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroCandidatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  viewCadastroCandidatos := Nil;
end;

procedure TviewCadastroCandidatos.FormShow(Sender: TObject);
begin
  ShowForm;
end;

procedure TviewCadastroCandidatos.Search;
begin
  with Data_Sisgef do
  begin
    qryCandidatos.Connection := FConn.GetConnection;
    qryCandidatos.Open();
  end;
end;

procedure TviewCadastroCandidatos.ShowForm;
begin
    FConn := TConnectionMySQL.Create;
end;

end.
