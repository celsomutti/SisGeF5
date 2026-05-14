object viewPNRImport: TviewPNRImport
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o de PNR'
  ClientHeight = 349
  ClientWidth = 590
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 590
    Height = 349
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    ExplicitLeft = 216
    ExplicitTop = 96
    ExplicitWidth = 300
    ExplicitHeight = 250
    object bteArquivo: TcxButtonEdit
      Left = 52
      Top = 10
      Hint = 'Informe o arquivo a sedr importado'
      Properties.Buttons = <
        item
          Action = actProcurarArquivo
          Default = True
          Kind = bkGlyph
        end>
      Properties.CharCase = ecUpperCase
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      Style.Shadow = False
      Style.ButtonTransparency = ebtNone
      TabOrder = 0
      Width = 438
    end
    object cxButton1: TcxButton
      Left = 496
      Top = 10
      Width = 84
      Height = 25
      Action = actImportarArquivo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object progressBar: TcxProgressBar
      Left = 10
      Top = 53
      TabStop = False
      Properties.TransparentImage = False
      Style.BorderStyle = ebsOffice11
      Style.TransparentBorder = True
      TabOrder = 2
      Width = 570
    end
    object memoLog: TcxMemo
      Left = 10
      Top = 98
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 3
      Height = 210
      Width = 570
    end
    object cxButton2: TcxButton
      Left = 505
      Top = 314
      Width = 75
      Height = 25
      Action = acSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Arquivo'
      Control = bteArquivo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Progresso'
      CaptionOptions.Visible = False
      Control = progressBar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'LOG'
      CaptionOptions.Layout = clTop
      Control = memoLog
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object aclImport: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 480
    Top = 120
    object actProcurarArquivo: TAction
      Caption = 'Procurar arquivo'
      Hint = 'Procurar o arquivo a ser importado'
      ImageIndex = 104
    end
    object actImportarArquivo: TAction
      Caption = '&Importar'
      Hint = 'Importar planilha PNR'
      ImageIndex = 103
    end
    object acSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = acSairExecute
    end
  end
  object openDialog: TOpenDialog
    DefaultExt = '*.xlsx'
    Filter = 
      'Pasta de Trabalho do Excel(*.xlsx)|*.xlsx|Pasta de Trabalho do E' +
      'xcel 97-2003(*.xls)|*.xls'
    Title = 'Abrir Planilha Excel'
    Left = 416
    Top = 120
  end
end
