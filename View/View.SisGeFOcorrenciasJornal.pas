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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, cxDBLookupComboBox, cxBlobEdit, cxSpinEdit, cxCurrencyEdit,
  Controller.SisGeFTiposOcorrenciaJornal, Common.Utils, cxMemo, Controller.SisGeFProdutosJornal, cxImageComboBox, Control.Cadastro;

type
  Tview_SisGeFOcorrenciasJornal = class(TForm)
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
    btnIncluir: TcxButton;
    lytBotaoNovo: TdxLayoutItem;
    btnExportar: TcxButton;
    lytBotalExportar: TdxLayoutItem;
    lytGrid: TdxLayoutGroup;
    grdOcorrenciasDBTableView1: TcxGridDBTableView;
    grdOcorrenciasLevel1: TcxGridLevel;
    grdOcorrencias: TcxGrid;
    lytGridOcorrencias: TdxLayoutItem;
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
    chkExcluídos: TcxCheckBox;
    lytCheckExcluidos: TdxLayoutItem;
    btnEditar: TcxButton;
    lytBotaoEditar: TdxLayoutItem;
    actEditarOcorrencia: TAction;
    actExcluirOcorrencia: TAction;
    btnExcluir: TcxButton;
    lytBotaoExcluir: TdxLayoutItem;
    actLimparGrid: TAction;
    btnLimpar: TcxButton;
    lytBotaoLimpar: TdxLayoutItem;
    mtbProdutos: TFDMemTable;
    mtbProdutoscod_produto: TStringField;
    mtbProdutosdes_produto: TStringField;
    mtbTiposOcorrencias: TFDMemTable;
    dsProdutos: TDataSource;
    dsTiposOcorrencias: TDataSource;
    mtbTiposOcorrenciascod_tipo_ocorrencia: TIntegerField;
    mtbTiposOcorrenciasdes_tipo_ocorrencia: TStringField;
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
    mtbCadastro: TFDMemTable;
    mtbCadastrocod_cadastro: TIntegerField;
    mtbCadastrodes_razao_social: TStringField;
    dsCadastro: TDataSource;
    actDeclaracao: TAction;
    btnDeclaracao: TcxButton;
    lytBotaoDeclaracao: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure cboCamposPesquisaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSairExecute(Sender: TObject);
    procedure actLimparGridExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actNovaOcorrenciaExecute(Sender: TObject);
    procedure actEditarOcorrenciaExecute(Sender: TObject);
    procedure actExcluirOcorrenciaExecute(Sender: TObject);
    procedure dsOcorrenciasStateChange(Sender: TObject);
    procedure mtbOcorernciasBeforePost(DataSet: TDataSet);
    procedure mtbOcorernciasAfterPost(DataSet: TDataSet);
    procedure actDeclaracaoExecute(Sender: TObject);
  private
    { Private declarations }
    FOcorrencias: TControllerSisGeFOcorrenciasJornal;
    FTiposOcorrencia: TControllerSisGeFTiposOcorrenciaJornal;
    procedure CreateFieldsList;
    procedure PrepareFields(iIndex: integer);
    procedure SetupResearch;
    procedure CloseDB;
    procedure ExportGrid;
    procedure PopulateProducts;
    procedure PopulateOcoursType;
    procedure PopulatgeRegisters;
    procedure SetupClassOccors;
    procedure DeleteOccours;
    procedure PrintDeclaration;
    function ValidateSearch(): boolean;
  public
    { Public declarations }
  end;

var
  view_SisGeFOcorrenciasJornal: Tview_SisGeFOcorrenciasJornal;
  fFileds: TStringList;
  FOcorrencias: TControllerSisGeFOcorrenciasJornal;

implementation

{$R *.dfm}

uses Data.SisGeF, Common.ENum, View.Impressao, Global.Parametros;

procedure Tview_SisGeFOcorrenciasJornal.actDeclaracaoExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    Exit;
  if mtbOcorerncias.IsEmpty then
    Exit;
  PrintDeclaration;
end;

procedure Tview_SisGeFOcorrenciasJornal.actEditarOcorrenciaExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    Exit;
  if mtbOcorerncias.IsEmpty then
    Exit;
  mtbOcorerncias.Edit;
end;

procedure Tview_SisGeFOcorrenciasJornal.actExcluirOcorrenciaExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    Exit;
  if mtbOcorerncias.IsEmpty then
    Exit;
  DeleteOccours;
end;

procedure Tview_SisGeFOcorrenciasJornal.actExportarExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    Exit;
  if mtbOcorerncias.IsEmpty then
    Exit;
  ExportGrid;
