object view_SisGeFSelectCompany: Tview_SisGeFSelectCompany
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Empresas'
  ClientHeight = 136
  ClientWidth = 385
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 385
    Height = 136
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.dxLayoutCxLookAndFeel2
    object cxButton1: TcxButton
      Left = 10
      Top = 101
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionOK
      Default = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 300
      Top = 101
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCancel
      Cancel = True
      TabOrder = 2
    end
    object company: TcxLookupComboBox
      Left = 10
      Top = 51
      Properties.KeyFieldNames = 'cod_empresa'
      Properties.ListColumns = <
        item
          FieldName = 'nom_fantasia'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCompany
      Style.HotTrack = False
      TabOrder = 0
      Width = 365
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
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Informe a Empresa que realizar'#225' o cr'#233'dito:'
      CaptionOptions.Layout = clTop
      Control = company
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object memTableCompany: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 112
    Top = 48
    object memTableCompanycod_empresa: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_empresa'
    end
    object memTableCompanynom_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nom_fantasia'
      Size = 70
    end
  end
  object dsCompany: TDataSource
    AutoEdit = False
    DataSet = memTableCompany
    Left = 200
    Top = 40
  end
  object actionListCompany: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 296
    Top = 48
    object actionOK: TAction
      Caption = 'OK'
      ImageIndex = 83
      OnExecute = actionOKExecute
    end
    object actionCancel: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar sele'#231#227'o'
      ImageIndex = 84
      OnExecute = actionCancelExecute
    end
  end
end
