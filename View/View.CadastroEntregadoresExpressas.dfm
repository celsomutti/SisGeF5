object view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entregadores de Expressas'
  ClientHeight = 500
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 54
    Width = 752
    Height = 446
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    ExplicitTop = 0
    ExplicitWidth = 762
    ExplicitHeight = 510
    object maskEditID: TcxMaskEdit
      Left = 26
      Top = 54
      Hint = 'Id do cadastro do entregador'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Text = '0'
      Width = 60
    end
    object maskEditCodigo: TcxMaskEdit
      Left = 93
      Top = 54
      Hint = 'C'#243'digo do entregador'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = '0'
      Width = 72
    end
    object textEditNomeEntregador: TcxTextEdit
      Left = 172
      Top = 54
      Hint = 'Nome do entregador (Apelido)'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 203
    end
    object textEditNomePessoa: TcxTextEdit
      Left = 475
      Top = 54
      Hint = 'Nome da pessoa'
      TabStop = False
      Properties.MaxLength = 70
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 251
    end
    object buttonEditCodigoPessoa: TcxButtonEdit
      Left = 382
      Top = 54
      Hint = 'C'#243'digo de cadastro da pessoa'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Text = '0'
      Width = 86
    end
    object buttonEditCodigoBase: TcxButtonEdit
      Left = 26
      Top = 105
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Text = '0'
      Width = 82
    end
    object textEditNomeBase: TcxTextEdit
      Left = 115
      Top = 105
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 172
    end
    object textEditCodigoERP: TcxTextEdit
      Left = 294
      Top = 105
      Hint = 'C'#243'sigo ERP'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 116
    end
    object checkBoxAtivo: TcxCheckBox
      Left = 479
      Top = 107
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object lookupComboBoxCliente: TcxLookupComboBox
      Left = 506
      Top = 105
      Hint = 'Cliente ao qual o entregador est'#225' vinculado'
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 220
    end
    object buttonEditCodigoTabela: TcxButtonEdit
      Left = 26
      Top = 191
      Hint = 'C'#243'digo da tabela de verbas'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Text = '0'
      Width = 83
    end
    object textEditDescricaoTabela: TcxTextEdit
      Left = 116
      Top = 191
      Hint = 'Descri'#231#227'o da tabela de verbas'
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 300
    end
    object comboBoxFaixa: TcxComboBox
      Left = 423
      Top = 191
      Hint = 'Faixa da tabela selecionada'
      Properties.Alignment.Horz = taRightJustify
      Properties.DropDownListStyle = lsEditFixedList
      Properties.IgnoreMaskBlank = True
      Properties.Items.Strings = (
        '0'
        '1'#9
        '2'#9
        '3'#9
        '4'#9
        '5'#9
        '6'#9
        '7'#9
        '8'#9
        '9'#9
        '10'#9
        '11'#9
        '12'#9
        '13'#9
        '14'#9
        '15'#9
        '16'#9
        '17'#9
        '18'#9
        '19'#9
        '20'#9
        '21'#9
        '22'#9
        '23'#9
        '24'#9
        '25'#9
        '26'#9
        '27'#9
        '28'#9
        '29'#9
        '30'#9
        '31'#9
        '32'#9
        '33'#9
        '34'#9
        '35'#9
        '36'#9
        '37'#9
        '38'#9
        '39'#9
        '40'#9
        '41'#9
        '42'#9
        '43'#9
        '44'#9
        '45'#9
        '46'#9
        '47'#9
        '48'#9
        '49'#9
        '50'#9
        '51'#9
        '52'#9
        '53'#9
        '54'#9
        '55'#9
        '56'#9
        '57'#9
        '58'#9
        '59'#9
        '60'#9
        '61'#9
        '62'#9
        '63'#9
        '64'#9
        '65'#9
        '66'#9
        '67'#9
        '68'#9
        '69'#9
        '70'#9
        '71'#9
        '72'#9
        '73'#9
        '74'#9
        '75'#9
        '76'#9
        '77'#9
        '78'#9
        '79'#9
        '80'#9
        '81'#9
        '82'#9
        '83'#9
        '84'#9
        '85'#9
        '86'#9
        '87'#9
        '88'#9
        '89'#9
        '90'#9
        '91'#9
        '92'#9
        '93'#9
        '94'#9
        '95'#9
        '96'#9
        '97'#9
        '98'#9
        '99'#9
        '100')
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Text = '0'
      Width = 51
    end
    object currencyEditVerbaFixa: TcxCurrencyEdit
      Left = 481
      Top = 191
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 80
    end
    object dateEditVigencia: TcxDateEdit
      Left = 80
      Top = 397
      Hint = 'Data do in'#237'cio da ving'#234'ncia do cadastro'
      TabStop = False
      Properties.Alignment.Horz = taCenter
      Properties.ReadOnly = True
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 85
    end
    object textEditNomeManutencao: TcxTextEdit
      Left = 333
      Top = 397
      Hint = 'Nome do '#250'ltimo usu'#225'rio  a realizar a manuten'#231#227'o no cadastro'
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 156
    end
    object dateEditDataManutencao: TcxDateEdit
      Left = 522
      Top = 397
      Hint = 'Data da '#250'ltima manuten'#231#227'o do cadastro'
      TabStop = False
      Properties.ReadOnly = True
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 151
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object layoutItemID: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '#Id:'
      CaptionOptions.Layout = clTop
      Control = maskEditID
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemCodigo: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo:'
      CaptionOptions.Layout = clTop
      Control = maskEditCodigo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemNomeEntregador: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome:'
      CaptionOptions.Layout = clTop
      Control = textEditNomeEntregador
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemNomePessoa: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome da Pessoa:'
      CaptionOptions.Layout = clTop
      Control = textEditNomePessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutItemCodigoPessoa: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'd. Pessoa:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoPessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemCodigoBase: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'd. Base:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoBase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemNomeBase: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Hint = 'Nome da base'
      CaptionOptions.Text = 'Nome Base:'
      CaptionOptions.Layout = clTop
      Control = textEditNomeBase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 179
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemCodigoERP: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo ERP:'
      CaptionOptions.Layout = clTop
      Control = textEditCodigoERP
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemAtivo: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'App Ativo:'
      Control = checkBoxAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemClientes: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cliente:'
      CaptionOptions.Layout = clTop
      Control = lookupComboBoxCliente
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 229
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      CaptionOptions.Text = 'Identifica'#231#227'o'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      CaptionOptions.Text = 'Remunera'#231#227'o'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object layoutItemCodigoTabela: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'd. Tabela:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoTabela
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemDescricaoTabela: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Descri'#231#227'o da Tabela de Verbas:'
      CaptionOptions.Layout = clTop
      Control = textEditDescricaoTabela
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemFaixa: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Faixa:'
      CaptionOptions.Layout = clTop
      Control = comboBoxFaixa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemVerbaFixa: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Verba Fixa:'
      CaptionOptions.Layout = clTop
      Control = currencyEditVerbaFixa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Info'
      Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object layoutItemDataVigencia: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Vig'#234'ncia:'
      Control = dateEditVigencia
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemNomeManutencao: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = #218'ltima manuten'#231#227'o feita por:'
      Control = textEditNomeManutencao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemDataManutencao: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'em '
      Control = dateEditDataManutencao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object fdEntregadores: TFDQuery
    AfterClose = fdEntregadoresAfterClose
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select '
      '  ID_ENTREGADOR, COD_CADASTRO, COD_ENTREGADOR,   '
      '  NOM_FANTASIA, COD_AGENTE, DAT_CODIGO, DES_CHAVE, '
      '  COD_GRUPO, VAL_VERBA, NOM_EXECUTANTE, DOM_ATIVO,  '
      '  DAT_MANUTENCAO, COD_TABELA, COD_CLIENTE '
      'from '
      '  tbcodigosentregadores')
    Left = 648
    Top = 192
    object fdEntregadoresID_ENTREGADOR: TFDAutoIncField
      FieldName = 'ID_ENTREGADOR'
      Origin = 'id_entregador'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdEntregadoresCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
      Origin = 'COD_CADASTRO'
      Required = True
    end
    object fdEntregadoresCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
      Origin = 'COD_ENTREGADOR'
      Required = True
    end
    object fdEntregadoresNOM_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_FANTASIA'
      Origin = 'NOM_FANTASIA'
      Size = 70
    end
    object fdEntregadoresCOD_AGENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_AGENTE'
      Origin = 'COD_AGENTE'
    end
    object fdEntregadoresDAT_CODIGO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DAT_CODIGO'
      Origin = 'DAT_CODIGO'
    end
    object fdEntregadoresDES_CHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_CHAVE'
      Origin = 'DES_CHAVE'
      Size = 70
    end
    object fdEntregadoresCOD_GRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
    end
    object fdEntregadoresVAL_VERBA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VAL_VERBA'
      Origin = 'VAL_VERBA'
    end
    object fdEntregadoresNOM_EXECUTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_EXECUTANTE'
      Origin = 'NOM_EXECUTANTE'
    end
    object fdEntregadoresDOM_ATIVO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DOM_ATIVO'
      Origin = 'DOM_ATIVO'
    end
    object fdEntregadoresDAT_MANUTENCAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DAT_MANUTENCAO'
      Origin = 'DAT_MANUTENCAO'
    end
    object fdEntregadoresCOD_TABELA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_TABELA'
      Origin = 'COD_TABELA'
    end
    object fdEntregadoresCOD_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = fdEntregadores
    ScopeMappings = <>
    Left = 64
    Top = 248
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 28
    Top = 245
    object LinkPropertyToFieldValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'VAL_VERBA'
      Component = currencyEditVerbaFixa
      ComponentProperty = 'Value'
    end
    object LinkPropertyToFieldEditValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_TABELA'
      Component = buttonEditCodigoTabela
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldItemIndex: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_GRUPO'
      Component = comboBoxFaixa
      ComponentProperty = 'ItemIndex'
    end
    object LinkPropertyToFieldEditValue2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_ENTREGADOR'
      Component = maskEditCodigo
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldDate: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DES_CHAVE'
      Component = dateEditVigencia
      ComponentProperty = 'Date'
    end
    object LinkPropertyToFieldText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOM_EXECUTANTE'
      Component = textEditNomeManutencao
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldText2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'NOM_FANTASIA'
      Component = textEditNomeEntregador
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ID_ENTREGADOR'
      Component = maskEditID
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldEditValue4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_CLIENTE'
      Component = lookupComboBoxCliente
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldEditValue5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_AGENTE'
      Component = buttonEditCodigoBase
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldText3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DES_CHAVE'
      Component = textEditCodigoERP
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue6: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'COD_CADASTRO'
      Component = buttonEditCodigoPessoa
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldEditValue7: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DOM_ATIVO'
      Component = checkBoxAtivo
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldDate2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'DAT_MANUTENCAO'
      Component = dateEditDataManutencao
      ComponentProperty = 'Date'
    end
  end
  object barManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Data_Sisgef.lmi_32_32
    ImageOptions.LargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 584
    Top = 288
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      0)
    object barManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Cadastro'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 780
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Novo'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      AutoGrayScale = False
      LargeImageIndex = 59
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
      AutoGrayScale = False
      LargeImageIndex = 61
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Localizar'
      Category = 0
      Hint = 'Localizar'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
      LargeImageIndex = 66
    end
  end
end
