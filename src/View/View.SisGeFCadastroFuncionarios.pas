unit View.SisGeFCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, System.Actions, Vcl.ActnList, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxCalendar, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit;

type
  TviewCadastroFunctionarios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
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
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    cxButton4: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    parametroPesquisa: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem10: TdxLayoutItem;
    cxButton9: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    gridDBTableView1Column1: TcxGridDBColumn;
    gridDBTableView1Column2: TcxGridDBColumn;
    gridDBTableView1Column3: TcxGridDBColumn;
    gridDBTableView1Column4: TcxGridDBColumn;
    gridDBTableView1Column5: TcxGridDBColumn;
    dsFuncionarios: TDataSource;
    gridDBTableView1Column6: TcxGridDBColumn;
    gridDBTableView1Column7: TcxGridDBColumn;
    gridDBTableView1Column8: TcxGridDBColumn;
    gridDBTableView1Column9: TcxGridDBColumn;
    dxLayoutGroup10: TdxLayoutGroup;
    id: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    nome: TcxTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    cpf: TcxMaskEdit;
    dxLayoutItem14: TdxLayoutItem;
    RG: TcxTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    emissaoRG: TcxDateEdit;
    dxLayoutItem16: TdxLayoutItem;
    emissorRG: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    cxDateEdit1: TcxDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    nacionalidade: TcxTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    naturalidade: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    ufNaturalidade: TcxComboBox;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    ufEmissorRG: TcxComboBox;
    dxLayoutItem22: TdxLayoutItem;
    nomePai: TcxTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    nomeMae: TcxTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutGroup13: TdxLayoutGroup;
    CEP: TcxButtonEdit;
    dxLayoutItem25: TdxLayoutItem;
    logradouro: TcxTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    numeroLogradouro: TcxTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    complementoEndereco: TcxTextEdit;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    bairroEndereco: TcxTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    cidadeEndereco: TcxTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    ufEndereco: TcxComboBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutGroup15: TdxLayoutGroup;
    procedure actionCloseFormExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewCadastroFunctionarios: TviewCadastroFunctionarios;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewCadastroFunctionarios.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

end.
