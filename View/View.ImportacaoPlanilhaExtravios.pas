unit View.ImportacaoPlanilhaExtravios;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel, System.Actions, Vcl.ActnList, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, Control.EntregadoresExpressas,
  FireDAC.Comp.Client, Control.Sistema, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxProgressBar,
  Control.ExtraviosMultas, Control.Entregas, Common.ENum, cxMemo;

type
  Tview_ImportacaoPlanilhaExtravios = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    aclImportarExtravio: TActionList;
    actFechar: TAction;
    datEvento: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    cboDescricaoExtravio: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edtCodigoEntregador: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    txtNomeEntregador: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    actImportar: TAction;
    cxButton2: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dsImportacao: TDataSource;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    edtArquivo: TcxButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    OpenDialog: TOpenDialog;
    pbImportacao: TcxProgressBar;
    dxLayoutItem9: TdxLayoutItem;
    actAbrirArquivo: TAction;
    memObs: TcxMemo;
    dxLayoutItem10: TdxLayoutItem;
    procedure edtCodigoEntregadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCodigoEntregadorPropertiesChange(Sender: TObject);
    procedure edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure actImportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFecharExecute(Sender: TObject);
    procedure actAbrirArquivoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LocalizaEntregadores;
    procedure LimpaCampos;
    function NomeEntregador(iCodigo: Integer): String;
    procedure Modo(iTipo: Integer);
    procedure Importar;
    procedure AbrirArquivo;
    function ValidaImportacao(): Boolean;
  public
    { Public declarations }
  end;

var
  view_ImportacaoPlanilhaExtravios: Tview_ImportacaoPlanilhaExtravios;
  FEntregadores : TEntregadoresExpressasControl;
  iBase: Integer;
  FExtravios : TExtraviosMultasControl;
  FEntregas : TEntregasControl;
implementation

{$R *.dfm}

uses Data.SisGeF, View.PesquisarPessoas, Common.Utils, Global.Parametros;

{ Tview_ImportacaoPlanilhaExtravios }

procedure Tview_ImportacaoPlanilhaExtravios.AbrirArquivo;
begin
  if OpenDialog.Execute then
  begin
    edtArquivo.Text := OpenDialog.FileName;
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actAbrirArquivoExecute(Sender: TObject);
begin
  AbrirArquivo;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_ImportacaoPlanilhaExtravios.actImportarExecute(Sender: TObject);
begin
  if not ValidaImportacao() then Exit;

  if Application.MessageBox('Confirma a importação?', 'Importar', MB_YESNO + MB_ICONQUESTION) = IDNO then
  begin
    Exit;
  end;

  Modo(1);
  Importar;

end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  LocalizaEntregadores;
end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesChange(Sender: TObject);
begin
  txtNomeEntregador.Clear;
end;

procedure Tview_ImportacaoPlanilhaExtravios.edtCodigoEntregadorPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  txtNomeEntregador.Text := NomeEntregador(DisplayValue);
end;

procedure Tview_ImportacaoPlanilhaExtravios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Data_Sisgef.mtbImportacaoExtravios.Active then Data_Sisgef.mtbImportacaoExtravios.Close;
  Action := caFree;
  view_ImportacaoPlanilhaExtravios := nil;
end;

procedure Tview_ImportacaoPlanilhaExtravios.FormShow(Sender: TObject);
begin
  Modo(0);
end;

procedure Tview_ImportacaoPlanilhaExtravios.Importar;
var
  iTotal : Integer;
  dPos : Double;
  iPos : Integer;
  sValor: String;
  FDQuery : TFDQuery;
  aParam : array of variant;
  sObs: String;
  i: Integer;
