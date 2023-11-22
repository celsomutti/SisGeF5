object view_SisGefGeneralSearch: Tview_SisGefGeneralSearch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisar'
  ClientHeight = 455
  ClientWidth = 769
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lcPesquisa: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 769
    Height = 455
    Align = alClient
    TabOrder = 0
    object grdPesquisa: TcxGrid
      Left = 10
      Top = 68
      Width = 749
      Height = 346
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = grdPesquisaEnter
      OnExit = grdPesquisaExit
      object tvPesquisa: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.ImageIndex = 99
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 102
        Navigator.Buttons.Next.ImageIndex = 101
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 100
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.ImageIndex = 40
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 67
        Navigator.InfoPanel.DisplayMask = 'Registros encontrados [RecordCount]'
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
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Preview.AutoHeight = False
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object cxButton2: TcxButton
      Left = 589
      Top = 420
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actSelecionar
      TabOrder = 6
    end
    object cxButton3: TcxButton
      Left = 684
      Top = 420
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      Cancel = True
      TabOrder = 7
    end
    object textEditPesquisar: TcxTextEdit
      Left = 61
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 698
    end
    object cxButton1: TcxButton
      Left = 504
      Top = 420
      Width = 79
      Height = 25
      Cursor = crHandPoint
      Action = actionLocalizar
      Default = True
      TabOrder = 5
    end
    object cxButton4: TcxButton
      Left = 10
      Top = 37
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionPanelGroups
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton5: TcxButton
      Left = 91
      Top = 37
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton6: TcxButton
      Left = 172
      Top = 37
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionRetractGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object lcPesquisaGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
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
      Index = 2
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
      Index = 1
    end
    object lcPesquisaGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcPesquisaGroup_Root
      LayoutDirection = ldHorizontal
      Index = 3
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
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcPesquisaGroup_Root
      CaptionOptions.Text = 'Pesquisar'
      Visible = False
      Control = textEditPesquisar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lcPesquisaGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lcPesquisaGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actPesquisar: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 584
    object actSelecionar: TAction
      Category = 'Filter'
      Caption = '&Selecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 83
      OnExecute = actSelecionarExecute
    end
    object actFechar: TAction
      Category = 'Form'
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 98
      OnExecute = actFecharExecute
    end
    object actionLocalizar: TAction
      Category = 'Filter'
      Caption = '&Localizar'
      Hint = 'Localizar registros'
      ImageIndex = 100
      OnExecute = actionLocalizarExecute
    end
    object actionExpandGrid: TAction
      Category = 'Form'
      Caption = '&Expandir'
      Hint = 'Expandir as linhas dos grupos'
      ImageIndex = 106
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Category = 'Form'
      Caption = '&Retrair'
      Hint = 'Retrair as linhas dos grupos do grid'
      ImageIndex = 107
      OnExecute = actionRetractGridExecute
    end
    object actionPanelGroups: TAction
      Category = 'Form'
      Caption = '&Painel'
      Hint = 'Exibir o painel de forma'#231#227'o de grupos'
      ImageIndex = 110
      OnExecute = actionPanelGroupsExecute
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = memTablePesquisa
    Left = 584
    Top = 48
  end
  object memTablePesquisa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 696
    Top = 48
  end
end
