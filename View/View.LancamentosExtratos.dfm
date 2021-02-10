object view_LancamentosExtratos: Tview_LancamentosExtratos
  Left = 0
  Top = 0
  Caption = 'Lan'#231'amentos de Valores no Extrato'
  ClientHeight = 671
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 17
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 802
    Height = 671
    Align = alClient
    TabOrder = 0
    object labelTitle: TcxLabel
      Left = 13
      Top = 13
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object textEditDescricao: TcxTextEdit
      Left = 28
      Top = 96
      Hint = 'Descri'#231#227'o do lan'#231'amento'
      Properties.MaxLength = 256
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 629
    end
    object dateEditData: TcxDateEdit
      Left = 665
      Top = 96
      Hint = 'Data refer'#234'ncia do lan'#231'amento'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 109
    end
    object buttonEditCodigoEntregador: TcxButtonEdit
      Left = 28
      Top = 152
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionPesquisaEntregadores
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.ReadOnly = True
      Properties.OnValidate = buttonEditCodigoEntregadorPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Text = '0'
      Width = 77
    end
    object textEditNomeEntregador: TcxTextEdit
      Left = 113
      Top = 152
      Hint = 'Nome do Entregador'
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 269
    end
    object comboBoxTipo: TcxComboBox
      Left = 390
      Top = 152
      Hint = 'Tipo de Lan'#231'amento'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Cr'#233'dito (+)'
        'D'#233'bito (-)')
      Properties.ReadOnly = True
      Properties.OnChange = comboBoxTipoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 5
      Text = 'Selecione ...'
      Width = 131
    end
    object calcEditValor: TcxCalcEdit
      Left = 529
      Top = 152
      Hint = 'Valor do lan'#231'amento'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.00'
      Properties.ReadOnly = True
      Properties.OnChange = calcEditValorPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 116
    end
    object checkBoxProcessado: TcxCheckBox
      Left = 28
      Top = 535
      Hint = 'Indica se o lan'#231'amento j'#225' debitado ou creditado'
      TabStop = False
      Caption = 'Processado'
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      State = cbsGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
    end
    object maskEditDataProcessamento: TcxMaskEdit
      Left = 133
      Top = 547
      Hint = 'Data do processamento'
      TabStop = False
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!99/99/0099;1;_'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Text = '  /  /    '
      Width = 131
    end
    object textEditExtrato: TcxTextEdit
      Left = 272
      Top = 547
      Hint = 'N'#250'mero do extrato'
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 127
    end
    object maskEditDataCadastro: TcxMaskEdit
      Left = 407
      Top = 547
      Hint = 'Data do cadastro do lan'#231'amento'
      TabStop = False
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!99/99/0099;1;_'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Text = '  /  /    '
      Width = 128
    end
    object buttonEditReferencia: TcxButtonEdit
      Left = 543
      Top = 547
      Hint = 'ID do lan'#231'amento de origem em caso de parcelamento'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 17
      Text = '0'
      Width = 95
    end
    object TextEditUsuario: TcxTextEdit
      Left = 646
      Top = 547
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 128
    end
    object spinEditIntervaloDias: TcxSpinEdit
      Left = 28
      Top = 246
      Hint = 'Intervalo de dias entre parcelas ou repeti'#231#245'es ou quantidade'
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxValue = 36.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 8
      Value = 15
      Width = 64
    end
    object dateEditDataInicial: TcxDateEdit
      Left = 169
      Top = 246
      Hint = 'Data inicial do percelamento ou repeti'#231#227'o'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Width = 96
    end
    object buttonProcessar: TcxButton
      Left = 273
      Top = 246
      Width = 96
      Height = 25
      Cursor = crHandPoint
      Action = actionProcessar
      TabOrder = 11
    end
    object gridParcelamento: TcxGrid
      Left = 28
      Top = 302
      Width = 389
      Height = 157
      TabOrder = 12
      object gridParcelamentoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = fdParcelamentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = gridParcelamentoDBTableView1val_parcela
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object gridParcelamentoDBTableView1num_parcela: TcxGridDBColumn
          DataBinding.FieldName = 'num_parcela'
          HeaderAlignmentHorz = taCenter
        end
        object gridParcelamentoDBTableView1dat_parcela: TcxGridDBColumn
          DataBinding.FieldName = 'dat_parcela'
          HeaderAlignmentHorz = taCenter
        end
        object gridParcelamentoDBTableView1val_parcela: TcxGridDBColumn
          DataBinding.FieldName = 'val_parcela'
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridParcelamentoLevel1: TcxGridLevel
        GridView = gridParcelamentoDBTableView1
      end
    end
    object comboBoxProcessamento: TcxComboBox
      Left = 653
      Top = 152
      Hint = 'Tipo de processo a ser aplicado'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecionar ...'
        'A Vista'
        'Parcelar'
        'Repetir')
      Properties.OnChange = comboBoxProcessamentoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 7
      Text = 'Selecionar ...'
      Width = 121
    end
    object buttonNovo: TcxButton
      Left = 28
      Top = 618
      Width = 75
      Height = 25
      Action = actionNovo
      TabOrder = 19
    end
    object buttonEditar: TcxButton
      Left = 111
      Top = 618
      Width = 75
      Height = 25
      Action = actionEditar
      TabOrder = 20
    end
    object buttonCancelar: TcxButton
      Left = 194
      Top = 618
      Width = 79
      Height = 25
      Action = actionCancelar
      Cancel = True
      TabOrder = 21
    end
    object buttonExcluir: TcxButton
      Left = 281
      Top = 618
      Width = 75
      Height = 25
      Action = actionExcluir
      TabOrder = 22
    end
    object buttonLocalizar: TcxButton
      Left = 364
      Top = 618
      Width = 85
      Height = 25
      Action = actionLocalizar
      TabOrder = 23
    end
    object buttonGravar: TcxButton
      Left = 457
      Top = 618
      Width = 75
      Height = 25
      Action = actionGravar
      TabOrder = 24
    end
    object buttonFechar: TcxButton
      Left = 699
      Top = 618
      Width = 75
      Height = 25
      Action = actionFechar
      TabOrder = 25
    end
    object spinEditParcelas: TcxSpinEdit
      Left = 100
      Top = 246
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxValue = 12.000000000000000000
      Properties.MinValue = 2.000000000000000000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 9
      Value = 2
      Width = 61
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
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutGroupLancamento: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Lan'#231'amentos'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object layoutItemDescricao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = '&Descri'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = textEditDescricao
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemData: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'D&ata:'
      CaptionOptions.Layout = clTop
      Control = dateEditData
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemCodigoEntregador: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '&Entregador:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoEntregador
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutGroupLancamento
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutItemNomeEntregador: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome do Entregador:'
      CaptionOptions.Layout = clTop
      Control = textEditNomeEntregador
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 280
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemTipoLancamento: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '&Tipo:'
      CaptionOptions.Layout = clTop
      Control = comboBoxTipo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = layoutGroupLancamento
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemValor: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '&Valor:'
      CaptionOptions.Layout = clTop
      Control = calcEditValor
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutGroupHistorico: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Hist'#243'rico'
      Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object layoutItemProcessado: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Processado'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = checkBoxProcessado
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemDataProcessamento: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Hint = 'Data do processamento'
      CaptionOptions.Text = 'Data Processamento:'
      CaptionOptions.Layout = clTop
      Control = maskEditDataProcessamento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemExtrato: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'N'#186' Extrato:'
      CaptionOptions.Layout = clTop
      Control = textEditExtrato
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemDataCadastro: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Data Cadastro:'
      CaptionOptions.Layout = clTop
      Control = maskEditDataCadastro
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemReferencia: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Refer'#234'ncia:'
      CaptionOptions.Layout = clTop
      Control = buttonEditReferencia
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutItemUsuario: TdxLayoutItem
      Parent = layoutGroupHistorico
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Usu'#225'rio:'
      CaptionOptions.Layout = clTop
      Control = TextEditUsuario
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object layoutGroupParcelamento: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Parcelamento / Repeti'#231#245'es'
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object layoutItemIntervalo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Intervalo:'
      CaptionOptions.Layout = clTop
      Control = spinEditIntervaloDias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = layoutGroupParcelamento
      AlignHorz = ahLeft
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemDataInicial: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Data Inicia&l:'
      CaptionOptions.Layout = clTop
      Control = dateEditDataInicial
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemProcessar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Processar'
      CaptionOptions.Visible = False
      Control = buttonProcessar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemGridParcelamento: TdxLayoutItem
      Parent = layoutGroupParcelamento
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Parcelamento / Repeti'#231#245'es:'
      CaptionOptions.Layout = clTop
      Control = gridParcelamento
      ControlOptions.OriginalHeight = 157
      ControlOptions.OriginalWidth = 389
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemProcessamento: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Hint = 'Tipo de processo a ser aplicado'
      CaptionOptions.Text = 'Processo:'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = comboBoxProcessamento
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutGroupOpcoes: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Op'#231#245'es'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object layoutItemNovo: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonNovo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemEditar: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonEditar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemCancelar: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemExcluir: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemLocalizar: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonLocalizar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutItemGravar: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonGravar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object layoutItemFechar: TdxLayoutItem
      Parent = layoutGroupOpcoes
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object layoutItemParcelas: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Parcelas:'
      CaptionOptions.Layout = clTop
      Control = spinEditParcelas
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListLancamentos: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 632
    Top = 24
    object actionNovo: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Novo'
      Hint = 'Novo lan'#231'amento'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = actionNovoExecute
    end
    object actionEditar: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Editar'
      Hint = 'Editar dados do lan'#231'amento'
      ImageIndex = 10
      ShortCut = 114
      OnExecute = actionEditarExecute
    end
    object actionCancelar: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 2
      OnExecute = actionCancelarExecute
    end
    object actionExcluir: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Excluir'
      Hint = 'Excluir lan'#231'amento'
      ImageIndex = 4
      ShortCut = 115
      OnExecute = actionExcluirExecute
    end
    object actionGravar: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Gravar'
      Hint = 'Gravar lan'#231'amento'
      ImageIndex = 13
    end
    object actionLocalizar: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Localizar'
      Hint = 'Localizar lan'#231'amentos'
      ImageIndex = 12
      OnExecute = actionLocalizarExecute
    end
    object actionFechar: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionProcessar: TAction
      Category = 'Lan'#231'amentos'
      Caption = '&Processar'
      Hint = 'Processar parcelamentos ou repeti'#231#245'es'
      ImageIndex = 1
      OnExecute = actionProcessarExecute
    end
    object actionReferencia: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Refer'#234'ncia'
      Hint = 'Localizar lan'#231'amento de refer'#234'ncia'
      ImageIndex = 14
    end
    object actionPesquisaEntregadores: TAction
      Category = 'Lan'#231'amentos'
      Caption = 'Entregadores'
      Hint = 'Pesquisa entregadores'
      ImageIndex = 14
      OnExecute = actionPesquisaEntregadoresExecute
    end
  end
  object memTableParcelamento: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 488
    Top = 24
    object memTableParcelamentonum_parcela: TIntegerField
      DisplayLabel = 'N'#186
      FieldName = 'num_parcela'
    end
    object memTableParcelamentodat_parcela: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_parcela'
    end
    object memTableParcelamentoval_parcela: TCurrencyField
      DisplayLabel = 'Valor'
      FieldName = 'val_parcela'
    end
  end
  object fdParcelamentos: TDataSource
    DataSet = memTableParcelamento
    Left = 552
    Top = 24
  end
end
