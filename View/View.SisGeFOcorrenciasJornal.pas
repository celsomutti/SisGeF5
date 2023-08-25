unit View.SisGeFOcorrenciasJornal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, System.Actions, Vcl.ActnList, System.DateUtils, Controller.SisGeFOcorrenciasJornal, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TviewSisGeFOcorrenciasJornal = class(TForm)
    lytMainGroup_Root: TdxLayoutGroup;
    lytMain: TdxLayoutControl;
    lytFiltro: TdxLayoutGroup;
    cboCamposPesquisa: TcxComboBox;
    lytCamposPesquisa: TdxLayoutItem;
    lytDatas: TdxLayoutGroup;
    datInicial: TcxDateEdit;
    lytDataInicial: TdxLayoutItem;
    datFinal: TcxDateEdit;
    lytDataFinal: TdxLayoutItem;
    lytOutrosCampos: TdxLayoutGroup;
    mskCampo: TcxMaskEdit;
    lytCampo: TdxLayoutItem;
    lytBotoesFormulario: TdxLayoutGroup;
    btnPesquisar: TcxButton;
    lytBotaoPesquisa: TdxLayoutItem;
    btnSair: TcxButton;
    lytBotalSair: TdxLayoutItem;
    aclOcorrenciasJornal: TActionList;
    actPesquisar: TAction;
    actSair: TAction;
    lytBody: TdxLayoutGroup;
    lytFooter: TdxLayoutGroup;
    lytBotoesEdicao: TdxLayoutGroup;
    actNovaOcorrencia: TAction;
    actExportar: TAction;
    cxButton1: TcxButton;
    lytBotaoNovo: TdxLayoutItem;
    cxButton2: TcxButton;
    lytBotalExportar: TdxLayoutItem;
    lytGrid: TdxLayoutGroup;
    grdOcorrenciasDBTableView1: TcxGridDBTableView;
    grdOcorrenciasLevel1: TcxGridLevel;
    grdOcorrencias: TcxGrid;
    lytGridOcorrencias: TdxLayoutItem;
    mtbOcorerncias: TFDMemTable;
    mtbOcorernciasnum_ocorrencia: TIntegerField;
    mtbOcorernciasdat_ocorrencia: TDateField;
    mtbOcorernciascod_assinatura: TStringField;
    mtbOcorernciasnom_assinante: TStringField;
    mtbOcorernciasdes_roteiro: TStringField;
    mtbOcorernciascod_entregador: TIntegerField;
    mtbOcorernciascod_produto: TStringField;
    mtbOcorernciascod_ocorrencia: TIntegerField;
    mtbOcorernciasdom_reincidente: TStringField;
    mtbOcorernciasdes_descricao: TMemoField;
    mtbOcorernciasdes_endereco: TStringField;
    mtbOcorernciasdes_retorno: TMemoField;
    mtbOcorernciascod_resultado: TIntegerField;
    mtbOcorernciascod_origem: TIntegerField;
    mtbOcorernciasdes_obs: TMemoField;
    mtbOcorernciascod_status: TIntegerField;
    mtbOcorernciasdes_apuracao: TMemoField;
    mtbOcorernciasdom_processado: TStringField;
    mtbOcorernciasqtd_ocorrencias: TIntegerField;
    mtbOcorernciasval_ocorrencia: TFloatField;
    mtbOcorernciasdat_desconto: TDateField;
    mtbOcorernciasdom_impressao: TStringField;
    mtbOcorernciasdes_anexo: TStringField;
    mtbOcorernciasdes_log: TMemoField;
    dsOcorrencias: TDataSource;
    grdOcorrenciasDBTableView1num_ocorrencia: TcxGridDBColumn;
    grdOcorrenciasDBTableView1dat_ocorrencia: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_assinatura: TcxGridDBColumn;
    grdOcorrenciasDBTableView1nom_assinante: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_roteiro: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_entregador: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_produto: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_ocorrencia: TcxGridDBColumn;
    grdOcorrenciasDBTableView1dom_reincidente: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_descricao: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_endereco: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_retorno: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_resultado: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_origem: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_obs: TcxGridDBColumn;
    grdOcorrenciasDBTableView1cod_status: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_apuracao: TcxGridDBColumn;
    grdOcorrenciasDBTableView1dom_processado: TcxGridDBColumn;
    grdOcorrenciasDBTableView1qtd_ocorrencias: TcxGridDBColumn;
    grdOcorrenciasDBTableView1val_ocorrencia: TcxGridDBColumn;
    grdOcorrenciasDBTableView1dat_desconto: TcxGridDBColumn;
    grdOcorrenciasDBTableView1dom_impressao: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_anexo: TcxGridDBColumn;
    grdOcorrenciasDBTableView1des_log: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cboCamposPesquisaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FOcorrencias: TControllerSisGeFOcorrenciasJornal;
    procedure CreateFieldsList;
    procedure PrepareFields(iIndex: integer);
    procedure SetupResearch;
    function ValidateSearch(): boolean;
  public
    { Public declarations }
  end;

var
  viewSisGeFOcorrenciasJornal: TviewSisGeFOcorrenciasJornal;
  fFileds: TStringList;

implementation

{$R *.dfm}

uses Data.SisGeF;