begin
  try
    FExtravios := TExtraviosMultasControl.Create();
    FEntregas :=  TEntregasControl.Create();
    Data_Sisgef.mtbImportacaoExtravios.Open;
    Data_Sisgef.mtbImportacaoExtravios.Edit;
    Data_Sisgef.FDBTextReaderExtravios.FileName := edtArquivo.Text;
    Data_SisGeF.FDBmExtravios.GuessFormat;
    Data_SisGeF.FDBmExtravios.Mappings.AddAll;
    Data_Sisgef.FDBmExtravios.Execute;
    if Data_Sisgef.mtbImportacaoExtravios.Active then
    begin
      if not Data_Sisgef.mtbImportacaoExtravios.IsEmpty then
      begin
        iTotal := Data_Sisgef.mtbImportacaoExtravios.RecordCount;
        Data_Sisgef.mtbImportacaoExtravios.First;
        iPos := 0;
        dPos := 0;
        sObs := '';
        while not Data_Sisgef.mtbImportacaoExtravios.Eof do
        begin
          if Common.Utils.TUtils.ENumero(Data_Sisgef.mtbImportacaoExtravios.Fields[3].AsString) then
          begin
            FExtravios.Extravios.ID := 0;
            FExtravios.Extravios.Descricao := cboDescricaoExtravio.Text;
            FExtravios.Extravios.NN := Trim(Data_Sisgef.mtbImportacaoExtravios.Fields[3].AsString);
            FExtravios.Extravios.Agente := iBase;
            sValor := Common.Utils.TUtils.ReplaceStr(Data_Sisgef.mtbImportacaoExtravios.Fields[16].AsString,'R$ ', '');
            sValor := Common.Utils.TUtils.ReplaceStr(sValor, '.', '');
            sValor := Common.Utils.TUtils.ReplaceStr(sValor, 'R$', '');
            FExtravios.Extravios.ValorProduto := StrToFloatDef(sValor,0);
            FExtravios.Extravios.Data := datEvento.Date;
            FExtravios.Extravios.Multa := 0;
            SetLength(aParam,2);
            aParam[0] := 'NN';
            aParam[1] := FExtravios.Extravios.NN;
            FDQuery := FEntregas.Localizar(aParam);
            Finalize(aParam);
            if not FDQuery.IsEmpty then
            begin
             FExtravios.Extravios.Verba := FDQuery.FieldByName('VAL_VERBA_ENTREGADOR').AsFloat;
             FExtravios.Extravios.VerbaFranquia := FDQuery.FieldByName('VAL_VERBA_FRANQUIA').AsFloat;
            end
            else
            begin
             FExtravios.Extravios.Verba := 0;
             FExtravios.Extravios.VerbaFranquia := 0;
            end;
            FExtravios.Extravios.Total := FExtravios.Extravios.Multa + FExtravios.Extravios.ValorProduto;
            FExtravios.Extravios.Entregador := edtCodigoEntregador.EditValue;
            FExtravios.Extravios.Tipo := 1;
            FExtravios.Extravios.ValorFranquia := 0;
            FExtravios.Extravios.Extrato := '0';
            FExtravios.Extravios.DataFranquia := 0;
            FExtravios.Extravios.EnvioCorrespondencia := 'NÃO SE APLICA';
            FExtravios.Extravios.RetornoCorrespondencia := 'NÃO SE APLICA';
            if Copy(FExtravios.Extravios.Descricao,1,2) = '98' then
            begin
              FExtravios.Extravios.Restricao := 'S';
              FExtravios.Extravios.Percentual := 100;
            end
            else
            begin
              FExtravios.Extravios.Restricao := 'N';
              FExtravios.Extravios.Percentual := 0;
            end;
            FExtravios.Extravios.IDExtrato := 0;
            FExtravios.Extravios.Executor := Global.Parametros.pUser_Name;
            FExtravios.Extravios.Manutencao := Now();
            FExtravios.Extravios.Sequencia := 0;
            SetLength(aParam,3);
            aParam[0] := 'TIPO';
            aParam[1] := FExtravios.Extravios.NN;
            aParam[2] := FExtravios.Extravios.Tipo;
            if FDQuery.Active then FDQuery.Close;
            FDQuery := FExtravios.Localizar(aParam);
            if not FDQuery.IsEmpty then
            begin
              FExtravios.Extravios.ID := FDQuery.FieldByName('COD_EXTRAVIO').AsInteger;
              sObs := FDQuery.FieldByName('DES_OBSERVACOES').Text;
              sObs := sObs + #13 + memObs.Text;
              FExtravios.Extravios.Acao := Common.ENum.tacAlterar;
            end
            else
            begin
              FExtravios.Extravios.Acao := Common.ENum.tacIncluir;
              sObs := memObs.Text;
            end;
            FExtravios.Extravios.Obs := sObs;
            if not FExtravios.Gravar then
            begin
              Application.MessageBox(PChar('Erro ao tentar gravar o extravio do NN ' + FExtravios.Extravios.NN + '!'),
                                     'Erro', MB_OK + MB_ICONERROR);
            end;
          end;
          Data_Sisgef.mtbImportacaoExtravios.Next;
          Inc(iPos,1);
          dPos := (iPos / iTotal) * 100;
          pbImportacao.Position := dPos;
          pbImportacao.Refresh;
        end;
        Application.MessageBox('Importação Concluída!', 'Atenção', MB_OK + MB_ICONINFORMATION);
      end;
    end;
  finally
    FDQuery.Free;
    FEntregas.Free;
    FExtravios.Free;
    LimpaCampos;
    Modo(0);
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.LimpaCampos;
begin
  edtArquivo.Clear;
  datEvento.Clear;
  cboDescricaoExtravio.ItemIndex := -1;
  edtCodigoEntregador.EditValue := 0;
  pbImportacao.Position := 0;
  memObs.Clear;
  if Data_Sisgef.mtbImportacaoExtravios.Active then Data_Sisgef.mtbImportacaoExtravios.Close;
