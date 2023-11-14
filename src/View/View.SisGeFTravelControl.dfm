object PageTravelControl: TPageTravelControl
  Left = 0
  Top = 0
  Caption = 'Controle de Viagens'
  ClientHeight = 630
  ClientWidth = 1041
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
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
      Left = 11
      Top = 11
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
      Left = 930
      Top = 12
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionExitPage
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 11
      Top = 44
      Width = 1019
      Height = 1
      Pen.Color = clSilver
    end
    object dateEditInicial: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 100
    end
    object dateEditFinalDate: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.SaveTime = False
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 100
    end
    object ButtonSearch: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionSearch
      TabOrder = 4
      Visible = False
    end
    object gridTravels: TcxGrid
      Left = 10000
      Top = 10000
      Width = 989
      Height = 444
      TabOrder = 10
      Visible = False
      object gridTravelsDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dataSourceTravels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.ColumnAutoWidth = True
        object gridTravelsDBTableView1id_controle: TcxGridDBColumn
          DataBinding.FieldName = 'id_controle'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object gridTravelsDBTableView1dat_transporte: TcxGridDBColumn
          DataBinding.FieldName = 'dat_transporte'
          PropertiesClassName = 'TcxDateEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object gridTravelsDBTableView1des_operacao: TcxGridDBColumn
          DataBinding.FieldName = 'des_operacao'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 149
        end
        object gridTravelsDBTableView1des_placa: TcxGridDBColumn
          DataBinding.FieldName = 'des_placa'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 62
        end
        object gridTravelsDBTableView1nom_motorista: TcxGridDBColumn
          DataBinding.FieldName = 'nom_motorista'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 220
        end
        object gridTravelsDBTableView1qtd_km_saida: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_saida'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object gridTravelsDBTableView1hor_saida: TcxGridDBColumn
          DataBinding.FieldName = 'hor_saida'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object gridTravelsDBTableView1qtd_km_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_retorno'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object gridTravelsDBTableView1hor_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'hor_retorno'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object gridTravelsDBTableView1qtd_km_rodado: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_rodado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.;- ,0.'
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object gridTravelsDBTableView1cod_status: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'EM ANDAMENTO'
              ImageIndex = 122
              Value = 0
            end
            item
              Description = 'FINALIZADA'
              ImageIndex = 83
              Value = 1
            end
            item
              Description = 'CANCELADA'
              ImageIndex = 84
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          Width = 126
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
      TabOrder = 6
      Visible = False
    end
    object ButtonCancelTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelTravel
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
      OptionsImage.ImageIndex = 83
      TabOrder = 8
      Visible = False
    end
    object maskEditTravelID: TcxMaskEdit
      Left = 74
      Top = 86
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
      Left = 181
      Top = 86
      Hint = 'Data da viagem'
      Style.HotTrack = False
      TabOrder = 12
      Width = 100
    end
    object ComboBoxTravelOperation: TcxComboBox
      Left = 359
      Top = 86
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
      Left = 552
      Top = 85
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
      Left = 638
      Top = 86
      Hint = 'Nome do tomador do servi'#231'o'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 364
    end
    object ButtonEditTravelDriverCode: TcxButtonEdit
      Left = 109
      Top = 115
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
      Left = 221
      Top = 116
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 17
      Width = 248
    end
    object ButtonEditTavelVehicle: TcxButtonEdit
      Left = 530
      Top = 115
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
      Left = 715
      Top = 116
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0.;-,0.'
      Style.HotTrack = False
      TabOrder = 19
      Width = 105
    end
    object TimeEditTravelDepartureTime: TcxTimeEdit
      Left = 906
      Top = 116
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 20
      Width = 96
    end
    object GridTravelDestinations: TcxGrid
      Left = 39
      Top = 197
      Width = 317
      Height = 200
      TabOrder = 21
      object GridTravelDestinationsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.ImageIndex = 97
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.ImageIndex = 116
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dataSourceTravelDestinations
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridTravelDestinationsDBTableView1cod_destino: TcxGridDBColumn
          DataBinding.FieldName = 'cod_destino'
          Visible = False
        end
        object GridTravelDestinationsDBTableView1des_destino: TcxGridDBColumn
          DataBinding.FieldName = 'des_destino'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 86
              Kind = bkGlyph
            end>
          Properties.Images = Data_Sisgef.iml_16_16
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
      Left = 362
      Top = 197
      Width = 317
      Height = 200
      TabOrder = 22
      object GridFuelSuppliesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.ImageIndex = 97
        Navigator.Buttons.Delete.ImageIndex = 116
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = DataSourceFuelSupplies
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.000;-,0.000'
            Kind = skSum
            Column = GridFuelSuppliesDBTableView1qtd_abastecimento
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = GridFuelSuppliesDBTableView1val_total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object GridFuelSuppliesDBTableView1num_cupom: TcxGridDBColumn
          DataBinding.FieldName = 'num_cupom'
          Width = 121
        end
        object GridFuelSuppliesDBTableView1qtd_abastecimento: TcxGridDBColumn
          Caption = 'Qtde.'
          DataBinding.FieldName = 'qtd_abastecimento'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.000;- ,0.000'
          Width = 92
        end
        object GridFuelSuppliesDBTableView1val_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'val_unitario'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
        end
        object GridFuelSuppliesDBTableView1val_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
        end
      end
      object GridFuelSuppliesLevel1: TcxGridLevel
        GridView = GridFuelSuppliesDBTableView1
      end
    end
    object GridInputs: TcxGrid
      Left = 685
      Top = 197
      Width = 317
      Height = 200
      TabOrder = 23
      object GridInputsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.ImageIndex = 97
        Navigator.Buttons.Delete.ImageIndex = 116
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = DataSourceTravelInputs
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object GridInputsDBTableView1id_consumo: TcxGridDBColumn
          DataBinding.FieldName = 'id_consumo'
          Visible = False
        end
        object GridInputsDBTableView1id_insumo: TcxGridDBColumn
          DataBinding.FieldName = 'id_insumo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_insumo'
          Properties.ListColumns = <
            item
              FieldName = 'des_insumo'
            end>
          Properties.ListSource = DataSourceInputs
        end
        object GridInputsDBTableView1id_controle: TcxGridDBColumn
          DataBinding.FieldName = 'id_controle'
          Visible = False
        end
        object GridInputsDBTableView1qtd_km_consumo: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_km_consumo'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.;-,0.'
        end
        object GridInputsDBTableView1qtd_consumo: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_consumo'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
        end
      end
      object GridInputsLevel1: TcxGridLevel
        GridView = GridInputsDBTableView1
      end
    end
    object MemoObs: TcxMemo
      Left = 39
      Top = 455
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 24
      Height = 50
      Width = 552
    end
    object ComboBoxStatus: TcxComboBox
      Left = 649
      Top = 455
      Hint = 'Status da viagem'
      TabStop = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'EM ANDAMENTO'
        'FINALIZADA'
        'CANCELADA')
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 25
      Text = 'EM ANDAMENTO'
      Width = 353
    end
    object CurrencyEditFinalKM: TcxCurrencyEdit
      Left = 659
      Top = 483
      Style.HotTrack = False
      TabOrder = 26
      Width = 121
    end
    object TimeEditreturnTime: TcxTimeEdit
      Left = 881
      Top = 483
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 27
      Width = 121
    end
    object ButtonReturn: TcxButton
      Left = 26
      Top = 579
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionPriorPage
      TabOrder = 28
    end
    object ButtonSaveTravel: TcxButton
      Left = 122
      Top = 579
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveTravel
      TabOrder = 29
    end
    object ButtonFinalizeTravel: TcxButton
      Left = 218
      Top = 579
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionEndTravel
      TabOrder = 30
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
      ControlOptions.ShowBorder = False
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
      ControlOptions.OriginalHeight = 22
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
      OnTabChanged = LayoutBodyTabChanged
      Index = 2
    end
    object LayoutGrid: TdxLayoutGroup
      Parent = LayoutBody
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object LayoutEdit: TdxLayoutGroup
      Parent = LayoutBody
      CaptionOptions.Text = 'Edi'#231#227'o'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object LayoutFinalDate: TdxLayoutItem
      Parent = LayoutFilter
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Final:'
      Control = dateEditFinalDate
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 100
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
      ControlOptions.ShowBorder = False
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
      ControlOptions.ShowBorder = False
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
      ControlOptions.ShowBorder = False
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
      ControlOptions.ShowBorder = False
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
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
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
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutEdit1: TdxLayoutGroup
      Parent = LayoutGroupEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
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
      ControlOptions.OriginalHeight = 22
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
      ControlOptions.OriginalHeight = 22
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
      ControlOptions.OriginalHeight = 22
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
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutEdit2: TdxLayoutGroup
      Parent = LayoutGroupEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
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
      ControlOptions.OriginalHeight = 22
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
      ControlOptions.OriginalHeight = 22
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
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object LayoutGroupEditGrids: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object LayoutGridDestinations: TdxLayoutGroup
      Parent = LayoutGroupEditGrids
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
      Parent = LayoutGroupEditGrids
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object LayoutTravelInputs: TdxLayoutGroup
      Parent = LayoutGroupEditGrids
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object LayoutFuelSupplies: TdxLayoutItem
      Parent = LayoutTravelFuelSupplies
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Abastecimentos'
      CaptionOptions.Layout = clTop
      Control = GridFuelSupplies
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutInputs: TdxLayoutItem
      Parent = LayoutTravelInputs
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Insumos'
      CaptionOptions.Layout = clTop
      Control = GridInputs
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutGroupEdit: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object LayoutEditFinal: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object LayoutMemo: TdxLayoutGroup
      Parent = LayoutEditFinal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object LayoutMemoObs: TdxLayoutItem
      Parent = LayoutMemo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = MemoObs
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutOptionsFinal: TdxLayoutGroup
      Parent = LayoutEditFinal
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ShowBorder = False
      Index = 1
    end
    object LayoutComboBoxStatus: TdxLayoutItem
      Parent = LayoutOptionsFinal
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Status:'
      Control = ComboBoxStatus
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutDataFinal: TdxLayoutGroup
      Parent = LayoutOptionsFinal
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutCurrencyEditFinalKM: TdxLayoutItem
      Parent = LayoutDataFinal
      AlignHorz = ahClient
      CaptionOptions.Text = 'KM Final:'
      Control = CurrencyEditFinalKM
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutReturnTime: TdxLayoutItem
      Parent = LayoutDataFinal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hora Retorno:'
      Control = TimeEditreturnTime
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutButtons: TdxLayoutGroup
      Parent = LayoutEdit
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object LayoutButtonReturn: TdxLayoutItem
      Parent = LayoutButtons
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonReturn
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutButtonSaveTravel: TdxLayoutItem
      Parent = LayoutButtons
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonSaveTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LayoutButtonFinalizeTravel: TdxLayoutItem
      Parent = LayoutButtons
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonFinalizeTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 888
    Top = 8
    object actionExitPage: TAction
      Category = 'Page'
      Caption = 'Sai&r'
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
      OnExecute = actionExportExecute
    end
    object actionSearch: TAction
      Category = 'Page'
      Caption = 'Pes&quisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
      OnExecute = actionSearchExecute
    end
    object actionEditTravel: TAction
      Category = 'Page'
      Caption = '&Editar'
      Hint = 'Editar viagem'
      ImageIndex = 95
    end
    object actionCancelTravel: TAction
      Category = 'Page'
      Caption = '&Cancelar Viagem'
      Hint = 'Cancelar viagem'
      ImageIndex = 84
    end
    object actionEndTravel: TAction
      Category = 'Page'
      Caption = '&Finalizar'
      Hint = 'Finalizar viagem'
      ImageIndex = 125
    end
    object actionPriorPage: TAction
      Category = 'Page'
      Caption = 'V&oltar'
      Hint = 'Voltar para a tela anterior'
      ImageIndex = 94
      ShortCut = 49238
      OnExecute = actionPriorPageExecute
    end
    object actionSaveTravel: TAction
      Category = 'Page'
      Caption = '&Salvar'
      Hint = 'Salvar a viagem'
      ImageIndex = 85
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
    object MemTableTravelInputsqtd_consumo: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_consumo'
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
      FieldName = 'val_total'
    end
  end
  object DataSourceFuelSupplies: TDataSource
    AutoEdit = False
    DataSet = MemTableFuelSupplies
    Left = 240
    Top = 16
  end
  object MemTableInputs: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 616
    Top = 16
    object MemTableInputsid_insumo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_insumo'
    end
    object MemTableInputsdes_insumo: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_insumo'
      Size = 100
    end
  end
  object DataSourceInputs: TDataSource
    AutoEdit = False
    DataSet = MemTableInputs
    Left = 664
    Top = 16
  end
end
