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
  FireDAC.Comp.Client, cxCalendar, cxBlobEdit, Common.Utils, Controller.SisGeFCadastroContratados, cxDBEdit, cxImageComboBox,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBNavigator, Control.Bancos, Control.Estados,
  Controller.SisGeFCategorias, Control.Bases, Controller.SisGeFFuncoesRH, Controller.SisGeFContratadosCNAE,
  Controller.SisGeFContratadosRH, Controller.SisGeFContratadosEnderecos, Controller.SisGeFContratadosContatos,
  Controller.SisGeFVehiclesRegistration, Controller.SisGeFContratadosFinanceiro, Controller.SisGeFContratadosRepresentantes,
  Controller.SisGeFContratadosGR, Controller.APICNPJ, Controller.APICEP;

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
  private
    { Private declarations }
    FCaptionComplent : String;

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

uses Data.SisGeF, View.ListaCEPs, View.ResultadoConsultaCNPJ, View.Impressao;

{ TviewCadastroTerceirizados }

procedure TviewCadastroTerceirizados.actionCloseFormExecute(Sender: TObject);
begin
  Close;
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

procedure TviewCadastroTerceirizados.dbTipoPessoaPropertiesChange(Sender: TObject);
begin
  if dbTipoPessoa.ItemIndex = 2 then
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
  if dbTipoPessoaVeiculo.ItemIndex = 2 then
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

  mtbCadastro.Edit;

  dxLayoutGroup6.ItemIndex := 0;
  lgpMain.ItemIndex := 1;
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

    dbNome.Text := APICNPJ.APICNPJ.Pessoas.Nome;
    dbAlias.Text := APICNPJ.APICNPJ.Pessoas.Fantasia;
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

end.
