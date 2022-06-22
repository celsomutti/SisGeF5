object view_SisGeFExtractedExpress: Tview_SisGeFExtractedExpress
  Left = 0
  Top = 0
  Caption = 'Extrato de Expressas'
  ClientHeight = 453
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 868
    Height = 453
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object tipoExtrato: TcxComboBox
      Left = 24
      Top = 76
      Hint = 'Tipo de Extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'ANAL'#237'TICO'
        'SINT'#201'TICO')
      Style.HotTrack = False
      TabOrder = 0
      Text = 'SELECIONE ...'
      Width = 109
    end
    object tipoPeriodo: TcxComboBox
      Left = 139
      Top = 76
      Hint = 'Tipo de Periodo'
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Customizado / Entrega'
        'Customizado / Expedi'#231#227'o'
        'Parametrizado / Entrega'
        'Parametrizado / Expedi'#231#227'o')
      Properties.OnChange = tipoPeriodoPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 129
    end
    object dataInicialPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data inicial do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 194
    end
    object dataFinalPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data final do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 196
    end
    object anoPeriodo: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Ano do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 92
    end
    object mesPeriodo: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'M'#234's do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
      Style.HotTrack = False
      TabOrder = 5
      Text = 'SELECIONE ...'
      Visible = False
      Width = 114
    end
    object periodoParametrizado: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Per'#237'odo parametrizado'
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 178
    end
    object situacaoExtrato: TcxComboBox
      Left = 704
      Top = 76
      Hint = 'Situa'#231#227'o do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'ABERTO'
        'ENCERRADO')
      Style.HotTrack = False
      TabOrder = 7
      Text = 'Selecione ...'
      Width = 140
    end
    object listaClientes: TcxMCListBox
      Left = 36
      Top = 153
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 60
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 181
        end>
      Style.TransparentBorder = True
      TabOrder = 8
    end
    object cxButton1: TcxButton
      Left = 36
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeClients
      TabOrder = 9
    end
    object cxButton2: TcxButton
      Left = 120
      Top = 256
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeClients
      TabOrder = 10
    end
    object listaBases: TcxMCListBox
      Left = 311
      Top = 153
      Width = 246
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 177
        end>
      TabOrder = 12
    end
    object cxButton3: TcxButton
      Left = 311
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeBases
      TabOrder = 13
    end
    object cxButton4: TcxButton
      Left = 395
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeBases
      TabOrder = 14
    end
    object listaEntregadores: TcxMCListBox
      Left = 587
      Top = 153
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 176
        end>
      TabOrder = 16
    end
    object cxButton5: TcxButton
      Left = 587
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeCouriers
      TabOrder = 17
    end
    object cxButton6: TcxButton
      Left = 671
      Top = 256
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeCouriers
      TabOrder = 18
    end
    object cxButton7: TcxButton
      Left = 203
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearClients
      TabOrder = 11
    end
    object cxButton8: TcxButton
      Left = 479
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearBases
      TabOrder = 15
    end
    object cxButton9: TcxButton
      Left = 754
      Top = 256
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearCouriers
      TabOrder = 19
    end
    object cxButton10: TcxButton
      Left = 783
      Top = 418
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 27
    end
    object calcularVolumeExtra: TcxCheckBox
      Left = 36
      Top = 317
      Cursor = crHandPoint
      Hint = 'Calcular volumes extras'
      Caption = 'Volumes extras'
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.HotTrack = False
      TabOrder = 20
      Transparent = True
    end
    object considerarExtravios: TcxCheckBox
      Left = 253
      Top = 317
      Cursor = crHandPoint
      Hint = 'Considerar extravios'
      Caption = 'Considerar extravios'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 21
      Transparent = True
    end
    object considerarLancamentos: TcxCheckBox
      Left = 529
      Top = 317
      Cursor = crHandPoint
      Hint = 'Considerar lan'#231'amentos de d'#233'bitos e cr'#233'ditos'
      Caption = 'Considerar lan'#231'amentos'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
    end
    object gridExtrato: TcxGrid
      Left = 10000
      Top = 10000
      Width = 820
      Height = 241
      TabOrder = 24
      Visible = False
      object gridExtratoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExtract
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object gridExtratoDBTableView1id_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'id_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1dat_inicio: TcxGridDBColumn
          DataBinding.FieldName = 'dat_inicio'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1dat_final: TcxGridDBColumn
          DataBinding.FieldName = 'dat_final'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1num_ano: TcxGridDBColumn
          DataBinding.FieldName = 'num_ano'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1num_mes: TcxGridDBColumn
          DataBinding.FieldName = 'num_mes'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1num_quinzena: TcxGridDBColumn
          DataBinding.FieldName = 'num_quinzena'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1num_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'num_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1nom_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nom_cliente'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 179
        end
        object gridExtratoDBTableView1cod_base: TcxGridDBColumn
          DataBinding.FieldName = 'cod_base'
          HeaderAlignmentHorz = taCenter
          Width = 32
        end
        object gridExtratoDBTableView1nom_base: TcxGridDBColumn
          DataBinding.FieldName = 'nom_base'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1cod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          HeaderAlignmentHorz = taCenter
          Width = 36
        end
        object gridExtratoDBTableView1nom_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_entregador'
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object gridExtratoDBTableView1val_verba: TcxGridDBColumn
          DataBinding.FieldName = 'val_verba'
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object gridExtratoDBTableView1qtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object gridExtratoDBTableView1qtd_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes_extra'
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object gridExtratoDBTableView1val_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'val_volumes_extra'
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object gridExtratoDBTableView1qtd_entregas: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_entregas'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridExtratoDBTableView1qtd_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_atraso'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object gridExtratoDBTableView1val_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object gridExtratoDBTableView1val_producao: TcxGridDBColumn
          DataBinding.FieldName = 'val_producao'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridExtratoDBTableView1val_creditos: TcxGridDBColumn
          DataBinding.FieldName = 'val_creditos'
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object gridExtratoDBTableView1val_debitos: TcxGridDBColumn
          DataBinding.FieldName = 'val_debitos'
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object gridExtratoDBTableView1val_extravios: TcxGridDBColumn
          DataBinding.FieldName = 'val_extravios'
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object gridExtratoDBTableView1val_total_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_expressa'
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object gridExtratoDBTableView1val_total_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_empresa'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1cod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1dat_credito: TcxGridDBColumn
          DataBinding.FieldName = 'dat_credito'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridExtratoDBTableView1des_unique_key: TcxGridDBColumn
          DataBinding.FieldName = 'des_unique_key'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
      end
      object gridExtratoLevel1: TcxGridLevel
        GridView = gridExtratoDBTableView1
      end
    end
    object activityIndicator: TdxActivityIndicator
      Left = 10000
      Top = 10000
      Width = 820
      Height = 10
      PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
      Transparent = True
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 24
      Top = 373
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Action = actionProcess
      TabOrder = 23
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionComeBack
      TabOrder = 25
      Visible = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Extrato:'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = tipoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = tipoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGroupMain: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object layoutGroupParameters: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Par'#226'metros'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object layoutGroupExtract: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Extrato'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object layoutGroupCustomized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Customizado'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object layoutGroupParameterized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Parametrizado'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutGroupCustomized
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      CaptionOptions.Layout = clTop
      Control = dataInicialPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Hint = 'Data final do per'#237'odo customizado'
      CaptionOptions.Text = 'Data Final:'
      CaptionOptions.Layout = clTop
      Control = dataFinalPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Ano:'
      CaptionOptions.Layout = clTop
      Control = anoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Hint = 'M'#234's do per'#237'odo'
      CaptionOptions.Text = 'M'#234's:'
      CaptionOptions.Layout = clTop
      Control = mesPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = periodoParametrizado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Situa'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = situacaoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = layoutGroupParameters
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Clientes: (Nenhum cliente informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaClientes
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bases: (Nenhuma base informda = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaBases
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Entregadores: (Nenhum informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaEntregadores
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = calcularVolumeExtra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = considerarExtravios
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = considerarLancamentos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridExtrato
      ControlOptions.OriginalHeight = 113
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = layoutGroupExtract
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'dxActivityIndicator1'
      CaptionOptions.Visible = False
      Control = activityIndicator
      ControlOptions.OriginalHeight = 10
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = layoutGroupParameters
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionListExtract: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 768
    Top = 16
    object actionIncludeClients: TAction
      Category = 'Clients'
      Caption = 'Incluir'
      Hint = 'Incluir Clientes'
      ImageIndex = 89
      OnExecute = actionIncludeClientsExecute
    end
    object actionExcludeClients: TAction
      Category = 'Clients'
      Caption = 'Excluir'
      Hint = 'Excluir cliente'
      ImageIndex = 90
      OnExecute = actionExcludeClientsExecute
    end
    object actionClearClients: TAction
      Category = 'Clients'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
      OnExecute = actionClearClientsExecute
    end
    object actionIncludeBases: TAction
      Category = 'Bases'
      Caption = 'Incluir'
      Hint = 'Incluir base'
      ImageIndex = 89
      OnExecute = actionIncludeBasesExecute
    end
    object actionExcludeBases: TAction
      Category = 'Bases'
      Caption = 'Excluir'
      Hint = 'Excluir base'
      ImageIndex = 90
      OnExecute = actionExcludeBasesExecute
    end
    object actionClearBases: TAction
      Category = 'Bases'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
      OnExecute = actionClearBasesExecute
    end
    object actionIncludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Incluir'
      Hint = 'Incluir entregadores'
      ImageIndex = 89
      OnExecute = actionIncludeCouriersExecute
    end
    object actionExcludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Excluir'
      Hint = 'Excluir entregador da lista'
      ImageIndex = 90
      OnExecute = actionExcludeCouriersExecute
    end
    object actionClearCouriers: TAction
      Category = 'Couriers'
      Caption = 'Limpar'
      Hint = 'Limpar lista de entregadores'
      ImageIndex = 84
      OnExecute = actionClearCouriersExecute
    end
    object actionCloseForm: TAction
      Category = 'Form'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionProcess: TAction
      Category = 'Filter'
      Caption = '&Processar'
      Hint = 'Processar o extrato'
      ImageIndex = 109
      OnExecute = actionProcessExecute
    end
    object actionExpandGrid: TAction
      Category = 'Form'
      Caption = 'Expandir'
      Hint = 'Expardir os grupos do grid'
      ImageIndex = 106
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Category = 'Form'
      Caption = 'Retrair'
      Hint = 'Retrair os grupos do grid'
      ImageIndex = 107
      OnExecute = actionRetractGridExecute
    end
    object actionComeBack: TAction
      Category = 'Form'
      Caption = 'Voltar'
      Hint = 'Vontar '#224'tela de par'#226'metros'
      ImageIndex = 108
      OnExecute = actionComeBackExecute
    end
  end
  object dsExtract: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbExtratosExpressas
    Left = 384
    Top = 8
  end
  object timer: TTimer
    Enabled = False
    OnTimer = timerTimer
    Left = 720
    Top = 16
  end
end
