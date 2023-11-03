object SisGeFERPChooseWorksheet: TSisGeFERPChooseWorksheet
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Selecionar a Planilha'
  ClientHeight = 286
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 364
    Height = 286
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object Panel1: TPanel
      Left = 89
      Top = 29
      Width = 185
      Height = 227
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Action = actionWorkSheetBIMER
        TabOrder = 0
      end
      object cxButton2: TcxButton
        Left = 0
        Top = 41
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Align = alTop
        Action = actionWorksheetOMIE
        TabOrder = 1
      end
      object cxButton3: TcxButton
        Left = 0
        Top = 186
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Align = alBottom
        Action = actionCloseForm
        TabOrder = 2
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = Panel1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 227
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 320
    Top = 24
    object actionWorkSheetBIMER: TAction
      Caption = 'BIMER'
      Hint = 'Gera planilha para o BIMER'
      ImageIndex = 113
      OnExecute = actionWorkSheetBIMERExecute
    end
    object actionWorksheetOMIE: TAction
      Caption = 'OMIE'
      Hint = 'Gera planilha para o OMIE'
      ImageIndex = 113
      OnExecute = actionWorksheetOMIEExecute
    end
    object actionCloseForm: TAction
      Caption = 'Fechar'
      Hint = 'Fechar esta tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
  end
end
