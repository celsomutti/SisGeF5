unit View.FilterData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, dxLayoutControlAdapters, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMemo, Control.FilterData, FireDAC.Comp.Client, Data.DB, cxCheckBox,
  clipbrd;

type
  Tview_FilterData = class(TForm)
    layoutControlGroup_Root: TdxLayoutGroup;
    layoutControl: TdxLayoutControl;
    labelTitle: TcxLabel;
    layoutTitle: TdxLayoutItem;
    buttonGrupo: TcxButton;
    laytoutButtonGrupo: TdxLayoutItem;
    actionListFiltro: TActionList;
    actionGrupo: TAction;
    comboBoxOperador: TcxComboBox;
    layoutcomboBoxOperador: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    comboBoxCampos: TcxComboBox;
    layoutcomboBoxCampos: TdxLayoutItem;
    comboBoxCondicao: TcxComboBox;
    layoutcomboBoxCondicao: TdxLayoutItem;
    maskEditValorInicial: TcxMaskEdit;
    layoutmaskEditValoInicial: TdxLayoutItem;
    maskEditValorFinal: TcxMaskEdit;
    layoutmaskEditValorFinal: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    memoParametros: TcxMemo;
    layoutmemoParametros: TdxLayoutItem;
    actionAdicionar: TAction;
    buttonAdicionar: TcxButton;
    layoutButtonAdicionar: TdxLayoutItem;
    actionExecutar: TAction;
    buttonExecutar: TcxButton;
    layoutButtonExecutar: TdxLayoutItem;
    actionLimpar: TAction;
    buttonLimpar: TcxButton;
    layoutButtonLimpar: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    actionFechar: TAction;
    buttonFechar: TcxButton;
    layoutbuttonFechar: TdxLayoutItem;
    checkBoxBoolean: TcxCheckBox;
    layoutCheckBoxBoolean: TdxLayoutItem;
    memoLista: TcxMemo;
    layoutMemoLista: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure memoParametrosPropertiesChange(Sender: TObject);
    procedure actionFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure comboBoxCondicaoPropertiesCloseUp(Sender: TObject);
    procedure comboBoxCamposPropertiesCloseUp(Sender: TObject);
    procedure actionAdicionarExecute(Sender: TObject);
    procedure actionLimparExecute(Sender: TObject);
    procedure actionExecutarExecute(Sender: TObject);
    procedure actionGrupoExecute(Sender: TObject);
    procedure checkBoxBooleanPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    procedure AddParam();
    procedure ClearParam();
    procedure PopulateFields();
    procedure FinalizeParam();
    procedure AjustaCampo;
    procedure AjustaCondicao;
  public
    { Public declarations }
    mtbPesquisa : TFDMemTable;
    filtro : TFilterDataControl;
  end;

var
  view_FilterData: Tview_FilterData;
  bGrupo: Boolean;

implementation

{$R *.dfm}

uses Data.SisGeF;


procedure Tview_FilterData.actionAdicionarExecute(Sender: TObject);
begin
  AddParam();
end;

procedure Tview_FilterData.actionExecutarExecute(Sender: TObject);
begin
  FinalizeParam();
  //  ModalResult := mrOK;
  // Close;
end;

procedure Tview_FilterData.actionFecharExecute(Sender: TObject);
begin
  filtro.Filtro.TextFilter := '';
//  ModalResult := mrCancel;
 // Close;
end;

procedure Tview_FilterData.actionGrupoExecute(Sender: TObject);
begin
  if memoParametros.Text <> '' then
  begin
    if comboBoxOperador.ItemIndex < 1 then
    begin
      Application.MessageBox('Informe um operador para iniciar a concordância do grupo de pesquisa!', 'Atenção',
                             MB_OK + MB_ICONWARNING);
      bGrupo := False;
      Exit;
    end
    else
    begin
      bGrupo := True;
    end;
  end;
  bGrupo := True;
  filtro.CreateGroup(comboBoxOperador.ItemIndex);
  memoParametros.Lines := filtro.Filtro.Params;
  comboBoxOperador.ItemIndex := 0;
end;

procedure Tview_FilterData.actionLimparExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma limpar os parâmetros?', 'Limpar Parâmetros', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit;
  ClearParam;
