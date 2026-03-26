unit View.SisGeFCadastroTerceirizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, dxLayoutControlAdapters, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, cxCheckBox, cxDropDownEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCalendar, cxBlobEdit, Controller.SisGeFCadastroContratados, cxDBEdit, cxImageComboBox,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBNavigator, Control.Bancos, Control.Estados,
  Controller.SisGeFCategorias, Control.Bases, Controller.SisGeFFuncoesRH, Controller.SisGeFContratadosCNAE,
  Controller.SisGeFContratadosRH, Controller.SisGeFContratadosEnderecos, Controller.SisGeFContratadosContatos,
  Controller.SisGeFVehiclesRegistration, Controller.SisGeFContratadosFinanceiro, Controller.SisGeFContratadosRepresentantes,
  Controller.SisGeFContratadosGR, Controller.APICNPJ, Controller.APICEP, Common.ENum, System.DateUtils, System.StrUtils,
  Common.Utils;

type
  TviewCadastroTerceirizados = class(TForm)
    lycMainGroup_Root: TdxLayoutGroup;
    lycMain: TdxLayoutControl;
    actionList: TActionList;
    actionNewRegister: TAction;
    actionEditRegister: TAction;
    actionLocateRecord: TAction;
    actionDocumentsToExpire: TAction;
    actionRiskManagement: TAction;
    actionLocation: TAction;
    actionCloseForm: TAction;
    actionExpandGrid: TAction;
    actionRetractGrid: TAction;
    actionGroupPanel: TAction;
    actionExportGrid: TAction;
    actionSearchRecords: TAction;
    actionReturnGrid: TAction;
    actionSaveFilterParam: TAction;
    actionLoadFilterParam: TAction;
    actionClearSearch: TAction;
    actionDeleteRegister: TAction;
    actionSaveRegister: TAction;
    lgpMain: TdxLayoutGroup;
    lgpGrid: TdxLayoutGroup;
    lgpMenu: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton5: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    lgpGridView: TdxLayoutGroup;
    lgpOptionsSearch: TdxLayoutGroup;
    bteSearch: TcxButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cbxAtivos: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    gridDBTableView1: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    mtbCadastro: TFDMemTable;
    mtbCadastroid: TIntegerField;
    mtbCadastrocod_erp_contratados: TStringField;
    mtbCadastroid_categoria: TIntegerField;
    mtbCadastrodes_categoria: TStringField;
    mtbCadastrocod_pessoa: TIntegerField;
    mtbCadastrodes_tipo_doc: TStringField;
    mtbCadastronom_razao_social: TStringField;
    mtbCadastronom_fantasia_alias: TStringField;
    mtbCadastronum_cpf_cnpj: TStringField;
    mtbCadastronum_rg_ie: TStringField;
    mtbCadastronum_im: TStringField;
    mtbCadastrodat_emissao_rg: TDateTimeField;
    mtbCadastronom_emissor_rg: TStringField;
    mtbCadastrouf_emissor_rg: TStringField;
    mtbCadastrodat_nascimento: TDateField;
    mtbCadastrodes_nacionalidade: TStringField;
    mtbCadastrodes_naturalidade: TStringField;
    mtbCadastrouf_naturalidade: TStringField;
    mtbCadastronom_pai: TStringField;
    mtbCadastronom_mae: TStringField;
    mtbCadastrocod_crt: TIntegerField;
    mtbCadastronum_cnh: TStringField;
    mtbCadastronum_registro_cnh: TStringField;
    mtbCadastrodes_categoria_cnh: TStringField;
    mtbCadastrodat_validade_cnh: TDateField;
    mtbCadastrodat_emissao_cnh: TDateField;
    mtbCadastrouf_cnh: TStringField;
    mtbCadastrodat_primeira_cnh: TDateField;
    mtbCadastrocod_status: TIntegerField;
    mtbCadastrodat_cadastro: TDateTimeField;
    mtbCadastrodes_obs: TMemoField;
    mtbCadastronom_base: TStringField;
    mtbCadastrodes_funcao: TStringField;
    mtbCadastroid_gr: TIntegerField;
    mtbCadastrodat_consulta_gr: TDateField;
    mtbCadastrodat_validade_gr: TDateField;
    mtbCadastronom_empresa: TStringField;
    mtbCadastrocod_consulta_gr: TStringField;
    mtbCadastroid_representante: TFDAutoIncField;
    mtbCadastronom_representante: TStringField;
    mtbCadastrocpf_representante: TStringField;
    mtbCadastrocod_veiculo: TIntegerField;
    mtbCadastrodes_marca: TStringField;
    mtbCadastrodes_modelo: TStringField;
    mtbCadastrodes_placa: TStringField;
    mtbCadastrodes_tipo_veiculo: TStringField;
    mtbCadastronum_chassis: TStringField;
    mtbCadastrodes_ano: TStringField;
    mtbCadastrodes_cor: TStringField;
    mtbCadastronum_renavan: TStringField;
    mtbCadastroano_exervicio_clrv: TStringField;
    dsCadastro: TDataSource;
    gridDBTableView1id: TcxGridDBColumn;
    gridDBTableView1cod_erp_contratados: TcxGridDBColumn;
    gridDBTableView1id_categoria: TcxGridDBColumn;
    gridDBTableView1des_categoria: TcxGridDBColumn;
    gridDBTableView1cod_pessoa: TcxGridDBColumn;
    gridDBTableView1des_tipo_doc: TcxGridDBColumn;
    gridDBTableView1nom_razao_social: TcxGridDBColumn;
    gridDBTableView1nom_fantasia_alias: TcxGridDBColumn;
    gridDBTableView1num_cpf_cnpj: TcxGridDBColumn;
    gridDBTableView1num_rg_ie: TcxGridDBColumn;
    gridDBTableView1num_im: TcxGridDBColumn;
    gridDBTableView1dat_emissao_rg: TcxGridDBColumn;
    gridDBTableView1nom_emissor_rg: TcxGridDBColumn;
    gridDBTableView1uf_emissor_rg: TcxGridDBColumn;
    gridDBTableView1dat_nascimento: TcxGridDBColumn;
    gridDBTableView1des_nacionalidade: TcxGridDBColumn;
    gridDBTableView1des_naturalidade: TcxGridDBColumn;
    gridDBTableView1uf_naturalidade: TcxGridDBColumn;
    gridDBTableView1nom_pai: TcxGridDBColumn;
    gridDBTableView1nom_mae: TcxGridDBColumn;
    gridDBTableView1cod_crt: TcxGridDBColumn;
    gridDBTableView1num_cnh: TcxGridDBColumn;
    gridDBTableView1num_registro_cnh: TcxGridDBColumn;
    gridDBTableView1des_categoria_cnh: TcxGridDBColumn;
    gridDBTableView1dat_validade_cnh: TcxGridDBColumn;
    gridDBTableView1dat_emissao_cnh: TcxGridDBColumn;
    gridDBTableView1uf_cnh: TcxGridDBColumn;
    gridDBTableView1dat_primeira_cnh: TcxGridDBColumn;
    gridDBTableView1cod_status: TcxGridDBColumn;
    gridDBTableView1dat_cadastro: TcxGridDBColumn;
    gridDBTableView1des_obs: TcxGridDBColumn;
    gridDBTableView1nom_base: TcxGridDBColumn;
    gridDBTableView1des_funcao: TcxGridDBColumn;
    gridDBTableView1id_gr: TcxGridDBColumn;
    gridDBTableView1dat_consulta_gr: TcxGridDBColumn;
    gridDBTableView1dat_validade_gr: TcxGridDBColumn;
    gridDBTableView1nom_empresa: TcxGridDBColumn;
    gridDBTableView1cod_consulta_gr: TcxGridDBColumn;
    gridDBTableView1id_representante: TcxGridDBColumn;
    gridDBTableView1nom_representante: TcxGridDBColumn;
    gridDBTableView1cpf_representante: TcxGridDBColumn;
    gridDBTableView1cod_veiculo: TcxGridDBColumn;
    gridDBTableView1des_marca: TcxGridDBColumn;
    gridDBTableView1des_modelo: TcxGridDBColumn;
    gridDBTableView1des_placa: TcxGridDBColumn;
    gridDBTableView1des_tipo_veiculo: TcxGridDBColumn;
    gridDBTableView1num_chassis: TcxGridDBColumn;
    gridDBTableView1des_ano: TcxGridDBColumn;
    gridDBTableView1des_cor: TcxGridDBColumn;
    gridDBTableView1num_renavan: TcxGridDBColumn;
    gridDBTableView1ano_exervicio_clrv: TcxGridDBColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton6: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    cxButton7: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxButton8: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    lgpCadastro: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dbId: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    dbTipoPessoa: TcxDBImageComboBox;
    dxLayoutItem14: TdxLayoutItem;
    dbCPFCNPJ: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    actionSearchDoc: TAction;
    dbNome: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    dbAlias: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    mtbCategorias: TFDMemTable;
    dsCategoria: TDataSource;
    mtbCategoriasid_categoria: TIntegerField;
    mtbCategoriasdes_categoria: TStringField;
    dbCategoria: TcxDBLookupComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dbSexo: TcxDBImageComboBox;
    dxLayoutItem19: TdxLayoutItem;
    dbRGIE: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dbEmissaoRG: TcxDBDateEdit;
    dxLayoutItem21: TdxLayoutItem;
    dbEmissorRG: TcxDBTextEdit;
    dxLayoutItem22: TdxLayoutItem;
    dsEstados: TDataSource;
    memTableEstados: TFDMemTable;
    memTableEstadosuf_estado: TStringField;
    memTableEstadosnom_estado: TStringField;
    dbUFRG: TcxDBLookupComboBox;
    dxLayoutItem23: TdxLayoutItem;
    dbIM: TcxDBTextEdit;
    dxLayoutItem24: TdxLayoutItem;
    dbNascimento: TcxDBDateEdit;
    dxLayoutItem25: TdxLayoutItem;
    dbNacionalidade: TcxDBTextEdit;
    dxLayoutItem26: TdxLayoutItem;
    dbNaturalidade: TcxDBTextEdit;
    dxLayoutItem27: TdxLayoutItem;
    dbUFNaturalidade: TcxDBLookupComboBox;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    lgpEnderecos: TdxLayoutGroup;
    lgpRH: TdxLayoutGroup;
    lgpBancos: TdxLayoutGroup;
    lgpGR: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dbNomePai: TcxDBTextEdit;
    dxLayoutItem29: TdxLayoutItem;
    dbNomeMae: TcxDBTextEdit;
    dxLayoutItem30: TdxLayoutItem;
    dbCRT: TcxDBImageComboBox;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    memTableFuncoes: TFDMemTable;
    memTableFuncoesid_funcao: TIntegerField;
    memTableFuncoesdes_funcao: TStringField;
    dsFuncoes: TDataSource;
    mtbRH: TFDMemTable;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dbSalario: TcxDBCurrencyEdit;
    dxLayoutItem32: TdxLayoutItem;
    mtbRHid_rh: TIntegerField;
    mtbRHid_contratados: TIntegerField;
    mtbRHdat_admissao: TDateField;
    mtbRHdat_demissao: TDateField;
    mtbRHid_departamento: TIntegerField;
    mtbRHid_funcao: TIntegerField;
    daRH: TDataSource;
    dbAdmissao: TcxDBDateEdit;
    dxLayoutItem33: TdxLayoutItem;
    dbDemissao: TcxDBDateEdit;
    dxLayoutItem34: TdxLayoutItem;
    memTableBases: TFDMemTable;
    memTableBasescod_agente: TIntegerField;
    memTableBasesnom_fantasia: TStringField;
    dsBases: TDataSource;
    dxLayoutGroup18: TdxLayoutGroup;
    dbBase: TcxDBLookupComboBox;
    dxLayoutItem35: TdxLayoutItem;
    dbFuncao: TcxDBLookupComboBox;
    dxLayoutItem36: TdxLayoutItem;
    lgpCNAE: TdxLayoutGroup;
    lgpVeiculos: TdxLayoutGroup;
    mtbGR: TFDMemTable;
    dataGR: TDataSource;
    mtbGRid_gr: TIntegerField;
    mtbGRid_contratados: TIntegerField;
    mtbGRdat_consulta: TDateField;
    mtbGRdat_validade: TDateField;
    mtbGRnom_empresa: TStringField;
    mtbGRcod_consulta: TStringField;
    mtbGRcod_seguranca_cnh: TStringField;
    dxLayoutGroup9: TdxLayoutGroup;
    gridGRDBTableView1: TcxGridDBTableView;
    gridGRLevel1: TcxGridLevel;
    gridGR: TcxGrid;
    dxLayoutItem42: TdxLayoutItem;
    gridGRDBTableView1id_gr: TcxGridDBColumn;
    gridGRDBTableView1id_contratados: TcxGridDBColumn;
    gridGRDBTableView1dat_consulta: TcxGridDBColumn;
    gridGRDBTableView1dat_validade: TcxGridDBColumn;
    gridGRDBTableView1nom_empresa: TcxGridDBColumn;
    gridGRDBTableView1cod_consulta: TcxGridDBColumn;
    gridGRDBTableView1cod_seguranca_cnh: TcxGridDBColumn;
    memTableCNAE: TFDMemTable;
    memTableCNAEid_cnae: TIntegerField;
    memTableCNAEid_contratados: TIntegerField;
    memTableCNAEdes_tipo_cnae: TStringField;
    memTableCNAEcod_cnae: TStringField;
    memTableCNAEdes_cnae: TStringField;
    dxLayoutGroup7: TdxLayoutGroup;
    gridCNAEDBTableView1: TcxGridDBTableView;
    gridCNAELevel1: TcxGridLevel;
    gridCNAE: TcxGrid;
    dxLayoutItem37: TdxLayoutItem;
    dsCNAE: TDataSource;
    gridCNAEDBTableView1id_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1id_contratados: TcxGridDBColumn;
    gridCNAEDBTableView1des_tipo_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1cod_cnae: TcxGridDBColumn;
    gridCNAEDBTableView1des_cnae: TcxGridDBColumn;
    memTableVeiculos: TFDMemTable;
    dsVeiculos: TDataSource;
    dbTipoPessoaVeiculo: TcxDBImageComboBox;
    dxLayoutItem38: TdxLayoutItem;
    dbCPFCNPJVeiculo: TcxDBButtonEdit;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    actionSearchDocVehicle: TAction;
    dbNomePropVeiculo: TcxDBTextEdit;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutSeparatorItem6: TdxLayoutSeparatorItem;
    dbRGIEVeiculo: TcxDBTextEdit;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dbNascimentoVeiculo: TcxDBDateEdit;
    dxLayoutItem43: TdxLayoutItem;
    dbPaiProprietario: TcxDBTextEdit;
    dxLayoutItem44: TdxLayoutItem;
    dbMaePriprietario: TcxDBTextEdit;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dbEmissaoRGProprietario: TcxDBDateEdit;
    dxLayoutItem46: TdxLayoutItem;
    dbUFRGProprietario: TcxDBLookupComboBox;
    dxLayoutItem47: TdxLayoutItem;
    dbTelefone1Veiculo: TcxDBMaskEdit;
    dxLayoutItem48: TdxLayoutItem;
    dbTelefone2Veiculo: TcxDBMaskEdit;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dbCEPVeiculo: TcxDBButtonEdit;
    dxLayoutItem50: TdxLayoutItem;
    actionSearchCEPVeiculo: TAction;
    actionSearchCEPContracted: TAction;
    dbEnderecoVeiculo: TcxDBTextEdit;
    dxLayoutItem51: TdxLayoutItem;
    dbBairroVeiculo: TcxDBTextEdit;
    dxLayoutItem52: TdxLayoutItem;
    dbCidadeVeiculo: TcxDBTextEdit;
    dxLayoutItem53: TdxLayoutItem;
    dbUFEnderecoVeiculo: TcxDBLookupComboBox;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutSeparatorItem7: TdxLayoutSeparatorItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dnMarcaVeiculo: TcxDBTextEdit;
    dxLayoutItem55: TdxLayoutItem;
    dbModeloVeiculo: TcxDBTextEdit;
    dxLayoutItem56: TdxLayoutItem;
    dbPlacaVeiculo: TcxDBTextEdit;
    dxLayoutItem57: TdxLayoutItem;
    dbCidadePlaca: TcxDBTextEdit;
    dxLayoutItem58: TdxLayoutItem;
    dbUFPlaca: TcxDBLookupComboBox;
    dxLayoutItem59: TdxLayoutItem;
    dbTipoVeiculo: TcxDBComboBox;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dbRENAVAN: TcxDBTextEdit;
    dxLayoutItem61: TdxLayoutItem;
    dbChassis: TcxDBTextEdit;
    dxLayoutItem62: TdxLayoutItem;
    dbAnoVeiculo: TcxDBMaskEdit;
    dxLayoutItem63: TdxLayoutItem;
    dbCorVeiculo: TcxDBTextEdit;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutSeparatorItem8: TdxLayoutSeparatorItem;
    dxLayoutGroup21: TdxLayoutGroup;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem65: TdxLayoutItem;
    actionDataContracted: TAction;
    cxButton9: TcxButton;
    dxLayoutItem66: TdxLayoutItem;
    dsEnderecos: TDataSource;
    memTableEnderecos: TFDMemTable;
    memTableEnderecos_id_endereco: TIntegerField;
    memTableEnderecos_id_contratados: TIntegerField;
    memTableEnderecos_des_tipo: TStringField;
    memTableEnderecosnum_cep: TStringField;
    memTableEnderecosdes_logradouro: TStringField;
    memTableEnderecosnum_logradouro: TStringField;
    memTableEnderecosdes_complemento: TStringField;
    memTableEnderecos_des_bairro: TStringField;
    memTableEnderecosnom_cidade: TStringField;
    memTableEnderecosuf_estado: TStringField;
    memTableEnderecosdes_referencia: TStringField;
    dxLayoutGroup22: TdxLayoutGroup;
    dbCEP: TcxDBButtonEdit;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutGroup23: TdxLayoutGroup;
    dbEndereco: TcxDBTextEdit;
    dxLayoutItem68: TdxLayoutItem;
    dbNumero: TcxDBTextEdit;
    dxLayoutItem69: TdxLayoutItem;
    dbComplemento: TcxDBTextEdit;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutGroup24: TdxLayoutGroup;
    dbBairro: TcxDBTextEdit;
    dxLayoutItem71: TdxLayoutItem;
    dbCidade: TcxDBTextEdit;
    dxLayoutItem72: TdxLayoutItem;
    dbUF: TcxDBLookupComboBox;
    dxLayoutItem73: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dbReferencia: TcxDBTextEdit;
    dxLayoutItem74: TdxLayoutItem;
    dxLayoutSeparatorItem9: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem10: TdxLayoutSeparatorItem;
    dxLayoutGroup26: TdxLayoutGroup;
    gridContatosDBTableView1: TcxGridDBTableView;
    gridContatosLevel1: TcxGridLevel;
    gridContatos: TcxGrid;
    dxLayoutItem75: TdxLayoutItem;
    dsContatos: TDataSource;
    memTableContatos: TFDMemTable;
    memTableContatosseq_contato: TIntegerField;
    memTableContatosid_contratados: TIntegerField;
    memTableContatosdes_contato: TStringField;
    memTableContatosnum_telefone: TStringField;
    memTableContatosdes_email: TStringField;
    gridContatosDBTableView1seq_contato: TcxGridDBColumn;
    gridContatosDBTableView1id_contratados: TcxGridDBColumn;
    gridContatosDBTableView1des_contato: TcxGridDBColumn;
    gridContatosDBTableView1num_telefone: TcxGridDBColumn;
    gridContatosDBTableView1des_email: TcxGridDBColumn;
    dsBancos: TDataSource;
    memTableBancos: TFDMemTable;
    memTableBancoscod_banco: TStringField;
    memTableBancosnom_banco: TStringField;
    mtbFinanceiro: TFDMemTable;
    dsFinanceiro: TDataSource;
    mtbFinanceiroid_financeiro: TIntegerField;
    mtbFinanceiroid_contratados: TIntegerField;
    mtbFinanceirocod_banco: TStringField;
    mtbFinanceirocod_agencia: TStringField;
    mtbFinanceironum_conta: TStringField;
    mtbFinanceirochave_pix: TStringField;
    mtbFinanceirodes_forma_pagamento: TStringField;
    gridFinanceiroDBTableView1: TcxGridDBTableView;
    gridFinanceiroLevel1: TcxGridLevel;
    gridFinanceiro: TcxGrid;
    dxLayoutItem76: TdxLayoutItem;
    gridFinanceiroDBTableView1id_financeiro: TcxGridDBColumn;
    gridFinanceiroDBTableView1id_contratados: TcxGridDBColumn;
    gridFinanceiroDBTableView1cod_banco: TcxGridDBColumn;
    gridFinanceiroDBTableView1cod_agencia: TcxGridDBColumn;
    gridFinanceiroDBTableView1num_conta: TcxGridDBColumn;
    gridFinanceiroDBTableView1chave_pix: TcxGridDBColumn;
    gridFinanceiroDBTableView1des_forma_pagamento: TcxGridDBColumn;
    dxLayoutSeparatorItem11: TdxLayoutSeparatorItem;
    dbRepresentante: TcxDBTextEdit;
    dxLayoutItem77: TdxLayoutItem;
    mtbRepresentantes: TFDMemTable;
    saRepresentante: TDataSource;
    mtbRepresentantesid_representante: TIntegerField;
    mtbRepresentantesid_contratados: TIntegerField;
    mtbRepresentantesnom_representante: TStringField;
    mtbRepresentantescpf_representante: TStringField;
    dbCPFRepresentante: TcxDBMaskEdit;
    dxLayoutItem78: TdxLayoutItem;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup29: TdxLayoutGroup;
    cxButton10: TcxButton;
    dxLayoutItem79: TdxLayoutItem;
    cxButton11: TcxButton;
    dxLayoutItem80: TdxLayoutItem;
    cxButton12: TcxButton;
    dxLayoutItem81: TdxLayoutItem;
    actionContracts: TAction;
    lcbCategorias: TcxLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    mtbRHval_salario: TFloatField;
    dxLayoutSeparatorItem12: TdxLayoutSeparatorItem;
    memTableVeiculosCOD_VEICULO: TIntegerField;
    memTableVeiculosDES_TIPO_DOC: TStringField;
    memTableVeiculosNUM_CNPJ: TStringField;
    memTableVeiculosNOM_PROPRIETARIO: TStringField;
    memTableVeiculosDAT_NASCIMENTO: TDateField;
    memTableVeiculosNOM_MAE: TStringField;
    memTableVeiculosNOM_PAI: TStringField;
    memTableVeiculosNUM_RG: TStringField;
    memTableVeiculosUF_RG: TStringField;
    memTableVeiculosDAT_EMISSAO_RG: TDateField;
    memTableVeiculosUF_ENDERECO: TStringField;
    memTableVeiculosNOM_CIDADE: TStringField;
    memTableVeiculosDES_ENDERECO: TStringField;
    memTableVeiculosNUM_CEP: TStringField;
    memTableVeiculosDES_BAIRRO: TStringField;
    memTableVeiculosNUM_TELEFONE_1: TStringField;
    memTableVeiculosDES_TELEFONE_1: TStringField;
    memTableVeiculosNUM_TELEFONE_2: TStringField;
    memTableVeiculosDES_TELEFONE_2: TStringField;
    memTableVeiculosCOD_ENTREGADOR: TIntegerField;
    memTableVeiculosDES_MARCA: TStringField;
    memTableVeiculosDES_MODELO: TStringField;
    memTableVeiculosDES_PLACA: TStringField;
    memTableVeiculosUF_PLACA: TStringField;
    memTableVeiculosNOM_CIDADE_PLACA: TStringField;
    memTableVeiculosDES_TIPO: TStringField;
    memTableVeiculosNUM_CHASSIS: TStringField;
    memTableVeiculosDES_ANO: TStringField;
    memTableVeiculosDES_COR: TStringField;
    memTableVeiculosNUM_RENAVAN: TStringField;
    memTableVeiculosANO_EXERCICIO_CLRV: TStringField;
    memTableVeiculosDOM_RASTREAMENTO: TStringField;
    memTableVeiculosDOM_ABASTECIMENTO: TStringField;
    memTableVeiculosNOM_EXECUTOR: TStringField;
    memTableVeiculosDAT_MANUTENCAO: TDateTimeField;
    dbNumeroCNH: TcxDBTextEdit;
    dxLayoutItem82: TdxLayoutItem;
    dbRegistroCNH: TcxDBTextEdit;
    dxLayoutItem83: TdxLayoutItem;
    dbCategoriaCNH: TcxDBTextEdit;
    dxLayoutItem84: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dbValidadeCNH: TcxDBDateEdit;
    dxLayoutItem85: TdxLayoutItem;
    dbEmissaoCNH: TcxDBDateEdit;
    dxLayoutItem86: TdxLayoutItem;
    dbPrimeiraCNH: TcxDBDateEdit;
    dxLayoutItem87: TdxLayoutItem;
    dbUFCNH: TcxDBLookupComboBox;
    dxLayoutItem88: TdxLayoutItem;
    dbCor: TcxDBTextEdit;
    dxLayoutItem89: TdxLayoutItem;
    dbStatus: TcxDBCheckBox;
    dxLayoutItem90: TdxLayoutItem;
    actionDocuments: TAction;
    cxButton13: TcxButton;
    dxLayoutItem91: TdxLayoutItem;
    cxButton14: TcxButton;
    dxLayoutItem92: TdxLayoutItem;
    dxLayoutSeparatorItem13: TdxLayoutSeparatorItem;
    procedure bteSearchPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actionSearchRecordsExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actionCloseFormExecute(Sender: TObject);
    procedure actionExportGridExecute(Sender: TObject);
    procedure actionExpandGridExecute(Sender: TObject);
    procedure actionRetractGridExecute(Sender: TObject);
    procedure actionGroupPanelExecute(Sender: TObject);
    procedure actionReturnGridExecute(Sender: TObject);
    procedure actionEditRegisterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actionNewRegisterExecute(Sender: TObject);
    procedure lgpMainTabChanged(Sender: TObject);
    procedure dbTipoPessoaPropertiesChange(Sender: TObject);
    procedure dbTipoPessoaVeiculoPropertiesChange(Sender: TObject);
    procedure actionSearchDocExecute(Sender: TObject);
    procedure actionSearchDocVehicleExecute(Sender: TObject);
    procedure actionSearchCEPContractedExecute(Sender: TObject);
    procedure actionSearchCEPVeiculoExecute(Sender: TObject);
    procedure actionSaveRegisterExecute(Sender: TObject);
    procedure actionContractsExecute(Sender: TObject);
    procedure dbStatusPropertiesChange(Sender: TObject);
    procedure actionDocumentsExecute(Sender: TObject);
    procedure gridDBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
    FCaptionComplent : String;
    FAcao : TAcao;

    function CustomSearchStr(sParam: string): string;

    procedure LoadForm();

    procedure ExecSarch(sQuery: string);
    procedure ExportGrid();
    procedure ExpandGrid();
    procedure CollapseGrid();
    procedure PanelGroup();

    procedure PopulateBank();
    procedure PopulateStates();
    procedure PopulateCategories();
    procedure PopulateBases();
    procedure PopulateFunctions();

    procedure PopulateCNAE(iCadastro: integer);
    procedure PopulateRH(iCadastro: integer);
    procedure PopulateAdress(iCadastro: integer);
    procedure PopulateContacts(iCadastro: integer);
    procedure PopulateVehicles(iCadastro: integer);
    procedure PopulateFinances(iCadastro: integer);
    procedure PopulateRepresentative(iCadastro: integer);
    procedure PopulateGR(iCadastro: integer);

    procedure ChangeCaptionForm();
    procedure Editar(iCadastro: integer);
    procedure Inserir();
    procedure Cancelar;
    procedure EmitirContratos;
    procedure Documentos;

    procedure ImprimeContratoColaborador(sData, sAtividade, sLocal: String);
    procedure ImprimeContratoAutonomo(sData, sAtividade, sLocal: String);
    procedure ImprimeContratoEntregador(sData, sLocal: String);


    function  ValidateData(): boolean;


    function  SaveContracted(): boolean;
    function  SaveAdress(iCadastro: integer): boolean;
    function  SaveContacts(iCadastro: integer): boolean;
    function  SaveFinance(iCadastro: integer): boolean;
    function  SaveRepresentative(iCadastro: integer): boolean;
    function  SaveRH(iCadastro: integer): boolean;
    function  SaveCNAE(iCadastro: integer): boolean;
    function  SaveGR(iCadastro: integer): boolean;

    procedure SearchCNPJCadastro(sCNPJ: string);
    procedure SearchCNPJVeiculo(sCNPJ: string);
    procedure SearchCEPCadastro(sCEP: string);
    procedure SearchCEPVeiculo(sCEP: string);

  public
    { Public declarations }
  end;

