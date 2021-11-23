unit View.ResultadoConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, Data.DB,
  cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, System.Actions, Vcl.ActnList, Web.HTTPApp, System.JSON;

type
  Tview_ResultadoConsultaCNPJ = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cnpj: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dsCNPJ: TDataSource;
    razaoSocial: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    nomeFantasia: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    porte: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    tipo: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dataAbertura: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    gridAtividadePrincipalDBTableView1: TcxGridDBTableView;
    gridAtividadePrincipalLevel1: TcxGridLevel;
    gridAtividadePrincipal: TcxGrid;
    dxLayoutItem7: TdxLayoutItem;
    memTableAP: TFDMemTable;
    memTableAPcod_cnae: TStringField;
    memTableAPdes_cnae: TStringField;
    dsAP: TDataSource;
    gridAtividadePrincipalDBTableView1cod_cnae: TcxGridDBColumn;
    gridAtividadePrincipalDBTableView1des_cnae: TcxGridDBColumn;
    dxLayoutGroup5: TdxLayoutGroup;
    memTableAPdes_tipo: TStringField;
    gridAtividadePrincipalDBTableView1des_tipo: TcxGridDBColumn;
    situacao: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dataSituacao: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    motivo: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    logradouro: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    numero: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    complemento: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    bairro: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cidade: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    uf: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cep: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    email: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    telefone: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem21: TdxLayoutItem;
    actionListCNPJ: TActionList;
    actionOK: TAction;
    actionCancelar: TAction;
    procedure actionOKExecute(Sender: TObject);
    procedure actionCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure PopulateCNAE;
  public
    { Public declarations }
  end;

var
  view_ResultadoConsultaCNPJ: Tview_ResultadoConsultaCNPJ;

implementation

{$R *.dfm}

uses Data.SisGeF;


procedure Tview_ResultadoConsultaCNPJ.actionCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tview_ResultadoConsultaCNPJ.actionOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tview_ResultadoConsultaCNPJ.FormShow(Sender: TObject);
begin
  PopulateCNAE;
end;

procedure Tview_ResultadoConsultaCNPJ.PopulateCNAE;
var
  jsonObj, jo: TJSONObject;
  jvCNAECodigo, jvCNAEDescricao: TJSONValue;
  ja: TJSONArray;
  sTexto: String;
  i: integer;
begin
  sTexto := Data_Sisgef.memTableCNPJatividade_principal.asString;
  if memTableAP.Active then
    memTableAP.Active := False;
  memTableAP.Active := True;
  ja := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(sTexto), 0) as TJSONArray;
  for i := 0 to (ja.Count - 1) do
  begin
    jsonObj := (ja.Get(i) as TJSONObject);
    jvCNAECodigo := jsonObj.Get(1).JsonValue;
    jvCNAEDescricao := jsonObj.Get(0).JsonValue;
    memTableAP.Insert;
    memTableAPdes_tipo.AsString := 'PRINCIPAL';
    memTableAPcod_cnae.AsString := jvCNAECodigo.Value;
    memTableAPdes_cnae.AsString := jvCNAEDescricao.Value;
    memTableAP.Post;
  end;
  sTexto := Data_Sisgef.memTableCNPJatividades_secundarias.AsString;
  ja := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(sTexto), 0) as TJSONArray;
  for i := 0 to (ja.Count - 1) do
  begin
    jsonObj := (ja.Get(i) as TJSONObject);
    jvCNAECodigo := jsonObj.Get(1).JsonValue;
    jvCNAEDescricao := jsonObj.Get(0).JsonValue;
    memTableAP.Insert;
    memTableAPdes_tipo.AsString := 'SECUNDÁRIA';
    memTableAPcod_cnae.AsString := jvCNAECodigo.Value;
    memTableAPdes_cnae.AsString := jvCNAEDescricao.Value;
    memTableAP.Post;
  end;
  if not memTableAP.IsEmpty then
    memTableAP.First;
end;

end.
