unit View.SisGeFFuncoesAtividades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDBLookupComboBox, cxDBNavigator, System.Actions, Vcl.ActnList,
  Controller.SisGeFCategorias, Controller.SisGeFFuncoesRH, Common.ENum;

type
  TviewFuncoesAtividades = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgpFooter: TdxLayoutGroup;
    lgpGrid: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    gridFuncoesDBTableView1: TcxGridDBTableView;
    gridFuncoesLevel1: TcxGridLevel;
    gridFuncoes: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    mtbCategorias: TFDMemTable;
    mtbFuncoes: TFDMemTable;
    dxLayoutGroup1: TdxLayoutGroup;
    dbAtividades: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    dsCategorias: TDataSource;
    dsFuncoes: TDataSource;
    mtbCategoriasid_categoria: TIntegerField;
    mtbCategoriasdes_categoria: TStringField;
    mtbFuncoesid_funcao: TIntegerField;
    mtbFuncoesid_categoria: TIntegerField;
    mtbFuncoesdes_funcao: TStringField;
    mtbFuncoesdes_atividades: TMemoField;
    gridFuncoesDBTableView1id_funcao: TcxGridDBColumn;
    gridFuncoesDBTableView1id_categoria: TcxGridDBColumn;
    gridFuncoesDBTableView1des_funcao: TcxGridDBColumn;
    gridFuncoesDBTableView1des_atividades: TcxGridDBColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem4: TdxLayoutItem;
    aclFuncoes: TActionList;
    actSair: TAction;
    procedure FormShow(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mtbFuncoesBeforePost(DataSet: TDataSet);
    procedure mtbFuncoesAfterEdit(DataSet: TDataSet);
    procedure mtbFuncoesAfterInsert(DataSet: TDataSet);
    procedure mtbFuncoesAfterPost(DataSet: TDataSet);
    procedure cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
  private
    FAcao : Tacao;

    procedure PopulaCategorias;
    procedure PopulaFuncoes;

    function ValidaSalvarFuncao(): boolean;
    function IncluirFuncao(): boolean;
    function AlteraFuncao(): boolean;
  public
    { Public declarations }
  end;

var
  viewFuncoesAtividades: TviewFuncoesAtividades;

implementation

{$R *.dfm}

uses Data.SisGeF;

{ TviewFuncoesAtividades }

procedure TviewFuncoesAtividades.actSairExecute(Sender: TObject);
begin
  Self.Close;
end;

function TviewFuncoesAtividades.AlteraFuncao: boolean;
var
  FFuncoes  : TFuncoesRHController;
  sMensagem : String;
begin
  FFuncoes := TFuncoesRHController.Create;
  Result := False;
  try
    FFuncoes.FFuncoes.ARecord.id_funcao       :=  mtbFuncoesid_funcao.AsInteger;
    FFuncoes.FFuncoes.ARecord.id_categoria    :=  mtbFuncoesid_categoria.AsInteger;
    FFuncoes.FFuncoes.ARecord.des_funcao      :=  mtbFuncoesdes_funcao.AsString;
    FFuncoes.FFuncoes.ARecord.des_atividades  :=  mtbFuncoesdes_atividades.AsString;
    FFuncoes.FFuncoes.Acao := tacAlterar;
    if not FFuncoes.SaveRecord then
    begin
      sMensagem := 'Ocorreu um problema ao alterar a função no banco de dados! - ' + FFuncoes.FFuncoes.Mensagem;
      Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Application.MessageBox('Função alterada com sucesso!', 'Alteração', MB_OK + MB_ICONINFORMATION);
    FAcao := tacIndefinido;
    Result := True;
  finally
    FFuncoes.Free;
  end;
end;

procedure TviewFuncoesAtividades.cxDBNavigator1ButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  case AButtonIndex of
    16 : PopulaFuncoes;
  end;
end;

procedure TviewFuncoesAtividades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mtbFuncoes.Active := False;
  mtbCategorias.Active := False;
  Action := caFree;
  viewFuncoesAtividades := Nil;
end;

procedure TviewFuncoesAtividades.FormShow(Sender: TObject);
begin
  PopulaCategorias;
  PopulaFuncoes;
  FAcao := tacIndefinido;
end;

function TviewFuncoesAtividades.IncluirFuncao: boolean;
var
  FFuncoes  : TFuncoesRHController;
  sMensagem : String;
begin
  FFuncoes := TFuncoesRHController.Create;
  Result := False;
  try
    FFuncoes.FFuncoes.ARecord.id_funcao       :=  mtbFuncoesid_funcao.AsInteger;
    FFuncoes.FFuncoes.ARecord.id_categoria    :=  mtbFuncoesid_categoria.AsInteger;
    FFuncoes.FFuncoes.ARecord.des_funcao      :=  mtbFuncoesdes_funcao.AsString;
    FFuncoes.FFuncoes.ARecord.des_atividades  :=  mtbFuncoesdes_atividades.AsString;
    FFuncoes.FFuncoes.Acao := tacIncluir;
    if not FFuncoes.SaveRecord then
    begin
      sMensagem := 'Ocorreu um problema ao incluir a nova função no banco de dados! - ' + FFuncoes.FFuncoes.Mensagem;
      Application.MessageBox(PChar(sMensagem), 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Application.MessageBox('Nova função salva com sucesso!', 'Inclusão', MB_OK + MB_ICONINFORMATION);
    FAcao := tacIndefinido;
    Result := True;
  finally
    FFuncoes.Free;
    PopulaFuncoes;
  end;
end;

procedure TviewFuncoesAtividades.mtbFuncoesAfterEdit(DataSet: TDataSet);
begin
  if mtbFuncoes.Tag < 0 then Exit;
  FAcao := tacAlterar;
end;

procedure TviewFuncoesAtividades.mtbFuncoesAfterInsert(DataSet: TDataSet);
begin
  if mtbFuncoes.Tag < 0 then Exit;
  FAcao := tacIncluir;
end;

procedure TviewFuncoesAtividades.mtbFuncoesAfterPost(DataSet: TDataSet);
begin
  if mtbFuncoes.Tag < 0 then Exit;
  if FAcao = tacIncluir then
  begin
    if not IncluirFuncao then
      Abort;
  end
  else if FAcao = tacAlterar then
  begin
    if not AlteraFuncao then
      Abort;
  end
end;

procedure TviewFuncoesAtividades.mtbFuncoesBeforePost(DataSet: TDataSet);
begin
  if mtbFuncoes.Tag < 0 then Exit;

  if not ValidaSalvarFuncao() then
    Abort;
  if Application.MessageBox('Confirma gravar os dados ?', 'Gravar', MB_YESNO + MB_ICONQUESTION) = mrNo then
    Abort;
end;

procedure TviewFuncoesAtividades.PopulaCategorias;
var
  FCategorias : TCategoriasController;
  aParam: array of string;
begin
  FCategorias := TCategoriasController.Create;
  try
    SetLength(aParam,3);
    aParam := ['*', 'TABLE','TRUE'];
    if FCategorias.CustomSearch(aParam) then
    begin
      mtbCategorias.Active := False;
      mtbCategorias.Data := FCategorias.FCategorias.Query.Data;
    end;
  finally
    Finalize(aParam);
    if FCategorias.FCategorias.Query.Active  then
      FCategorias.FCategorias.Query.Connection.Close;
    FCategorias.Free;
  end;
end;

procedure TviewFuncoesAtividades.PopulaFuncoes;
var
  FFuncoes : TFuncoesRHController;
  aParam: array of string;
begin
  FFuncoes := TFuncoesRHController.Create;
  try
    SetLength(aParam,3);
    aParam := ['*', 'TABLE','TRUE'];
    mtbFuncoes.Tag := -1;
    if FFuncoes.CustomSearch(aParam) then
    begin
      mtbFuncoes.Active := False;
      mtbFuncoes.Data := FFuncoes.FFuncoes.Query.Data;
    end;
    mtbFuncoes.Tag := 0;
  finally
    Finalize(aParam);
    if FFuncoes.FFuncoes.Query.Active then
      FFuncoes.FFuncoes.Query.Connection.Close;
    FFuncoes.Free;
  end;
end;

function TviewFuncoesAtividades.ValidaSalvarFuncao: boolean;
var
  FFuncoes : TFuncoesRHController;
  aParam: array of string;
begin
  Result := False;
  FFuncoes := TFuncoesRHController.Create;
  try
    if mtbFuncoesid_categoria.AsInteger <= 0 then
    begin
      Application.MessageBox('Informe uma categoria.', 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    if mtbFuncoesdes_funcao.AsString = EmptyStr then
    begin
      Application.MessageBox('Informe a descricao da função.', 'Atenção', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Result := True;
  finally
    Finalize(aParam);
    FFuncoes.Free;
  end;
end;

end.