var
  viewCadastroTerceirizados: TviewCadastroTerceirizados;

implementation

{$R *.dfm}

uses Data.SisGeF, View.ListaCEPs, View.ResultadoConsultaCNPJ, View.Impressao, View.SisGeFContractEmission,
  View.SisaGeFAttachDocuments;

{ TviewCadastroTerceirizados }

procedure TviewCadastroTerceirizados.actionCloseFormExecute(Sender: TObject);
begin
  Close;
end;

procedure TviewCadastroTerceirizados.actionContractsExecute(Sender: TObject);
begin
  EmitirContratos;
end;

procedure TviewCadastroTerceirizados.actionDocumentsExecute(Sender: TObject);
begin
  if not mtbCadastro.IsEmpty then  
    Documentos;
end;

procedure TviewCadastroTerceirizados.actionEditRegisterExecute(Sender: TObject);
begin
  Editar(mtbCadastroid.AsInteger);
end;

procedure TviewCadastroTerceirizados.actionExpandGridExecute(Sender: TObject);
begin
   ExpandGrid;
end;

procedure TviewCadastroTerceirizados.actionExportGridExecute(Sender: TObject);
begin
  ExportGrid;
end;

procedure TviewCadastroTerceirizados.actionGroupPanelExecute(Sender: TObject);
begin
  PanelGroup;
