unit View.SisGeFCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, System.Actions, Vcl.ActnList, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBLookupComboBox, cxCalendar, cxImageComboBox, Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCurrencyEdit, cxMemo,
  service.connectionMySQL, Controller.SisGeFFuncionarios, Common.ENum, Common.Utils, cxBlobEdit;

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
    actSearchDepartment: TAction;
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
    dxLayoutGroup9: TdxLayoutGroup;
    dsFuncionarios: TDataSource;
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
    nascimento: TcxDateEdit;
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
    telefone: TcxMaskEdit;
    dxLayoutItem32: TdxLayoutItem;
    celular: TcxMaskEdit;
    dxLayoutItem33: TdxLayoutItem;
    email: TcxTextEdit;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    ctps: TcxTextEdit;
    dxLayoutItem35: TdxLayoutItem;
    serieCtps: TcxTextEdit;
    dxLayoutItem36: TdxLayoutItem;
    ufCtps: TcxComboBox;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    numeroCNH: TcxTextEdit;
    dxLayoutItem38: TdxLayoutItem;
    registroCNH: TcxTextEdit;
    dxLayoutItem39: TdxLayoutItem;
    categoriaCNH: TcxTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    ufCNH: TcxComboBox;
    dxLayoutItem41: TdxLayoutItem;
    codigoSeguranca: TcxTextEdit;
    dxLayoutItem42: TdxLayoutItem;
    primeiraCNH: TcxDateEdit;
    dxLayoutItem43: TdxLayoutItem;
    emissaoCNH: TcxDateEdit;
    dxLayoutItem44: TdxLayoutItem;
    validadeCNH: TcxDateEdit;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    pis: TcxTextEdit;
    dxLayoutItem46: TdxLayoutItem;
    reservista: TcxTextEdit;
    dxLayoutItem47: TdxLayoutItem;
    titulo: TcxTextEdit;
    dxLayoutItem48: TdxLayoutItem;
    zona: TcxTextEdit;
    dxLayoutItem49: TdxLayoutItem;
    secao: TcxTextEdit;
    dxLayoutItem50: TdxLayoutItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutGroup19: TdxLayoutGroup;
    departamento: TcxButtonEdit;
    dxLayoutItem51: TdxLayoutItem;
    descricaoDepartamento: TcxTextEdit;
    dxLayoutItem52: TdxLayoutItem;
    funcao: TcxButtonEdit;
    dxLayoutItem53: TdxLayoutItem;
    descricaoFuncao: TcxTextEdit;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    admissao: TcxDateEdit;
    dxLayoutItem55: TdxLayoutItem;
    remuneracao: TcxCurrencyEdit;
    dxLayoutItem56: TdxLayoutItem;
    situacao: TcxComboBox;
    dxLayoutItem57: TdxLayoutItem;
    demissao: TcxDateEdit;
    dxLayoutItem58: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    observacoes: TcxMemo;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutGroup22: TdxLayoutGroup;
    cxButton9: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton10: TcxButton;
    dxLayoutItem61: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem62: TdxLayoutItem;
    gridDBTableView1id_funcionario: TcxGridDBColumn;
    gridDBTableView1nom_funcionario: TcxGridDBColumn;
    gridDBTableView1asnom_alias: TcxGridDBColumn;
    gridDBTableView1cod_tipo_pessoa: TcxGridDBColumn;
    gridDBTableView1num_cpf: TcxGridDBColumn;
    gridDBTableView1num_rg: TcxGridDBColumn;
    gridDBTableView1dat_emissao_rg: TcxGridDBColumn;
    gridDBTableView1nom_emissor_rg: TcxGridDBColumn;
    gridDBTableView1uf_emissor_rg: TcxGridDBColumn;
    gridDBTableView1dat_nascimento: TcxGridDBColumn;
    gridDBTableView1des_nacionalidade: TcxGridDBColumn;
    gridDBTableView1des_naturalidade: TcxGridDBColumn;
    gridDBTableView1uf_naturalidade: TcxGridDBColumn;
    gridDBTableView1nom_pai: TcxGridDBColumn;
    gridDBTableView1nom_mae: TcxGridDBColumn;
    gridDBTableView1num_cnh: TcxGridDBColumn;
    gridDBTableView1num_registro_cnh: TcxGridDBColumn;
    gridDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridDBTableView1dat_emissao_cnh: TcxGridDBColumn;
    gridDBTableView1uf_cnh: TcxGridDBColumn;
    gridDBTableView1dat_primeira_cnh: TcxGridDBColumn;
    gridDBTableView1cod_seguranca_cnh: TcxGridDBColumn;
    gridDBTableView1cod_status: TcxGridDBColumn;
    gridDBTableView1des_obs: TcxGridDBColumn;
    gridDBTableView1id_departamento: TcxGridDBColumn;
    gridDBTableView1des_departamento: TcxGridDBColumn;
    gridDBTableView1id_funcao: TcxGridDBColumn;
    gridDBTableView1des_funcao: TcxGridDBColumn;
    gridDBTableView1dat_admissao: TcxGridDBColumn;
    gridDBTableView1val_remuneracao: TcxGridDBColumn;
    gridDBTableView1dat_demissao: TcxGridDBColumn;
    gridDBTableView1createdAt: TcxGridDBColumn;
    gridDBTableView1updatedAt: TcxGridDBColumn;
    procedure actionCloseFormExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FConn : TConnectionMySQL;
    FFuncionarios: TFuncionariosController;
    FAcao : TAcao;

    function CustomSearchStr(sParam: string): string;
    procedure ShowForm;
    procedure ExportGrid;
    procedure ClearFields;
    procedure SetupTabela;
    function  SetupFields(iId: integer): boolean;
    procedure Search(sParam: string);
    procedure Insert;
    procedure Edit;
    procedure Cancel;
    procedure Documents;
    procedure SearchCEP(sCEP: string);
    procedure Save;
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