end;

procedure Tview_SisGeFOcorrenciasJornal.actLimparGridExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    Exit;
  if mtbOcorerncias.IsEmpty then
    Exit;
  CloseDB;
  mtbOcorerncias.Open;
end;

procedure Tview_SisGeFOcorrenciasJornal.actNovaOcorrenciaExecute(Sender: TObject);
begin
  if not mtbOcorerncias.Active then
    mtbOcorerncias.Open;
  mtbOcorerncias.Insert;
end;

procedure Tview_SisGeFOcorrenciasJornal.actPesquisarExecute(Sender: TObject);
begin
  if ValidateSearch then
    SetupResearch;
end;

procedure Tview_SisGeFOcorrenciasJornal.actSairExecute(Sender: TObject);
begin
  CloseDB;
  Close;
end;

procedure Tview_SisGeFOcorrenciasJornal.cboCamposPesquisaPropertiesChange(Sender: TObject);
begin
  PrepareFields(cboCamposPesquisa.ItemIndex);
end;

procedure Tview_SisGeFOcorrenciasJornal.CloseDB;
begin
  cboCamposPesquisa.ItemIndex := 0;
  chkExcluídos.Checked := False;
  mtbOcorerncias.Close;
end;

procedure Tview_SisGeFOcorrenciasJornal.CreateFieldsList;
begin
  fFileds := TStringList.Create;
  fFileds.Add('NONE');
  fFileds.Add('NUM_OCORRENCIA');
  fFileds.Add('DAT_OCORRENCIA');
  fFileds.Add('COD_ASSINATURA');
  fFileds.Add('NOM_ASSINANTE');
end;