end;

procedure TviewCadastroTerceirizados.actionNewRegisterExecute(Sender: TObject);
begin
  Inserir;
end;

procedure TviewCadastroTerceirizados.actionRetractGridExecute(Sender: TObject);
begin
  CollapseGrid;
end;

procedure TviewCadastroTerceirizados.actionReturnGridExecute(Sender: TObject);
begin
  Cancelar;
end;

procedure TviewCadastroTerceirizados.actionSaveRegisterExecute(Sender: TObject);
begin
  if not ValidateData() then Exit;

  if MessageDlg('Confirma salvar os dados ?', mtConfirmation, [mbOK, mbCancel], 0) = mrCancel then
     Exit;

  if not SaveContracted() then
  begin
    Application.MessageBox('Ocorreu algum problema ao gravar os dados!','Atenção',MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end
  else
  begin
    Application.MessageBox('Dados gravados com sucesso','Gravar',MB_OK + MB_ICONINFORMATION);
  end;

end;

procedure TviewCadastroTerceirizados.actionSearchCEPContractedExecute(Sender: TObject);
begin
  SearchCEPCadastro(dbCEP.Text);
end;

procedure TviewCadastroTerceirizados.actionSearchCEPVeiculoExecute(Sender: TObject);
begin
  SearchCEPVeiculo(dbCEPVeiculo.Text);
end;

procedure TviewCadastroTerceirizados.actionSearchDocExecute(Sender: TObject);
begin
  SearchCNPJCadastro(dbCPFCNPJ.Text);
end;

procedure TviewCadastroTerceirizados.actionSearchDocVehicleExecute(Sender: TObject);
begin
  SearchCNPJVeiculo(dbCPFCNPJVeiculo.Text);
end;

procedure TviewCadastroTerceirizados.actionSearchRecordsExecute(Sender: TObject);
begin
  ExecSarch(CustomSearchStr(bteSearch.Text));
end;

procedure TviewCadastroTerceirizados.bteSearchPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if AButtonIndex = 0 then
  begin
    bteSearch.Clear;
    bteSearch.SetFocus;
  end;
end;

procedure TviewCadastroTerceirizados.Cancelar;
begin
  dsCadastro.AutoEdit := False;
  daRH.AutoEdit := False;
  dataGR.AutoEdit := False;
  dsVeiculos.AutoEdit := False;
  dsEnderecos.AutoEdit := False;
  dsContatos.AutoEdit := False;
  dsFinanceiro.AutoEdit := False;
  saRepresentante.AutoEdit := False;

  FAcao := tacIndefinido;
  mtbCadastro.Cancel;

  memTableEnderecos.Active := False;
  memTableContatos.Active := False;
  mtbFinanceiro.Active := False;
  memTableCNAE.Active := False;
  mtbRepresentantes.Active := False;
  memTableVeiculos.Active := False;
  mtbGR.Active := False;
  lgpMain.ItemIndex := 0;
end;


procedure TviewCadastroTerceirizados.ChangeCaptionForm;
var
  sState: string;
begin
  sState := EmptyStr;
  case dsCadastro.State of
    dsInsert  : sState  := 'INCLUIR';
    dsEdit    : sState  := 'EDITAR';
  else
    sState := EmptyStr;
  end;
  if lgpMain.ItemIndex = 1 then
  begin
    FCaptionComplent := ' - ' + sState;
    Self.Caption := Self.Caption + FCaptionComplent;
  end
  else
  begin
    Self.Caption := StringReplace(Self.Caption, FCaptionComplent, EmptyStr,[rfReplaceAll]);
  end;
end;

procedure TviewCadastroTerceirizados.CollapseGrid;
begin
  gridDBTableView1.ViewData.Collapse(True);
end;

procedure TviewCadastroTerceirizados.PopulateContacts(iCadastro: integer);
var
  FContatos : TContratadosContatosController;
  aParam: array of string;
begin
  try
    FContatos := TContratadosContatosController.Create;
    if memTableContatos.Active then
    begin
      memTableContatos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if not FContatos.Search(aParam) then
    begin
      Exit;
    end;
    memTableContatos.Active := True;
    while not FContatos.FContatos.Query.Eof do
    begin
      memTableContatos.Insert;
      memTableContatosseq_contato.AsInteger := FContatos.FContatos.Query.FieldByName('seq_contato').AsInteger;
      memTableContatosid_contratados.AsInteger := FContatos.FContatos.Query.FieldByName('id_contratados').AsInteger;
      memTableContatosdes_contato.AsString := FContatos.FContatos.Query.FieldByName('des_contato').AsString;
      memTableContatosnum_telefone.AsString := FContatos.FContatos.Query.FieldByName('num_telefone').AsString;
      memTableContatosdes_email.AsString := FContatos.FContatos.Query.FieldByName('des_email').AsString;
      memTableContatos.Post;
      FContatos.FContatos.Query.Next;
    end;
    if not memTableContatos.Active then
      memTableContatos.Active := True;
  finally
    FContatos.FContatos.Query.Connection.Close;
    FContatos.Free;
  end;
end;

function TviewCadastroTerceirizados.CustomSearchStr(sParam: string): string;
var
  utils : TUtils;
  i : integer;
  sType, sField, sQuery, sQueryPadrao, sQueryReturn : string;
  date : TDateTime;
begin
  utils := TUtils.Create;
  sQuery := '';
  sQueryPadrao := '';
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

    if cbxAtivos.Checked then
    begin
      if sQueryPadrao.IsEmpty then
        sQueryPadrao := sQueryPadrao + '(';
      sQueryPadrao := sQueryPadrao + ' cod_status = 1';
    end;

    if lcbCategorias.ItemIndex > 0 then
    begin
      if sQueryPadrao.IsEmpty then
        sQueryPadrao := sQueryPadrao + '('
      else
        sQueryPadrao := sQueryPadrao + ' and ';
      sQueryPadrao := sQueryPadrao + ' id_categoria = ' + lcbCategorias.ItemIndex.ToString ;
    end;

    if not sQueryPadrao.IsEmpty then
    begin
      sQueryPadrao := sQueryPadrao + ')';
      if not sQuery.IsEmpty then
        sQueryReturn := sQuery + ' and ' + sQueryPadrao
      else
        sQueryReturn := sQueryPadrao
    end;

    Result := sQueryReturn;
  finally
    utils.Free;
  end;
end;

procedure TviewCadastroTerceirizados.dbStatusPropertiesChange(Sender: TObject);
begin
  if dbStatus.Checked then
    dbStatus.Caption := 'ATIVO'
  else
    dbStatus.Caption := 'INATIVO';
end;

procedure TviewCadastroTerceirizados.dbTipoPessoaPropertiesChange(Sender: TObject);
begin
  if dbTipoPessoa.ItemIndex = 1 then
  begin
    dbCPFCNPJ.Properties.Buttons[0].Enabled := True;
    dbCPFCNPJ.Properties.EditMask := '!00\.000\.000\/0000\-00;0; ';
    dbSexo.ItemIndex := 3;
  end
  else
  begin
    dbCPFCNPJ.Properties.Buttons[0].Enabled := False;
    dbCPFCNPJ.Properties.EditMask := '!000\.000\.000\-00;0; ';
  end;
end;

procedure TviewCadastroTerceirizados.dbTipoPessoaVeiculoPropertiesChange(Sender: TObject);
begin
  if dbTipoPessoaVeiculo.ItemIndex = 1 then
  begin
    dbCPFCNPJVeiculo.Properties.Buttons[0].Enabled := True;
    dbCPFCNPJVeiculo.Properties.EditMask := '!00\.000\.000\/0000\-00;0; ';
  end
  else
  begin
    dbCPFCNPJVeiculo.Properties.Buttons[0].Enabled := False;
    dbCPFCNPJVeiculo.Properties.EditMask := '!000\.000\.000\-00;0; ';
  end;

end;

procedure TviewCadastroTerceirizados.Documentos;
begin
  if not Assigned(view_SisgeFAttachDocuments) then
    view_SisgeFAttachDocuments := Tview_SisgeFAttachDocuments.Create(Application);
  view_SisgeFAttachDocuments.Pasta := dbId.Text;
  view_SisgeFAttachDocuments.Show;
end;

procedure TviewCadastroTerceirizados.Editar(iCadastro: integer);
begin
  if gridDBTableView1.ViewData.RowCount = 0 then Exit;

  dsCadastro.AutoEdit := True;
  daRH.AutoEdit := True;
  dataGR.AutoEdit := True;
  dsVeiculos.AutoEdit := True;
  dsEnderecos.AutoEdit := True;
  dsContatos.AutoEdit := True;
  dsFinanceiro.AutoEdit := True;
  saRepresentante.AutoEdit := True;

  PopulateAdress(iCadastro);
  PopulateContacts(iCadastro);
  PopulateFinances(iCadastro);
  PopulateGR(iCadastro);
  PopulateRH(iCadastro);
  PopulateCNAE(iCadastro);
  PopulateRepresentative(iCadastro);
  PopulateVehicles(iCadastro);

  FAcao := tacAlterar;
  mtbCadastro.Edit;

  dxLayoutGroup6.ItemIndex := 0;
  lgpMain.ItemIndex := 1;
end;

procedure TviewCadastroTerceirizados.EmitirContratos;
var
  iTipo: integer;
  sData, sValor, sAtividade, sFuncao, sLocal: String;
begin
  try
    if not Assigned(view_SisGeFContractEmission) then begin
      view_SisGeFContractEmission := Tview_SisGeFContractEmission.Create(Application);
    end;
    if view_SisGeFContractEmission.ShowModal = mrCancel Then
      Exit;
    iTipo := view_SisGeFContractEmission.radioGroup.ItemIndex;
    sData := view_SisGeFContractEmission.dateContrato.Text;
    sValor := Self.dbSalario.Text;
    sAtividade := view_SisGeFContractEmission.memoAtividades.Text;
    sLocal := view_SisGeFContractEmission.txtLocal.Text;
    sFuncao := dbFuncao.Text;
    case iTipo of
      0 : ImprimeContratoColaborador(sData, sAtividade, sLocal);
      1 : ImprimeContratoEntregador(sData, sLocal);
      2 : ImprimeContratoAutonomo(sData, sAtividade, sLocal);
      else
        Exit;
    end;
  finally
    FreeAndNil(view_SisGeFContractEmission);
  end;
end;

procedure TviewCadastroTerceirizados.ExecSarch(sQuery: string);
var
  cadastro : TCadastroContratadosController;
  aParam : Array of String;
begin
  cadastro := TCadastroContratadosController.Create;
  SetLength(aParam, 3);

  try
     aParam[0] := '*';
     aParam[1] := 'VIEW';
     aParam[2] := sQuery;

     if mtbCadastro.Active then mtbCadastro.Active := False;


     if cadastro.CustomSearch(aParam) then
     begin
       if mtbCadastro.Active then mtbCadastro.Close;
       mtbCadastro.Data := cadastro.FContratados.Query.Data;
     end;
     cadastro.FContratados.Query.Close;
     cadastro.FContratados.Query.Connection.Close;
  finally
    Finalize(aParam);
    cadastro.Free;
  end;
end;

procedure TviewCadastroTerceirizados.ExpandGrid;
begin
  gridDBTableView1.ViewData.Expand(True);
end;

procedure TviewCadastroTerceirizados.ExportGrid;
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

procedure TviewCadastroTerceirizados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if mtbCadastro.Active then mtbCadastro.Close;
  Action := caFree;
  viewCadastroTerceirizados := Nil;
end;

procedure TviewCadastroTerceirizados.FormShow(Sender: TObject);
begin
  LoadForm;
end;

procedure TviewCadastroTerceirizados.gridDBTableView1DblClick(Sender: TObject);
begin
  Editar(mtbCadastroid.AsInteger);
end;

procedure TviewCadastroTerceirizados.ImprimeContratoAutonomo(sData, sAtividade, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
  sExtenco: String;
  sValor: string;
  sFuncao : string;
  FFuncao: TUtils;
begin
  FFuncao := TUtils.Create;
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso :=  sLocal + ', ' + FormatDateTime('dd "de" mmmm "de" yyyy', Now());
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - AUTÔNOMO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoAutonomo.fr3';
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
    sValor := dbSalario.Text;
    sExtenco := FFuncao.valorPorExtenso(StrToFloatDef(ReplaceStr(sValor,'.',''),0));
    sEndereco := dbEndereco.Text + ', ' + dbNumero.Text;
    if dbComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbComplemento.Text;
    end;
    sEndereco := sEndereco + ', bairro ' + dbBairro.Text;
    sEndereco := sEndereco + ', cidade ' + dbCidade.Text + '/' + dbUF.Text;
    sEndereco := sEndereco + ', CEP: ' + dbCEP.Text;
    sFuncao := dbFuncao.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(dbNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value :=  QuotedStr(FFuncao.FormataCPF(dbCPFCNPJ.Text));
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pFuncao')].Value :=  QuotedStr(sFuncao);
    Variables.Items[Variables.IndexOf('pAtividades')].Value :=  QuotedStr(sAtividade);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pValorNumeral')].Value :=  QuotedStr(sValor);
    Variables.Items[Variables.IndexOf('pValorExtencao')].Value :=  QuotedStr(sExtenco);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);
    Variables.Items[Variables.IndexOf('pLocal')].Value :=  QuotedStr(sLocal);

    FFuncao.Free;
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure TviewCadastroTerceirizados.ImprimeContratoColaborador(sData, sAtividade, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
  sExtenco: String;
  sValor: string;
  sFuncao : string;
  FFuncao: TUtils;
  dValor : Double;
begin
  FFuncao := TUtils.Create;
  sEndereco := '';
  dValor := 0;
  dtData := StrToDateDef(sData,0);
  sLocal := EmptyStr;
  if sLocal = EmptyStr then
    sDataExtenso := FormatDateTime('dd "de" mmmm "de" yyyy', Now)
  else
    sDataExtenso := sLocal + ', ' + FormatDateTime('dd "de" mmmm "de" yyyy', Now);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - CONTRATADO';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoColaboradorV2.fr3';
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
    sValor := ReplaceStr(dbSalario.Text,'R$ ','') ;
    sValor := ReplaceStr(sValor,'.','') ;
    dValor :=  StrToFloatDef(sValor,0);
    sExtenco := FFuncao.valorPorExtenso(dValor);
    sEndereco := dbEndereco.Text + ', ' + dbNumero.Text;
    if dbComplemento.Text <> '' then
    begin
      sEndereco := sEndereco + ', ' + dbComplemento.Text;
    end;
    sEndereco := sEndereco + ', bairro ' + dbBairro.Text;
    sEndereco := sEndereco + ', cidade ' + dbCidade.Text + '/' + dbUF.Text;
    sEndereco := sEndereco + ', CEP: ' + dbCEP.Text;
    sFuncao := dbFuncao.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
    Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(dbNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value := QuotedStr(FFuncao.FormataCNPJ(dbCPFCNPJ.Text));
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pNomeRepresentante')].Value :=  QuotedStr(dbRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDocRepresentante')].Value :=  QuotedStr(dbCPFRepresentante.Text);
    Variables.Items[Variables.IndexOf('pFuncao')].Value :=  QuotedStr(sFuncao);
    Variables.Items[Variables.IndexOf('pAtividades')].Value :=  QuotedStr(sAtividade);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pValorNumeral')].Value :=  QuotedStr(sValor);
    Variables.Items[Variables.IndexOf('pValorExtencao')].Value :=  QuotedStr(sExtenco);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);
    Variables.Items[Variables.IndexOf('pLocal')].Value :=  QuotedStr(sLocal);
    FFuncao.Free;
    FreeAndNil(view_Impressao);
    ShowReport(True);
  end;
end;

procedure TviewCadastroTerceirizados.ImprimeContratoEntregador(sData, sLocal: String);
var
  sEndereco: String;
  sDataExtenso: String;
  dtData: TDate;
  FFuncao : TUtils;

begin
  FFuncao := TUtils.Create;
  sEndereco := '';
  dtData := StrToDateDef(sData,0);
  sDataExtenso := sLocal + ',' + FormatDateTime('dd "de" mmmm "de" yyyy', Now);
  with Data_Sisgef.frxReport do begin
    if not Assigned(view_Impressao) then begin
      view_Impressao := Tview_Impressao.Create(Application);
    end;
    view_Impressao.cxLabel1.Caption := 'CONTRATO DE PRESTAÇÃO DE SERVIÇO - MOTORISTA / ENTREGADOR';
    view_Impressao.cxArquivo.Text := ExtractFilePath(Application.ExeName) + 'Reports\contratoEntregador.fr3';
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
    sEndereco := dbEndereco.Text + ', ' + dbNumero.Text;
    if dbComplemento.Text = '' then
    begin
      sEndereco := sEndereco + ', ' + dbComplemento.Text;
    end;
    sEndereco := sEndereco + ', ' + dbBairro.Text;
    sEndereco := sEndereco + ', ' + dbCidade.Text + '/' + dbUF.Text;
    sEndereco := sEndereco + ', CEP: ' + dbCEP.Text;
    LoadFromFile(view_Impressao.cxArquivo.Text);
   Variables.Items[Variables.IndexOf('pNomeContratado')].Value :=  QuotedStr(dbNome.Text);
    Variables.Items[Variables.IndexOf('pDocContratado')].Value :=  QuotedStr(FFuncao.FormataCNPJ(dbCPFCNPJ.Text));
    Variables.Items[Variables.IndexOf('pEnderecoContratado')].Value :=  QuotedStr(sEndereco);
    Variables.Items[Variables.IndexOf('pNomeRepresentante')].Value :=  QuotedStr(dbRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDocRepresentante')].Value :=  QuotedStr(dbCPFRepresentante.Text);
    Variables.Items[Variables.IndexOf('pDataInicio')].Value :=  QuotedStr(sData);
    Variables.Items[Variables.IndexOf('pDataExtenco')].Value :=  QuotedStr(sDataExtenso);
    Variables.Items[Variables.IndexOf('pLocal')].Value :=  QuotedStr(sLocal);
    FreeAndNil(view_Impressao);
    FFuncao.Free;
    ShowReport(True);
  end;

end;

procedure TviewCadastroTerceirizados.Inserir;
begin
  dsCadastro.AutoEdit := True;
  daRH.AutoEdit := True;
  dataGR.AutoEdit := True;
  dsVeiculos.AutoEdit := True;
  dsEnderecos.AutoEdit := True;
  dsContatos.AutoEdit := True;
  dsFinanceiro.AutoEdit := True;
  saRepresentante.AutoEdit := True;
  FAcao := tacIncluir;

  mtbCadastro.Insert;
  memTableEnderecos.Active := False;
  memTableEnderecos.Active := True;
  memTableContatos.Active := False;
  memTableContatos.Active := True;
  mtbFinanceiro.Active := False;
  mtbFinanceiro.Active := True;
  mtbGR.Active := False;
  mtbGR.Active := True;
  mtbRH.Active := False;
  mtbRH.Active := True;
  memTableCNAE.Active := False;
  memTableCNAE.Active := True;
  mtbRepresentantes.Active := False;
  mtbRepresentantes.Active := True;
  memTableVeiculos.Active := False;
  memTableVeiculos.Active := True;
  dxLayoutGroup6.ItemIndex := 0;
  lgpMain.ItemIndex := 1;
end;

procedure TviewCadastroTerceirizados.lgpMainTabChanged(Sender: TObject);
begin
  ChangeCaptionForm();
end;

procedure TviewCadastroTerceirizados.LoadForm;
begin
  FCaptionComplent := EmptyStr;
  PopulateBank;
  PopulateStates;
  PopulateCategories;
  PopulateBases;
  PopulateFunctions;
  lcbCategorias.EditValue := 0;
end;

procedure TviewCadastroTerceirizados.PanelGroup;
begin
  gridDBTableView1.OptionsView.GroupByBox := (not gridDBTableView1.OptionsView.GroupByBox);
end;

procedure TviewCadastroTerceirizados.PopulateAdress(iCadastro: integer);
var
  FEnderecos : TContratadosEnderecosController;
  aParam: array of string;
begin
  try
    FEnderecos := TContratadosEnderecosController.Create;
    if memTableEnderecos.Active then
    begin
      memTableEnderecos.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FEnderecos.Search(aParam) then
    begin
      memTableEnderecos.CopyDataSet(FEnderecos.FEnderecos.Query);
    end;
    FEnderecos.FEnderecos.Query.Connection.Close;
    if not memTableEnderecos.Active then
      memTableEnderecos.Active := True;
  finally
    FEnderecos.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateBank;
var
  FBancos : TBancosControl;
  aParam : array of variant;
begin
  try
    FBancos := TBancosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','*',''];
    if FBancos.LocalizarExt(aParam)  then
    begin
      if memTableBancos.Active then
      begin
        memTableBancos.Close;
      end;
      memTableBancos.Data := FBancos.Bancos.Query;
      FBancos.Bancos.Query.Close;
      FBancos.Bancos.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FBancos.Free;
  end;end;

procedure TviewCadastroTerceirizados.PopulateBases;
var
  FBases : TBasesControl;
  aParam : array of variant;
begin
  try
    FBases := TBasesControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','*',''];
    memTableBases.Active := False;
    memTableBases.Data := FBases.Localizar(aParam);
    Finalize(aParam);
  finally
    FBases.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateCategories;
var
  FCategorias : TCategoriasController;
  aParam : array of string;
begin
  try
    FCategorias := TCategoriasController.Create;
    SetLength(aParam,3);
    aParam := [''];
    if FCategorias.Search(aParam)  then
    begin
      if memTableFuncoes.Active then
      begin
        memTableFuncoes.Close;
      end;
      mtbCategorias.Data := FCategorias.FCategorias.Query;
      mtbCategorias.Insert;
      mtbCategoriasid_categoria.AsInteger := 0;
      mtbCategoriasdes_categoria.AsString := 'TODOS';
      mtbCategorias.Post;
      FCategorias.FCategorias.Query.Close;
      FCategorias.FCategorias.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FCategorias.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateCNAE(iCadastro: integer);
var
  FCNAE : TCadastroContratadosCNAEController;
  aParam: array of string;
begin
  try
    FCNAE := TCadastroContratadosCNAEController.Create;
    if memTableCNAE.Active then
    begin
      memTableCNAE.Close;
    end;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if not FCNAE.Search(aParam) then
    begin
      Exit;
    end;
    memTableCNAE.Active := True;;
    while not FCNAE.FCNAE.Query.Eof do
    begin
      memTableCNAE.Insert;
      memTableCNAEid_cnae.AsInteger         :=  FCNAE.FCNAE.Query.FieldByName('id_cnae').AsInteger;
      memTableCNAEid_contratados.AsInteger  :=  FCNAE.FCNAE.Query.FieldByName('id_contratados').AsInteger;
      memTableCNAEdes_tipo_cnae.AsString    :=  FCNAE.FCNAE.Query.FieldByName('des_tipo_cnae').AsString;
      memTableCNAEcod_cnae.AsString         :=  FCNAE.FCNAE.Query.FieldByName('cod_cnae').AsString;
      memTableCNAEdes_cnae.AsString         :=  FCNAE.FCNAE.Query.FieldByName('des_cnae').AsString;
      memTableCNAE.Post;
      FCNAE.FCNAE.Query.Next;
    end;
    if not memTableCNAE.Active then
      memTableCNAE.Active := True
  finally
    FCNAE.FCNAE.Query.Connection.Close;
    FCNAE.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateFinances(iCadastro: integer);
var
  FFinanceiro : TContratadosFinanceiroController;
  aParam: array of string;
begin
  try
    FFinanceiro := TContratadosFinanceiroController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FFinanceiro.Search(aParam) then
    begin

      mtbFinanceiro.Data := FFinanceiro.FFinanceiro.Query.Data;
//      if FFinanceiro.SetupRecord then
//      begin
//        comboBoxFormaPagamento.Text := FFinanceiro.FFinanceiro.ARecord.des_forma_pagamento;
//        lookupComboBoxBanco.EditValue := FFinanceiro.FFinanceiro.ARecord.cod_banco;
//        textEditAgencia.Text := FFinanceiro.FFinanceiro.ARecord.cod_agencia;
//        textEditConta.Text := FFinanceiro.FFinanceiro.ARecord.num_conta;
//        textEditChavePIX.Text := FFinanceiro.FFinanceiro.ARecord.chave_pix;
//      end
//      else
//      begin
//        MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0)
//      end;
    end;
    FFinanceiro.FFinanceiro.Query.Connection.Close;
    if not mtbFinanceiro.Active then mtbFinanceiro.Active := True;

  finally
    FFinanceiro.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateFunctions;
var
  FFuncoes : TFuncoesRHController;
  aParam : array of string;
begin
  try
    FFuncoes := TFuncoesRHController.Create;
    SetLength(aParam,3);
    aParam := [''];
    if FFuncoes.Search(aParam)  then
    begin
      if memTableFuncoes.Active then
      begin
        memTableFuncoes.Close;
      end;
      memTableFuncoes.Data := FFuncoes.FFuncoes.Query;
      FFuncoes.FFuncoes.Query.Close;
      FFuncoes.FFuncoes.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FFuncoes.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateGR(iCadastro: integer);
var
  FGR : TContratadosGRController;
  aParam: array of string;
begin
  try
    fgr := TContratadosGRController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FGR.Search(aParam) then
    begin
      mtbGR.Data := FGR.FGR.Query.Data;
    end;
    FGR.FGR.Query.Connection.Close;
    if not mtbGR.Active then mtbGR.Active := True;

  finally
    FGR.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateRepresentative(iCadastro: integer);
var
  FRepresentante : TContratadosRepresentanteController;
  aParam: array of string;
begin
  try
    FRepresentante := TContratadosRepresentanteController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FRepresentante.Search(aParam) then
    begin
      mtbRepresentantes.Data := FRepresentante.FRepresentante.Query.Data;
//      if FRepresentante.SetupRecord then
//      begin
//        txtRepresentante.Text := FRepresentante.FRepresentante.ARecord.nom_representante;
//        mskCPFRepresentante.EditValue := FRepresentante.FRepresentante.ARecord.cpf_representante;
//      end
//      else
//      begin
//        MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0)
//      end;
    end;
    FRepresentante.FRepresentante.Query.Connection.Close;
    if not mtbRepresentantes.Active then mtbRepresentantes.Active := True;

  finally
    FRepresentante.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateRH(iCadastro: integer);
var
  FRH : TContratadosRHController;
  aParam: array of string;
begin
  try
    FRH := TContratadosRHController.Create;
    SetLength(aParam,2);
    aParam := ['CONTRATADO',iCadastro.ToString];
    if FRH.Search(aParam) then
    begin
//      if mtbRH.Active then mtbRH.Close;
//      mtbRH.Data := FRH.FRH.Query.Data;
      mtbRH.Open;
      while not FRH.FRH.Query.Eof do
      begin
        mtbRH.Insert;
        mtbRHid_rh.AsInteger := FRH.FRH.Query.FieldByName('id_rh').AsInteger;
        mtbRHid_contratados.AsInteger := FRH.FRH.Query.FieldByName('id_contratados').AsInteger;
        mtbRHdat_admissao.AsDateTime := FRH.FRH.Query.FieldByName('dat_admissao').AsDateTime;
        mtbRHdat_demissao.AsDateTime := FRH.FRH.Query.FieldByName('dat_demissao').AsDateTime;
        mtbRHid_departamento.AsInteger := FRH.FRH.Query.FieldByName('id_departamento').AsInteger;
        mtbRHid_funcao.AsInteger := FRH.FRH.Query.FieldByName('id_funcao').AsInteger;
        mtbRHval_salario.AsFloat := FRH.FRH.Query.FieldByName('val_salario').AsFloat;
        mtbRH.Post;
        FRH.FRH.Query.Next;
      end;

//      if FRH.SetupRecord then
//      begin
//        cedSalario.Value    := FRH.FRH.ARecord.val_salario;
//        lcbBase.EditValue   := FRH.FRH.ARecord.id_departamento;
//        lcbFuncao.EditValue := FRH.FRH.ARecord.id_funcao;
//        datAdmissao.Date    := FRH.FRH.ARecord.dat_admissao;
//        datDemissao.Date    := FRH.FRH.ARecord.dat_demissao;
//      end
//      else
//      begin
//        MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0)
//      end;
    end;
    if not mtbRH.Active then
      mtbRH.Active := True;
    FRH.FRH.Query.Connection.Close;
  finally
    FRH.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateStates;
var
  FEstados : TEstadosControl;
  aParam : array of variant;
begin
  try
    FEstados := TEstadosControl.Create;
    SetLength(aParam,3);
    aParam := ['APOIO','*',''];
    if FEstados.PesquisarExt(aParam)  then
    begin
      if memTableEstados.Active then
      begin
        memTableEstados.Close;
      end;
      memTableEstados.Data := FEstados.Estados.Query;
      FEstados.Estados.Query.Close;
      FEstados.Estados.Query.Connection.Close;
    end;
    Finalize(aParam);
  finally
    FEstados.Free;
  end;
end;

procedure TviewCadastroTerceirizados.PopulateVehicles(iCadastro: integer);
var
  sMensagem: String;
  FVeiculos: TControllerSisGeFVehiclesRegistration;
  aParam : array of variant;
begin
  try
    memTableVeiculos.Active := False;
    FVeiculos := TControllerSisGeFVehiclesRegistration.Create;
    SetLength(aParam,2);
    aParam := ['CADASTRO',iCadastro];
    if FVeiculos.Search(aParam) then
    begin
      memTableVeiculos.Active := True;
      memTableVeiculos.CopyDataSet(FVeiculos.Veiculos.Query);
      FVeiculos.Veiculos.Query.Connection.Connected := False;
//      if not memTableVeiculos.IsEmpty then
//        gridVeiculosDBTableView1.DataController.DataSource.DataSet.First;
    end;
    if not memTableVeiculos.Active then memTableVeiculos.Active := True;

  finally
    FVeiculos.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveAdress(iCadastro: integer): boolean;
var
  FEnderecos : TContratadosEnderecosController;
  FUtil : TUtils;
begin
  FEnderecos := TContratadosEnderecosController.Create;
  FUtil := TUtils.Create;
  Result := False;
  try
    if iCadastro = 0 then
    begin
      MessageDlg('ID não informado!', mtError, [mbCancel], 0);
      Exit;
    end;
    FEnderecos.FEnderecos.ARecord.id_contratados := iCadastro;
    FEnderecos.FEnderecos.Acao := tacExcluir;

    if memTableEnderecos.IsEmpty then
    begin
      Result := True;
      Exit;
    end;

    if not FEnderecos.SaveRecord then
    begin
      MessageDlg('Ocorreu um problema ao preparar a gravação dos endereços!', mtError, [mbCancel], 0);
      Exit;
    end;
    while not memTableEnderecos.Eof do
    begin
      FEnderecos.FEnderecos.ARecord.des_tipo := 'RESIDENCIAL';
      FEnderecos.FEnderecos.ARecord.num_cep := FUtil.DesmontaCPFCNPJ(memTableEnderecosnum_cep.AsString);
      FEnderecos.FEnderecos.ARecord.des_logradouro := memTableEnderecosdes_logradouro.AsString;
      FEnderecos.FEnderecos.ARecord.num_logradouro := memTableEnderecosnum_logradouro.AsString;
      FEnderecos.FEnderecos.ARecord.des_complemento := memTableEnderecosdes_complemento.AsString;
      FEnderecos.FEnderecos.ARecord.des_bairro := memTableEnderecos_des_bairro.AsString;
      FEnderecos.FEnderecos.ARecord.nom_cidade := memTableEnderecosnom_cidade.AsString;
      FEnderecos.FEnderecos.ARecord.uf_estado := memTableEnderecosuf_estado.AsString;
      FEnderecos.FEnderecos.ARecord.des_referencia := memTableEnderecosdes_referencia.AsString;
      FEnderecos.FEnderecos.Acao := tacIncluir;
      if not FEnderecos.FEnderecos.SaveRecord then
      begin
        MessageDlg(FEnderecos.FEnderecos.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      memTableEnderecos.Next;
    end;
    Result := True;
  finally
    FEnderecos.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveCNAE(iCadastro: integer): boolean;
var
  FCNAE : TCadastroContratadosCNAEController;
begin
  FCNAE := TCadastroContratadosCNAEController.Create;
  Result := False;
  try
    FCNAE.FCNAE.ARecord.id_contratados  :=  iCadastro;
    FCNAE.FCNAE.ARecord.id_CNAE         :=  -1;
    FCNAE.FCNAE.Acao                    :=  tacExcluir;
    if not FCNAE.SaveRecord then
    begin
      MessageDlg(FCNAE.FCNAE.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;

    if gridCNAEDBTableView1.ViewData.RowCount = 0 then
    begin
      Result := True;
      Exit;
    end;

    while not memTableCNAE.Eof do
    begin
      FCNAE.FCNAE.ARecord.des_tipo_cnae :=  memTableCNAEdes_tipo_cnae.AsString;
      FCNAE.FCNAE.ARecord.cod_cnae      :=  memTableCNAEcod_cnae.AsString;
      FCNAE.FCNAE.ARecord.des_cnae      :=  memTableCNAEdes_cnae.AsString;
      FCNAE.FCNAE.Acao                  :=  tacIncluir;
      if not FCNAE.FCNAE.SaveRecord then
      begin
        MessageDlg(FCNAE.FCNAE.Mensagem, mtError, [mbCancel], 0);
      Exit;
      end;
      memTableCNAE.Next;
    end;
  finally
    FCNAE.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveContacts(iCadastro: integer): boolean;
var
  FContatos : TContratadosContatosController;
begin
  FContatos := TContratadosContatosController.Create;
  Result := False;
  try
    if iCadastro = 0 then
    begin
      MessageDlg('ID não informado!', mtError, [mbCancel], 0);
      Exit;
    end;
    FContatos.FContatos.ARecord.id_contratados := iCadastro;
    FContatos.FContatos.ARecord.seq_contato := -1;
    FContatos.FContatos.Acao := tacExcluir;

    if gridContatosDBTableView1.ViewData.RowCount = 0 then
    begin
      Result := True;
      Exit;
    end;

    if not FContatos.SaveRecord then
    begin
      MessageDlg(FContatos.FContatos.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    while not memTableContatos.Eof do
    begin
      FContatos.FContatos.ARecord.des_contato := memTableContatosdes_contato.AsString;
      FContatos.FContatos.ARecord.num_telefone := memTableContatosnum_telefone.AsString;
      FContatos.FContatos.ARecord.des_email := memTableContatosdes_email.AsString;
      FContatos.FContatos.Acao := tacIncluir;
      if not FContatos.FContatos.SaveRecord then
      begin
        MessageDlg(FContatos.FContatos.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      memTableContatos.Next;
    end;
    memTableContatos.First;
    Result := True;
  finally
    FContatos.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveContracted: boolean;
var
  FCadastro : TCadastroContratadosController;
  FUtils : TUtils;
begin
  FCadastro := TCadastroContratadosController.Create;
  FUtils := TUtils.Create;
  Result := False;

  try
    FCadastro.FContratados.Acao := FAcao;
    FCadastro.FContratados.ARecord.id := mtbCadastroid.AsInteger;
    FCadastro.FContratados.ARecord.cod_erp_contratados := '0';
    FCadastro.FContratados.ARecord.id_categoria := mtbCadastroid_categoria.AsInteger;
    FCadastro.FContratados.ARecord.cod_pessoa := mtbCadastrocod_pessoa.AsInteger;
    FCadastro.FContratados.ARecord.des_tipo_doc := mtbCadastrodes_tipo_doc.AsString;
    FCadastro.FContratados.ARecord.nom_razao_social := mtbCadastronom_razao_social.AsString;
    FCadastro.FContratados.ARecord.nom_fantasia_alias := mtbCadastronom_fantasia_alias.AsString;
    FCadastro.FContratados.ARecord.num_cpf_cnpj :=  FUtils.DesmontaCPFCNPJ(mtbCadastronum_cpf_cnpj.AsString);
    FCadastro.FContratados.ARecord.num_rg_ie := mtbCadastronum_rg_ie.AsString;
    if FCadastro.FContratados.ARecord.num_rg_ie = '' then
      FCadastro.FContratados.ARecord.num_rg_ie := 'ISENTO';
    if mtbCadastrodat_emissao_rg.AsString = '' then
      FCadastro.FContratados.ARecord.dat_emissao_rg := 0
    else
      FCadastro.FContratados.ARecord.dat_emissao_rg := mtbCadastrodat_emissao_rg.AsDateTime;
    FCadastro.FContratados.ARecord.num_im := mtbCadastronum_im.AsString;
    FCadastro.FContratados.ARecord.nom_emissor_rg := mtbCadastronom_emissor_rg.AsString;
    FCadastro.FContratados.ARecord.uf_emissor_rg := mtbCadastrouf_emissor_rg.AsString;
    if mtbCadastrodat_nascimento.AsString = '' then
      FCadastro.FContratados.ARecord.dat_nascimento := 0
    else
      FCadastro.FContratados.ARecord.dat_nascimento := mtbCadastrodat_nascimento.AsDateTime;
    FCadastro.FContratados.ARecord.des_nacionalidade := 'BRASIL';
    FCadastro.FContratados.ARecord.des_naturalidade := mtbCadastrodes_naturalidade.AsString;
    FCadastro.FContratados.ARecord.uf_naturalidade := mtbCadastrouf_naturalidade.AsString;
    FCadastro.FContratados.ARecord.nom_pai := mtbCadastronom_pai.AsString;
    FCadastro.FContratados.ARecord.nom_mae := mtbCadastronom_mae.AsString;
    FCadastro.FContratados.ARecord.cod_crt  := mtbCadastrocod_crt.AsInteger;
    FCadastro.FContratados.ARecord.num_cnh := mtbCadastronum_cnh.AsString;
    FCadastro.FContratados.ARecord.num_registro_cnh := mtbCadastronum_registro_cnh.AsString;
    FCadastro.FContratados.ARecord.des_categoria_cnh := mtbCadastrodes_categoria_cnh.AsString;
    if mtbCadastrodat_emissao_cnh.AsDateTime = 0 then
      FCadastro.FContratados.ARecord.dat_emissao_cnh := 0
    else
      FCadastro.FContratados.ARecord.dat_emissao_cnh := mtbCadastrodat_emissao_cnh.AsDateTime;
    if mtbCadastrodat_validade_cnh.AsDateTime = 0 then
      FCadastro.FContratados.ARecord.dat_validade_cnh := 0
    else
      FCadastro.FContratados.ARecord.dat_validade_cnh := mtbCadastrodat_validade_cnh.AsDateTime;
    if mtbCadastrodat_primeira_cnh.AsDateTime = 0 then
      FCadastro.FContratados.ARecord.dat_primeira_cnh := 0
    else
      FCadastro.FContratados.ARecord.dat_primeira_cnh := mtbCadastrodat_primeira_cnh.AsDateTime;
    FCadastro.FContratados.ARecord.uf_cnh := mtbCadastrouf_cnh.AsString;
    FCadastro.FContratados.ARecord.des_obs := mtbCadastrodes_obs.AsString;
    FCadastro.FContratados.ARecord.cod_status := mtbCadastrocod_status.AsInteger;
    if FCadastro.FContratados.Acao = tacIncluir then
      FCadastro.FContratados.ARecord.dat_cadastro := Now();
    if not FCadastro.SaveRecord() then
    begin
      MessageDlg(FCadastro.FContratados.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    if FAcao = tacIncluir then
    begin
      mtbCadastro.Edit;
      mtbCadastroid.AsInteger := FCadastro.FContratados.ARecord.id;
      mtbCadastro.Post;
    end;

    SaveAdress(FCadastro.FContratados.ARecord.id);
    SaveContacts(FCadastro.FContratados.ARecord.id);
    SaveFinance(FCadastro.FContratados.ARecord.id);
    SaveRepresentative(FCadastro.FContratados.ARecord.id);
    SaveRH(FCadastro.FContratados.ARecord.id);
    SaveCNAE(FCadastro.FContratados.ARecord.id);
    SaveGR(FCadastro.FContratados.ARecord.id);

    Result := True;
  finally
    FCadastro.Free;
    FUtils.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveFinance(iCadastro: integer): boolean;
var
  FFinanceiro : TContratadosFinanceiroController;
begin
  FFinanceiro := TContratadosFinanceiroController.Create;
  Result := False;
  try
    if iCadastro = 0 then
    begin
      MessageDlg('ID não informado!', mtError, [mbCancel], 0);
      Exit;
    end;

    FFinanceiro.FFinanceiro.ARecord.id_contratados  :=  iCadastro;
    FFinanceiro.FFinanceiro.ARecord.id_financeiro   :=  -1;
    FFinanceiro.FFinanceiro.Acao                    :=  tacExcluir;
    if not FFinanceiro.SaveRecord then
    begin
      MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;

    if gridFinanceiroDBTableView1.ViewData.RowCount = 0 then
    begin
      Result := True;
      Exit;
    end;

    mtbFinanceiro.First;
    while not mtbFinanceiro.Eof do
    begin
      FFinanceiro.FFinanceiro.ARecord.cod_banco           :=  mtbFinanceirocod_banco.AsString;
      FFinanceiro.FFinanceiro.ARecord.cod_agencia         :=  mtbFinanceirocod_agencia.AsString;
      FFinanceiro.FFinanceiro.ARecord.num_conta           :=  mtbFinanceironum_conta.AsString;
      FFinanceiro.FFinanceiro.ARecord.chave_pix           :=  mtbFinanceirochave_pix.AsString;
      FFinanceiro.FFinanceiro.ARecord.des_forma_pagamento :=  mtbFinanceirodes_forma_pagamento.AsString;
      FFinanceiro.FFinanceiro.Acao                        :=  tacIncluir;
      if not FFinanceiro.FFinanceiro.SaveRecord then
      begin
        MessageDlg(FFinanceiro.FFinanceiro.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      mtbFinanceiro.Next;
    end;
    mtbFinanceiro.First;
    Result := True;
  finally
    FFinanceiro.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveGR(iCadastro: integer): boolean;
var
  FGR : TContratadosGRController;
begin
  FGR := TContratadosGRController.Create;
  Result := False;
  try
    if iCadastro = 0 then
    begin
      MessageDlg('ID não informado!', mtError, [mbCancel], 0);
      Exit;
    end;

    FGR.FGR.ARecord.id_contratados  :=  iCadastro;
    FGR.FGR.ARecord.id_gr           :=  -1;
    FGR.FGR.Acao                    :=  tacExcluir;
    if not FGR.SaveRecord then
    begin
      MessageDlg(FGR.FGR.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;

    if gridGRDBTableView1.ViewData.RowCount = 0 then
    begin
      Result := True;
      Exit;
    end;

    mtbFinanceiro.First;
    while not mtbFinanceiro.Eof do
    begin
      FGR.FGR.ARecord.dat_consulta      :=  mtbGRdat_consulta.AsDateTime;
      FGR.FGR.ARecord.dat_validade      :=  mtbGRdat_validade.AsDateTime;
      FGR.FGR.ARecord.nom_empresa       :=  mtbGRnom_empresa.AsString;
      FGR.FGR.ARecord.cod_consulta      :=  mtbGRcod_consulta.AsString;
      FGR.FGR.ARecord.cod_seguranca_cnh :=  mtbGRcod_seguranca_cnh.AsString;
      FGR.FGR.Acao                      :=  tacIncluir;
      if not FGR.FGR.SaveRecord then
      begin
        MessageDlg(FGR.FGR.Mensagem, mtError, [mbCancel], 0);
        Exit;
      end;
      mtbGR.Next;
    end;
    mtbGR.First;
    Result := True;
  finally
    FGR.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveRepresentative(iCadastro: integer): boolean;
var
  FRepresentante : TContratadosRepresentanteController;
begin
  FRepresentante := TContratadosRepresentanteController.Create;
  Result := False;
  try
    FRepresentante.FRepresentante.ARecord.id_contratados    :=  iCadastro;
    FRepresentante.FRepresentante.ARecord.id_REpresentante  :=  -1;
    FRepresentante.FRepresentante.Acao                      :=  tacExcluir;
    if not FRepresentante.SaveRecord then
    begin
      MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    if mtbRepresentantes.IsEmpty then
    begin
      Result := True;
      Exit;
    end;
    FRepresentante.FRepresentante.ARecord.nom_representante :=  mtbRepresentantesnom_representante.AsString;
    FRepresentante.FRepresentante.ARecord.cpf_representante :=  mtbRepresentantescpf_representante.AsString;
    FRepresentante.FRepresentante.Acao                      :=  tacIncluir;
    if not FRepresentante.FRepresentante.SaveRecord then
    begin
      MessageDlg(FRepresentante.FRepresentante.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    Result := True;
  finally
    FRepresentante.Free;
  end;
end;

function TviewCadastroTerceirizados.SaveRH(iCadastro: integer): boolean;
var
  FRH : TContratadosRHController;
begin
  FRH := TContratadosRHController.Create;
  Result := False;
  try
    FRH.FRH.ARecord.id_contratados  :=  iCadastro;
    FRH.FRH.ARecord.id_RH           :=  -1;
    FRH.FRH.Acao                    :=  tacExcluir;
    if not FRH.SaveRecord then
    begin
      MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    FRH.FRH.ARecord.val_salario     :=  mtbRHval_salario.AsFloat;
    if mtbRHdat_admissao.Text = '' then
      FRH.FRH.ARecord.dat_admissao    :=  0
    else
      FRH.FRH.ARecord.dat_admissao    :=  mtbRHdat_admissao.AsDateTime;
    if mtbRHdat_demissao.Text = '' then
      FRH.FRH.ARecord.dat_demissao  :=  0
    else
      FRH.FRH.ARecord.dat_demissao  :=  mtbRHdat_demissao.AsDateTime;
    FRH.FRH.ARecord.id_departamento :=  mtbRHid_departamento.AsInteger;
    FRH.FRH.ARecord.id_funcao       :=  mtbRHid_funcao.AsInteger;
    FRH.FRH.Acao                    :=  tacIncluir;
    if not FRH.FRH.SaveRecord then
    begin
      MessageDlg(FRH.FRH.Mensagem, mtError, [mbCancel], 0);
      Exit;
    end;
    Result := True;
  finally
    FRH.Free;
  end;

end;

procedure TviewCadastroTerceirizados.SearchCEPCadastro(sCEP: string);
var
  APICEP : TAPICEPController;
  utils : TUtils;
begin
  try
    APICEP := TAPICEPController.Create;
    utils := TUtils.Create;
    sCEP := utils.DesmontaCPFCNPJ(sCEP);
    if not APICEP.GetAdressByCEP(sCEP) then
    begin
      MessageDlg(APICEP.APICEP.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;
    if Data_Sisgef.memTableCEP.Active then
    begin
      if not Data_Sisgef.memTableCEP.IsEmpty then
      begin
        if not Assigned(view_ListaCEPs) then
        begin
          view_ListaCEPs := Tview_ListaCEPs.Create(Application);
        end;
        if view_ListaCEPs.ShowModal = mrOK then
        begin
          memTableEnderecosdes_logradouro.AsString := Data_Sisgef.memTableCEPlogradouro.AsString;
          memTableEnderecosdes_complemento.AsString := Data_Sisgef.memTableCEPcomplemento.AsString;
          memTableEnderecos_des_bairro.AsString := Data_Sisgef.memTableCEPbairro.AsString;
          memTableEnderecosnom_cidade.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
          memTableEnderecosuf_estado.AsString := Data_Sisgef.memTableCEPuf.AsString;
          memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      memTableEnderecosdes_logradouro.AsString := APICEP.APICEP.Enderecos.Logradouro;
      memTableEnderecosdes_complemento.AsString := APICEP.APICEP.Enderecos.Complemento;
      memTableEnderecos_des_bairro.AsString := APICEP.APICEP.Enderecos.Bairro;
      memTableEnderecosnom_cidade.AsString := APICEP.APICEP.Enderecos.Cidade;
      memTableEnderecosuf_estado.AsString := APICEP.APICEP.Enderecos.UF;
      //memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
    end;
  finally
    APICEP.Free;
    utils.Free;
  end;
end;

procedure TviewCadastroTerceirizados.SearchCEPVeiculo(sCEP: string);
var
  APICEP : TAPICEPController;
  utils : TUtils;
  sEndereco : string;
begin
  try
    APICEP := TAPICEPController.Create;
    utils := TUtils.Create;
    sCEP := utils.DesmontaCPFCNPJ(sCEP);
    if not APICEP.GetAdressByCEP(sCEP) then
    begin
      MessageDlg(APICEP.APICEP.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;
    if Data_Sisgef.memTableCEP.Active then
    begin
      if not Data_Sisgef.memTableCEP.IsEmpty then
      begin
        if not Assigned(view_ListaCEPs) then
        begin
          view_ListaCEPs := Tview_ListaCEPs.Create(Application);
        end;
        if view_ListaCEPs.ShowModal = mrOK then
        begin
          sEndereco := EmptyStr;
          if not Data_Sisgef.memTableCEPlogradouro.AsString.IsEmpty then
            sEndereco := sEndereco +  Data_Sisgef.memTableCEPlogradouro.AsString;
          if not Data_Sisgef.memTableCEPcomplemento.AsString.IsEmpty then
            sEndereco := sEndereco +  ' - ' + Data_Sisgef.memTableCEPcomplemento.AsString;
          memTableVeiculosDES_ENDERECO.AsString := sEndereco;
          memTableVeiculosDES_BAIRRO.AsString := Data_Sisgef.memTableCEPbairro.AsString;
          memTableVeiculosNOM_CIDADE.AsString := Data_Sisgef.memTableCEPlocalidade.AsString;
          memTableEnderecosuf_estado.AsString := Data_Sisgef.memTableCEPuf.AsString;
          memTableEnderecosnum_cep.AsString := Data_Sisgef.memTableCEPcep.AsString;
        end;
        Data_Sisgef.memTableCEP.Active := False;
        FreeAndNil(view_ListaCEPs);
      end;
    end
    else
    begin
      sEndereco := EmptyStr;
      if not APICEP.APICEP.Enderecos.Logradouro.IsEmpty then
        sEndereco := sEndereco +  APICEP.APICEP.Enderecos.Logradouro;
      if not APICEP.APICEP.Enderecos.Complemento.IsEmpty then
        sEndereco := sEndereco +  ' - ' + APICEP.APICEP.Enderecos.Complemento;
      memTableVeiculosDES_ENDERECO.AsString := sEndereco;
      memTableVeiculosDES_BAIRRO.AsString := APICEP.APICEP.Enderecos.Bairro;
      memTableVeiculosNOM_CIDADE.AsString := APICEP.APICEP.Enderecos.Cidade;
      memTableEnderecosuf_estado.AsString := APICEP.APICEP.Enderecos.UF;
    end;
  finally
    APICEP.Free;
    utils.Free;
  end;
end;

procedure TviewCadastroTerceirizados.SearchCNPJCadastro(sCNPJ: string);
var
  APICNPJ : TAPICNPJController;
  utils : TUtils;
begin
  try
    APICNPJ := TAPICNPJController.Create;
    utils := TUtils.Create;
    sCNPJ := utils.DesmontaCPFCNPJ(sCNPJ);

    if not APICNPJ.GetCNPJ(sCNPJ) then
    begin
      MessageDlg(APICNPJ.APICNPJ.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;

    if not Assigned(view_ResultadoConsultaCNPJ) then
    begin
      view_ResultadoConsultaCNPJ := Tview_ResultadoConsultaCNPJ.Create(Application);
    end;
    if view_ResultadoConsultaCNPJ.ShowModal = mrCancel then
    begin
      FreeAndNil(view_ResultadoConsultaCNPJ);
      Exit;
    end;
    if not view_ResultadoConsultaCNPJ.memTableAP.IsEmpty then
    begin
      memTableCNAE.Active := False;
      memTableCNAE.Active := True;
      view_ResultadoConsultaCNPJ.memTableAP.First;
      while not view_ResultadoConsultaCNPJ.memTableAP.Eof do
      begin
        memTableCNAE.Insert;
        memTableCNAEdes_tipo_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPdes_tipo.AsString;
        memTableCNAEcod_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPcod_cnae.AsString;
        memTableCNAEdes_cnae.AsString := view_ResultadoConsultaCNPJ.memTableAPdes_cnae.AsString;
        memTableCNAE.Post;
        view_ResultadoConsultaCNPJ.memTableAP.Next;
      end;

    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    mtbCadastronom_razao_social.AsString := APICNPJ.APICNPJ.Pessoas.Nome;
    mtbCadastronom_fantasia_alias.AsString := APICNPJ.APICNPJ.Pessoas.Fantasia;
    mtbCadastrocod_status.AsInteger := 1;
    if not  memTableEnderecos.Active then  memTableEnderecos.Active := True;

    memTableEnderecos.Insert;
    memTableEnderecos_des_tipo.AsString := APICNPJ.APICNPJ.Enderecos.Tipo;
    memTableEnderecosnum_cep.AsString := APICNPJ.APICNPJ.Enderecos.CEP;
    memTableEnderecosdes_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Logradouro;
    memTableEnderecosnum_logradouro.AsString := APICNPJ.APICNPJ.Enderecos.Numero;
    memTableEnderecosdes_complemento.AsString := APICNPJ.APICNPJ.Enderecos.Complemento;
    memTableEnderecos_des_bairro.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
    memTableEnderecosnom_cidade.AsString := APICNPJ.APICNPJ.Enderecos.Cidade;
    memTableEnderecosuf_estado.AsString := APICNPJ.APICNPJ.Enderecos.UF;
    memTableEnderecos.Post;

    if not memTableContatos.Active then memTableContatos.Active := True;
    if APICNPJ.APICNPJ.Contatos.Descricao <> '' then
    begin
      memTableContatos.Insert;
      memTableContatosdes_contato.AsString := APICNPJ.APICNPJ.Contatos.Descricao;
      memTableContatosnum_telefone.AsString := APICNPJ.APICNPJ.Contatos.Telefone;
      memTableContatosdes_email.AsString := APICNPJ.APICNPJ.Contatos.EMail;
      memTableContatos.Post;
    end;

  finally
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    APICNPJ.DisposeOf;
  end;
end;

procedure TviewCadastroTerceirizados.SearchCNPJVeiculo(sCNPJ: string);
var
  APICNPJ : TAPICNPJController;
  utils : TUtils;
  sEndereco : string;
begin
  try
    APICNPJ := TAPICNPJController.Create;
    utils := TUtils.Create;
    sCNPJ := utils.DesmontaCPFCNPJ(sCNPJ);

    if not APICNPJ.GetCNPJ(sCNPJ) then
    begin
      MessageDlg(APICNPJ.APICNPJ.Mensagem, mtWarning, [mbCancel], 0);
      Exit;
    end;

    if not Assigned(view_ResultadoConsultaCNPJ) then
    begin
      view_ResultadoConsultaCNPJ := Tview_ResultadoConsultaCNPJ.Create(Application);
    end;
    if view_ResultadoConsultaCNPJ.ShowModal = mrCancel then
    begin
      FreeAndNil(view_ResultadoConsultaCNPJ);
      Exit;
    end;

    FreeAndNil(view_ResultadoConsultaCNPJ);

    dbNomePropVeiculo.Text := APICNPJ.APICNPJ.Pessoas.Nome;

    memTableVeiculosNUM_CEP.AsString := APICNPJ.APICNPJ.Enderecos.CEP;

    sEndereco := EmptyStr;

    if not APICNPJ.APICNPJ.Enderecos.Logradouro.IsEmpty then
      sEndereco := sEndereco +  APICNPJ.APICNPJ.Enderecos.Logradouro;
    if not APICNPJ.APICNPJ.Enderecos.Numero.IsEmpty then
      sEndereco := sEndereco +  ', ' + APICNPJ.APICNPJ.Enderecos.Numero
    else
      sEndereco := sEndereco +  ', SN';
    if not APICNPJ.APICNPJ.Enderecos.Complemento.IsEmpty then
      sEndereco := sEndereco +  ' - ' + APICNPJ.APICNPJ.Enderecos.Complemento;

    memTableVeiculosDES_ENDERECO.AsString := sEndereco;
    memTableVeiculosDES_BAIRRO.AsString := APICNPJ.APICNPJ.Enderecos.Bairro;
    memTableVeiculosNOM_CIDADE.AsString := APICNPJ.APICNPJ.Enderecos.Cidade;
    memTableVeiculosUF_ENDERECO.AsString := APICNPJ.APICNPJ.Enderecos.UF;

  finally
    if Data_Sisgef.memTableCNPJ.Active then
      Data_Sisgef.memTableCNPJ.Active := False;
    utils.Free;
    APICNPJ.DisposeOf;
  end;
end;

function TviewCadastroTerceirizados.ValidateData: boolean;
var
  FCadastro : TCadastroContratadosController;
  sCPF: string;
  FUtil : TUTils;
begin
  try
    Result := False;
    FCadastro := TCadastroContratadosController.Create;
    FUtil := TUtils.Create;
//    if FAcao = tacIncluir then
//    begin
//      if not Common.Utils.TUtils.CPF(maskEditCPCNPJ.Text) then
//      begin
//        Application.MessageBox('CPF incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
//        maskEditCPCNPJ.SetFocus;
//        Exit;
//      end;
//    end;

    if dbNome.Text = '' then
    begin
      Application.MessageBox('Informe o nome ou razão social!','Atenção',MB_OK + MB_ICONEXCLAMATION);
      dbNome.SetFocus;
      Exit;
    end;

    if dbTipoPessoa.EditValue = 'CNPJ' then
    begin
      if dbAlias.Text = '' then
      begin
        Application.MessageBox('Informe o nome fantasia!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        dbAlias.SetFocus;
        Exit;
      end;
      sCPF := Common.Utils.TUtils.DesmontaCPFCNPJ(dbCPFCNPJ.Text);
      if Length(Trim(sCPF)) = 11 then
      begin
        if not Common.Utils.TUtils.CPF(sCPF) then
        begin
          Application.MessageBox('CPF do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          dbCPFCNPJ.SetFocus;
          Exit;
        end;
      end
      else if Length(Trim(sCPF)) >= 14 then
      begin
        if not Common.Utils.TUtils.CNPJ(sCPF) then
        begin
          Application.MessageBox('CNPJ do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          dbCPFCNPJ.SetFocus;
          Exit;
        end;
      end;
    end;

    if FAcao = tacIncluir then
    begin
      if FCadastro.Search(['CNPJ', FUtil.DesmontaCPFCNPJ(dbCPFCNPJ.Text)]) then
      begin
        Application.MessageBox('CNPJ/CPF já cadastrado!','Atenção',MB_OK + MB_ICONEXCLAMATION);
        Exit;
      end;
    end;


    if dbTipoPessoa.EditValue = 'CPF' then
    begin
      if Facao = tacIncluir then
      begin
        if dbRGIE.Text <> '' then
        begin
          if dbEmissorRG.Text = '' then
          begin
            Application.MessageBox('Informe o orgão expedidor do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dbEmissorRG.SetFocus;
            Exit;
          end;
          if dbEmissaoRG.Date = 0 then
          begin
            Application.MessageBox('Informe o data da emissão do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dbEmissaoRG.SetFocus;
            Exit;
          end;
          if dbEmissaoRG.Date > Now then
          begin
            Application.MessageBox('Data da emissão do RG inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dbEmissaoRG.SetFocus;
            Exit;
          end;
          if dbUFRG.EditText = '' then
          begin
            Application.MessageBox('Informe a UF do RG!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dbUFRG.SetFocus;
            Exit;
          end;
        end
        else
        begin
          dbEmissorRG.Clear;
          dbEmissaoRG.Clear;
          dbUFRG.Clear;
        end;
        if dbNascimento.Date <> 0 then
        begin
          if dbNascimento.Date >= Now then
          begin
            Application.MessageBox('Data de nascimento inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
            dbNascimento.SetFocus;
            Exit;
          end;
          if YearsBetween(Now,dbNascimento.Date) < 18 then
          begin
            if Application.MessageBox('Data de nascimento indica que pessoa é menor! Ignorar?', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON2) = IDNO then
            begin
              dbNascimento.SetFocus;
              Exit;
            end;
          end;
        end;
      end;
      if Length(Trim(sCPF)) = 11 then
      begin
        if not Common.Utils.TUtils.CPF(dbCPFCNPJ.Text) then
        begin
          Application.MessageBox('CPF do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          dbCPFCNPJ.SetFocus;
          Exit;
        end;
      end
      else if Length(Trim(sCPF)) >= 14 then
      begin
        if not Common.Utils.TUtils.CNPJ(dbCPFCNPJ.Text) then
        begin
          Application.MessageBox('CNPJ do Contratado incorreto!','Atenção',MB_OK + MB_ICONEXCLAMATION);
          dbCPFCNPJ.SetFocus;
          Exit;
        end;
      end;
      if dbNaturalidade.Text <> '' then
      begin
        if dbUFNaturalidade.Text = '' then
        begin
          Application.MessageBox('Informe a UF da naturalidade da Pessoa!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbUFNaturalidade.SetFocus;
          Exit;
        end;
      end;
      if dbRegistroCNH.Text <> '' then
      begin
        if Length(dbRegistroCNH.Text) <> 11 then
        begin
          Application.MessageBox('Quantidade de caracteres do número do registro da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbRegistroCNH.SetFocus;
          Exit;
        end;
        if Length(dbNumeroCNH.Text) <> 10 then
        begin
          Application.MessageBox('Quantidade de caracteres do número da cédula da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbNumeroCNH.SetFocus;
          Exit;
        end;
//        if Length(textEditSegurancaCNH.Text) <> 11 then
//        begin
//          Application.MessageBox('Quantidade de caracteres do código de segurança da CNH incorreto!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
//          textEditSegurancaCNH.SetFocus;
//          Exit;
//        end;
        if dbCategoriaCNH.Text = '' then
        begin
          Application.MessageBox('Informe a categoria da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbCategoriaCNH.SetFocus;
          Exit;
        end;
        if dbUFCNH.Text = '' then
        begin
          Application.MessageBox('Informe UF da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbUFCNH.SetFocus;
          Exit;
        end;
        if dbEmissaoCNH.Date = 0  then
        begin
          Application.MessageBox('Informe a data da emissão da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbEmissaoCNH.SetFocus;
          Exit;
        end;
        if dbValidadeCNH.Date < Now  then
        begin
          Application.MessageBox('Data da validade da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbValidadeCNH.SetFocus;
          Exit;
        end;
        if dbPrimeiraCNH.Date = 0  then
        begin
          Application.MessageBox('Informe a data da primeira da CNH!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbPrimeiraCNH.SetFocus;
          Exit;
        end;
        if dbPrimeiraCNH.Date > Now  then
        begin
          Application.MessageBox('Data da primeira da CNH inválida!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
          dbPrimeiraCNH.SetFocus;
          Exit;
        end;
      end
      else
      begin
//        textEditSegurancaCNH.Clear;
        dbNumeroCNH.Clear;
        dbRegistroCNH.Clear;
        dbCategoriaCNH.Clear;
        dbEmissaoCNH.Clear;
        dbValidadeCNH.Clear;
        dbPrimeiraCNH.Clear;
        dbUFCNH.Clear;
      end;
    end;
    Result := True;
  finally
    FCadastro.Free;
  end;

end;

end.
