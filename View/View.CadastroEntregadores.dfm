object view_CadastroEntregadores: Tview_CadastroEntregadores
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entregadores'
  ClientHeight = 434
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 788
    Height = 434
    Align = alClient
    TabOrder = 0
    object labelTitle: TcxLabel
      Left = 11
      Top = 11
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object layoutControlCadastro: TdxLayoutControl
      Left = 11
      Top = 41
      Width = 766
      Height = 327
      TabOrder = 1
      object buttonEditPessoa: TcxButtonEdit
        Left = 367
        Top = 30
        Hint = 'C'#243'digo do cadastro da pessoa'
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 14
            Hint = 'Pesquisar pessoa'
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 2
        Text = '0'
        Width = 74
      end
      object textEditNomePessoa: TcxTextEdit
        Left = 447
        Top = 30
        Hint = 'Nome da pessoa vincudala oo cadastro do entregador'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 3
        Width = 308
      end
      object maskEditCodigo: TcxMaskEdit
        Left = 11
        Top = 30
        Hint = 'C'#243'digo do entregador'
        Properties.Alignment.Horz = taRightJustify
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 0
        Text = '0'
        Width = 76
      end
      object textEditNomeFantasia: TcxTextEdit
        Left = 93
        Top = 30
        Hint = 'Nome fantasia do entregador'
        Properties.CharCase = ecUpperCase
        Style.HotTrack = False
        TabOrder = 1
        Width = 268
      end
      object buttonEditCodigoAgente: TcxButtonEdit
        Left = 11
        Top = 77
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Action = actionLocalizarAgentes
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 4
        Text = '0'
        Width = 76
      end
      object textEditNomeAgente: TcxTextEdit
        Left = 93
        Top = 77
        Hint = 'Nome do agente'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 5
        Width = 315
      end
      object textEditCodigoERP: TcxTextEdit
        Left = 414
        Top = 77
        Hint = 'C'#243'digo ERP'
        Style.HotTrack = False
        TabOrder = 6
        Width = 341
      end
      object currencyEditTicketMedio: TcxCurrencyEdit
        Left = 11
        Top = 124
        Hint = 'Valot do Ticket M'#233'dio (Verba fixa)'
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00;-,0.00'
        Style.HotTrack = False
        TabOrder = 7
        Width = 114
      end
      object lookupComboBoxTabela: TcxLookupComboBox
        Left = 131
        Top = 124
        Hint = 
          'Selecione a tebela verbas de entregas para remunera'#231#227'o a este en' +
          'tregador'
        Properties.KeyFieldNames = 'cod_tipo'
        Properties.ListColumns = <
          item
            FieldName = 'des_tipo'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTipos
        Style.HotTrack = False
        TabOrder = 8
        Width = 344
      end
      object lookupComboBoxFaixa: TcxLookupComboBox
        Left = 481
        Top = 124
        Properties.ListColumns = <>
        Style.HotTrack = False
        TabOrder = 9
        Width = 218
      end
      object checkBoxAtivo: TcxCheckBox
        Left = 705
        Top = 124
        Caption = 'Ativo'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.HotTrack = False
        TabOrder = 10
        Transparent = True
      end
      object layoutControlCadastroGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object layoutItemCodigoCadastro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Pessoa'
        CaptionOptions.Layout = clTop
        Control = buttonEditPessoa
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 70
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemNomePessoa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Nome Pessoa'
        CaptionOptions.Layout = clTop
        Control = textEditNomePessoa
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 290
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object layoutItemCodigo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'C'#243'digo'
        CaptionOptions.Layout = clTop
        Control = maskEditCodigo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomeFantasia: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'Nome Fantasia'
        CaptionOptions.Layout = clTop
        Control = textEditNomeFantasia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 268
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemCodigoAgente: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Agente'
        CaptionOptions.Layout = clTop
        Control = buttonEditCodigoAgente
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomeAgente: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome do Agente'
        CaptionOptions.Layout = clTop
        Control = textEditNomeAgente
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 315
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutItemCodigoERP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo ERP'
        CaptionOptions.Layout = clTop
        Control = textEditCodigoERP
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 341
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemTicketMedio: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ticket M'#233'dio'
        CaptionOptions.Layout = clTop
        Control = currencyEditTicketMedio
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemTabela: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Tabela'
        CaptionOptions.Layout = clTop
        Control = lookupComboBoxTabela
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 228
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object layoutItemFaixa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Faixa'
        CaptionOptions.Layout = clTop
        Control = lookupComboBoxFaixa
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 145
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemCheckBoxAtivo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahRight
        AlignVert = avBottom
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = checkBoxAtivo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
    object layoutControlFooter: TdxLayoutControl
      Left = 11
      Top = 374
      Width = 766
      Height = 49
      TabOrder = 2
      object buttonNovo: TcxButton
        Left = 11
        Top = 12
        Width = 86
        Height = 25
        Cursor = crHandPoint
        Action = actionNovo
        TabOrder = 0
      end
      object buttonLocalizar: TcxButton
        Left = 103
        Top = 12
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionLocalizar
        TabOrder = 1
      end
      object buttonCancelar: TcxButton
        Left = 191
        Top = 12
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionCancelar
        Cancel = True
        TabOrder = 2
      end
      object buttonGravar: TcxButton
        Left = 279
        Top = 12
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionGravar
        TabOrder = 3
      end
      object buttonFechar: TcxButton
        Left = 673
        Top = 12
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionFechar
        TabOrder = 4
      end
      object layoutControlFooterGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object layoutItemButtonNovo: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonNovo
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemButtonLocalizar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonLocalizar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemButtonCancelar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemButtonGravar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonGravar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutItemButtonFechar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahRight
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonFechar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 4
      end
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemLabelTitle: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemCadastro: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = layoutControlCadastro
      ControlOptions.OriginalHeight = 237
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemFooter: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Footer'
      CaptionOptions.Visible = False
      Control = layoutControlFooter
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object memTableEntregadores: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 536
    Top = 8
    object memTableEntregadorescod_cadastro: TIntegerField
      FieldName = 'cod_cadastro'
    end
    object memTableEntregadorescod_entregador: TIntegerField
      FieldName = 'cod_entregador'
    end
    object memTableEntregadoresnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object memTableEntregadorescod_agente: TIntegerField
      FieldName = 'cod_agente'
    end
    object memTableEntregadoresdat_codigo: TDateField
      FieldName = 'dat_codigo'
    end
    object memTableEntregadoresdes_chave: TStringField
      FieldName = 'des_chave'
      Size = 70
    end
    object memTableEntregadorescod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object memTableEntregadoresval_verba: TFloatField
      FieldName = 'val_verba'
    end
    object memTableEntregadoresnom_executante: TStringField
      FieldName = 'nom_executante'
    end
    object memTableEntregadoresdom_ativo: TIntegerField
      FieldName = 'dom_ativo'
    end
    object memTableEntregadoresdat_manutencao: TDateTimeField
      FieldName = 'dat_manutencao'
    end
    object memTableEntregadorescod_tabela: TIntegerField
      FieldName = 'cod_tabela'
    end
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = memTableEntregadores
    Left = 592
    Top = 8
  end
  object mtbTipos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 432
    Top = 8
    object mtbTiposcod_tipo: TIntegerField
      FieldName = 'cod_tipo'
    end
    object mtbTiposdes_tipo: TStringField
      FieldName = 'des_tipo'
      Size = 100
    end
    object mtbTiposdes_colunas: TStringField
      FieldName = 'des_colunas'
      Size = 50
    end
  end
  object dsTipos: TDataSource
    AutoEdit = False
    DataSet = mtbTipos
    Left = 480
    Top = 8
  end
  object memTableFaixas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 672
    Top = 8
    object memTableFaixascod_faixa: TIntegerField
      FieldName = 'cod_faixa'
    end
    object memTableFaixasdes_faixa: TStringField
      FieldName = 'des_faixa'
      Size = 70
    end
  end
  object dsFaixas: TDataSource
    AutoEdit = False
    DataSet = memTableFaixas
    Left = 720
    Top = 8
  end
  object actionListEntregadores: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 376
    Top = 8
    object actionNovo: TAction
      Category = 'Entregadores'
      Caption = 'Novo'
      Hint = 'Novo entregador'
      ImageIndex = 3
      ShortCut = 113
    end
    object actionGravar: TAction
      Category = 'Entregadores'
      Caption = 'Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 13
      ShortCut = 116
    end
    object actionLocalizar: TAction
      Category = 'Entregadores'
      Caption = 'Localizar'
      Hint = 'Localizar entregador'
      ImageIndex = 12
      ShortCut = 119
    end
    object actionCancelar: TAction
      Category = 'Entregadores'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 2
    end
    object actionFechar: TAction
      Category = 'Entregadores'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionLocalizarAgentes: TAction
      Category = 'Entregadores'
      Caption = 'Pesquisar'
      Hint = 'Localizar agentes'
      ImageIndex = 14
      OnExecute = actionLocalizarAgentesExecute
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 236
    Top = 5
    object LinkPropertyToFieldEditValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_grupo'
      Component = lookupComboBoxFaixa
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nom_fantasia'
      Component = textEditNomeFantasia
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldText2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_entregador'
      Component = maskEditCodigo
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldText3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_agente'
      Component = buttonEditCodigoAgente
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'dom_ativo'
      Component = checkBoxAtivo
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'val_verba'
      Component = currencyEditTicketMedio
      ComponentProperty = 'Value'
    end
    object LinkPropertyToFieldText4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'des_chave'
      Component = textEditCodigoERP
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_tabela'
      Component = lookupComboBoxTabela
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldText5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_cadastro'
      Component = buttonEditPessoa
      ComponentProperty = 'Text'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = memTableEntregadores
    ScopeMappings = <>
    Left = 296
    Top = 8
  end
end