procedure TviewSisGeFOcorrenciasJornal.cboCamposPesquisaPropertiesChange(Sender: TObject);
begin
  PrepareFields(cboCamposPesquisa.ItemIndex);
end;

procedure TviewSisGeFOcorrenciasJornal.CreateFieldsList;
begin
  fFileds := TStringList.Create;
  fFileds.Add('NONE');
  fFileds.Add('NUM_OCORRENCIA');
  fFileds.Add('DAT_OCORRENCIA');
  fFileds.Add('COD_ASSINATURA');
  fFileds.Add('NOM_ASSINANTE');
end;

procedure TviewSisGeFOcorrenciasJornal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FOcorrencias.Free;
end;

procedure TviewSisGeFOcorrenciasJornal.FormShow(Sender: TObject);
begin
  CreateFieldsList;
  FOcorrencias := TControllerSisGeFOcorrenciasJornal.Create;
end;

procedure TviewSisGeFOcorrenciasJornal.PrepareFields(iIndex: integer);
begin
  if iIndex = 1 then
  begin
    lytDatas.Visible := False;
    lytOutrosCampos.Visible := True;
    mskCampo.Hint := 'Informe o número da ocorrência.';
    mskCampo.Properties.EditMask := '\d\d\d\d\d\d\d\d\d\d';
    mskCampo.EditValue := 0;
    mskCampo.SetFocus;
  end
  else if iIndex = 2 then
  begin
    lytDatas.Visible := True;
    lytOutrosCampos.Visible := False;
    datInicial.Date := IncDay(Now, -7);
    datFinal.Date := Now;
    datInicial.SetFocus;
  end
  else if iIndex = 3 then
  begin
    lytDatas.Visible := False;
    lytOutrosCampos.Visible := True;
    mskCampo.Hint := 'Informe o código da assinatura';
    mskCampo.Properties.EditMask := '';
    mskcampo.Properties.MaxLength := 20;
    mskCampo.EditValue := 0;
    mskCampo.SetFocus;
  end
  else if iIndex = 4 then
  begin
    lytDatas.Visible := False;
    lytOutrosCampos.Visible := True;
    mskCampo.Hint := 'Informe o nome do assinante';
    mskCampo.Properties.EditMask := '';
    mskcampo.Properties.MaxLength := 70;
    mskCampo.EditValue := 0;
    mskCampo.SetFocus;
  end
  else
  begin
    lytDatas.Visible := False;
    lytOutrosCampos.Visible := False;
  end;
end;

procedure TviewSisGeFOcorrenciasJornal.SetupResearch;
var
  sField, sSQL: string;
  iIndex : integer;
begin
  sSQL := '';
  iIndex := cboCamposPesquisa.ItemIndex;
  sField := fFileds[iIndex];
  if iIndex = 1 then
  begin
    sSQL := sField + ' = ' + mskCampo.Text;
  end;
  if iIndex = 2 then
  begin
    sSQL := sField + ' betwsee ' + FormatDateTime('aaaa-mm-dd', datInicial.Date) + ' and ' +
            FormatDateTime('aaaa-mm-dd', datFinal.Date);
  end;
  if iIndex = 3 then
  begin
    sSQL := sField + ' = ' +  QuotedStr(mskCampo.Text);
  end;
  if iIndex = 4 then
  begin
    sSQL := sField + ' like ' + QuotedStr(mskCampo.Text);
  end;

end;

function TviewSisGeFOcorrenciasJornal.ValidateSearch: boolean;
begin
  Result := False;
  if cboCamposPesquisa.ItemIndex <= 0 then
  begin
    MessageDlg('Selecione um campo para pesquisa!',mtWarning, [mbOK],0);
    cboCamposPesquisa.SetFocus;
    Exit;
  end;
  if cboCamposPesquisa.ItemIndex = 1 then
  begin
    if mskCampo.EditText = '' then
    begin
      MessageDlg('Informe o número da ocorrência!',mtWarning, [mbOK],0);
      mskCampo.SetFocus;
      Exit;
    end;
  end;
  if cboCamposPesquisa.ItemIndex = 2 then
  begin
    if datInicial.Text = '' then
    begin
      MessageDlg('Informe a data inicial!',mtWarning, [mbOK],0);
      datInicial.SetFocus;
      Exit;
    end;
    if datFinal.Text = '' then
    begin
      MessageDlg('Informe a data final!',mtWarning, [mbOK],0);
      datFinal.SetFocus;
      Exit;
    end;
    if datInicial.Date > datFinal.Date then
    begin
      MessageDlg('Data final não pode ser maior que data inicial!',mtWarning, [mbOK],0);
      datFinal.SetFocus;
      Exit;
    end;
  end;
  if cboCamposPesquisa.ItemIndex = 3 then
  begin
    if mskCampo.EditText = '' then
    begin
      MessageDlg('Informe o código da assinatura!',mtWarning, [mbOK],0);
      mskCampo.SetFocus;
      Exit;
    end;
  end;
  if cboCamposPesquisa.ItemIndex = 4 then
  begin
    if mskCampo.EditText = '' then
    begin
      MessageDlg('Informe o nome do assinante!',mtWarning, [mbOK],0);
      mskCampo.SetFocus;
      Exit;
    end;
  end;
  Result := True;
end;

end.