procedure Tview_SisGeFOcorrenciasJornal.DeleteOccours;
begin
  try
    if grdOcorrenciasDBTableView1.Controller.SelectedColumnCount = 0 then
      Exit;
    if MessageDlg('Confirma a exclusão desta ocorrência?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
      Exit;
    SetupClassOccors;
    FOcorrencias.Ocorrencias.Acao := tacAlterar;
    FOcorrencias.Ocorrencias.Status := -2;
    if not FOcorrencias.Save then
      MessageDlg('Ocorreu algum problema ao tntar excluir esta ocorrência!', mtError, [mbCancel], 0);
    SetupResearch;

  finally

  end;
end;


procedure Tview_SisGeFOcorrenciasJornal.dsOcorrenciasStateChange(Sender: TObject);
begin
  if TDataSource(Sender).DataSet.State = dsInsert then
  begin
    FOcorrencias.Ocorrencias.Acao := tacIncluir;
  end
  else if TDataSource(Sender).DataSet.State = dsEdit then
  begin
    FOcorrencias.Ocorrencias.Acao := tacAlterar;
  end
  else if TDataSource(Sender).DataSet.State = dsBrowse then
  begin
    FOcorrencias.Ocorrencias.Acao := tacIndefinido;
  end
    else if TDataSource(Sender).DataSet.State = dsInactive then
  begin
    FOcorrencias.Ocorrencias.Acao := tacIndefinido;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.ExportGrid;
var
  fnUtil : Common.Utils.TUtils;
  sMensagem: String;
begin
  try
    fnUtil := Common.Utils.TUtils.Create;

    if grdOcorrenciasDBTableView1.ViewData.RowCount = 0 then Exit;

    if Data_Sisgef.SaveDialog.Execute() then
    begin
      if FileExists(Data_Sisgef.SaveDialog.FileName) then
      begin
        sMensagem := 'Arquivo ' + Data_Sisgef.SaveDialog.FileName + ' já existe! Sobrepor ?';
        if Application.MessageBox(PChar(sMensagem), 'Sobrepor', MB_YESNO + MB_ICONQUESTION) = IDNO then Exit
      end;

      fnUtil.ExportarDados(grdOcorrencias,Data_Sisgef.SaveDialog.FileName);

    end;
  finally
    fnUtil.Free;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mtbProdutos.Active := False;
  mtbTiposOcorrencias.Active := False;
  mtbOcorerncias.Active := False;
  FOcorrencias.Free;
  FTiposOcorrencia.Free;
  Action := caFree;
  view_SisGeFOcorrenciasJornal := Nil;
end;

procedure Tview_SisGeFOcorrenciasJornal.FormShow(Sender: TObject);
begin
  CreateFieldsList;
  FTiposOcorrencia := TControllerSisGeFTiposOcorrenciaJornal.Create;
  FOcorrencias := TControllerSisGeFOcorrenciasJornal.Create;
  PopulateProducts;
  PopulateOcoursType;
  PopulatgeRegisters;
  mtbOcorerncias.Open;
end;

procedure Tview_SisGeFOcorrenciasJornal.mtbOcorernciasAfterPost(DataSet: TDataSet);
begin
  SetupClassOccors;
  if not FOcorrencias.Save then
  begin
    MessageDlg('Ocorreu um problema ao gravar os dados !', mtError, [mbCancel], 0);
    Exit;
  end;
  SetupResearch;
end;

procedure Tview_SisGeFOcorrenciasJornal.mtbOcorernciasBeforePost(DataSet: TDataSet);
begin
  if MessageDlg('Confirma gravar os dados ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
  begin
    Abort;
    Exit;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.PopulateOcoursType;
var
  FTiposOcorrencia: TControllerSisGeFTiposOcorrenciaJornal;
  aParam: Array of variant;
begin
  try
    FTiposOcorrencia := TControllerSisGeFTiposOcorrenciaJornal.Create;
    SetLength(aParam,2);
    aParam := ['LISTA', 'COD_TIPO_OCORRENCIA, DES_TIPO_OCORRENCIA', ''];
    if FTiposOcorrencia.Search(aParam) then
    begin
      mtbTiposOcorrencias.Active := False;
      mtbTiposOcorrencias.Data := FTiposOcorrencia.Tipos.Query.Data;
      Finalize(aParam);
    end;
  finally
    FTiposOcorrencia.Free;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.PopulateProducts;
var
  FProdutos: TControllerSisGeFProdutosJornal;
  aParam: Array of variant;
begin
  try
    FProdutos := TControllerSisGeFProdutosJornal.Create;
    SetLength(aParam,2);
    aParam := ['LISTA', 'COD_PRODUTO, DES_PRODUTO', ''];
    if FProdutos.Search(aParam) then
    begin
      mtbProdutos.Active := False;
      mtbProdutos.Data := FProdutos.Produtos.Query.Data;
      Finalize(aParam);
    end;
  finally
    FProdutos.Free;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.PopulatgeRegisters;
var
  FCadastro: TCadastroControl;
  aParam: Array of variant;
begin
  try
    FCadastro := TCadastroControl.Create;
    SetLength(aParam,2);
    aParam := ['APOIO', 'COD_CADASTRO, DES_RAZAO_SOCIAL', ''];
    if FCadastro.Localizar(aParam) then
    begin
      mtbCadastro.Active := False;
      mtbCadastro.Data := FCadastro.Cadastro.Query.Data;
      Finalize(aParam);
    end;
  finally
    FCadastro.Free;
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.PrepareFields(iIndex: integer);
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

procedure Tview_SisGeFOcorrenciasJornal.PrintDeclaration;
var
  sEndereco: String;
  sOcorrencia: string;
  sImpressao: string;
begin
  sEndereco := '';
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'DECLARAÇÃO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\frxDeclaracaoJornal.fr3';
    if view_Impressao.ShowModal <> mrOk then
    begin
      FreeAndNil(view_Impressao);
      Exit;
    end
    else begin
      if (not FileExists(view_Impressao.cxArquivo.Text)) then begin
        Application.MessageBox(PChar('Arquivo ' + view_Impressao.cxArquivo.Text +
                               ' não foi encontrado!'), 'Atenção', MB_OK + MB_ICONWARNING);
        Exit;
      end;
    end;
    sEndereco := mtbOcorernciasdes_endereco.AsString + ' Agente: ' + mtbOcorernciasdes_roteiro.AsString;
    sOcorrencia :=  mtbOcorernciascod_ocorrencia.AsString + ' - ' + grdOcorrenciasDBTableView1cod_ocorrencia.DataBinding.Field.Value;
    sImpressao := 'Impresso pelo ' + Application.Title + ' Versão ' + Common.Utils.TUtils.VersaoExe + ' por ' +
                  global.Parametros.pUser_Name +
                  ' em ' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now);
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('parImpressao')].Value :=  QuotedStr(sImpressao);
    Variables.Items[Variables.IndexOf('parEndereco')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('parOcorrencia')].Value :=  QuotedStr(sOcorrencia);
    Variables.Items[Variables.IndexOf('parDescricao')].Value :=  QuotedStr(mtbOcorernciasdes_descricao.AsString);
    Variables.Items[Variables.IndexOf('parData')].Value :=  QuotedStr(mtbOcorernciasdat_ocorrencia.AsString);
    Variables.Items[Variables.IndexOf('parProduto')].Value :=  QuotedStr(grdOcorrenciasDBTableView1cod_produto.DataBinding.Field.Value);
    Variables.Items[Variables.IndexOf('parNomeAssinante')].Value :=  QuotedStr(mtbOcorernciasnom_assinante.AsString);
    Variables.Items[Variables.IndexOf('parCodigoAssinatura')].Value :=  QuotedStr(mtbOcorernciascod_assinatura.AsString);

    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure Tview_SisGeFOcorrenciasJornal.SetupClassOccors;