end;

procedure Tview_ImportacaoPlanilhaExtravios.LocalizaEntregadores;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'APOIO';
    aParam[1] := 'COD_ENTREGADOR as Código, NOM_FANTASIA as Nome, COD_AGENTE as Base';
    aparam[2] := ' WHERE COD_CADASTRO <> 0';
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not Assigned(View_PesquisarPessoas) then
    begin
      View_PesquisarPessoas := TView_PesquisarPessoas.Create(Application);
    end;
    View_PesquisarPessoas.qryPesquisa.CreateFieldsFromDataSet(FDQuery);
    View_PesquisarPessoas.qryPesquisa.LoadFromDataSet(FDQuery);
    if not FDQuery.IsEmpty then View_PesquisarPessoas.qryPesquisa.First;
    FDQuery.Close;
    View_PesquisarPessoas.tvPesquisa.ClearItems;
    View_PesquisarPessoas.tvPesquisa.DataController.CreateAllItems;
    View_PesquisarPessoas.Caption := View_PesquisarPessoas.Caption + ' de Entregadores';
    if View_PesquisarPessoas.ShowModal = mrOk then
    begin
      edtCodigoEntregador.EditValue := View_PesquisarPessoas.qryPesquisa.Fields[1].AsInteger;
      txtNomeEntregador.Text := View_PesquisarPessoas.qryPesquisa.Fields[2].AsString;
      iBase := View_PesquisarPessoas.qryPesquisa.Fields[3].AsInteger;
    end;
  finally
    FDQuery.Free;
    FEntregadores.Free;
    FreeAndNil(View_PesquisarPessoas);
  end;
end;

procedure Tview_ImportacaoPlanilhaExtravios.Modo(iTipo: Integer);
begin
  if iTipo = 0 then
  begin
    dxLayoutItem9.Visible := False;
    actImportar.Enabled := True;
  end
  else
  begin
    dxLayoutItem9.Visible := True;
    actImportar.Enabled := False;
  end;
end;

function Tview_ImportacaoPlanilhaExtravios.ValidaImportacao: Boolean;
begin
  Result := False;
  if edtArquivo.Text = '' then
  begin
    Application.MessageBox('Informe o arquivo da planilha!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if not FileExists(edtArquivo.Text) then
  begin
    Application.MessageBox('Arquivo informado não existe!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if datEvento.Date = 0 then
  begin
    Application.MessageBox('Informe a data do evento!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if cboDescricaoExtravio.Text = '' then
  begin
    Application.MessageBox('Informe a descrição ou motivo do extravio!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if StrToIntDef(edtCodigoEntregador.Text,0) = 0 then
  begin
    Application.MessageBox('Informe o código do entregador!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  Result := True;
end;

function Tview_ImportacaoPlanilhaExtravios.NomeEntregador(iCodigo: Integer): String;
var
  aParam: array of Variant;
  FDQuery : TFDQuery;
begin
  try
    Result := 'NONE';
    FDQuery := TSistemaControl.GetInstance.Conexao.ReturnQuery;
    FEntregadores := TEntregadoresExpressasControl.Create;
    SetLength(aParam,3);
    aParam[0] := 'ENTREGADOR';
    aParam[1] := iCodigo;
    FDQuery := FEntregadores.Localizar(aParam);
    Finalize(aParam);
    if not FDQuery.IsEmpty then
    begin
      iBase := FDQuery.FieldByName('COD_AGENTE').AsInteger;
      Result := FDQuery.FieldByName('NOM_FANTASIA').AsString;
    end;
    FDQuery.Close;
    FEntregadores.Free;
  finally
    FDQuery.Free;
  end;
end;

end.
