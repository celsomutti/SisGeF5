unit View.CadastroEmpresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxLabel,
  cxTextEdit, cxDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxImageComboBox, cxCheckBox;

type
  Tview_CadastroEmpresas = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    labelTitle: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    codigoEmpresa: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    memTableCadastro: TFDMemTable;
    IntegerField14: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    memTableCadastrodes_tipo_doc: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    MemoField2: TMemoField;
    DateField7: TDateField;
    memTableCadastrodes_tipo_conta: TStringField;
    memTableCadastrocod_banco: TStringField;
    memTableCadastrocod_agencia: TStringField;
    memTableCadastronum_conta: TStringField;
    memTableCadastronom_favorecido: TStringField;
    memTableCadastronum_cpf_cnpj_favorecido: TStringField;
    memTableCadastrodes_forma_pagamento: TStringField;
    dsCadastro: TDataSource;
    tipoDoc: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    nomeRazao: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    nomeFantasia: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cnpjEmpresa: TcxDBMaskEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cnae: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    crt: TcxDBImageComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dataCadastro: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    status: TcxDBCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    memTableEnderecos: TFDMemTable;
    IntegerField11: TIntegerField;
    memTableEnderecoscod_tipo_cadastro: TIntegerField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    procedure FormShow(Sender: TObject);
    procedure statusPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure StartForm;
    procedure EndingForm;
  public
    { Public declarations }
  end;

var
  view_CadastroEmpresas: Tview_CadastroEmpresas;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ Tview_CadastroEmpresas }

procedure Tview_CadastroEmpresas.EndingForm;
begin
  Self.Free;
  Self := Nil;
end;

procedure Tview_CadastroEmpresas.FormShow(Sender: TObject);
begin
  StartForm;
end;

procedure Tview_CadastroEmpresas.StartForm;
begin
  labelTitle.Caption := Self.Caption;
end;

procedure Tview_CadastroEmpresas.statusPropertiesChange(Sender: TObject);
begin
  if status.Checked then
    status.Caption := 'ATIVO'
  else
    status.Caption := 'INATIVO';
end;

end.
