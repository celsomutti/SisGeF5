object PageTravelControl: TPageTravelControl
  Left = 0
  Top = 0
  Caption = 'Controle de Viagens'
  ClientHeight = 497
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
    Height = 497
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
    object dateEditInicial: TcxDateEdit
      Left = 107
      Top = 60
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 100
    end
    object dateEditFinalDate: TcxDateEdit
      Left = 287
      Top = 60
      Properties.SaveTime = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 100
    end
    object ButtonSearch: TcxButton
      Left = 673
      Top = 59
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionSearch
      TabOrder = 5
    end
    object gridTravels: TcxGrid
      Left = 26
      Top = 121
      Width = 989
      Height = 350
      TabOrder = 9
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
        OnCellDblClick = gridTravelsDBTableView1CellDblClick
        DataController.DataSource = dataSourceTravels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        object gridTravelsDBTableView1id_controle: TcxGridDBColumn
          DataBinding.FieldName = 'id_controle'
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
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
      Left = 26
      Top = 90
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Action = actionNewTravel
      TabOrder = 6
    end
    object ButtonExportation: TcxButton
      Left = 258
      Top = 90
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionExport
      TabOrder = 8
    end
    object ButtonEditTravel: TcxButton
      Left = 152
      Top = 90
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Action = actionEditTravel
      TabOrder = 7
    end
    object maskEditTravelID: TcxMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'ID da viagem'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 10
      Text = '0'
      Visible = False
      Width = 60
    end
    object DateEditTravelDate: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da viagem'
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 100
    end
    object ComboBoxTravelOperation: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Tipo de opera'#231#227'o'
      Properties.Items.Strings = (
        'Selecione ...'
        'COLETA'
        'DISTRIBUI'#199#195'O'
        'ENTREGA'
        'MANUTEN'#199#195'O'
        'TRANSFER'#202'NCIA')
      Style.HotTrack = False
      TabOrder = 12
      Text = 'Selecione ...'
      Visible = False
      Width = 139
    end
    object ButtonEdittravelCodeTaker: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do tomador do servi'#231'o'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionSearchTaker
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Properties.OnChange = ButtonEdittravelCodeTakerPropertiesChange
      Properties.OnValidate = ButtonEdittravelCodeTakerPropertiesValidate
      Style.HotTrack = False
      TabOrder = 13
      Text = '0'
      Visible = False
      Width = 93
    end
    object TextEditTravelNameTaker: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do tomador do servi'#231'o'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 359
    end
    object ButtonEditTravelDriverCode: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do motorista'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionSearchDrivers
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Properties.OnChange = ButtonEditTravelDriverCodePropertiesChange
      Properties.OnValidate = ButtonEditTravelDriverCodePropertiesValidate
      Style.HotTrack = False
      TabOrder = 15
      Text = '0'
      Visible = False
      Width = 111
    end
    object TextEditTravelDriverName: TcxTextEdit
      Left = 10000
      Top = 10000
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 254
    end
    object ButtonEditTavelVehicle: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'Placa do ve'#237'culo'
      Properties.Buttons = <
        item
          Action = actionSearchVehicles
          Default = True
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 120
    end
    object CurrencyEditTravelInitialKM: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0.;-,0.'
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 110
    end
    object TimeEditTravelDepartureTime: TcxTimeEdit
      Left = 10000
      Top = 10000
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 101
    end
    object GridTravelDestinations: TcxGrid
      Left = 10000
      Top = 10000
      Width = 326
      Height = 200
      TabOrder = 20
      Visible = False
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
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.ImageIndex = 116
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dataSourceTravelDestinations
        DataController.DetailKeyFieldNames = 'None selected'
        DataController.KeyFieldNames = 'num_destination'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        OptionsView.ShowColumnFilterButtons = sfbWhenSelected
        object GridTravelDestinationsDBTableView1num_destination: TcxGridDBColumn
          Caption = 'N'#186'.'
          DataBinding.FieldName = 'num_destination'
          SortIndex = 0
          SortOrder = soAscending
          Width = 64
        end
        object GridTravelDestinationsDBTableView1cod_destino1: TcxGridDBColumn
          DataBinding.FieldName = 'cod_destino'
          Visible = False
          Width = 84
        end
        object GridTravelDestinationsDBTableView1des_destino1: TcxGridDBColumn
          DataBinding.FieldName = 'des_destino'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Action = actionSearchBases
              Default = True
              Kind = bkGlyph
            end>
          Properties.Images = Data_Sisgef.iml_16_16
          Width = 376
        end
        object GridTravelDestinationsDBTableView1cod_agente1: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agente'
          Visible = False
          Width = 84
        end
      end
      object GridTravelDestinationsLevel1: TcxGridLevel
        GridView = GridTravelDestinationsDBTableView1
      end
    end
    object GridFuelSupplies: TcxGrid
      Left = 10000
      Top = 10000
      Width = 325
      Height = 200
      TabOrder = 21
      Visible = False
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
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
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
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
        end
      end
      object GridFuelSuppliesLevel1: TcxGridLevel
        GridView = GridFuelSuppliesDBTableView1
      end
    end
    object GridInputs: TcxGrid
      Left = 10000
      Top = 10000
      Width = 326
      Height = 200
      TabOrder = 22
      Visible = False
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
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
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
      Left = 10000
      Top = 10000
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Height = 50
      Width = 387
    end
    object CurrencyEditFinalKM: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Width = 121
    end
    object TimeEditreturnTime: TcxTimeEdit
      Left = 10000
      Top = 10000
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 121
    end
    object ButtonReturn: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionPriorPage
      TabOrder = 28
      Visible = False
    end
    object ButtonSaveTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveTravel
      TabOrder = 29
      Visible = False
    end
    object ButtonFinalizeTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionEndTravel
      TabOrder = 31
      Visible = False
    end
    object CurrencyEditTotalKM: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'KM total'
      TabStop = False
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ',0.;-,0.'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 121
    end
    object ImageComboBox1Status: TcxImageComboBox
      Left = 10000
      Top = 10000
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
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Width = 544
    end
    object ButtonCancelTravel: TcxButton
      Left = 10000
      Top = 10000
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelTravel
      TabOrder = 30
      Visible = False
    end
    object ImageComboBoxFilterStatus: TcxImageComboBox
      Left = 455
      Top = 60
      EditValue = '-1'
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.Items = <
        item
          Description = 'TODOS'
          ImageIndex = 127
          Value = -1
        end
        item
          Description = 'EM ANDAMENTO'
          ImageIndex = 123
          Value = 0
        end
        item
          Description = 'FINALIZADA'
          ImageIndex = 125
          Value = 1
        end
        item
          Description = 'CANCELADA'
          ImageIndex = 84
          Value = 2
        end>
      Style.HotTrack = False
      TabOrder = 4
      Width = 202
    end
    object LabelInform: TcxLabel
      Left = 10000
      Top = 10000
      Caption = 'Aguarde ...'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold, fsItalic]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Visible = False
    end
    object LayoutContainerGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
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
    object LayoutFilter: TdxLayoutGroup
      Parent = LayoutGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
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
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      OnTabChanged = LayoutBodyTabChanged
      Index = 1
    end
    object LayoutGrid: TdxLayoutGroup
      Parent = LayoutBody
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
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
      Offsets.Left = 10
      Control = ButtonSearch
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
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
      ItemIndex = 2
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
      Index = 2
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
      ControlOptions.OriginalWidth = 139
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
      ControlOptions.OriginalWidth = 93
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
      ShowBorder = False
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
      ShowBorder = False
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
      ShowBorder = False
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
    object LayoutDataFinal: TdxLayoutGroup
      Parent = LayoutOptionsFinal
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object LayoutCurrencyEditFinalKM: TdxLayoutItem
      Parent = LayoutDataFinal
      AlignHorz = ahClient
      AlignVert = avTop
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
      ItemIndex = 2
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
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonFinalizeTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LayoutTotalKM: TdxLayoutItem
      Parent = LayoutDataFinal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Total KM:'
      Control = CurrencyEditTotalKM
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutImageComboStatus: TdxLayoutItem
      Parent = LayoutOptionsFinal
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Status:'
      Control = ImageComboBox1Status
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LayoutButtonCancelTravel: TdxLayoutItem
      Parent = LayoutButtons
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = ButtonCancelTravel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 171
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutFilterStatus: TdxLayoutItem
      Parent = LayoutFilter
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Status:'
      Offsets.Left = 10
      Control = ImageComboBoxFilterStatus
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 202
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object LayoutLabemInform: TdxLayoutItem
      Parent = LayoutButtons
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Visible = False
      Control = LabelInform
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 4
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
      OnExecute = actionNewTravelExecute
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
      OnExecute = actionEditTravelExecute
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
      ImageIndex = 83
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
      OnExecute = actionSaveTravelExecute
    end
    object actionSearchTaker: TAction
      Category = 'Form'
      Caption = 'Tomadores'
      Hint = 'Localizar Tomadores'
      ImageIndex = 86
      OnExecute = actionSearchTakerExecute
    end
    object actionSearchDrivers: TAction
      Category = 'Form'
      Caption = 'Motoristas'
      Hint = 'Localizar Motoristas'
      ImageIndex = 86
      OnExecute = actionSearchDriversExecute
    end
    object actionSearchVehicles: TAction
      Category = 'Form'
      Caption = 'Ve'#237'culos'
      Hint = 'Localizar Ve'#237'culos'
      ImageIndex = 86
      OnExecute = actionSearchVehiclesExecute
    end
    object actionSearchBases: TAction
      Category = 'Form'
      Caption = 'Bases'
      Hint = 'Localizar Bases'
      ImageIndex = 86
      OnExecute = actionSearchBasesExecute
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
    object MemTableTravelDestinationnum_destination: TAutoIncField
      FieldName = 'num_destination'
    end
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
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvCheckRequired, uvAutoCommitUpdates]
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
      OnValidate = MemTableFuelSuppliesval_unitarioValidate
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