end;

procedure Tview_FilterData.AddParam;
var
  sLista: String;
  i: Integer;
begin
  if memoParametros.Lines.Count > 0 then
  begin
    if comboBoxOperador.ItemIndex = 0 then
    begin
      if not bGrupo then
      begin
        Application.MessageBox('Selecione um operador!', 'Atenção!',
          MB_OK + MB_ICONEXCLAMATION);
        comboBoxOperador.SetFocus;
        Exit;
      end;
    end;
  end;
  bGrupo := False;
  if comboBoxCondicao.Text = 'em' then
  begin
    if memoLista.Text = '' then
    begin
      Application.MessageBox('Informe o valor do parâmetro!', 'Atenção!',
        MB_OK + MB_ICONEXCLAMATION);
      memoLista.SetFocus;
      Exit;
    end;
  end
  else
  begin
    if maskEditValorInicial.Text = '' then
    begin
      Application.MessageBox('Informe o valor do parâmetro!', 'Atenção!',
        MB_OK + MB_ICONEXCLAMATION);
      maskEditValorInicial.SetFocus;
      Exit;
    end;
  end;

  if comboBoxCondicao.Text = 'entre' then
  begin
    if maskEditValorFinal.Text = '' then
    begin
      Application.MessageBox('Informe o valor Final do parâmetro!',
        'Atenção!', MB_OK + MB_ICONEXCLAMATION);
      maskEditValorFinal.SetFocus;
      Exit;
    end;
  end;

  if comboBoxCondicao.Text = 'em' then
  begin
    sLista := '';
    for i := 0 to Pred(memoLista.Lines.Count) do
    begin
      if not sLista.IsEmpty then sLista := sLista + ',';
      sLista := sLista + memoLista.Lines[i];
    end;
    maskEditValorInicial.Text := sLista;
  end;

  filtro.MountFilter(bGrupo,comboBoxOperador.ItemIndex,comboBoxCampos.ItemIndex, comboBoxCondicao.ItemIndex,
                     maskEditValorInicial.Text, maskEditValorFinal.Text);

  memoParametros.Lines := filtro.Filtro.Params;
  comboBoxOperador.Enabled := (memoParametros.Lines.Count > 0);
  actionGrupo.Enabled := (memoParametros.Lines.Count > 0);
  buttonExecutar.Enabled := (memoParametros.Lines.Count > 0);
  actionLimpar.Enabled := (memoParametros.Lines.Count > 0);
  comboBoxOperador.ItemIndex := 0;
  comboBoxCampos.ItemIndex := -1;
  comboBoxCondicao.ItemIndex := -1;
  maskEditValorInicial.Text := '';
  maskEditValorFinal.Text := '';
  maskEditValorInicial.Properties.MaskKind := emkRegExpr;
  maskEditValorFinal.Properties.MaskKind := emkRegExpr;
end;

procedure Tview_FilterData.AjustaCampo;
begin
  AjustaCondicao;
  maskEditValorInicial.Properties.MaskKind := emkRegExpr;
  maskEditValorFinal.Properties.MaskKind := emkRegExpr;
  if comboBoxCampos.ItemIndex = -1 then
  begin
    Exit;
  end;
  if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftString then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Properties.EditMask := '';
    maskEditValorFinal.Properties.EditMask := '';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftTime then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
    maskEditValorInicial.Properties.EditMask :=
      '(0?\d | 1\d | 2[0-3]) : [0-5]\d : [0-5]\d';
    maskEditValorFinal.Properties.EditMask :=
      '(0?\d | 1\d | 2[0-3]) : [0-5]\d : [0-5]\d';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftDate then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
    maskEditValorInicial.Properties.MaskKind := emkStandard;
    maskEditValorInicial.Properties.EditMask := '!99/99/0000;1';
      //'([012]?[1-9] | [123]0 |31) /(0?[1-9] | 1[012]) / ([123][0-9])? [0-9][0-9]';
    maskEditValorFinal.Properties.MaskKind:= emkStandard;
    maskEditValorFinal.Properties.EditMask := '!99/99/0000;1';
   //   '([012]?[1-9] | [123]0 |31) /(0?[1-9] | 1[012]) / ([123][0-9])? [0-9][0-9]';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftDateTime then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
    maskEditValorInicial.Properties.EditMask :=
      '([012]?[1-9] | [123]0 |31) /(0?[1-9] | 1[012]) / ([123][0-9])? [0-9][0-9]';
    maskEditValorInicial.Properties.EditMask :=
      '([012]?[1-9] | [123]0 |31) /(0?[1-9] | 1[012]) / ([123][0-9])? [0-9][0-9]';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftInteger then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
    maskEditValorInicial.Properties.EditMask := '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d';
    maskEditValorFinal.Properties.EditMask := '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftSmallint then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
    maskEditValorInicial.Properties.EditMask := '\d\d\d';
    maskEditValorFinal.Properties.EditMask := '\d\d\d';
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftFloat then
  begin
    layoutCheckBoxBoolean.Visible := False;
    maskEditValorInicial.Clear;
    maskEditValorFinal.Clear;
  end
  else if mtbPesquisa.Fields[comboBoxCampos.ItemIndex].DataType = ftBoolean then
  begin
    checkBoxBoolean.Checked := False;
    layoutCheckBoxBoolean.Visible := True;
    layoutmaskEditValoInicial.Visible := False;
    layoutmaskEditValorFinal.Visible := False;
  end;
