object view_SisGeFWorksheetBIMERCP: Tview_SisGeFWorksheetBIMERCP
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Planilha Contas a Pagar BIMER'
  ClientHeight = 406
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 779
    Height = 406
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.dxLayoutCxLookAndFeel4
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Planilha de Contas a Pagar - BIMER'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gridBIMER: TcxGrid
      Left = 10
      Top = 36
      Width = 759
      Height = 329
      TabOrder = 1
      object gridBIMERDBTableView1: TcxGridDBTableView
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
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsBIMER
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridBIMERDBTableView1CampoEmpresa: TcxGridDBColumn
          DataBinding.FieldName = 'CampoEmpresa'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object gridBIMERDBTableView1CampoCodigoPessoa: TcxGridDBColumn
          DataBinding.FieldName = 'CampoCodigoPessoa'
          HeaderAlignmentHorz = taCenter
          Width = 106
        end
        object gridBIMERDBTableView1CampoNomeTitulo: TcxGridDBColumn
          DataBinding.FieldName = 'CampoNomeTitulo'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1CampoCNPJCPFPessoa: TcxGridDBColumn
          DataBinding.FieldName = 'CampoCNPJCPFPessoa'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1CampoDtEmissao: TcxGridDBColumn
          DataBinding.FieldName = 'CampoDtEmissao'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object gridBIMERDBTableView1CampoNumeroTitulo: TcxGridDBColumn
          DataBinding.FieldName = 'CampoNumeroTitulo'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1CampoDtVencimento: TcxGridDBColumn
          DataBinding.FieldName = 'CampoDtVencimento'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object gridBIMERDBTableView1CampoNaturezaLancamento: TcxGridDBColumn
          DataBinding.FieldName = 'CampoNaturezaLancamento'
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object gridBIMERDBTableView1CampoFormaPagamento: TcxGridDBColumn
          DataBinding.FieldName = 'CampoFormaPagamento'
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
        object gridBIMERDBTableView1CampoValorTitulo: TcxGridDBColumn
          DataBinding.FieldName = 'CampoValorTitulo'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1CampoAgencia: TcxGridDBColumn
          DataBinding.FieldName = 'CampoAgencia'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridBIMERDBTableView1CampoConta: TcxGridDBColumn
          DataBinding.FieldName = 'CampoConta'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1CampoBanco: TcxGridDBColumn
          DataBinding.FieldName = 'CampoBanco'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object gridBIMERDBTableView1CampoModalidade: TcxGridDBColumn
          DataBinding.FieldName = 'CampoModalidade'
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
      end
      object gridBIMERLevel1: TcxGridLevel
        GridView = gridBIMERDBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 371
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 694
      Top = 371
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
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
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 230
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridBIMER
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListBIMER: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 560
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do crid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
  end
  object dsBIMER: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableBIMERCP
    Left = 632
  end
end
