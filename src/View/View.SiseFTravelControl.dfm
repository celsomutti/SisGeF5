object PageTravelControl: TPageTravelControl
  Left = 0
  Top = 0
  Caption = 'Controle de Viagens'
  ClientHeight = 630
  ClientWidth = 1041
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object LayoutContainer: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1041
    Height = 630
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object LabelPageTitle: TcxLabel
      AlignWithMargins = True
      Left = 13
      Top = 13
      Caption = 'LabelPageTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clGray
      Style.Font.Height = -19
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsItalic]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TextColor = clGrayText
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ButtonExit: TcxButton
      Left = 927
      Top = 14
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionExitPage
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 13
      Top = 47
      Width = 1015
      Height = 1
      Pen.Color = clSilver
    end
    object dateEditInicial: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 100
    end
    object dateEditFinalDate: TcxDateEdit
      Left = 10000
      Top = 10000
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object ButtonSearch: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = action1Search
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Visible = False
    end
    object gridTravels: TcxGrid
      Left = 10000
      Top = 10000
      Width = 981
      Height = 423
      TabOrder = 10
      Visible = False
      object gridTravelsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dataSourceTravels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        object gridTravelsDBTableView1id_controle: TcxGridDBColumn
          DataBinding.FieldName = 'id_controle'
          HeaderAlignmentHorz = taCenter
        end
        object gridTravelsDBTableView1dat_transporte: TcxGridDBColumn
          DataBinding.FieldName = 'dat_transporte'
          PropertiesClassName = 'TcxDateEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object gridTravelsDBTableView1des_operacao: TcxGridDBColumn
          DataBinding.FieldName = 'des_operacao'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 273
        end
        object gridTravelsDBTableView1des_placa: TcxGridDBColumn
          DataBinding.FieldName = 'des_placa'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object gridTravelsDBTableView1nom_motorista: TcxGridDBColumn
          DataBinding.FieldName = 'nom_motorista'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 365
        end
        object gridTravelsDBTableView1qtd_km_saida: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_saida'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object gridTravelsDBTableView1hor_saida: TcxGridDBColumn
          DataBinding.FieldName = 'hor_saida'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object gridTravelsDBTableView1qtd_km_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_retorno'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object gridTravelsDBTableView1hor_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'hor_retorno'
          PropertiesClassName = 'TcxTimeEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object gridTravelsDBTableView1qtd_km_rodado: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_rodado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridTravelsDBTableView1cod_status: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          HeaderAlignmentHorz = taCenter
          Width = 142
        end
      end
      object gridTravelsLevel1: TcxGridLevel
        GridView = gridTravelsDBTableView1
      end
    end
    object ButtonNewTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Action = actionNewTravel
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Visible = False
    end
    object ButtonExportation: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionExport
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 9
      Visible = False
    end
    object ButtonEditTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionEditTravel
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      Visible = False
    end
    object ButtonCancelTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelTravel
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      Visible = False
    end
    object ButtonEndTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionEndTravel
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
      Visible = False
    end
    object maskEditTravelID: TcxMaskEdit
      Left = 66
      Top = 72
      Hint = 'ID da viagem'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 11
      Text = '0'
      Width = 60
    end
    object DateEditTravelDate: TcxDateEdit
      Left = 176
      Top = 72
      Hint = 'Data da viagem'
      Style.HotTrack = False
      TabOrder = 12
      Width = 100
    end
    object ComboBoxTravelOperation: TcxComboBox
      Left = 358
      Top = 72
      Hint = 'Tipo de opera'#231#227'o'
      Properties.Items.Strings = (
        'Selecione ...'
        'COLETA'
        'DISTRIBUI'#199#195'O'
        'ENTREGA'
        'MANUTEN'#199#195'O')
      Style.HotTrack = False
      TabOrder = 13
      Text = 'Selecione ...'
      Width = 121
    end
    object ButtonEdittravelCodeTaker: TcxButtonEdit
      Left = 555
      Top = 72
      Hint = 'C'#243'digo do tomador do servi'#231'o'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 86
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 14
      Text = '0'
      Width = 80
    end
    object TextEditTravelNameTaker: TcxTextEdit
      Left = 642
      Top = 72
      Hint = 'Nome do tomador do servi'#231'o'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 369
    end
    object ButtonEditTravelDriverCode: TcxButtonEdit
      Left = 104
      Top = 103
      Hint = 'C'#243'digo do motorista'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 86
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 16
      Text = '0'
      Width = 106
    end
    object TextEditTravelDriverName: TcxTextEdit
      Left = 217
      Top = 103
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 17
      Width = 247
    end
    object ButtonEditTavelVehicle: TcxButtonEdit
      Left = 530
      Top = 103
      Hint = 'Placa do ve'#237'culo'
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 86
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 18
      Width = 115
    end
    object CurrencyEditTravelInitialKM: TcxCurrencyEdit
      Left = 720
      Top = 103
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0.;-,0.'
      Style.HotTrack = False
      TabOrder = 19
      Width = 105
    end
    object TimeEditTravelDepartureTime: TcxTimeEdit
      Left = 915
      Top = 103
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 20
      Width = 96
    end
    object GridTravelDestinations: TcxGrid
      Left = 45
      Top = 178
      Width = 393
      Height = 200
      Align = alClient
      TabOrder = 21
      object GridTravelDestinationsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dataSourceTravelDestinations
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GridTravelDestinationsDBTableView1cod_destino: TcxGridDBColumn
          DataBinding.FieldName = 'cod_destino'
          Visible = False
        end
        object GridTravelDestinationsDBTableView1des_destino: TcxGridDBColumn
          DataBinding.FieldName = 'des_destino'
          Width = 376
        end
        object GridTravelDestinationsDBTableView1cod_agente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agente'
          Visible = False
        end
      end
      object GridTravelDestinationsLevel1: TcxGridLevel
        GridView = GridTravelDestinationsDBTableView1
      end
    end
    object GridFuelSupplies: TcxGrid
      Left = 445
      Top = 178
      Width = 393
      Height = 200
      TabOrder = 22
      object GridFuelSuppliesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSourceFuelSupplies
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object GridFuelSuppliesDBTableView1num_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'num_cupom'
          Width = 121
        end
        object GridFuelSuppliesDBTableView1qtd_abastecimento: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_abastecimento'
          Width = 92
        end
        object GridFuelSuppliesDBTableView1val_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'val_unitario'
        end
        object GridFuelSuppliesDBTableView1val_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
        end
      end
      object GridFuelSuppliesLevel1: TcxGridLevel
        GridView = GridFuelSuppliesDBTableView1
      end
    end
    object LayoutContainerGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object LayoutHeader: TdxLayoutGroup
      Parent = LayoutContainerGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Padding.AssignedValues = [lpavLeft]
      ShowBorder = False
      Index = 0
    end
    object LayoutPageTitle: TdxLayoutItem
      Parent = LayoutHeader
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Padding.AssignedValues = [lpavLeft]
      Control = LabelPageTitle
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutButtonExit: TdxLayoutItem
      Parent = LayoutHeader
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = ButtonExit
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 1
    end
    object LayoutLine: TdxLayoutItem
      Parent = LayoutContainerGroup_Root
      CaptionOptions.Text = 'Shape1'
      CaptionOptions.Visible = False
      Control = Shape1
      ControlOptions.OriginalHeight = 1
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutFilter: TdxLayoutGroup
      Parent = LayoutGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object LayoutInitialDate: TdxLayoutItem
      Parent = LayoutFilter
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      Control = dateEditInicial
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutBody: TdxLayoutGroup
      Parent = LayoutContainerGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 2
    end
    object LayoutGrid: TdxLayoutGroup
      Parent = LayoutBody
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutEdit: TdxLayoutGroup
      Parent = LayoutBody
      CaptionOptions.Text = 'Edi'#231#227'o'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object LayoutFinalDate: TdxLayoutItem
      Parent = LayoutFilter
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Final:'
      Control = dateEditFinalDate
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutButtonSearch: TdxLayoutItem
      Parent = LayoutFilter
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonSearch
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 2
    end
    object LayoutTravelGrid: TdxLayoutItem
      Parent = LayoutGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gridTravels
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutOptions: TdxLayoutGroup
      Parent = LayoutGrid
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutButtonNewTravel: TdxLayoutItem
      Parent = LayoutOptions
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonNewTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      Index = 0
    end
    object LayoutButtonExport: TdxLayoutItem
      Parent = LayoutOptions
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonExportation
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 4
    end
    object LayoutIButtonEditTravel: TdxLayoutItem
      Parent = LayoutOptions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonEditTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 1
    end
    object LayoutButtonCancelTravel: TdxLayoutItem
      Parent = LayoutOptions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonCancelTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 2
    end
    object LayoutButtonEndTravel: TdxLayoutItem
      Parent = LayoutOptions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonEndTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      Index = 3
    end
    object LayoutEdit1: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutTravelID: TdxLayoutItem
      Parent = LayoutEdit1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = '#ID:'
      Control = maskEditTravelID
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutTravelDate: TdxLayoutItem
      Parent = LayoutEdit1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data:'
      Control = DateEditTravelDate
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutTravelOperation: TdxLayoutItem
      Parent = LayoutEdit1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Opera'#231#227'o:'
      Control = ComboBoxTravelOperation
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutTravelCodeTaker: TdxLayoutItem
      Parent = LayoutEdit1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tomador:'
      Control = ButtonEdittravelCodeTaker
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutTravelNameTaker: TdxLayoutItem
      Parent = LayoutEdit1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome do Tomador:'
      CaptionOptions.Visible = False
      Control = TextEditTravelNameTaker
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutEdit2: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutTravelDriverCode: TdxLayoutItem
      Parent = LayoutEdit2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Motorista:'
      Control = ButtonEditTravelDriverCode
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutTravelDriverName: TdxLayoutItem
      Parent = LayoutEdit2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome do motorista:'
      CaptionOptions.Visible = False
      Control = TextEditTravelDriverName
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 211
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayouttravelVehicle: TdxLayoutItem
      Parent = LayoutEdit2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Ve'#237'culo:'
      Control = ButtonEditTavelVehicle
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutTravelInitialKM: TdxLayoutItem
      Parent = LayoutEdit2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'KM Inicial'
      Control = CurrencyEditTravelInitialKM
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutTravelDepartureTime: TdxLayoutItem
      Parent = LayoutEdit2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Hora Sa'#237'da:'
      Control = TimeEditTravelDepartureTime
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutGroupEdit1: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object LayoutGridDestinations: TdxLayoutGroup
      Parent = LayoutGroupEdit1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object LayoutITravelDestinations: TdxLayoutItem
      Parent = LayoutGridDestinations
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Destinos'
      CaptionOptions.Layout = clTop
      Control = GridTravelDestinations
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutTravelFuelSupplies: TdxLayoutGroup
      Parent = LayoutGroupEdit1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object LayoutTravelInputs: TdxLayoutGroup
      Parent = LayoutGroupEdit1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object LayoutFuelSupplies: TdxLayoutItem
      Parent = LayoutTravelFuelSupplies
      CaptionOptions.Text = 'Abastecimentos'
      CaptionOptions.Layout = clTop
      Control = GridFuelSupplies
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 888
    Top = 8
    object actionExitPage: TAction
      Category = 'Page'
      Caption = '&Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actionExitPageExecute
    end
    object actionNewTravel: TAction
      Category = 'Page'
      Caption = '&Nova Viagem'
      Hint = 'Nova viagem'
      ImageIndex = 115
    end
    object actionExport: TAction
      Category = 'Page'
      Caption = 'E&xportar'
      Hint = 'Exportar dados'
      ImageIndex = 101
    end
    object action1Search: TAction
      Category = 'Page'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
    end
    object actionEditTravel: TAction
      Category = 'Page'
      Caption = '&Editar'
      Hint = 'Editar viagem'
      ImageIndex = 95
    end
    object actionCancelTravel: TAction
      Category = 'Page'
      Caption = '&Cancelar'
      Hint = 'Cancelar viagem'
      ImageIndex = 84
    end
    object actionEndTravel: TAction
      Category = 'Page'
      Caption = '&Finalizar'
      Hint = 'Finalizar viagem'
      ImageIndex = 125
    end
  end
  object memTableTravels: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 816
    Top = 8
    object memTableTravelsid_controle: TIntegerField
      DisplayLabel = 'ID#'
      FieldName = 'id_controle'
    end
    object memTableTravelsdat_transporte: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_transporte'
    end
    object memTableTravelsdes_operacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'des_operacao'
      Size = 50
    end
    object memTableTravelsdes_placa: TStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'des_placa'
      Size = 7
    end
    object memTableTravelsnom_motorista: TStringField
      DisplayLabel = 'Motorista'
      FieldName = 'nom_motorista'
      Size = 80
    end
    object memTableTravelsqtd_km_saida: TFloatField
      DisplayLabel = 'KM Sa'#237'da'
      FieldName = 'qtd_km_saida'
    end
    object memTableTravelshor_saida: TTimeField
      DisplayLabel = 'Hora Sa'#237'da'
      FieldName = 'hor_saida'
    end
    object memTableTravelsqtd_km_retorno: TFloatField
      DisplayLabel = 'KM Retorno'
      FieldName = 'qtd_km_retorno'
    end
    object memTableTravelshor_retorno: TTimeField
      DisplayLabel = 'Hora Retorno'
      FieldName = 'hor_retorno'
    end
    object memTableTravelsqtd_km_rodado: TFloatField
      DisplayLabel = 'Total KM'
      FieldName = 'qtd_km_rodado'
    end
    object memTableTravelscod_status: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_status'
    end
  end
  object dataSourceTravels: TDataSource
    AutoEdit = False
    DataSet = memTableTravels
    Left = 752
    Top = 8
  end
  object MemTableTravelDestination: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 480
    Top = 16
    object MemTableTravelDestinationcod_destino: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_destino'
    end
    object MemTableTravelDestinationdes_destino: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_destino'
      Size = 70
    end
    object MemTableTravelDestinationcod_agente: TIntegerField
      DisplayLabel = 'Agente'
      FieldName = 'cod_agente'
    end
  end
  object dataSourceTravelDestinations: TDataSource
    AutoEdit = False
    DataSet = MemTableTravelDestination
    Left = 536
    Top = 16
  end
  object MemTableTravelInputs: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 336
    Top = 16
    object MemTableTravelInputsid_consumo: TIntegerField
      DisplayLabel = '#ID'
      FieldName = 'id_consumo'
    end
    object MemTableTravelInputsid_insumo: TIntegerField
      DisplayLabel = 'Insumo'
      FieldName = 'id_insumo'
    end
    object MemTableTravelInputsid_controle: TIntegerField
      DisplayLabel = '#Controle'
      FieldName = 'id_controle'
    end
    object MemTableTravelInputsqtd_km_consumo: TFloatField
      DisplayLabel = 'KM'
      FieldName = 'qtd_km_consumo'
    end
  end
  object DataSourceTravelInputs: TDataSource
    AutoEdit = False
    DataSet = MemTableTravelInputs
    Left = 376
    Top = 16
  end
  object MemTableFuelSupplies: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 184
    Top = 16
    object MemTableFuelSuppliesnum_cupom: TStringField
      DisplayLabel = 'N'#186'. Cupom'
      FieldName = 'num_cupom'
      Size = 10
    end
    object MemTableFuelSuppliesqtd_abastecimento: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd_abastecimento'
    end
    object MemTableFuelSuppliesval_unitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'val_unitario'
    end
    object MemTableFuelSuppliesval_total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'val_total'
      Calculated = True
    end
  end
  object DataSourceFuelSupplies: TDataSource
    AutoEdit = False
    DataSet = MemTableFuelSupplies
    Left = 240
    Top = 16
  end
end
