object view_SisGeFCalendar: Tview_SisGeFCalendar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Calend'#225'rio'
  ClientHeight = 441
  ClientWidth = 457
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 457
    Height = 441
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 364
      Top = 406
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      Cancel = True
      TabOrder = 2
    end
    object CalendarView1: TCalendarView
      Left = 11
      Top = 11
      Width = 435
      Height = 388
      Cursor = crHandPoint
      BorderStyle = bsNone
      Date = 43378.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      HeaderInfo.DaysOfWeekFont.Color = clWindowText
      HeaderInfo.DaysOfWeekFont.Height = -13
      HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      HeaderInfo.DaysOfWeekFont.Style = []
      HeaderInfo.Font.Charset = DEFAULT_CHARSET
      HeaderInfo.Font.Color = clWindowText
      HeaderInfo.Font.Height = -20
      HeaderInfo.Font.Name = 'Segoe UI'
      HeaderInfo.Font.Style = []
      ParentFont = False
      ShowFirstOfGroupLabel = True
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 406
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionSelectionDay
      Default = True
      TabOrder = 1
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'CalendarView1'
      CaptionOptions.Visible = False
      Control = CalendarView1
      ControlOptions.OriginalHeight = 246
      ControlOptions.OriginalWidth = 302
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object aclCalendario: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 424
    Top = 16
    object actionCloseForm: TAction
      Category = 'Calend'#225'rio'
      Caption = '&Fechar'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionSelectionDay: TAction
      Category = 'Calend'#225'rio'
      Caption = '&Selecionar'
      Hint = 'Selecionar dia'
      ImageIndex = 83
      OnExecute = actionSelectionDayExecute
    end
  end
end