procedure TviewCadastroFunctionarios.Cancel;
begin

end;

procedure TviewCadastroFunctionarios.ClearFields;
begin
  id.Text := '0';
  nome.Clear;
  cpf.Clear;
  nascimento.Clear;
  nacionalidade.Clear;
  naturalidade.Clear;
  ufNaturalidade.Clear;
  nomePai.Clear;
  nomeMae.Clear;
  CEP.Clear;
  logradouro.Clear;
  numeroLogradouro.Clear;
  complementoEndereco.Clear;
  bairroEndereco.Clear;
  cidadeEndereco.Clear;
  ufEndereco.Clear;
  telefone.Clear;
  celular.Clear;
  email.Clear;
  RG.Clear;
  emissaoRG.Clear;
  emissorRG.Clear;
  ufEmissorRG.Clear;
  ctps.Clear;
  serieCtps.Clear;
  ufCtps.Clear;
  numeroCNH.Clear;
  registroCNH.Clear;
  categoriaCNH.Clear;
  ufCNH.Clear;
  codigoSeguranca.Clear;
  primeiraCNH.Clear;
  emissaoCNH.Clear;
  validadeCNH.Clear;
  pis.Clear;
  reservista.Clear;
  titulo.Clear;
  zona.Clear;
  secao.Clear;
  departamento.Tag := -1;
  departamento.EditValue := 0;
  departamento.Tag := 0;
  descricaoDepartamento.Clear;
  funcao.Tag := -1;
  funcao.EditValue := 0;
  funcao.Tag := 0;
  descricaoFuncao.Clear;
  admissao.Clear;
  remuneracao.Value := 0;
  situacao.ItemIndex := 1;
  demissao.Clear;
end;

function TviewCadastroFunctionarios.CustomSearchStr(sParam: string): string;
var
  utils : TUtils;
  i : integer;
  sType, sField, sQuery, sQueryReturn : string;
  date : TDateTime;
begin
  utils := TUtils.Create;
  sQuery := '';
  sQueryReturn := '';
  Result := '';
  try
    if not sParam.IsEmpty then
    begin
      for i := 0 to gridDBTableView1.ColumnCount - 1 do
      begin
        if gridDBTableView1.Columns[i].Visible then
        begin
          sType := gridDBTableView1.Columns[i].DataBinding.ValueType;
          sField := gridDBTableView1.Columns[i].DataBinding.FieldName;
          if sType = 'String' then
          begin
            if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
            sQuery := sQuery + sField + ' like ' +  QuotedStr('%' + sParam + '%')
          end
          else if sType = 'DateTime' then
          begin
            if TryStrToDate(sParam, date) then
            begin
              if not sQuery.IsEmpty then
              sQuery := sQuery + ' or '
            else
              sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  QuotedStr(FormatDateTime('yyyy-mm-dd', date));
            end;
          end
          else
          begin
            if utils.ENumero(sParam) then
            begin
              if not sQuery.IsEmpty then
                sQuery := sQuery + ' or '
              else
                sQuery := sQuery + '(';
              sQuery := sQuery + sField + ' like ' +  sParam;
            end;
          end;
        end;
      end;
    end;
    if not sQuery.IsEmpty then
      sQuery := sQuery + ')';

    sQueryReturn := sQuery;

    Result := sQueryReturn;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroFunctionarios.Documents;
begin

end;

procedure TviewCadastroFunctionarios.Edit;
begin

end;

procedure TviewCadastroFunctionarios.ExportGrid;
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

procedure TviewCadastroFunctionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FFuncionarios) then FFuncionarios.Free;
  Action := caFree;
  viewCadastroFunctionarios := Nil;
end;

procedure TviewCadastroFunctionarios.Insert;
begin

end;

procedure TviewCadastroFunctionarios.Save;
begin

end;

procedure TviewCadastroFunctionarios.Search(sParam: string);
var
  aParam : Array of String;
begin
  if not Assigned(FFuncionarios) then
    FFuncionarios := TFuncionariosController.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'VIEW';
     aParam[2] := sParam;
     FAcao := tacIndefinido;
     if FFuncionarios.CustomSearch(aParam) then
     begin
      dsFuncionarios.DataSet := FFuncionarios.Funcionario.Query;
      FAcao := tacPesquisa;
     end;
  finally
    Finalize(aParam);
  end;
end;

procedure TviewCadastroFunctionarios.SearchCEP(sCEP: string);
begin

end;

function TviewCadastroFunctionarios.SetupFields(iId: integer): boolean;
begin

end;

procedure TviewCadastroFunctionarios.SetupTabela;
begin

end;

procedure TviewCadastroFunctionarios.ShowForm;
begin
  FConn := TConnectionMySQL.Create;
  FFuncionarios := TFuncionariosController.Create;
  FAcao := tacIndefinido;
end;

end.