begin
  FOcorrencias.Ocorrencias.DataDesconto := mtbOcorernciasdat_desconto.AsDateTime;
  FOcorrencias.Ocorrencias.DescricaoApuracao := mtbOcorernciasdes_apuracao.asString;
  FOcorrencias.Ocorrencias.EnderecoAssinatura := mtbOcorernciasdes_endereco.AsString;
  FOcorrencias.Ocorrencias.CodigoResultado := mtbOcorernciascod_resultado.AsInteger;
  FOcorrencias.Ocorrencias.ValorOcorrencia := mtbOcorernciasval_ocorrencia.AsFloat;
  FOcorrencias.Ocorrencias.CodigoOrigem := mtbOcorernciascod_origem.AsInteger;
  FOcorrencias.Ocorrencias.CodigoProduto := mtbOcorernciascod_produto.AsString;
  FOcorrencias.Ocorrencias.DomProcessado := mtbOcorernciasdom_processado.AsString;
  FOcorrencias.Ocorrencias.DescricaoOcorrencia := mtbOcorernciasdes_descricao.AsString;
  FOcorrencias.Ocorrencias.DescricaoRoteiro := mtbOcorernciasdes_roteiro.AsString;
  FOcorrencias.Ocorrencias.DescricaoRetorno := mtbOcorernciasdes_retorno.AsString;
  FOcorrencias.Ocorrencias.CodigoOcorrencia := mtbOcorernciascod_ocorrencia.AsInteger;
  FOcorrencias.Ocorrencias.Id := mtbOcorernciasnum_ocorrencia.AsInteger;
  FOcorrencias.Ocorrencias.CodigoAssinatura := mtbOcorernciascod_assinatura.AsString;
  FOcorrencias.Ocorrencias.Status := mtbOcorernciascod_status.AsInteger;
  FOcorrencias.Ocorrencias.NomeAssinante := mtbOcorernciasnom_assinante.AsString;
  FOcorrencias.Ocorrencias.DomReincidente := mtbOcorernciasdom_reincidente.AsString;
  FOcorrencias.Ocorrencias.Log := mtbOcorernciasdes_log.AsString;
  FOcorrencias.Ocorrencias.QuantidadeOcorrencia := mtbOcorernciasqtd_ocorrencias.AsInteger;
  FOcorrencias.Ocorrencias.DescricaoAnexo := mtbOcorernciasdes_anexo.AsString;
  FOcorrencias.Ocorrencias.DomImpressao := mtbOcorernciasdom_impressao.AsString;
  FOcorrencias.Ocorrencias.CodigoEntregador := mtbOcorernciascod_entregador.AsInteger;
  FOcorrencias.Ocorrencias.Data := mtbOcorernciasdat_ocorrencia.AsDateTime;
end;

procedure Tview_SisGeFOcorrenciasJornal.SetupResearch;
var
  sField, sSQL: string;
  iIndex : integer;
  aParam: array of Variant;
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
    sSQL := sField + ' between ' + QuotedStr(FormatDateTime('yyyy-mm-dd', datInicial.Date)) + ' and ' +
            QuotedStr(FormatDateTime('yyyy-mm-dd', datFinal.Date));
  end;
  if iIndex = 3 then
  begin
    sSQL := sField + ' = ' +  QuotedStr(mskCampo.Text);
  end;
  if iIndex = 4 then
  begin
    sSQL := sField + ' like ' + QuotedStr('%' + mskCampo.Text + '%');
  end;
  if not chkExcluídos.Checked then
    sSQL := sSQL + ' and cod_status > -2';
  SetLength(aParam,2);
  aParam := ['FILTRO', sSQL];
  if FOcorrencias.Search(aParam) then
  begin
    mtbOcorerncias.Close;
    mtbOcorerncias.Data := FOcorrencias.Ocorrencias.Query.Data;
    mtbOcorerncias.Last;
  end
  else
  begin
    MessageDlg('Nenhum registro encontrado!',mtWarning, [mbOK], 0);
  end;
  Finalize(aParam);
  FOcorrencias.Ocorrencias.Query.Connection.Connected := False;
end;

function Tview_SisGeFOcorrenciasJornal.ValidateSearch: boolean;
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
