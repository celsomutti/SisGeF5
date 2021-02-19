object view_PesquisaEntregadoresExpressas: Tview_PesquisaEntregadoresExpressas
  Left = 0
  Top = 0
  Caption = 'Pesquisa Entregadores Expressas'
  ClientHeight = 472
  ClientWidth = 761
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object layoutControlHeader: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 761
    Height = 65
    Align = alTop
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object labelTitle: TcxLabel
      Left = 50
      Top = 21
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object layoutControlHeaderGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      Locked = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemTitle: TdxLayoutItem
      Parent = layoutControlHeaderGroup_Root
      AlignVert = avCenter
      CaptionOptions.ImageIndex = 51
      Control = labelTitle
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object layoutControlGrid: TdxLayoutControl
    Left = 0
    Top = 65
    Width = 761
    Height = 328
    Align = alTop
    TabOrder = 1
    object gridPesquisa: TcxGrid
      Left = 13
      Top = 46
      Width = 735
      Height = 269
      TabOrder = 3
      object gridPesquisaDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object gridPesquisaLevel1: TcxGridLevel
        GridView = gridPesquisaDBTableView1
      end
    end
    object buttonExpandir: TcxButton
      Left = 13
      Top = 13
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandirGrid
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      TabStop = False
    end
    object buttonRetrair: TcxButton
      Left = 105
      Top = 13
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = actionRetrairGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      TabStop = False
    end
    object checkBoxBarraGrupos: TcxCheckBox
      Left = 580
      Top = 13
      TabStop = False
      Caption = 'Exibir a Barra de Grupos'
      Properties.OnChange = checkBoxBarraGruposPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object layoutControlGridGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemGrid: TdxLayoutItem
      Parent = layoutControlGridGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Entregadores'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gridPesquisa
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemExpandir: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExpandir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemRetrair: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonRetrair
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGridGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemBarraGrupos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = checkBoxBarraGrupos
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionListPesquisa: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 592
    Top = 8
    object actionExpandirGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Expandir'
      Hint = 'Expandir os detalhes do Grid'
      ImageIndex = 38
      OnExecute = actionExpandirGridExecute
    end
    object actionRetrairGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Retrair'
      Hint = 'Retrair detalhes do Grid'
      ImageIndex = 37
      OnExecute = actionRetrairGridExecute
    end
  end
end
