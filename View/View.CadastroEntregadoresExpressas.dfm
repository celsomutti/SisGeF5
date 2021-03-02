object view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entregadores de Expressas'
  ClientHeight = 500
  ClientWidth = 910
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 54
    Width = 910
    Height = 446
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    OptionsImage.Images = Data_Sisgef.lmi_32_32
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
      Width = 74
    end
    object maskEditCodigo: TcxMaskEdit
      Left = 107
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
      Width = 90
    end
    object textEditNomeEntregador: TcxTextEdit
      Left = 204
      Top = 54
      Hint = 'Nome do entregador (Apelido)'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 250
    end
    object textEditNomePessoa: TcxTextEdit
      Left = 574
      Top = 54
      Hint = 'Nome da pessoa'
      TabStop = False
      Properties.MaxLength = 70
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 310
    end
    object buttonEditCodigoPessoa: TcxButtonEdit
      Left = 461
      Top = 54
      Hint = 'C'#243'digo de cadastro da pessoa'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionLocalizarPessoas
          Default = True
          ImageIndex = 14
          Kind = bkGlyph
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = buttonEditCodigoPessoaPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 106
    end
    object buttonEditCodigoBase: TcxButtonEdit
      Left = 26
      Top = 106
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionLocalizarBases
          Default = True
          ImageIndex = 14
          Kind = bkGlyph
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = buttonEditCodigoBasePropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Width = 104
    end
    object textEditNomeBase: TcxTextEdit
      Left = 137
      Top = 106
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 218
    end
    object textEditCodigoERP: TcxTextEdit
      Left = 449
      Top = 106
      Hint = 'C'#243'sigo ERP'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 148
    end
    object lookupComboBoxCliente: TcxLookupComboBox
      Left = 604
      Top = 106
      Hint = 'Cliente ao qual o entregador est'#225' vinculado'
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      EditValue = ''
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 280
    end
    object buttonEditCodigoTabela: TcxButtonEdit
      Left = 26
      Top = 193
      Hint = 'C'#243'digo da tabela de verbas'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionLocalizarTabelas
          Default = True
          ImageIndex = 14
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = buttonEditCodigoTabelaPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 10
      Width = 83
    end
    object textEditDescricaoTabela: TcxTextEdit
      Left = 116
      Top = 193
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
      Top = 193
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
      Top = 193
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
      EditValue = 0d
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
      EditValue = 0.558958333333333d
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
    object checkBoxAtivo: TcxCheckBox
      Left = 362
      Top = 109
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
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
      ControlOptions.OriginalHeight = 24
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
      ControlOptions.OriginalHeight = 24
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
      ItemIndex = 3
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
      ControlOptions.OriginalHeight = 24
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
    object layoutGroupInfo: TdxLayoutGroup
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
      Parent = layoutGroupInfo
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
      Parent = layoutGroupInfo
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
      Parent = layoutGroupInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'em '
      Control = dateEditDataManutencao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'APP Ativo'
      CaptionOptions.Layout = clRight
      Control = checkBoxAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
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
    Left = 712
    Top = 248
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
          ItemName = 'dxBarLargeButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cxBarEditItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
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
      Action = actionNovo
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 59
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionEditar
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 61
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actionLocalizar
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 66
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actionCancelar
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 67
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actionGravar
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 63
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionFechar
      Align = iaRight
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 64
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
      Properties.Alignment.Horz = taLeftJustify
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actionFechar
      Align = iaRight
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 64
    end
    object cxBarEditItem2: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
      InternalEditValue = nil
    end
  end
  object actionLisCadastro: TActionList
    Left = 632
    Top = 246
    object actionNovo: TAction
      Caption = 'Novo'
      Hint = 'Novo entregador'
      ShortCut = 113
      OnExecute = actionNovoExecute
    end
    object actionEditar: TAction
      Caption = 'Editar'
      Hint = 'Editar dados'
      ShortCut = 114
      OnExecute = actionEditarExecute
    end
    object actionLocalizar: TAction
      Caption = 'Localizar'
      Hint = 'Localizar dados'
      ShortCut = 119
      OnExecute = actionLocalizarExecute
    end
    object actionCancelar: TAction
      Caption = ' Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      OnExecute = actionCancelarExecute
    end
    object actionGravar: TAction
      Caption = 'Gravar'
      Hint = 'Gravar dados'
      ShortCut = 116
      OnExecute = actionGravarExecute
    end
    object actionFechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      OnExecute = actionFecharExecute
    end
    object actionLocalizarBases: TAction
      Caption = 'Localizar Bases'
      Hint = 'Localizar Bases'
      OnExecute = actionLocalizarBasesExecute
    end
    object actionLocalizarPessoas: TAction
      Caption = 'Localizar Pessoas'
      Hint = 'Localizar pessoas'
      OnExecute = actionLocalizarPessoasExecute
    end
    object actionLocalizarTabelas: TAction
      Caption = 'Localizar Tabelas'
      Hint = 'Localizar tabelas de verbas'
      OnExecute = actionLocalizarTabelasExecute
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 712
    Top = 190
  end
  object fdEntregadores: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from tbcodigosentregadores')
    Left = 656
    Top = 198
    object fdEntregadoresid_entregador: TFDAutoIncField
      FieldName = 'id_entregador'
      Origin = 'id_entregador'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
  object fdMemTableEntregadores: TFDMemTable
    FieldDefs = <>
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
    Left = 600
    Top = 198
    object fdMemTableEntregadoresid_entregador: TFDAutoIncField
      FieldName = 'id_entregador'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object fdMemTableEntregadoresCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
      Required = True
    end
    object fdMemTableEntregadoresCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
      Required = True
    end
    object fdMemTableEntregadoresNOM_FANTASIA: TStringField
      FieldName = 'NOM_FANTASIA'
      Size = 70
    end
    object fdMemTableEntregadoresCOD_AGENTE: TIntegerField
      FieldName = 'COD_AGENTE'
    end
    object fdMemTableEntregadoresDAT_CODIGO: TDateTimeField
      FieldName = 'DAT_CODIGO'
    end
    object fdMemTableEntregadoresDES_CHAVE: TStringField
      FieldName = 'DES_CHAVE'
      Size = 70
    end
    object fdMemTableEntregadoresCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
    end
    object fdMemTableEntregadoresVAL_VERBA: TFloatField
      FieldName = 'VAL_VERBA'
    end
    object fdMemTableEntregadoresNOM_EXECUTANTE: TStringField
      FieldName = 'NOM_EXECUTANTE'
    end
    object fdMemTableEntregadoresDOM_ATIVO: TIntegerField
      FieldName = 'DOM_ATIVO'
    end
    object fdMemTableEntregadoresDAT_MANUTENCAO: TSQLTimeStampField
      FieldName = 'DAT_MANUTENCAO'
    end
    object fdMemTableEntregadoresCOD_TABELA: TIntegerField
      FieldName = 'COD_TABELA'
    end
    object fdMemTableEntregadoresCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
  end
  object fdBase: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_BasesPesquisa')
    Left = 648
    Top = 302
  end
  object fdPessoas: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_PesquisaPessoasCRM')
    Left = 704
    Top = 302
  end
  object fdVerbas: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from expressas_verbas')
    Left = 712
    Top = 358
    object fdVerbasid_verba: TIntegerField
      FieldName = 'id_verba'
      Origin = 'id_verba'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdVerbascod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
      Required = True
    end
    object fdVerbascod_tipo: TIntegerField
      FieldName = 'cod_tipo'
      Origin = 'cod_tipo'
      Required = True
    end
    object fdVerbasid_grupo: TIntegerField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      Required = True
    end
    object fdVerbasdat_vigencia: TDateField
      FieldName = 'dat_vigencia'
      Origin = 'dat_vigencia'
      Required = True
    end
    object fdVerbasval_verba: TSingleField
      FieldName = 'val_verba'
      Origin = 'val_verba'
      Required = True
    end
    object fdVerbasval_performance: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'val_performance'
      Origin = 'val_performance'
    end
    object fdVerbasnum_cep_inicial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cep_inicial'
      Origin = 'num_cep_inicial'
      Size = 9
    end
    object fdVerbasnum_cep_final: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cep_final'
      Origin = 'num_cep_final'
      Size = 9
    end
    object fdVerbasqtd_peso_inicial: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_peso_inicial'
      Origin = 'qtd_peso_inicial'
    end
    object fdVerbasqtd_peso_final: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'qtd_peso_final'
      Origin = 'qtd_peso_final'
    end
    object fdVerbascod_roteiro: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_roteiro'
      Origin = 'cod_roteiro'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 576
    Top = 318
  end
end
