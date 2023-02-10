unit View.SisGeFWorksheetOMIECP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxCurrencyEdit;

type
  Tview_SisGeFWorksheetOMIECP = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    gridBIMERDBTableView1: TcxGridDBTableView;
    gridBIMERLevel1: TcxGridLevel;
    gridBIMER: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    actionListOMIE: TActionList;
    actionExportGrid: TAction;
    actionCloseForm: TAction;
    dsOMIE: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    gridBIMERDBTableView1cod_integracao: TcxGridDBColumn;
    gridBIMERDBTableView1nom_favorecido: TcxGridDBColumn;
    gridBIMERDBTableView1des_categoria: TcxGridDBColumn;
    gridBIMERDBTableView1nom_conta_corrente: TcxGridDBColumn;
    gridBIMERDBTableView1val_bruto: TcxGridDBColumn;
    gridBIMERDBTableView1nom_vendedor: TcxGridDBColumn;
    gridBIMERDBTableView1nom_projeto: TcxGridDBColumn;
    gridBIMERDBTableView1dat_emissao: TcxGridDBColumn;
    gridBIMERDBTableView1dat_registro: TcxGridDBColumn;
    gridBIMERDBTableView1dat_vencimento: TcxGridDBColumn;
    gridBIMERDBTableView1dat_previsao: TcxGridDBColumn;
    gridBIMERDBTableView1dat_pagamento: TcxGridDBColumn;
    gridBIMERDBTableView1val_pagamento: TcxGridDBColumn;
    gridBIMERDBTableView1val_juros: TcxGridDBColumn;
    gridBIMERDBTableView1val_multa: TcxGridDBColumn;
    gridBIMERDBTableView1val_desconto: TcxGridDBColumn;
    gridBIMERDBTableView1dat_conciliacao: TcxGridDBColumn;
    gridBIMERDBTableView1des_observacoes: TcxGridDBColumn;
    gridBIMERDBTableView1des_tipo_documento: TcxGridDBColumn;
    gridBIMERDBTableView1num_documento: TcxGridDBColumn;
    gridBIMERDBTableView1num_parcela: TcxGridDBColumn;
    gridBIMERDBTableView1tot_parcelas: TcxGridDBColumn;
    gridBIMERDBTableView1num_pedido: TcxGridDBColumn;
    gridBIMERDBTableView1num_nota_fiscal: TcxGridDBColumn;
    gridBIMERDBTableView1num_chave_nfe: TcxGridDBColumn;
    gridBIMERDBTableView1des_forma_pagamento: TcxGridDBColumn;
    gridBIMERDBTableView1cod_barras_boleto: TcxGridDBColumn;
    gridBIMERDBTableView1val_percentual_juros_mes: TcxGridDBColumn;
    gridBIMERDBTableView1val_percentual_multa_atraso: TcxGridDBColumn;
    gridBIMERDBTableView1nom_banco_transferencia: TcxGridDBColumn;
    gridBIMERDBTableView1num_agencia_transferencia: TcxGridDBColumn;
    gridBIMERDBTableView1num_conta_transferencia: TcxGridDBColumn;
    gridBIMERDBTableView1num_CNPJ_CPF_titular: TcxGridDBColumn;
    gridBIMERDBTableView1nom_titular: TcxGridDBColumn;
    gridBIMERDBTableView1des_finalidade_transferencia: TcxGridDBColumn;
    gridBIMERDBTableView1val_PIS: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_PIS: TcxGridDBColumn;
    gridBIMERDBTableView1val_COFINS: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_COFINS: TcxGridDBColumn;
    gridBIMERDBTableView1val_CSLL: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_CSLL: TcxGridDBColumn;
    gridBIMERDBTableView1val_IR: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_IR: TcxGridDBColumn;
    gridBIMERDBTableView1val_ISS: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_ISS: TcxGridDBColumn;
    gridBIMERDBTableView1val_INSS: TcxGridDBColumn;
    gridBIMERDBTableView1des_reter_INSS: TcxGridDBColumn;
    gridBIMERDBTableView1nom_departamento: TcxGridDBColumn;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionExportGridExecute(Sender: TObject);
  private
    { Private declarations }
    procedure ExportGrid;
  public
    { Public declarations }
  end;

var
  view_SisGeFWorksheetOMIECP: Tview_SisGeFWorksheetOMIECP;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.Utils;

procedure Tview_SisGeFWorksheetOMIECP.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_SisGeFWorksheetOMIECP.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure Tview_SisGeFWorksheetOMIECP.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if gridBIMERDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(gridBIMER, Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFWorksheetOMIECP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Data_Sisgef.memTableBIMERCP.Active := False;
  Action := caFree;
  view_SisGeFWorksheetOMIECP := nil;
end;

end.
