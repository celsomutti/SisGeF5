object View_PesquisarPessoas: TView_PesquisarPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisar'
  ClientHeight = 442
  ClientWidth = 804
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001001800680300001600000028000000100000002000
    0000010018000000000040030000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000105A8C080808000000000000000000000000000000000000000000000000
    000000000000000000000000000000105A8C0094B5105A8C0808080000000000
    00000000000000000000000000000000000000000000000000000000105A8C00
    94B5105A8C0808080000000000000000000000000000008C8C8C4A4A4A080808
    0808084A4A4A313131105A8C0094B5105A8C0808080000000000000000000000
    000000006B6B6B313131736B4A736B4A736B4A5A5A5A313131183942105A8C08
    08080000000000000000000000000000008C8C8C3131319C8C639C8C639C8C63
    9C8C63736B4A736B4A3131312121210000000000000000000000000000000000
    004A4A4A9C8C63D6C6A5CEBD84B5A57BB5A57B9C8C63736B4A5A5A5A4A4A4A00
    0000000000000000000000000000000000080808D6C6A5EFE7B5EFE7B5D6C6A5
    CEBD84B5A57B9C8C63736B4A0808080000000000000000000000000000000000
    00080808D6C6A5EFE7B5EFE7B5EFE7B5D6C6A5B5A57B9C8C63736B4A08080800
    00000000000000000000000000000000004A4A4AB5A57BEFE7B5EFE7B5EFE7B5
    EFE7B5CEBD849C8C63736B4A4A4A4A0000000000000000000000000000000000
    008C8C8C4A4A4AD6C6A5EFE7B5EFE7B5EFE7B5D6C6A59C8C633131318C8C8C00
    00000000000000000000000000000000000000006B6B6B4A4A4AB5A57BD6C6A5
    D6C6A59C8C633131316B6B6B0000000000000000000000000000000000000000
    000000000000008C8C8C4A4A4A0808080808084A4A4A8C8C8C00000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFF70000FFE30000FFC10000FF830000E0070000C00F0000801F0000801F
    0000801F0000801F0000801F0000801F0000C03F0000E07F0000FFFF0000}
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
    Width = 804
    Height = 442
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitWidth = 1038
    ExplicitHeight = 570
    object grdPesquisa: TcxGrid
      Left = 10
      Top = 37
      Width = 784
      Height = 364
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object cxButton2: TcxButton
      Left = 624
      Top = 407
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actSelecionar
      TabOrder = 3
    end
    object cxButton3: TcxButton
      Left = 719
      Top = 407
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      Cancel = True
      TabOrder = 4
    end
    object textEditPesquisar: TcxTextEdit
      Left = 61
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 733
    end
    object cxButton1: TcxButton
      Left = 539
      Top = 407
      Width = 79
      Height = 25
      Cursor = crHandPoint
      Action = actionLocalizar
      Default = True
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
      Index = 1
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
      Index = 2
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
  end
  object actPesquisar: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 584
    object actSelecionar: TAction
      Caption = '&Selecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 1
      OnExecute = actSelecionarExecute
    end
    object actFechar: TAction
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actionLocalizar: TAction
      Caption = 'Localizar'
      Hint = 'Localizar registros'
      ImageIndex = 12
      OnExecute = actionLocalizarExecute
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = qryPesquisa
    Left = 584
    Top = 48
  end
  object qryPesquisa: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 648
    Top = 48
  end
end
