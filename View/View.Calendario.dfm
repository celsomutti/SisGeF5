object view_Calendario: Tview_Calendario
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
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 457
    Height = 441
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 372
      Top = 406
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = acFechar
      Cancel = True
      TabOrder = 3
    end
    object CalendarView1: TCalendarView
      Left = 11
      Top = 11
      Width = 302
      Height = 246
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
    object cxLabel1: TcxLabel
      Left = 167
      Top = 393
      Caption = 'cxLabel1'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -27
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object ActivityIndicator1: TActivityIndicator
      Left = 204
      Top = 338
      FrameDelay = 120
      IndicatorSize = aisLarge
      IndicatorType = aitSectorRing
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
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
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      CaptionOptions.Text = 'ActivityIndicator1'
      CaptionOptions.Visible = False
      Control = ActivityIndicator1
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object aclCalendario: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 424
    Top = 8
    object acFechar: TAction
      Category = 'Calend'#225'rio'
      Caption = 'Fechar'
      ImageIndex = 17
      OnExecute = acFecharExecute
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 256
    Top = 16
  end
end
