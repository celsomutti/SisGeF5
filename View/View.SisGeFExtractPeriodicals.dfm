object view_SisGeFExtractPeriodicals: Tview_SisGeFExtractPeriodicals
  Left = 0
  Top = 0
  Caption = 'Extrato de Peri'#243'dicos'
  ClientHeight = 454
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 677
    Height = 454
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object dataInicial: TcxDateEdit
      Left = 72
      Top = 12
      Hint = 'Informe a data inicial do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 0
      Width = 77
    end
    object dataFinal: TcxDateEdit
      Left = 212
      Top = 12
      Hint = 'Informe a data final do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 1
      Width = 81
    end
    object cxButton1: TcxButton
      Left = 592
      Top = 10
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionRunProcess
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 388
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportDataGrid
      TabOrder = 4
    end
    object cxButton3: TcxButton
      Left = 91
      Top = 388
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClearDataGrid
      TabOrder = 5
    end
    object gridExtract: TcxGrid
      Left = 10
      Top = 41
      Width = 657
      Height = 341
      TabOrder = 3
      object gridExtractDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
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
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'TOTAL: ,0;-,0'
            Kind = skSum
            Column = gridExtractDBTableView1qtd_tiragem
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridExtractDBTableView1cod_macro: TcxGridDBColumn
          DataBinding.FieldName = 'cod_macro'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object gridExtractDBTableView1des_macro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_macro'
          HeaderAlignmentHorz = taCenter
          Width = 405
        end
        object gridExtractDBTableView1qtd_tiragem: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_tiragem'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0;-,0'
          HeaderAlignmentHorz = taCenter
          Width = 148
        end
      end
      object gridExtractLevel1: TcxGridLevel
        GridView = gridExtractDBTableView1
      end
    end
    object cxButton4: TcxButton
      Left = 592
      Top = 419
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 6
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      Control = dataInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Final:'
      Control = dataFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridExtract
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 472
    Top = 8
    object actionRunProcess: TAction
      Caption = '&Processar'
      Hint = 'Processar extrato'
      ImageIndex = 109
      OnExecute = actionRunProcessExecute
    end
    object actionExportDataGrid: TAction
      Caption = 'E&xportar'
      Enabled = False
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actionExportDataGridExecute
    end
    object actionClearDataGrid: TAction
      Caption = 'Li&mpar'
      Enabled = False
      Hint = 'Limpar dados do grid'
      ImageIndex = 114
      OnExecute = actionClearDataGridExecute
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fechar janela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
  end
  object memTableExtract: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 8
    object memTableExtractcod_macro: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_macro'
    end
    object memTableExtractdes_macro: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_macro'
      Size = 70
    end
    object memTableExtractqtd_tiragem: TFMTBCDField
      DisplayLabel = 'Tiragem'
      FieldName = 'qtd_tiragem'
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = memTableExtract
    OnStateChange = dsStateChange
    Left = 528
    Top = 8
  end
end
