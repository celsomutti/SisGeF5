object viewGeneralSearch: TviewGeneralSearch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de '
  ClientHeight = 313
  ClientWidth = 658
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lcPesquisa: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 658
    Height = 313
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitWidth = 769
    ExplicitHeight = 455
    object grdPesquisa: TcxGrid
      Left = 10
      Top = 10
      Width = 638
      Height = 262
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = grdPesquisaEnter
      OnExit = grdPesquisaExit
      object tvPesquisa: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.First.Visible = True
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
        OnCellDblClick = tvPesquisaCellDblClick
        DataController.DataSource = dsPesquisa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object cxButton2: TcxButton
      Left = 478
      Top = 278
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actSelecionar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 573
      Top = 278
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      Cancel = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object lcPesquisaGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lcPesquisaItem2: TdxLayoutItem
      Parent = lcPesquisaGroup_Root
      AlignVert = avClient
      CaptionOptions.Layout = clTop
      Control = grdPesquisa
      ControlOptions.OriginalHeight = 345
      ControlOptions.OriginalWidth = 789
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcPesquisaItem4: TdxLayoutItem
      Parent = lcPesquisaGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcPesquisaGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcPesquisaGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object lcPesquisaItem5: TdxLayoutItem
      Parent = lcPesquisaGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actPesquisar: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 584
    object actSelecionar: TAction
      Caption = '&Selecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 83
      OnExecute = actSelecionarExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 98
      OnExecute = actFecharExecute
    end
    object actionLocalizar: TAction
      Caption = '&Pesquisar'
      Hint = 'Localizar registros'
      ImageIndex = 86
      OnExecute = actionLocalizarExecute
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = mtbPesquisa
    Left = 584
    Top = 48
  end
  object mtbPesquisa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 632
    Top = 48
  end
end