end;

procedure Tview_FilterData.AjustaCondicao;
begin
  maskEditValorInicial.Clear;
  maskEditValorFinal.Clear;
  memoLista.Clear;
  if comboBoxCondicao.Text = 'em' then
  begin
    layoutmaskEditValoInicial.Visible := False;
    layoutmaskEditValorFinal.Visible := False;
    layoutMemoLista.Visible := True;
  end
  else if comboBoxCondicao.Text = 'entre' then
  begin
    layoutMemoLista.Visible := False;
    layoutmaskEditValoInicial.Visible := True;
    layoutmaskEditValorFinal.Visible := True;
  end
  else
  begin
    layoutMemoLista.Visible := False;
    layoutmaskEditValoInicial.Visible := True;
    layoutmaskEditValorFinal.Visible := False;
  end;
end;

procedure Tview_FilterData.checkBoxBooleanPropertiesChange(Sender: TObject);
begin
  if checkBoxBoolean.Checked then
  begin
    checkBoxBoolean.Caption := 'Sim';
  end
  else
  begin
    checkBoxBoolean.Caption := 'Não';
  end;
end;

procedure Tview_FilterData.ClearParam;
begin
  memoParametros.Text := '';
  filtro.Filtro.Params.Clear;
  filtro.Filtro.TextFilter := '';
end;

procedure Tview_FilterData.comboBoxCamposPropertiesCloseUp(Sender: TObject);
begin
  AjustaCampo;
end;

procedure Tview_FilterData.comboBoxCondicaoPropertiesCloseUp(Sender: TObject);
begin
  AjustaCondicao;
end;

procedure Tview_FilterData.FinalizeParam;
var
  i: Integer;
  sLinha: String;
begin
  i := Pred(filtro.Filtro.Params.Count);
  sLinha := filtro.Filtro.Params[i] + ')';
  filtro.Filtro.Params[i] := sLinha;
  filtro.Filtro.TextFilter := filtro.Filtro.TextFilter + ')';
end;

procedure Tview_FilterData.FormCreate(Sender: TObject);
begin
  bGrupo := False;
end;

procedure Tview_FilterData.FormShow(Sender: TObject);
begin
  labelTitle.Caption := Self.Caption;
  PopulateFields;
end;

procedure Tview_FilterData.memoParametrosPropertiesChange(Sender: TObject);
begin
  if memoParametros.Text= '' then
  begin
    actionGrupo.Enabled := False;
    comboBoxOperador.ItemIndex := 0;
    comboBoxOperador.Enabled := False;
  end;
end;

procedure Tview_FilterData.PopulateFields;
var
  i: integer;
begin

  for i := 0 to mtbPesquisa.FieldCount - 1 do
  begin
    comboBoxCampos.Properties.Items.Add(mtbPesquisa.Fields[i].DisplayName);
  end;
  filtro.Filtro.MemTab := mtbPesquisa;
  filtro.PopulateFListFields;
end;

end.
