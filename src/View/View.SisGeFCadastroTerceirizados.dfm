object viewCadastroTerceirizados: TviewCadastroTerceirizados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Contratados'
  ClientHeight = 511
  ClientWidth = 984
  Color = clWindow
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lycMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 984
    Height = 511
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object cxButton1: TcxButton
      Left = 891
      Top = 28
      Width = 65
      Height = 60
      Action = actionCloseForm
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 28
      Top = 28
      Width = 65
      Height = 60
      Action = actionNewRegister
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 100
      Top = 28
      Width = 65
      Height = 60
      Action = actionEditRegister
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object cxButton5: TcxButton
      Left = 185
      Top = 28
      Width = 65
      Height = 60
      Action = actionExportGrid
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
    end
    object bteSearch: TcxButtonEdit
      Left = 84
      Top = 108
      Hint = 'Informe um par'#226'metro de pesquisa'
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 128
          Hint = 'Limpar'
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnButtonClick = bteSearchPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 5
      Width = 546
    end
    object cxButton4: TcxButton
      Left = 270
      Top = 28
      Width = 65
      Height = 60
      Action = actionSearchRecords
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
    end
    object cbxAtivos: TcxCheckBox
      Left = 935
      Top = 109
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 7
    end
    object grid: TcxGrid
      Left = 28
      Top = 184
      Width = 928
      Height = 299
      TabOrder = 11
      object gridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsCadastro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridDBTableView1id: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1cod_erp_contratados: TcxGridDBColumn
          DataBinding.FieldName = 'cod_erp_contratados'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1id_categoria: TcxGridDBColumn
          DataBinding.FieldName = 'id_categoria'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1des_categoria: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'des_categoria'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object gridDBTableView1cod_pessoa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_pessoa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1des_tipo_doc: TcxGridDBColumn
          Caption = 'Documento'
          DataBinding.FieldName = 'des_tipo_doc'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object gridDBTableView1num_cpf_cnpj: TcxGridDBColumn
          Caption = 'CPF / CNPJ'
          DataBinding.FieldName = 'num_cpf_cnpj'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1nom_razao_social: TcxGridDBColumn
          Caption = 'Nome / Raz'#227'o Social'
          DataBinding.FieldName = 'nom_razao_social'
          HeaderAlignmentHorz = taCenter
          Width = 274
        end
        object gridDBTableView1nom_fantasia_alias: TcxGridDBColumn
          Caption = 'Alias / Nome Fantasia'
          DataBinding.FieldName = 'nom_fantasia_alias'
          HeaderAlignmentHorz = taCenter
          Width = 291
        end
        object gridDBTableView1num_rg_ie: TcxGridDBColumn
          Caption = 'RG/ Ins. Est.'
          DataBinding.FieldName = 'num_rg_ie'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1num_im: TcxGridDBColumn
          Caption = 'Ins. Municipal'
          DataBinding.FieldName = 'num_im'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object gridDBTableView1dat_emissao_rg: TcxGridDBColumn
          Caption = 'Emiss'#227'o RG'
          DataBinding.FieldName = 'dat_emissao_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1nom_emissor_rg: TcxGridDBColumn
          Caption = 'Emissor RG'
          DataBinding.FieldName = 'nom_emissor_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1uf_emissor_rg: TcxGridDBColumn
          Caption = 'UF RG'
          DataBinding.FieldName = 'uf_emissor_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object gridDBTableView1dat_nascimento: TcxGridDBColumn
          Caption = 'Data Nascimento'
          DataBinding.FieldName = 'dat_nascimento'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridDBTableView1des_nacionalidade: TcxGridDBColumn
          Caption = 'Nacionalidade'
          DataBinding.FieldName = 'des_nacionalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 163
        end
        object gridDBTableView1des_naturalidade: TcxGridDBColumn
          Caption = 'Naturalidade'
          DataBinding.FieldName = 'des_naturalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 224
        end
        object gridDBTableView1uf_naturalidade: TcxGridDBColumn
          Caption = 'UF Nat.'
          DataBinding.FieldName = 'uf_naturalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 57
        end
        object gridDBTableView1nom_pai: TcxGridDBColumn
          Caption = 'Nome do Pai'
          DataBinding.FieldName = 'nom_pai'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 295
        end
        object gridDBTableView1nom_mae: TcxGridDBColumn
          Caption = 'Nome da M'#227'e'
          DataBinding.FieldName = 'nom_mae'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 247
        end
        object gridDBTableView1cod_crt: TcxGridDBColumn
          Caption = 'CRT'
          DataBinding.FieldName = 'cod_crt'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            '0 - Nenhum'
            '1 - Simples Nacional'
            '2 - Simples Nacional, excesso sublimite de receita bruta'
            '3 - Regime Normal'
            '4 - Microempreendedores Individuais (MEI)')
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 290
        end
        object gridDBTableView1num_cnh: TcxGridDBColumn
          Caption = 'N'#186' CNH'
          DataBinding.FieldName = 'num_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object gridDBTableView1num_registro_cnh: TcxGridDBColumn
          Caption = 'Registro CNH'
          DataBinding.FieldName = 'num_registro_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object gridDBTableView1des_categoria_cnh: TcxGridDBColumn
          Caption = 'Cat. CNH'
          DataBinding.FieldName = 'des_categoria_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object gridDBTableView1dat_validade_cnh: TcxGridDBColumn
          Caption = 'Validade CNH'
          DataBinding.FieldName = 'dat_validade_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 108
        end
        object gridDBTableView1dat_emissao_cnh: TcxGridDBColumn
          Caption = 'Emiss'#227'o CNH'
          DataBinding.FieldName = 'dat_emissao_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object gridDBTableView1uf_cnh: TcxGridDBColumn
          Caption = 'UF CNH'
          DataBinding.FieldName = 'uf_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object gridDBTableView1dat_primeira_cnh: TcxGridDBColumn
          Caption = 'Primeira CNH'
          DataBinding.FieldName = 'dat_primeira_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridDBTableView1cod_status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'cod_status'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1dat_cadastro: TcxGridDBColumn
          Caption = 'Data Cadastro'
          DataBinding.FieldName = 'dat_cadastro'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_obs: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'des_obs'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 104
        end
        object gridDBTableView1nom_base: TcxGridDBColumn
          Caption = 'Base'
          DataBinding.FieldName = 'nom_base'
          HeaderAlignmentHorz = taCenter
          Width = 192
        end
        object gridDBTableView1des_funcao: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          HeaderAlignmentHorz = taCenter
          Width = 263
        end
        object gridDBTableView1id_gr: TcxGridDBColumn
          Caption = 'ID GR'
          DataBinding.FieldName = 'id_gr'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1dat_consulta_gr: TcxGridDBColumn
          Caption = 'Data Consulta GR'
          DataBinding.FieldName = 'dat_consulta_gr'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object gridDBTableView1dat_validade_gr: TcxGridDBColumn
          Caption = 'Validade GR'
          DataBinding.FieldName = 'dat_validade_gr'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object gridDBTableView1nom_empresa: TcxGridDBColumn
          Caption = 'Empresa GR'
          DataBinding.FieldName = 'nom_empresa'
          HeaderAlignmentHorz = taCenter
          Width = 194
        end
        object gridDBTableView1cod_consulta_gr: TcxGridDBColumn
          Caption = 'C'#243'd. Consulta GR'
          DataBinding.FieldName = 'cod_consulta_gr'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1id_representante: TcxGridDBColumn
          Caption = 'ID Representante'
          DataBinding.FieldName = 'id_representante'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 118
        end
        object gridDBTableView1nom_representante: TcxGridDBColumn
          Caption = 'Nome Representante'
          DataBinding.FieldName = 'nom_representante'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object gridDBTableView1cpf_representante: TcxGridDBColumn
          Caption = 'CPF Representante'
          DataBinding.FieldName = 'cpf_representante'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1cod_veiculo: TcxGridDBColumn
          Caption = 'C'#243'd. Ve'#237'culo'
          DataBinding.FieldName = 'cod_veiculo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1des_placa: TcxGridDBColumn
          Caption = 'Placa Ve'#237'culo'
          DataBinding.FieldName = 'des_placa'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object gridDBTableView1des_tipo_veiculo: TcxGridDBColumn
          Caption = 'Tipo Veiculo'
          DataBinding.FieldName = 'des_tipo_veiculo'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_marca: TcxGridDBColumn
          Caption = 'Marca Ve'#237'culo'
          DataBinding.FieldName = 'des_marca'
          HeaderAlignmentHorz = taCenter
          Width = 179
        end
        object gridDBTableView1des_modelo: TcxGridDBColumn
          Caption = 'Modelo Ve'#237'culo'
          DataBinding.FieldName = 'des_modelo'
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object gridDBTableView1num_chassis: TcxGridDBColumn
          Caption = 'Chassis'
          DataBinding.FieldName = 'num_chassis'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_ano: TcxGridDBColumn
          Caption = 'Ano'
          DataBinding.FieldName = 'des_ano'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridDBTableView1des_cor: TcxGridDBColumn
          Caption = 'Cor'
          DataBinding.FieldName = 'des_cor'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1num_renavan: TcxGridDBColumn
          Caption = 'RENAVAN'
          DataBinding.FieldName = 'num_renavan'
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1ano_exervicio_clrv: TcxGridDBColumn
          Caption = 'Licenciamento'
          DataBinding.FieldName = 'ano_exervicio_clrv'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
      end
      object gridLevel1: TcxGridLevel
        GridView = gridDBTableView1
      end
    end
    object cxButton6: TcxButton
      Left = 28
      Top = 152
      Width = 32
      Height = 25
      Action = actionExpandGrid
      OptionsImage.ImageIndex = 106
      OptionsImage.Images = Data_Sisgef.iml_16_16
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
    end
    object cxButton7: TcxButton
      Left = 67
      Top = 152
      Width = 32
      Height = 25
      Action = actionRetractGrid
      OptionsImage.ImageIndex = 107
      OptionsImage.Images = Data_Sisgef.iml_16_16
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 9
    end
    object cxButton8: TcxButton
      Left = 106
      Top = 152
      Width = 32
      Height = 25
      Action = actionGroupPanel
      OptionsImage.ImageIndex = 110
      OptionsImage.Images = Data_Sisgef.iml_16_16
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 10
    end
    object dbId: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do cadastro'
      DataBinding.DataField = 'id'
      DataBinding.DataSource = dsCadastro
      Properties.Alignment.Horz = taRightJustify
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 70
    end
    object dbTipoPessoa: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'des_tipo_doc'
      DataBinding.DataSource = dsCadastro
      Properties.Items = <
        item
          Description = 'F'#237'sica / Aut'#244'nomo'
          ImageIndex = 0
          Value = 'CPF'
        end
        item
          Description = 'Jur'#237'dica'
          Value = 'CNPJ'
        end>
      Properties.OnChange = dbTipoPessoaPropertiesChange
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 84
    end
    object dbCPFCNPJ: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF ou CNPJ do cadastro'
      DataBinding.DataField = 'num_cpf_cnpj'
      DataBinding.DataSource = dsCadastro
      Properties.Buttons = <
        item
          Action = actionSearchDoc
          Default = True
          ImageIndex = 81
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '!00\.000\.000\/0000\-00;1; '
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 141
    end
    object dbNome: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome ou raz'#227'o social'
      DataBinding.DataField = 'nom_razao_social'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 214
    end
    object dbAlias: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Alias ou nome fantasia'
      DataBinding.DataField = 'nom_fantasia_alias'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 209
    end
    object dbCategoria: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Selecione a categoria'
      DataBinding.DataField = 'id_categoria'
      DataBinding.DataSource = dsCadastro
      Properties.KeyFieldNames = 'id_categoria'
      Properties.ListColumns = <
        item
          FieldName = 'des_categoria'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCategoria
      Style.HotTrack = False
      TabOrder = 30
      Visible = False
      Width = 529
    end
    object dbSexo: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'cod_pessoa'
      DataBinding.DataSource = dsCadastro
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Masculino'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Feminino'
          Value = 2
        end
        item
          Description = 'Indefinido'
          Value = 3
        end>
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 100
    end
    object dbRGIE: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'num_rg_ie'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 115
    end
    object dbEmissaoRG: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data emiss'#227'o do RG'
      DataBinding.DataField = 'dat_emissao_rg'
      DataBinding.DataSource = dsCadastro
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Width = 100
    end
    object dbEmissorRG: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Org'#227'o emissor do RG'
      DataBinding.DataField = 'nom_emissor_rg'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 126
    end
    object dbUFRG: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF Emissor RG'
      DataBinding.DataField = 'uf_emissor_rg'
      DataBinding.DataSource = dsCadastro
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 46
    end
    object dbIM: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Inscri'#231#227'o Municipal'
      DataBinding.DataField = 'num_im'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 89
    end
    object dbNascimento: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data do nascimento'
      DataBinding.DataField = 'dat_nascimento'
      DataBinding.DataSource = dsCadastro
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 32
      Visible = False
      Width = 95
    end
    object dbNacionalidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nacionalidade'
      DataBinding.DataField = 'des_nacionalidade'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 315
    end
    object dbNaturalidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Naturalidade'
      DataBinding.DataField = 'des_naturalidade'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 320
    end
    object dbUFNaturalidade: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF Naturalidade'
      DataBinding.DataField = 'uf_naturalidade'
      DataBinding.DataSource = dsCadastro
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 35
      Visible = False
      Width = 46
    end
    object dbNomePai: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do pai'
      DataBinding.DataField = 'nom_mae'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 36
      Visible = False
      Width = 412
    end
    object dbNomeMae: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da m'#227'e'
      DataBinding.DataField = 'nom_mae'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Width = 426
    end
    object dbCRT: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo de Regime Tribut'#225'rio'
      DataBinding.DataField = 'cod_crt'
      DataBinding.DataSource = dsCadastro
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = '1 - Simples Nacional'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2 - Simples Nacional, excesso sublimite de receita bruta'
          Value = 2
        end
        item
          Description = '3 - Regime Normal'
          Value = 3
        end
        item
          Description = '4 - Microempreendedores Individuais (MEI)'
          Value = 4
        end>
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 563
    end
    object dbSalario: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'Salario'
      DataBinding.DataField = 'val_salario'
      DataBinding.DataSource = daRH
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Width = 92
    end
    object dbAdmissao: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da adimiss'#227'o'
      DataBinding.DataField = 'dat_admissao'
      DataBinding.DataSource = daRH
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 42
      Visible = False
      Width = 321
    end
    object dbDemissao: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de demiss'#227'o'
      DataBinding.DataField = 'dat_demissao'
      DataBinding.DataSource = daRH
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 43
      Visible = False
      Width = 310
    end
    object dbBase: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'id_departamento'
      DataBinding.DataSource = daRH
      Properties.KeyFieldNames = 'cod_agente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_fantasia'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsBases
      Style.HotTrack = False
      TabOrder = 44
      Visible = False
      Width = 361
    end
    object dbFuncao: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Fun'#231#227'o'
      DataBinding.DataField = 'id_funcao'
      DataBinding.DataSource = daRH
      Properties.KeyFieldNames = 'id_funcao'
      Properties.ListColumns = <
        item
          FieldName = 'des_funcao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsFuncoes
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Width = 453
    end
    object gridGR: TcxGrid
      Left = 10000
      Top = 10000
      Width = 896
      Height = 260
      TabOrder = 48
      Visible = False
      object gridGRDBTableView1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.ImageIndex = 89
        Navigator.Buttons.Delete.ImageIndex = 90
        Navigator.Buttons.Edit.ImageIndex = 120
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Refresh.ImageIndex = 105
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dataGR
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridGRDBTableView1id_gr: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_gr'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridGRDBTableView1id_contratados: TcxGridDBColumn
          Caption = 'Contratado'
          DataBinding.FieldName = 'id_contratados'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object gridGRDBTableView1dat_validade: TcxGridDBColumn
          Caption = 'Data Validade'
          DataBinding.FieldName = 'dat_validade'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 140
        end
        object gridGRDBTableView1cod_seguranca_cnh: TcxGridDBColumn
          Caption = 'C'#243'd. Seg. CNH'
          DataBinding.FieldName = 'cod_seguranca_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Width = 175
        end
        object gridGRDBTableView1dat_consulta: TcxGridDBColumn
          Caption = 'Data Consulta'
          DataBinding.FieldName = 'dat_consulta'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object gridGRDBTableView1nom_empresa: TcxGridDBColumn
          Caption = 'Empresa GR'
          DataBinding.FieldName = 'nom_empresa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Width = 254
        end
        object gridGRDBTableView1cod_consulta: TcxGridDBColumn
          Caption = 'C'#243'd. Consulta'
          DataBinding.FieldName = 'cod_consulta'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Width = 151
        end
      end
      object gridGRLevel1: TcxGridLevel
        GridView = gridGRDBTableView1
      end
    end
    object gridCNAE: TcxGrid
      Left = 10000
      Top = 10000
      Width = 896
      Height = 281
      TabOrder = 49
      Visible = False
      object gridCNAEDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsCNAE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridCNAEDBTableView1id_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'id_cnae'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCNAEDBTableView1id_contratados: TcxGridDBColumn
          DataBinding.FieldName = 'id_contratados'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCNAEDBTableView1des_tipo_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_cnae'
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 122
        end
        object gridCNAEDBTableView1cod_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cnae'
          HeaderAlignmentHorz = taCenter
          Width = 136
        end
        object gridCNAEDBTableView1des_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'des_cnae'
          HeaderAlignmentHorz = taCenter
          Width = 636
        end
      end
      object gridCNAELevel1: TcxGridLevel
        GridView = gridCNAEDBTableView1
      end
    end
    object dbTipoPessoaVeiculo: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      Hint = 'Tipo de pessoa'
      DataBinding.DataField = 'DES_TIPO_DOC'
      DataBinding.DataSource = dsVeiculos
      Properties.Items = <
        item
          Description = 'F'#237'sica'
          ImageIndex = 0
          Value = 'CPF'
        end
        item
          Description = 'Jur'#237'dica'
          Value = 'CNPJ'
        end>
      Properties.OnChange = dbTipoPessoaVeiculoPropertiesChange
      Style.HotTrack = False
      TabOrder = 50
      Visible = False
      Width = 98
    end
    object dbCPFCNPJVeiculo: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF/CNPJ do propriet'#225'rio'
      DataBinding.DataField = 'NUM_CNPJ'
      DataBinding.DataSource = dsVeiculos
      Properties.Buttons = <
        item
          Action = actionSearchDocVehicle
          Default = True
          ImageIndex = 81
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '!00\.000\.000\/0000\-00;1; '
      Style.HotTrack = False
      TabOrder = 51
      Visible = False
      Width = 155
    end
    object dbNomePropVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do propriet'#225'rio do ve'#237'culo'
      DataBinding.DataField = 'NOM_PROPRIETARIO'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 52
      Visible = False
      Width = 501
    end
    object dbRGIEVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'NUM_RG'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Width = 121
    end
    object dbNascimentoVeiculo: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data Nascimento Propriet'#225'rio'
      DataBinding.DataField = 'DAT_NASCIMENTO'
      DataBinding.DataSource = dsVeiculos
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.HotTrack = False
      TabOrder = 53
      Visible = False
      Width = 97
    end
    object dbPaiProprietario: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do Pai do propriet'#225'rio'
      DataBinding.DataField = 'NOM_MAE'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 54
      Visible = False
      Width = 327
    end
    object dbMaePriprietario: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da M'#227'e do propriet'#225'rio'
      DataBinding.DataField = 'NOM_MAE'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 55
      Visible = False
      Width = 337
    end
    object dbEmissaoRGProprietario: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da emiss'#227'o do RG do propriet'#225'rio'
      DataBinding.DataField = 'DAT_EMISSAO_RG'
      DataBinding.DataSource = dsVeiculos
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Width = 95
    end
    object dbUFRGProprietario: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF emissor do RG do propriet'#225'rio'
      DataBinding.DataField = 'UF_RG'
      DataBinding.DataSource = dsVeiculos
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
      Width = 56
    end
    object dbTelefone1Veiculo: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero de telefone para contato'
      DataBinding.DataField = 'NUM_TELEFONE_1'
      DataBinding.DataSource = dsVeiculos
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)90000-0000;1; '
      Style.HotTrack = False
      TabOrder = 59
      Visible = False
      Width = 167
    end
    object dbTelefone2Veiculo: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero de telefone para contato'
      DataBinding.DataField = 'NUM_TELEFONE_2'
      DataBinding.DataSource = dsVeiculos
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)90000-0000;1; '
      Style.HotTrack = False
      TabOrder = 60
      Visible = False
      Width = 166
    end
    object dbCEPVeiculo: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CEP do endere'#231'o'
      DataBinding.DataField = 'NUM_CEP'
      DataBinding.DataSource = dsVeiculos
      Properties.Buttons = <
        item
          Action = actionSearchCEPVeiculo
          Default = True
          ImageIndex = 82
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '00000\-999;1; '
      Style.HotTrack = False
      TabOrder = 61
      Visible = False
      Width = 90
    end
    object dbEnderecoVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Logradoudo, n'#250'mero e complemento'
      DataBinding.DataField = 'DES_ENDERECO'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 62
      Visible = False
      Width = 291
    end
    object dbBairroVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do bairro'
      DataBinding.DataField = 'DES_BAIRRO'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 63
      Visible = False
      Width = 121
    end
    object dbCidadeVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da cidade'
      DataBinding.DataField = 'NOM_CIDADE'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 64
      Visible = False
      Width = 121
    end
    object dbUFEnderecoVeiculo: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF do endere'#231'o'
      DataBinding.DataField = 'UF_ENDERECO'
      DataBinding.DataSource = dsVeiculos
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 65
      Visible = False
      Width = 63
    end
    object dnMarcaVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Marca do ve'#237'culo'
      DataBinding.DataField = 'DES_MARCA'
      DataBinding.DataSource = dsVeiculos
      Properties.LookupItems.Strings = (
        'AGRALE'
        'ALFA ROMEO'
        'AUDI'
        'BMW'
        'CAOA CHERY'
        'CHEVROLET'
        'CITRO'#203'N'
        'FIAT'
        'FORD'
        'HONDA'
        'HYUNDAI'
        'IVECO'
        'JAC'
        'JEEP'
        'KIA'
        'LAND ROVER'
        'MERCEDES BENZ'
        'MITSUBISHI'
        'NISSAN'
        'OPEL'
        'RENAULT'
        'SUZUKI'
        'TOYOTA'
        'VOLKSWAGEN'
        'VOLVO'
        'YAMAHA')
      Properties.LookupItemsSorted = True
      Style.HotTrack = False
      TabOrder = 69
      Visible = False
      Width = 102
    end
    object dbModeloVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Modelo do ve'#237'culo'
      DataBinding.DataField = 'DES_MODELO'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 70
      Visible = False
      Width = 99
    end
    object dbPlacaVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DES_PLACA'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 66
      Visible = False
      Width = 75
    end
    object dbCidadePlaca: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da cidade da placa'
      DataBinding.DataField = 'NOM_CIDADE_PLACA'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 67
      Visible = False
      Width = 129
    end
    object dbUFPlaca: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF da placa'
      DataBinding.DataField = 'UF_PLACA'
      DataBinding.DataSource = dsVeiculos
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 68
      Visible = False
      Width = 47
    end
    object dbTipoVeiculo: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Tipo de ve'#237'culo'
      DataBinding.DataField = 'DES_TIPO'
      DataBinding.DataSource = dsVeiculos
      Properties.Items.Strings = (
        'PASSEIO'
        'MOTO'
        'TRUCK ABERTO'
        'TRUCK BA'#218
        'TRUCK SIDER'
        'TOCO ABERTO'
        'TOCO BA'#218
        'TOCO SIDER'
        '3/4 ABERTO'
        '3/4 BA'#218
        '3/4 SIDER'
        'FURG'#195'O/VAN'
        'UTILIT'#193'RIO'
        'TRICICLO'
        'QUADRICICLO')
      Style.HotTrack = False
      TabOrder = 71
      Visible = False
      Width = 135
    end
    object dbRENAVAN: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'RENVAN do ve'#237'culo'
      DataBinding.DataField = 'NUM_RENAVAN'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 72
      Visible = False
      Width = 121
    end
    object dbChassis: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do chassis do ve'#237'culo'
      DataBinding.DataField = 'NUM_CHASSIS'
      DataBinding.DataSource = dsVeiculos
      Style.HotTrack = False
      TabOrder = 73
      Visible = False
      Width = 417
    end
    object dbAnoVeiculo: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'Ano de fabrica'#231#227'o do ve'#237'culo'
      DataBinding.DataField = 'DES_ANO'
      DataBinding.DataSource = dsVeiculos
      Properties.EditMask = '9999;1; '
      Style.HotTrack = False
      TabOrder = 74
      Visible = False
      Width = 67
    end
    object dbCorVeiculo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Cor predominante do ve'#237'culo'
      Style.HotTrack = False
      TabOrder = 75
      Visible = False
      Width = 105
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 10000
      Top = 10000
      Width = 421
      Height = 40
      Buttons.CustomButtons = <>
      Buttons.Images = Data_Sisgef.imageListOperation_32_32
      Buttons.First.ImageIndex = 27
      Buttons.PriorPage.Visible = False
      Buttons.Prior.ImageIndex = 30
      Buttons.Next.ImageIndex = 29
      Buttons.NextPage.Visible = False
      Buttons.Last.ImageIndex = 28
      Buttons.Insert.Hint = 'Novo'
      Buttons.Insert.ImageIndex = 0
      Buttons.Delete.Hint = 'Excluir'
      Buttons.Delete.ImageIndex = 8
      Buttons.Edit.Hint = 'Editar'
      Buttons.Edit.ImageIndex = 9
      Buttons.Post.Hint = 'Gravar'
      Buttons.Post.ImageIndex = 13
      Buttons.Cancel.Hint = 'Cancelar'
      Buttons.Cancel.ImageIndex = 4
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Hint = 'Filtrar'
      Buttons.Filter.ImageIndex = 11
      DataSource = dsVeiculos
      InfoPanel.Visible = True
      TabOrder = 76
      Visible = False
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 121
      Height = 40
      Action = actionDataContracted
      TabOrder = 77
      Visible = False
    end
    object dbCEP: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CEP do endere'#231'o'
      DataBinding.DataField = 'num_cep'
      DataBinding.DataSource = dsEnderecos
      Properties.Buttons = <
        item
          Action = actionSearchCEPContracted
          Default = True
          ImageIndex = 82
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '00000\-999;1; '
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 90
    end
    object dbEndereco: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Logradouro do endere'#231'o'
      DataBinding.DataField = 'des_logradouro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 425
    end
    object dbNumero: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do logradouro'
      DataBinding.DataField = 'num_logradouro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 98
    end
    object dbComplemento: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Complemento do endere'#231'o'
      DataBinding.DataField = 'des_complemento'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 201
    end
    object dbBairro: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Bairro do endere'#231'o'
      DataBinding.DataField = 'des_bairro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Width = 312
    end
    object dbCidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Cidade do endere'#231'o'
      DataBinding.DataField = 'nom_cidade'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Width = 417
    end
    object dbUF: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF do endere'#231'o'
      DataBinding.DataField = 'uf_estado'
      DataBinding.DataSource = dsEnderecos
      Properties.KeyFieldNames = 'uf_estado'
      Properties.ListColumns = <
        item
          FieldName = 'uf_estado'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 53
    end
    object dbReferencia: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Refer'#234'ncia do endere'#231'o'
      DataBinding.DataField = 'des_referencia'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 835
    end
    object gridContatos: TcxGrid
      Left = 10000
      Top = 10000
      Width = 896
      Height = 114
      TabOrder = 28
      Visible = False
      object gridContatosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Hint = 'Novo'
        Navigator.Buttons.Insert.ImageIndex = 97
        Navigator.Buttons.Delete.Hint = 'Excluir'
        Navigator.Buttons.Delete.ImageIndex = 130
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Post.Hint = 'Gravar'
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.Hint = 'Cancelar'
        Navigator.Buttons.Cancel.ImageIndex = 116
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Hint = 'Filtro'
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsContatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridContatosDBTableView1seq_contato: TcxGridDBColumn
          DataBinding.FieldName = 'seq_contato'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridContatosDBTableView1id_contratados: TcxGridDBColumn
          DataBinding.FieldName = 'id_contratados'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridContatosDBTableView1des_contato: TcxGridDBColumn
          DataBinding.FieldName = 'des_contato'
          HeaderAlignmentHorz = taCenter
          Width = 271
        end
        object gridContatosDBTableView1num_telefone: TcxGridDBColumn
          DataBinding.FieldName = 'num_telefone'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(99\)90000-0000;1; '
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
        object gridContatosDBTableView1des_email: TcxGridDBColumn
          DataBinding.FieldName = 'des_email'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecLowerCase
          HeaderAlignmentHorz = taCenter
          Width = 484
        end
      end
      object gridContatosLevel1: TcxGridLevel
        GridView = gridContatosDBTableView1
      end
    end
    object gridFinanceiro: TcxGrid
      Left = 10000
      Top = 10000
      Width = 896
      Height = 281
      TabOrder = 29
      Visible = False
      object gridFinanceiroDBTableView1: TcxGridDBTableView
        Navigator.Buttons.ConfirmDelete = True
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.imageListOperation_32_32
        Navigator.Buttons.First.ImageIndex = 27
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 30
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.ImageIndex = 29
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 28
        Navigator.Buttons.Insert.Hint = 'Novo'
        Navigator.Buttons.Insert.ImageIndex = 0
        Navigator.Buttons.Delete.Hint = 'Excluir'
        Navigator.Buttons.Delete.ImageIndex = 8
        Navigator.Buttons.Edit.Hint = 'Editar'
        Navigator.Buttons.Edit.ImageIndex = 9
        Navigator.Buttons.Post.Hint = 'Gravar'
        Navigator.Buttons.Post.ImageIndex = 13
        Navigator.Buttons.Cancel.Hint = 'Cancelar'
        Navigator.Buttons.Cancel.ImageIndex = 4
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Hint = 'Filtro'
        Navigator.Buttons.Filter.ImageIndex = 11
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsFinanceiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridFinanceiroDBTableView1id_financeiro: TcxGridDBColumn
          DataBinding.FieldName = 'id_financeiro'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridFinanceiroDBTableView1id_contratados: TcxGridDBColumn
          DataBinding.FieldName = 'id_contratados'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridFinanceiroDBTableView1cod_banco: TcxGridDBColumn
          DataBinding.FieldName = 'cod_banco'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_banco'
          Properties.ListColumns = <
            item
              FieldName = 'nom_banco'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBancos
          HeaderAlignmentHorz = taCenter
          Width = 143
        end
        object gridFinanceiroDBTableView1cod_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agencia'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object gridFinanceiroDBTableView1num_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object gridFinanceiroDBTableView1chave_pix: TcxGridDBColumn
          DataBinding.FieldName = 'chave_pix'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 299
        end
        object gridFinanceiroDBTableView1des_forma_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'des_forma_pagamento'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'NENHUMA'
            'OBB PLUS'
            'DEP'#211'SITO/TRANSFER'#202'NCIA'
            'CHEQUE'
            'TED/DOC'
            'DINHEIRO'
            'FOLHA DE PAGAMENTO'
            'PIX')
          HeaderAlignmentHorz = taCenter
          Width = 212
        end
      end
      object gridFinanceiroLevel1: TcxGridLevel
        GridView = gridFinanceiroDBTableView1
      end
    end
    object dbRepresentante: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do representante'
      DataBinding.DataField = 'nom_representante'
      DataBinding.DataSource = saRepresentante
      Style.HotTrack = False
      TabOrder = 46
      Visible = False
      Width = 633
    end
    object dbCPFRepresentante: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF do representante'
      DataBinding.DataField = 'cpf_representante'
      DataBinding.DataSource = saRepresentante
      Properties.EditMask = '!000\.000\.000\-00;1; '
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Width = 148
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 87
      Height = 37
      Action = actionReturnGrid
      TabOrder = 78
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 89
      Height = 37
      Action = actionSaveRegister
      TabOrder = 80
      Visible = False
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 103
      Height = 37
      Action = actionContracts
      TabOrder = 79
      Visible = False
    end
    object lcbCategorias: TcxLookupComboBox
      Left = 694
      Top = 108
      Properties.KeyFieldNames = 'id_categoria'
      Properties.ListColumns = <
        item
          FieldName = 'des_categoria'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCategoria
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object lycMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemControlAreaAlignment = catNone
      ShowBorder = False
      Index = -1
    end
    object lgpMain: TdxLayoutGroup
      Parent = lycMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      OnTabChanged = lgpMainTabChanged
      Index = 0
    end
    object lgpGrid: TdxLayoutGroup
      Parent = lgpMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grid'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpMenu: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 60
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgpMenu
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object lgpGridView: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object lgpOptionsSearch: TdxLayoutGroup
      Parent = lgpGridView
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgpOptionsSearch
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar'
      Control = bteSearch
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgpMenu
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lgpOptionsSearch
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Hint = 'Somente cadastros ativos'
      CaptionOptions.Text = 'Somente Ativos'
      Control = cbxAtivos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = lgpGridView
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lgpGridView
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grid
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpGridView
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpMain
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'ID'
      Control = dbId
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Hint = 'Tipo de Pessoa'
      CaptionOptions.Text = 'Tipo'
      Control = dbTipoPessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'CPF / CNPJ'
      Control = dbCPFCNPJ
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome'
      Control = dbNome
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Alias'
      Control = dbAlias
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Categoria'
      Control = dbCategoria
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Hint = 'Selecione o sexo'
      CaptionOptions.Text = 'Sexo'
      Control = dbSexo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Hint = 'RG ou inscri'#231#227'o estadual'
      CaptionOptions.Text = 'RG /Ins. Est.'
      Control = dbRGIE
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Emiss'#227'o RG'
      Control = dbEmissaoRG
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Hint = 'Org'#227'o emissor do RG'
      CaptionOptions.Text = 'Emissor RG'
      Control = dbEmissorRG
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'UF RG'
      Control = dbUFRG
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Ins. Mun'
      Control = dbIM
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignVert = avClient
      CaptionOptions.Text = 'Nascimento'
      Control = dbNascimento
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nacionalidade'
      Control = dbNacionalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Naturalidade'
      Control = dbNaturalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignVert = avClient
      CaptionOptions.Text = 'UF Nat.'
      Control = dbUFNaturalidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Contatos'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 332
      SizeOptions.Width = 453
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgpEnderecos: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Endere'#231'os / Contatos'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 6
      Index = 0
    end
    object lgpRH: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Contrato'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 8
      Index = 2
    end
    object lgpBancos: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Dados Banc'#225'rios'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgpGR: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'GR'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      Index = 3
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = lgpRH
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = lgpRH
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = lgpRH
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pai'
      Control = dbNomePai
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'M'#227'e'
      Control = dbNomeMae
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CRT'
      Control = dbCRT
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = lgpRH
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Parent = lgpRH
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = lgpRH
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Sal'#225'rio'
      Control = dbSalario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Adimiss'#227'o'
      Control = dbAdmissao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Demiss'#227'o'
      Control = dbDemissao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = lgpRH
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Base'
      Control = dbBase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Hint = 'Fun'#231#227'o'
      CaptionOptions.Text = 'Fun'#231#227'o'
      Control = dbFuncao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 178
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgpCNAE: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'CNAE'
      ButtonOptions.Buttons = <>
      Index = 4
    end
    object lgpVeiculos: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Ve'#237'culos'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 6
      Index = 5
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lgpGR
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Consultas GR'
      CaptionOptions.Layout = clTop
      Control = gridGR
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = lgpCNAE
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridCNAE
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      Control = dbTipoPessoaVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'CPF/CNPJ'
      Control = dbCPFCNPJVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = lgpVeiculos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      Control = dbNomePropVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
      Parent = lgpVeiculos
      CaptionOptions.Text = 'Dados do Propriet'#225'rio'
      CaptionOptions.Visible = True
      Index = 0
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Hint = 'N'#250'mero do RG ou Inscri'#231#227'o Estadual'
      CaptionOptions.Text = 'RG/ IE'
      Control = dbRGIEVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lgpVeiculos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Nascimento'
      Control = dbNascimentoVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pai'
      Control = dbPaiProprietario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'M'#227'e'
      Control = dbMaePriprietario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = lgpVeiculos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Emiss'#227'o RG'
      Control = dbEmissaoRGProprietario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'UF RG'
      Control = dbUFRGProprietario
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Telefone 1'
      Control = dbTelefone1Veiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Telefone 2'
      Control = dbTelefone2Veiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = lgpVeiculos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'CEP'
      Control = dbCEPVeiculo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'Endere'#231'o'
      Control = dbEnderecoVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 264
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem52: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Bairro'
      Control = dbBairroVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem53: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Cidade'
      Control = dbCidadeVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem54: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'UF'
      Control = dbUFEnderecoVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSeparatorItem7: TdxLayoutSeparatorItem
      Parent = lgpVeiculos
      CaptionOptions.Text = 'Dados do Ve'#237'culo'
      CaptionOptions.Visible = True
      Index = 5
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = lgpVeiculos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem55: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Marca'
      Control = dnMarcaVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem56: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Modelo'
      Control = dbModeloVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem57: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignVert = avClient
      CaptionOptions.Text = 'Placa'
      Control = dbPlacaVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem58: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignVert = avClient
      CaptionOptions.Text = 'Cidade Placa'
      Control = dbCidadePlaca
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem59: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignVert = avClient
      CaptionOptions.Text = 'UF Placa'
      Control = dbUFPlaca
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem60: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'Tipo'
      Control = dbTipoVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = lgpVeiculos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem61: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'RENAVAN'
      Control = dbRENAVAN
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem62: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'CHASSIS'
      Control = dbChassis
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem63: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Ano'
      Control = dbAnoVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem64: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Cor'
      Control = dbCorVeiculo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem8: TdxLayoutSeparatorItem
      Parent = lgpVeiculos
      CaptionOptions.Text = 'Separator'
      Index = 8
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = lgpVeiculos
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem65: TdxLayoutItem
      Parent = dxLayoutGroup21
      CaptionOptions.Text = 'cxDBNavigator1'
      CaptionOptions.Visible = False
      Control = cxDBNavigator1
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 421
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem66: TdxLayoutItem
      Parent = dxLayoutGroup21
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = lgpEnderecos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem67: TdxLayoutItem
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'CEP'
      Control = dbCEP
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = lgpEnderecos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem68: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      CaptionOptions.Text = 'Endere'#231'o'
      Control = dbEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 214
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem69: TdxLayoutItem
      Parent = dxLayoutGroup23
      CaptionOptions.Text = 'N'#186
      Control = dbNumero
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem70: TdxLayoutItem
      Parent = dxLayoutGroup23
      CaptionOptions.Text = 'Complemento'
      Control = dbComplemento
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 201
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = lgpEnderecos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem71: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bairro'
      Control = dbBairro
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem72: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cidade'
      Control = dbCidade
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem73: TdxLayoutItem
      Parent = dxLayoutGroup24
      CaptionOptions.Text = 'UF'
      Control = dbUF
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = lgpEnderecos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem74: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      CaptionOptions.Text = 'Refer'#234'ncia'
      Control = dbReferencia
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem9: TdxLayoutSeparatorItem
      Parent = lgpEnderecos
      CaptionOptions.Text = 'Endere'#231'o'
      CaptionOptions.Visible = True
      Index = 0
    end
    object dxLayoutSeparatorItem10: TdxLayoutSeparatorItem
      Parent = lgpEnderecos
      CaptionOptions.Text = 'Contatos'
      CaptionOptions.Visible = True
      Index = 5
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = lgpEnderecos
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem75: TdxLayoutItem
      Parent = dxLayoutGroup26
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridContatos
      ControlOptions.OriginalHeight = 114
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem76: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridFinanceiro
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem11: TdxLayoutSeparatorItem
      Parent = lgpRH
      CaptionOptions.Text = 'Separator'
      Index = 7
    end
    object dxLayoutItem77: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      CaptionOptions.Text = 'Representante'
      Control = dbRepresentante
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem78: TdxLayoutItem
      Parent = dxLayoutGroup28
      CaptionOptions.Text = 'CPF'
      Control = dbCPFRepresentante
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 148
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = lgpBancos
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = lgpRH
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = lgpCadastro
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem79: TdxLayoutItem
      Parent = dxLayoutGroup29
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem80: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem81: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lgpOptionsSearch
      AlignVert = avCenter
      CaptionOptions.Text = 'Categoria'
      Control = lcbCategorias
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem12: TdxLayoutSeparatorItem
      Parent = lgpMenu
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.imageListOperation_32_32
    Left = 944
    Top = 8
    object actionNewRegister: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
      ImageIndex = 0
      OnExecute = actionNewRegisterExecute
    end
    object actionEditRegister: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      ImageIndex = 9
      OnExecute = actionEditRegisterExecute
    end
    object actionLocateRecord: TAction
      Caption = '&Localizar'
      Hint = 'Localizar cadastro'
      ImageIndex = 12
    end
    object actionDocumentsToExpire: TAction
      Caption = '&Documentos'
      Hint = 'Lista de documentos a vencer'
      Visible = False
    end
    object actionRiskManagement: TAction
      Caption = '&GR'
      Hint = 'Lista de gerenciamento de risco'
      Visible = False
    end
    object actionLocation: TAction
      Caption = 'Loca'#231#227'o'
      Hint = 'Loca'#231#227'o dos contratados'
    end
    object actionCloseForm: TAction
      Caption = 'Fec&har'
      Hint = 'Fechar a tela'
      ImageIndex = 3
      OnExecute = actionCloseFormExecute
    end
    object actionExpandGrid: TAction
      Caption = 'Expandir'
      Hint = 'Expandir grid'
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grid'
      OnExecute = actionRetractGridExecute
    end
    object actionGroupPanel: TAction
      Caption = 'Painel de Grupo'
      Hint = 'Exibir o painel de grupos'
      OnExecute = actionGroupPanelExecute
    end
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 10
      OnExecute = actionExportGridExecute
    end
    object actionSearchRecords: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisa do cadastro'
      ImageIndex = 14
      OnExecute = actionSearchRecordsExecute
    end
    object actionReturnGrid: TAction
      Caption = '&Voltar'
      Hint = 'Voltar para o grid'
      ImageIndex = 26
      OnExecute = actionReturnGridExecute
    end
    object actionSaveFilterParam: TAction
      Caption = 'Salvar Par'#226'metros'
      Hint = 'Salvar os par'#226'metros do filtro'
    end
    object actionLoadFilterParam: TAction
      Caption = 'Carregar Pr'#226'metros'
      Hint = 'Carregar par'#226'metros de filtro'
    end
    object actionClearSearch: TAction
      Caption = 'Li&mpar'
      Enabled = False
      Hint = 'Limpar a tela de pesquisa'
    end
    object actionDeleteRegister: TAction
      Caption = 'Excl&uir'
      Hint = 'Excluir contratado'
      ImageIndex = 8
    end
    object actionSaveRegister: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 13
    end
    object actionSearchDoc: TAction
      Caption = 'Consulta CNPJ'
      Hint = 'Consultar CNPJ'
      OnExecute = actionSearchDocExecute
    end
    object actionSearchDocVehicle: TAction
      Caption = 'Consulta CNPJ'
      Hint = 'Consulta o CNPJ'
      OnExecute = actionSearchDocVehicleExecute
    end
    object actionSearchCEPVeiculo: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisao CEP do endere'#231'o do ve'#237'culo'
      OnExecute = actionSearchCEPVeiculoExecute
    end
    object actionSearchCEPContracted: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisa o CEP do endere'#231'o'
      OnExecute = actionSearchCEPContractedExecute
    end
    object actionDataContracted: TAction
      Caption = 'Co&piar Dados'
      Hint = 'Usar os dados do contratado'
      ImageIndex = 31
    end
    object actionContracts: TAction
      Caption = 'Contrat&os'
      Hint = 'Emiss'#227'o de contratos'
      ImageIndex = 32
    end
  end
  object mtbCadastro: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_erp_contratados'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_categoria'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_categoria'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cod_pessoa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_tipo_doc'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'nom_razao_social'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_fantasia_alias'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_cpf_cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_rg_ie'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_im'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dat_emissao_rg'
        DataType = ftDateTime
      end
      item
        Name = 'nom_emissor_rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'uf_emissor_rg'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'dat_nascimento'
        DataType = ftDate
      end
      item
        Name = 'des_nacionalidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'des_naturalidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'uf_naturalidade'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'nom_pai'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_mae'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_crt'
        DataType = ftInteger
      end
      item
        Name = 'num_cnh'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'num_registro_cnh'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'des_categoria_cnh'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'dat_validade_cnh'
        DataType = ftDate
      end
      item
        Name = 'dat_emissao_cnh'
        DataType = ftDate
      end
      item
        Name = 'uf_cnh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'dat_primeira_cnh'
        DataType = ftDate
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'dat_cadastro'
        DataType = ftDateTime
      end
      item
        Name = 'des_obs'
        DataType = ftMemo
      end
      item
        Name = 'nom_base'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'des_funcao'
        DataType = ftString
        Size = 132
      end
      item
        Name = 'id_gr'
        DataType = ftInteger
      end
      item
        Name = 'dat_consulta_gr'
        DataType = ftDate
      end
      item
        Name = 'dat_validade_gr'
        DataType = ftDate
      end
      item
        Name = 'nom_empresa'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_consulta_gr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'id_representante'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'nom_representante'
        DataType = ftString
        Size = 71
      end
      item
        Name = 'cpf_representante'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_veiculo'
        DataType = ftInteger
      end
      item
        Name = 'des_marca'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_modelo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_placa'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'des_tipo_veiculo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_chassis'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_ano'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'des_cor'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_renavan'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ano_exervicio_clrv'
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 264
    Content = {
      414442530F00DD4E361A0000FF00010001FF02FF030400160000006D00740062
      0043006100640061007300740072006F0005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B040004000000690064
      00050004000000690064000C00010000000E000D000F00011000011100011200
      0113000400000069006400FEFF0B04002600000063006F0064005F0065007200
      70005F0063006F006E007400720061007400610064006F007300050026000000
      63006F0064005F006500720070005F0063006F006E0074007200610074006100
      64006F0073000C00020000000E0014001500320000000F000116000110000117
      000111000112000113002600000063006F0064005F006500720070005F006300
      6F006E007400720061007400610064006F007300180032000000FEFF0B040018
      000000690064005F00630061007400650067006F007200690061000500180000
      00690064005F00630061007400650067006F007200690061000C00030000000E
      000D000F0001100001110001120001130018000000690064005F006300610074
      00650067006F00720069006100FEFF0B04001A0000006400650073005F006300
      61007400650067006F0072006900610005001A0000006400650073005F006300
      61007400650067006F007200690061000C00040000000E0014001500FF000000
      0F000116000110000117000111000112000113001A0000006400650073005F00
      630061007400650067006F007200690061001800FF000000FEFF0B0400140000
      0063006F0064005F0070006500730073006F00610005001400000063006F0064
      005F0070006500730073006F0061000C00050000000E000D000F000110000111
      000112000113001400000063006F0064005F0070006500730073006F006100FE
      FF0B0400180000006400650073005F007400690070006F005F0064006F006300
      0500180000006400650073005F007400690070006F005F0064006F0063000C00
      060000000E0014001500040000000F0001160001100001170001110001120001
      1300180000006400650073005F007400690070006F005F0064006F0063001800
      04000000FEFF0B0400200000006E006F006D005F00720061007A0061006F005F
      0073006F006300690061006C000500200000006E006F006D005F00720061007A
      0061006F005F0073006F006300690061006C000C00070000000E001400150046
      0000000F00011600011000011700011100011200011300200000006E006F006D
      005F00720061007A0061006F005F0073006F006300690061006C001800460000
      00FEFF0B0400240000006E006F006D005F00660061006E007400610073006900
      61005F0061006C006900610073000500240000006E006F006D005F0066006100
      6E00740061007300690061005F0061006C006900610073000C00080000000E00
      14001500460000000F0001160001100001170001110001120001130024000000
      6E006F006D005F00660061006E00740061007300690061005F0061006C006900
      61007300180046000000FEFF0B0400180000006E0075006D005F006300700066
      005F0063006E0070006A000500180000006E0075006D005F006300700066005F
      0063006E0070006A000C00090000000E0014001500140000000F000116000110
      00011700011100011200011300180000006E0075006D005F006300700066005F
      0063006E0070006A00180014000000FEFF0B0400120000006E0075006D005F00
      720067005F00690065000500120000006E0075006D005F00720067005F006900
      65000C000A0000000E0014001500140000000F00011600011000011700011100
      011200011300120000006E0075006D005F00720067005F006900650018001400
      0000FEFF0B04000C0000006E0075006D005F0069006D0005000C0000006E0075
      006D005F0069006D000C000B0000000E00140015001E0000000F000116000110
      000117000111000112000113000C0000006E0075006D005F0069006D0018001E
      000000FEFF0B04001C0000006400610074005F0065006D006900730073006100
      6F005F007200670005001C0000006400610074005F0065006D00690073007300
      61006F005F00720067000C000C0000000E0019000F0001160001100001170001
      11000112000113001C0000006400610074005F0065006D006900730073006100
      6F005F0072006700FEFF0B04001C0000006E006F006D005F0065006D00690073
      0073006F0072005F007200670005001C0000006E006F006D005F0065006D0069
      00730073006F0072005F00720067000C000D0000000E0014001500140000000F
      000116000110000117000111000112000113001C0000006E006F006D005F0065
      006D006900730073006F0072005F0072006700180014000000FEFF0B04001A00
      0000750066005F0065006D006900730073006F0072005F007200670005001A00
      0000750066005F0065006D006900730073006F0072005F00720067000C000E00
      00000E0014001500020000000F00011600011A00011000011700011100011200
      0113001A000000750066005F0065006D006900730073006F0072005F00720067
      00180002000000FEFF0B04001C0000006400610074005F006E00610073006300
      69006D0065006E0074006F0005001C0000006400610074005F006E0061007300
      630069006D0065006E0074006F000C000F0000000E001B000F00011600011000
      0117000111000112000113001C0000006400610074005F006E00610073006300
      69006D0065006E0074006F00FEFF0B0400220000006400650073005F006E0061
      00630069006F006E0061006C0069006400610064006500050022000000640065
      0073005F006E006100630069006F006E0061006C00690064006100640065000C
      00100000000E0014001500460000000F00011600011000011700011100011200
      011300220000006400650073005F006E006100630069006F006E0061006C0069
      006400610064006500180046000000FEFF0B0400200000006400650073005F00
      6E00610074007500720061006C00690064006100640065000500200000006400
      650073005F006E00610074007500720061006C00690064006100640065000C00
      110000000E0014001500460000000F0001160001100001170001110001120001
      1300200000006400650073005F006E00610074007500720061006C0069006400
      610064006500180046000000FEFF0B04001E000000750066005F006E00610074
      007500720061006C006900640061006400650005001E000000750066005F006E
      00610074007500720061006C00690064006100640065000C00120000000E0014
      001500020000000F00011600011A000110000117000111000112000113001E00
      0000750066005F006E00610074007500720061006C0069006400610064006500
      180002000000FEFF0B04000E0000006E006F006D005F0070006100690005000E
      0000006E006F006D005F007000610069000C00130000000E0014001500460000
      000F000116000110000117000111000112000113000E0000006E006F006D005F
      00700061006900180046000000FEFF0B04000E0000006E006F006D005F006D00
      6100650005000E0000006E006F006D005F006D00610065000C00140000000E00
      14001500460000000F000116000110000117000111000112000113000E000000
      6E006F006D005F006D0061006500180046000000FEFF0B04000E00000063006F
      0064005F0063007200740005000E00000063006F0064005F006300720074000C
      00150000000E000D000F000116000110000117000111000112000113000E0000
      0063006F0064005F00630072007400FEFF0B04000E0000006E0075006D005F00
      63006E00680005000E0000006E0075006D005F0063006E0068000C0016000000
      0E00140015000F0000000F000116000110000117000111000112000113000E00
      00006E0075006D005F0063006E00680018000F000000FEFF0B0400200000006E
      0075006D005F0072006500670069007300740072006F005F0063006E00680005
      00200000006E0075006D005F0072006500670069007300740072006F005F0063
      006E0068000C00170000000E00140015000F0000000F00011600011000011700
      011100011200011300200000006E0075006D005F007200650067006900730074
      0072006F005F0063006E00680018000F000000FEFF0B04002200000064006500
      73005F00630061007400650067006F007200690061005F0063006E0068000500
      220000006400650073005F00630061007400650067006F007200690061005F00
      63006E0068000C00180000000E0014001500020000000F000116000110000117
      00011100011200011300220000006400650073005F0063006100740065006700
      6F007200690061005F0063006E006800180002000000FEFF0B04002000000064
      00610074005F00760061006C00690064006100640065005F0063006E00680005
      00200000006400610074005F00760061006C00690064006100640065005F0063
      006E0068000C00190000000E001B000F00011600011000011700011100011200
      011300200000006400610074005F00760061006C00690064006100640065005F
      0063006E006800FEFF0B04001E0000006400610074005F0065006D0069007300
      730061006F005F0063006E00680005001E0000006400610074005F0065006D00
      69007300730061006F005F0063006E0068000C001A0000000E001B000F000116
      000110000117000111000112000113001E0000006400610074005F0065006D00
      69007300730061006F005F0063006E006800FEFF0B04000C000000750066005F
      0063006E00680005000C000000750066005F0063006E0068000C001B0000000E
      0014001500020000000F00011600011A00011000011700011100011200011300
      0C000000750066005F0063006E006800180002000000FEFF0B04002000000064
      00610074005F007000720069006D0065006900720061005F0063006E00680005
      00200000006400610074005F007000720069006D0065006900720061005F0063
      006E0068000C001C0000000E001B000F00011600011000011700011100011200
      011300200000006400610074005F007000720069006D0065006900720061005F
      0063006E006800FEFF0B04001400000063006F0064005F007300740061007400
      7500730005001400000063006F0064005F007300740061007400750073000C00
      1D0000000E000D000F0001160001100001170001110001120001130014000000
      63006F0064005F00730074006100740075007300FEFF0B040018000000640061
      0074005F0063006100640061007300740072006F000500180000006400610074
      005F0063006100640061007300740072006F000C001E0000000E0019000F0001
      1600011000011700011100011200011300180000006400610074005F00630061
      00640061007300740072006F00FEFF0B04000E0000006400650073005F006F00
      6200730005000E0000006400650073005F006F00620073000C001F0000000E00
      1C000F00011600011D000110000117000111000112000113000E000000640065
      0073005F006F0062007300FEFF0B0400100000006E006F006D005F0062006100
      730065000500100000006E006F006D005F0062006100730065000C0020000000
      0E0014001500460000000F000116000110000117000111000112000113001000
      00006E006F006D005F006200610073006500180046000000FEFF0B0400140000
      006400650073005F00660075006E00630061006F000500140000006400650073
      005F00660075006E00630061006F000C00210000000E0014001500840000000F
      00011600011000011700011100011200011300140000006400650073005F0066
      0075006E00630061006F00180084000000FEFF0B04000A000000690064005F00
      6700720005000A000000690064005F00670072000C00220000000E000D000F00
      0116000110000117000111000112000113000A000000690064005F0067007200
      FEFF0B04001E0000006400610074005F0063006F006E00730075006C00740061
      005F006700720005001E0000006400610074005F0063006F006E00730075006C
      00740061005F00670072000C00230000000E001B000F00011600011000011700
      0111000112000113001E0000006400610074005F0063006F006E00730075006C
      00740061005F0067007200FEFF0B04001E0000006400610074005F0076006100
      6C00690064006100640065005F006700720005001E0000006400610074005F00
      760061006C00690064006100640065005F00670072000C00240000000E001B00
      0F000116000110000117000111000112000113001E0000006400610074005F00
      760061006C00690064006100640065005F0067007200FEFF0B0400160000006E
      006F006D005F0065006D00700072006500730061000500160000006E006F006D
      005F0065006D00700072006500730061000C00250000000E0014001500460000
      000F00011600011000011700011100011200011300160000006E006F006D005F
      0065006D0070007200650073006100180046000000FEFF0B04001E0000006300
      6F0064005F0063006F006E00730075006C00740061005F006700720005001E00
      000063006F0064005F0063006F006E00730075006C00740061005F0067007200
      0C00260000000E0014001500140000000F000116000110000117000111000112
      000113001E00000063006F0064005F0063006F006E00730075006C0074006100
      5F0067007200180014000000FEFF0B040020000000690064005F007200650070
      0072006500730065006E00740061006E0074006500050020000000690064005F
      0072006500700072006500730065006E00740061006E00740065000C00270000
      000E000D000F00011600011E00011000011F00FFFFFFFF2000FFFFFFFF170001
      210001120001220001130020000000690064005F007200650070007200650073
      0065006E00740061006E0074006500FEFF0B0400220000006E006F006D005F00
      72006500700072006500730065006E00740061006E0074006500050022000000
      6E006F006D005F0072006500700072006500730065006E00740061006E007400
      65000C00280000000E0014001500470000000F00011600011000011700011100
      011200011300220000006E006F006D005F007200650070007200650073006500
      6E00740061006E0074006500180047000000FEFF0B0400220000006300700066
      005F0072006500700072006500730065006E00740061006E0074006500050022
      0000006300700066005F0072006500700072006500730065006E00740061006E
      00740065000C00290000000E0014001500140000000F00011600011000011700
      011100011200011300220000006300700066005F007200650070007200650073
      0065006E00740061006E0074006500180014000000FEFF0B0400160000006300
      6F0064005F00760065006900630075006C006F0005001600000063006F006400
      5F00760065006900630075006C006F000C002A0000000E000D000F0001160001
      10000117000111000112000113001600000063006F0064005F00760065006900
      630075006C006F00FEFF0B0400120000006400650073005F006D006100720063
      0061000500120000006400650073005F006D0061007200630061000C002B0000
      000E0014001500320000000F0001160001100001170001110001120001130012
      0000006400650073005F006D006100720063006100180032000000FEFF0B0400
      140000006400650073005F006D006F00640065006C006F000500140000006400
      650073005F006D006F00640065006C006F000C002C0000000E00140015003200
      00000F0001160001100001170001110001120001130014000000640065007300
      5F006D006F00640065006C006F00180032000000FEFF0B040012000000640065
      0073005F0070006C006100630061000500120000006400650073005F0070006C
      006100630061000C002D0000000E0014001500070000000F0001160001100001
      1700011100011200011300120000006400650073005F0070006C006100630061
      00180007000000FEFF0B0400200000006400650073005F007400690070006F00
      5F00760065006900630075006C006F000500200000006400650073005F007400
      690070006F005F00760065006900630075006C006F000C002E0000000E001400
      1500140000000F00011600011000011700011100011200011300200000006400
      650073005F007400690070006F005F00760065006900630075006C006F001800
      14000000FEFF0B0400160000006E0075006D005F006300680061007300730069
      0073000500160000006E0075006D005F0063006800610073007300690073000C
      002F0000000E0014001500320000000F00011600011000011700011100011200
      011300160000006E0075006D005F006300680061007300730069007300180032
      000000FEFF0B04000E0000006400650073005F0061006E006F0005000E000000
      6400650073005F0061006E006F000C00300000000E0014001500040000000F00
      0116000110000117000111000112000113000E0000006400650073005F006100
      6E006F00180004000000FEFF0B04000E0000006400650073005F0063006F0072
      0005000E0000006400650073005F0063006F0072000C00310000000E00140015
      00140000000F000116000110000117000111000112000113000E000000640065
      0073005F0063006F007200180014000000FEFF0B0400160000006E0075006D00
      5F00720065006E006100760061006E000500160000006E0075006D005F007200
      65006E006100760061006E000C00320000000E0014001500190000000F000116
      00011000011700011100011200011300160000006E0075006D005F0072006500
      6E006100760061006E00180019000000FEFF0B04002400000061006E006F005F
      00650078006500720076006900630069006F005F0063006C0072007600050024
      00000061006E006F005F00650078006500720076006900630069006F005F0063
      006C00720076000C00330000000E0014001500040000000F0001160001100001
      17000111000112000113002400000061006E006F005F00650078006500720076
      006900630069006F005F0063006C0072007600180004000000FEFEFF23FEFF24
      FEFF25FEFEFEFF26FEFF272800A7070000FF29FEFEFE0E004D0061006E006100
      6700650072001E00550070006400610074006500730052006500670069007300
      74007200790012005400610062006C0065004C006900730074000A0054006100
      62006C00650008004E0061006D006500140053006F0075007200630065004E00
      61006D0065000A0054006100620049004400240045006E0066006F0072006300
      650043006F006E00730074007200610069006E00740073001E004D0069006E00
      69006D0075006D00430061007000610063006900740079001800430068006500
      63006B004E006F0074004E0075006C006C00140043006F006C0075006D006E00
      4C006900730074000C0043006F006C0075006D006E00100053006F0075007200
      63006500490044000E006400740049006E007400330032001000440061007400
      610054007900700065001400530065006100720063006800610062006C006500
      0800420061007300650012004F0049006E005500700064006100740065001000
      4F0049006E00570068006500720065001A004F0072006900670069006E004300
      6F006C004E0061006D00650018006400740041006E0073006900530074007200
      69006E0067000800530069007A006500120041006C006C006F0077004E007500
      6C006C0014004F0041006C006C006F0077004E0075006C006C00140053006F00
      7500720063006500530069007A00650014006400740044006100740065005400
      69006D0065001000460069007800650064004C0065006E000C00640074004400
      6100740065000C00640074004D0065006D006F00100042006C006F0062004400
      6100740061000E004100750074006F0049006E00630022004100750074006F00
      49006E006300720065006D0065006E0074005300650065006400220041007500
      74006F0049006E006300720065006D0065006E00740053007400650070001200
      4F0052006500610064004F006E006C00790020004F0041006600740065007200
      49006E0073004300680061006E006700650064001C0043006F006E0073007400
      7200610069006E0074004C00690073007400100056006900650077004C006900
      730074000E0052006F0077004C006900730074001800520065006C0061007400
      69006F006E004C006900730074001C0055007000640061007400650073004A00
      6F00750072006E0061006C001200530061007600650050006F0069006E007400
      0E004300680061006E00670065007300}
    object mtbCadastroid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object mtbCadastrocod_erp_contratados: TStringField
      FieldName = 'cod_erp_contratados'
      Size = 50
    end
    object mtbCadastroid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Required = True
    end
    object mtbCadastrodes_categoria: TStringField
      FieldName = 'des_categoria'
      Size = 255
    end
    object mtbCadastrocod_pessoa: TIntegerField
      FieldName = 'cod_pessoa'
      Required = True
    end
    object mtbCadastrodes_tipo_doc: TStringField
      FieldName = 'des_tipo_doc'
      Size = 4
    end
    object mtbCadastronom_razao_social: TStringField
      FieldName = 'nom_razao_social'
      Size = 70
    end
    object mtbCadastronom_fantasia_alias: TStringField
      FieldName = 'nom_fantasia_alias'
      Size = 70
    end
    object mtbCadastronum_cpf_cnpj: TStringField
      FieldName = 'num_cpf_cnpj'
    end
    object mtbCadastronum_rg_ie: TStringField
      FieldName = 'num_rg_ie'
    end
    object mtbCadastronum_im: TStringField
      FieldName = 'num_im'
      Size = 30
    end
    object mtbCadastrodat_emissao_rg: TDateTimeField
      FieldName = 'dat_emissao_rg'
    end
    object mtbCadastronom_emissor_rg: TStringField
      FieldName = 'nom_emissor_rg'
    end
    object mtbCadastrouf_emissor_rg: TStringField
      FieldName = 'uf_emissor_rg'
      FixedChar = True
      Size = 2
    end
    object mtbCadastrodat_nascimento: TDateField
      FieldName = 'dat_nascimento'
    end
    object mtbCadastrodes_nacionalidade: TStringField
      FieldName = 'des_nacionalidade'
      Size = 70
    end
    object mtbCadastrodes_naturalidade: TStringField
      FieldName = 'des_naturalidade'
      Size = 70
    end
    object mtbCadastrouf_naturalidade: TStringField
      FieldName = 'uf_naturalidade'
      FixedChar = True
      Size = 2
    end
    object mtbCadastronom_pai: TStringField
      FieldName = 'nom_pai'
      Size = 70
    end
    object mtbCadastronom_mae: TStringField
      FieldName = 'nom_mae'
      Size = 70
    end
    object mtbCadastrocod_crt: TIntegerField
      FieldName = 'cod_crt'
    end
    object mtbCadastronum_cnh: TStringField
      FieldName = 'num_cnh'
      Size = 15
    end
    object mtbCadastronum_registro_cnh: TStringField
      FieldName = 'num_registro_cnh'
      Size = 15
    end
    object mtbCadastrodes_categoria_cnh: TStringField
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object mtbCadastrodat_validade_cnh: TDateField
      FieldName = 'dat_validade_cnh'
    end
    object mtbCadastrodat_emissao_cnh: TDateField
      FieldName = 'dat_emissao_cnh'
    end
    object mtbCadastrouf_cnh: TStringField
      FieldName = 'uf_cnh'
      FixedChar = True
      Size = 2
    end
    object mtbCadastrodat_primeira_cnh: TDateField
      FieldName = 'dat_primeira_cnh'
    end
    object mtbCadastrocod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object mtbCadastrodat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
    end
    object mtbCadastrodes_obs: TMemoField
      FieldName = 'des_obs'
      BlobType = ftMemo
    end
    object mtbCadastronom_base: TStringField
      FieldName = 'nom_base'
      Size = 70
    end
    object mtbCadastrodes_funcao: TStringField
      FieldName = 'des_funcao'
      Size = 132
    end
    object mtbCadastroid_gr: TIntegerField
      FieldName = 'id_gr'
    end
    object mtbCadastrodat_consulta_gr: TDateField
      FieldName = 'dat_consulta_gr'
    end
    object mtbCadastrodat_validade_gr: TDateField
      FieldName = 'dat_validade_gr'
    end
    object mtbCadastronom_empresa: TStringField
      FieldName = 'nom_empresa'
      Size = 70
    end
    object mtbCadastrocod_consulta_gr: TStringField
      FieldName = 'cod_consulta_gr'
    end
    object mtbCadastroid_representante: TFDAutoIncField
      FieldName = 'id_representante'
      ReadOnly = True
    end
    object mtbCadastronom_representante: TStringField
      FieldName = 'nom_representante'
      Size = 71
    end
    object mtbCadastrocpf_representante: TStringField
      FieldName = 'cpf_representante'
    end
    object mtbCadastrocod_veiculo: TIntegerField
      FieldName = 'cod_veiculo'
    end
    object mtbCadastrodes_marca: TStringField
      FieldName = 'des_marca'
      Size = 50
    end
    object mtbCadastrodes_modelo: TStringField
      FieldName = 'des_modelo'
      Size = 50
    end
    object mtbCadastrodes_placa: TStringField
      FieldName = 'des_placa'
      Size = 7
    end
    object mtbCadastrodes_tipo_veiculo: TStringField
      FieldName = 'des_tipo_veiculo'
    end
    object mtbCadastronum_chassis: TStringField
      FieldName = 'num_chassis'
      Size = 50
    end
    object mtbCadastrodes_ano: TStringField
      FieldName = 'des_ano'
      Size = 4
    end
    object mtbCadastrodes_cor: TStringField
      FieldName = 'des_cor'
    end
    object mtbCadastronum_renavan: TStringField
      FieldName = 'num_renavan'
      Size = 25
    end
    object mtbCadastroano_exervicio_clrv: TStringField
      FieldName = 'ano_exervicio_clrv'
      Size = 4
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = mtbCadastro
    Left = 296
  end
  object mtbCategorias: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 344
    object mtbCategoriasid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object mtbCategoriasdes_categoria: TStringField
      FieldName = 'des_categoria'
      Size = 255
    end
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = mtbCategorias
    Left = 384
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = memTableEstados
    Left = 472
    Top = 65534
  end
  object memTableEstados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 432
    Top = 65534
    object memTableEstadosuf_estado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_estado'
      Size = 2
    end
    object memTableEstadosnom_estado: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_estado'
      Size = 72
    end
  end
  object memTableFuncoes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 738
    Top = 65534
    object memTableFuncoesid_funcao: TIntegerField
      FieldName = 'id_funcao'
    end
    object memTableFuncoesdes_funcao: TStringField
      FieldName = 'des_funcao'
      Size = 132
    end
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = memTableFuncoes
    Left = 778
    Top = 65534
  end
  object mtbRH: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 520
    object mtbRHid_rh: TIntegerField
      FieldName = 'id_rh'
    end
    object mtbRHid_contratados: TIntegerField
      FieldName = 'id_contratados'
    end
    object mtbRHdat_admissao: TDateField
      FieldName = 'dat_admissao'
    end
    object mtbRHdat_demissao: TDateField
      FieldName = 'dat_demissao'
    end
    object mtbRHval_salario: TFloatField
      FieldName = 'val_salario'
    end
    object mtbRHid_departamento: TIntegerField
      FieldName = 'id_departamento'
    end
    object mtbRHid_funcao: TIntegerField
      FieldName = 'id_funcao'
    end
  end
  object daRH: TDataSource
    AutoEdit = False
    DataSet = mtbRH
    Left = 560
  end
  object memTableBases: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 626
    Top = 65534
    object memTableBasescod_agente: TIntegerField
      FieldName = 'cod_agente'
    end
    object memTableBasesnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 80
    end
  end
  object dsBases: TDataSource
    AutoEdit = False
    DataSet = memTableBases
    Left = 690
    Top = 65534
  end
  object mtbGR: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 512
    Top = 56
    object mtbGRid_gr: TIntegerField
      FieldName = 'id_gr'
    end
    object mtbGRid_contratados: TIntegerField
      FieldName = 'id_contratados'
    end
    object mtbGRdat_consulta: TDateField
      FieldName = 'dat_consulta'
    end
    object mtbGRdat_validade: TDateField
      FieldName = 'dat_validade'
    end
    object mtbGRnom_empresa: TStringField
      FieldName = 'nom_empresa'
      Size = 70
    end
    object mtbGRcod_consulta: TStringField
      FieldName = 'cod_consulta'
    end
    object mtbGRcod_seguranca_cnh: TStringField
      FieldName = 'cod_seguranca_cnh'
      Size = 30
    end
  end
  object dataGR: TDataSource
    AutoEdit = False
    DataSet = mtbGR
    Left = 552
    Top = 56
  end
  object memTableCNAE: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 616
    Top = 56
    object memTableCNAEid_cnae: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_cnae'
    end
    object memTableCNAEid_contratados: TIntegerField
      DisplayLabel = 'Contratado'
      FieldName = 'id_contratados'
    end
    object memTableCNAEdes_tipo_cnae: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'des_tipo_cnae'
    end
    object memTableCNAEcod_cnae: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cnae'
    end
    object memTableCNAEdes_cnae: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_cnae'
      Size = 132
    end
  end
  object dsCNAE: TDataSource
    AutoEdit = False
    DataSet = memTableCNAE
    Left = 664
    Top = 56
  end
  object memTableVeiculos: TFDMemTable
    FieldDefs = <
      item
        Name = 'COD_VEICULO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DES_TIPO_DOC'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUM_CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOM_PROPRIETARIO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DAT_NASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'NOM_MAE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NOM_PAI'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUM_RG'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'UF_RG'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DAT_EMISSAO_RG'
        DataType = ftDate
      end
      item
        Name = 'UF_ENDERECO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NOM_CIDADE'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_ENDERECO'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'NUM_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DES_BAIRRO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NUM_TELEFONE_1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DES_TELEFONE_1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUM_TELEFONE_2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DES_TELEFONE_2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COD_ENTREGADOR'
        DataType = ftInteger
      end
      item
        Name = 'DES_MARCA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DES_MODELO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DES_PLACA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'UF_PLACA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NOM_CIDADE_PLACA'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_TIPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_CHASSIS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DES_ANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DES_COR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_RENAVAN'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ANO_EXERCICIO_CLRV'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DOM_RASTREAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOM_ABASTECIMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOM_EXECUTOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DAT_MANUTENCAO'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 424
    Top = 56
    object memTableVeiculosCOD_VEICULO: TIntegerField
      FieldName = 'COD_VEICULO'
      Required = True
    end
    object memTableVeiculosDES_TIPO_DOC: TStringField
      FieldName = 'DES_TIPO_DOC'
      Size = 4
    end
    object memTableVeiculosNUM_CNPJ: TStringField
      FieldName = 'NUM_CNPJ'
    end
    object memTableVeiculosNOM_PROPRIETARIO: TStringField
      FieldName = 'NOM_PROPRIETARIO'
      Size = 70
    end
    object memTableVeiculosDAT_NASCIMENTO: TDateField
      FieldName = 'DAT_NASCIMENTO'
    end
    object memTableVeiculosNOM_MAE: TStringField
      FieldName = 'NOM_MAE'
      Size = 80
    end
    object memTableVeiculosNOM_PAI: TStringField
      FieldName = 'NOM_PAI'
      Size = 80
    end
    object memTableVeiculosNUM_RG: TStringField
      FieldName = 'NUM_RG'
      Size = 25
    end
    object memTableVeiculosUF_RG: TStringField
      FieldName = 'UF_RG'
      Size = 2
    end
    object memTableVeiculosDAT_EMISSAO_RG: TDateField
      FieldName = 'DAT_EMISSAO_RG'
    end
    object memTableVeiculosUF_ENDERECO: TStringField
      FieldName = 'UF_ENDERECO'
      Size = 2
    end
    object memTableVeiculosNOM_CIDADE: TStringField
      FieldName = 'NOM_CIDADE'
      Size = 70
    end
    object memTableVeiculosDES_ENDERECO: TStringField
      FieldName = 'DES_ENDERECO'
      Size = 85
    end
    object memTableVeiculosNUM_CEP: TStringField
      FieldName = 'NUM_CEP'
      Size = 9
    end
    object memTableVeiculosDES_BAIRRO: TStringField
      FieldName = 'DES_BAIRRO'
      Size = 70
    end
    object memTableVeiculosNUM_TELEFONE_1: TStringField
      FieldName = 'NUM_TELEFONE_1'
      Size = 15
    end
    object memTableVeiculosDES_TELEFONE_1: TStringField
      FieldName = 'DES_TELEFONE_1'
      Size = 40
    end
    object memTableVeiculosNUM_TELEFONE_2: TStringField
      FieldName = 'NUM_TELEFONE_2'
      Size = 15
    end
    object memTableVeiculosDES_TELEFONE_2: TStringField
      FieldName = 'DES_TELEFONE_2'
      Size = 40
    end
    object memTableVeiculosCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
    end
    object memTableVeiculosDES_MARCA: TStringField
      FieldName = 'DES_MARCA'
      Size = 50
    end
    object memTableVeiculosDES_MODELO: TStringField
      FieldName = 'DES_MODELO'
      Size = 50
    end
    object memTableVeiculosDES_PLACA: TStringField
      FieldName = 'DES_PLACA'
      Required = True
      Size = 7
    end
    object memTableVeiculosUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object memTableVeiculosNOM_CIDADE_PLACA: TStringField
      FieldName = 'NOM_CIDADE_PLACA'
      Size = 70
    end
    object memTableVeiculosDES_TIPO: TStringField
      FieldName = 'DES_TIPO'
    end
    object memTableVeiculosNUM_CHASSIS: TStringField
      FieldName = 'NUM_CHASSIS'
      Size = 50
    end
    object memTableVeiculosDES_ANO: TStringField
      FieldName = 'DES_ANO'
      Size = 4
    end
    object memTableVeiculosDES_COR: TStringField
      FieldName = 'DES_COR'
    end
    object memTableVeiculosNUM_RENAVAN: TStringField
      FieldName = 'NUM_RENAVAN'
      Size = 25
    end
    object memTableVeiculosANO_EXERCICIO_CLRV: TStringField
      FieldName = 'ANO_EXERCICIO_CLRV'
      Size = 4
    end
    object memTableVeiculosDOM_RASTREAMENTO: TStringField
      FieldName = 'DOM_RASTREAMENTO'
      Size = 1
    end
    object memTableVeiculosDOM_ABASTECIMENTO: TStringField
      FieldName = 'DOM_ABASTECIMENTO'
      Size = 1
    end
    object memTableVeiculosNOM_EXECUTOR: TStringField
      FieldName = 'NOM_EXECUTOR'
    end
    object memTableVeiculosDAT_MANUTENCAO: TDateTimeField
      FieldName = 'DAT_MANUTENCAO'
    end
  end
  object dsVeiculos: TDataSource
    AutoEdit = False
    DataSet = memTableVeiculos
    Left = 472
    Top = 56
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = memTableEnderecos
    Left = 304
    Top = 57
  end
  object memTableEnderecos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_endereco'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'des_logradouro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_logradouro'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'des_complemento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_bairro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_cidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'uf_estado'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'des_referencia'
        DataType = ftString
        Size = 132
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 256
    Top = 56
    Content = {
      414442530F00DD4EE9050000FF00010001FF02FF030400220000006D0065006D
      005400610062006C00650045006E00640065007200650063006F00730005000A
      0000005400610062006C006500060000000000070000080032000000090000FF
      0AFF0B040016000000690064005F0065006E00640065007200650063006F0005
      0016000000690064005F0065006E00640065007200650063006F000C00010000
      000E000D000F0001100001110001120001130016000000690064005F0065006E
      00640065007200650063006F00FEFF0B04001C000000690064005F0063006F00
      6E007400720061007400610064006F00730005001C000000690064005F006300
      6F006E007400720061007400610064006F0073000C00020000000E000D000F00
      0110000111000112000113001C000000690064005F0063006F006E0074007200
      61007400610064006F007300FEFF0B0400100000006400650073005F00740069
      0070006F000500100000006400650073005F007400690070006F000C00030000
      000E0014001500140000000F0001160001100001170001110001120001130010
      0000006400650073005F007400690070006F00180014000000FEFF0B04000E00
      00006E0075006D005F0063006500700005000E0000006E0075006D005F006300
      650070000C00040000000E0014001500090000000F0001160001100001170001
      11000112000113000E0000006E0075006D005F00630065007000180009000000
      FEFF0B04001C0000006400650073005F006C006F0067007200610064006F0075
      0072006F0005001C0000006400650073005F006C006F0067007200610064006F
      00750072006F000C00050000000E0014001500460000000F0001160001100001
      17000111000112000113001C0000006400650073005F006C006F006700720061
      0064006F00750072006F00180046000000FEFF0B04001C0000006E0075006D00
      5F006C006F0067007200610064006F00750072006F0005001C0000006E007500
      6D005F006C006F0067007200610064006F00750072006F000C00060000000E00
      140015000B0000000F000116000110000117000111000112000113001C000000
      6E0075006D005F006C006F0067007200610064006F00750072006F0018000B00
      0000FEFF0B04001E0000006400650073005F0063006F006D0070006C0065006D
      0065006E0074006F0005001E0000006400650073005F0063006F006D0070006C
      0065006D0065006E0074006F000C00070000000E0014001500320000000F0001
      16000110000117000111000112000113001E0000006400650073005F0063006F
      006D0070006C0065006D0065006E0074006F00180032000000FEFF0B04001400
      00006400650073005F00620061006900720072006F0005001400000064006500
      73005F00620061006900720072006F000C00080000000E001400150046000000
      0F00011600011000011700011100011200011300140000006400650073005F00
      620061006900720072006F00180046000000FEFF0B0400140000006E006F006D
      005F006300690064006100640065000500140000006E006F006D005F00630069
      0064006100640065000C00090000000E0014001500460000000F000116000110
      00011700011100011200011300140000006E006F006D005F0063006900640061
      0064006500180046000000FEFF0B040012000000750066005F00650073007400
      610064006F00050012000000750066005F00650073007400610064006F000C00
      0A0000000E0014001500020000000F0001160001190001100001170001110001
      120001130012000000750066005F00650073007400610064006F001800020000
      00FEFF0B04001C0000006400650073005F007200650066006500720065006E00
      63006900610005001C0000006400650073005F00720065006600650072006500
      6E006300690061000C000B0000000E0014001500840000000F00011600011000
      0117000111000112000113001C0000006400650073005F007200650066006500
      720065006E00630069006100180084000000FEFEFF1AFEFF1BFEFF1CFEFEFEFF
      1DFEFF1EFF1FFEFEFE0E004D0061006E0061006700650072001E005500700064
      0061007400650073005200650067006900730074007200790012005400610062
      006C0065004C006900730074000A005400610062006C00650008004E0061006D
      006500140053006F0075007200630065004E0061006D0065000A005400610062
      0049004400240045006E0066006F0072006300650043006F006E007300740072
      00610069006E00740073001E004D0069006E0069006D0075006D004300610070
      0061006300690074007900180043006800650063006B004E006F0074004E0075
      006C006C00140043006F006C0075006D006E004C006900730074000C0043006F
      006C0075006D006E00100053006F007500720063006500490044000E00640074
      0049006E00740033003200100044006100740061005400790070006500140053
      0065006100720063006800610062006C0065000800420061007300650012004F
      0049006E0055007000640061007400650010004F0049006E0057006800650072
      0065001A004F0072006900670069006E0043006F006C004E0061006D00650018
      006400740041006E007300690053007400720069006E0067000800530069007A
      006500120041006C006C006F0077004E0075006C006C0014004F0041006C006C
      006F0077004E0075006C006C00140053006F007500720063006500530069007A
      0065001000460069007800650064004C0065006E001C0043006F006E00730074
      007200610069006E0074004C00690073007400100056006900650077004C0069
      00730074000E0052006F0077004C006900730074001800520065006C00610074
      0069006F006E004C006900730074001C0055007000640061007400650073004A
      006F00750072006E0061006C000E004300680061006E00670065007300}
    object memTableEnderecos_id_endereco: TIntegerField
      FieldName = 'id_endereco'
      Required = True
    end
    object memTableEnderecos_id_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableEnderecos_des_tipo: TStringField
      FieldName = 'des_tipo'
    end
    object memTableEnderecosnum_cep: TStringField
      FieldName = 'num_cep'
      Size = 9
    end
    object memTableEnderecosdes_logradouro: TStringField
      FieldName = 'des_logradouro'
      Size = 70
    end
    object memTableEnderecosnum_logradouro: TStringField
      FieldName = 'num_logradouro'
      Size = 11
    end
    object memTableEnderecosdes_complemento: TStringField
      FieldName = 'des_complemento'
      Size = 50
    end
    object memTableEnderecos_des_bairro: TStringField
      FieldName = 'des_bairro'
      Size = 70
    end
    object memTableEnderecosnom_cidade: TStringField
      FieldName = 'nom_cidade'
      Size = 70
    end
    object memTableEnderecosuf_estado: TStringField
      FieldName = 'uf_estado'
      FixedChar = True
      Size = 2
    end
    object memTableEnderecosdes_referencia: TStringField
      FieldName = 'des_referencia'
      Size = 132
    end
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = memTableContatos
    Left = 376
    Top = 56
  end
  object memTableContatos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 344
    Top = 56
    object memTableContatosseq_contato: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'seq_contato'
    end
    object memTableContatosid_contratados: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'id_contratados'
    end
    object memTableContatosdes_contato: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_contato'
      Size = 30
    end
    object memTableContatosnum_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'num_telefone'
      Size = 15
    end
    object memTableContatosdes_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'des_email'
      Size = 150
    end
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = memTableBancos
    Left = 848
    Top = 65534
  end
  object memTableBancos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 816
    Top = 65534
    object memTableBancoscod_banco: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_banco'
      Size = 4
    end
    object memTableBancosnom_banco: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_banco'
      Size = 50
    end
  end
  object mtbFinanceiro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 832
    Top = 152
    object mtbFinanceiroid_financeiro: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_financeiro'
    end
    object mtbFinanceiroid_contratados: TIntegerField
      DisplayLabel = 'ID Contratado'
      FieldName = 'id_contratados'
    end
    object mtbFinanceirocod_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cod_banco'
      Size = 4
    end
    object mtbFinanceirocod_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cod_agencia'
      Size = 10
    end
    object mtbFinanceironum_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'num_conta'
    end
    object mtbFinanceirochave_pix: TStringField
      DisplayLabel = 'Chave PIX'
      FieldName = 'chave_pix'
      Size = 125
    end
    object mtbFinanceirodes_forma_pagamento: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'des_forma_pagamento'
    end
  end
  object dsFinanceiro: TDataSource
    AutoEdit = False
    DataSet = mtbFinanceiro
    Left = 864
    Top = 152
  end
  object mtbRepresentantes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 832
    Top = 208
    object mtbRepresentantesid_representante: TIntegerField
      FieldName = 'id_representante'
    end
    object mtbRepresentantesid_contratados: TIntegerField
      FieldName = 'id_contratados'
    end
    object mtbRepresentantesnom_representante: TStringField
      FieldName = 'nom_representante'
      Size = 71
    end
    object mtbRepresentantescpf_representante: TStringField
      FieldName = 'cpf_representante'
    end
  end
  object saRepresentante: TDataSource
    AutoEdit = False
    DataSet = mtbRepresentantes
    Left = 872
    Top = 208
  end
end
