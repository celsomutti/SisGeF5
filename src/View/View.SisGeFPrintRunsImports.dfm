object view_SisGeFPrintRunsImports: Tview_SisGeFPrintRunsImports
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o de Tiragens'
  ClientHeight = 371
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 577
    Height = 371
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    ExplicitHeight = 346
    object nomeArquivo: TcxButtonEdit
      Left = 63
      Top = 12
      Hint = 'Nome do arquivo da planilha a ser importada'
      Properties.Buttons = <
        item
          Action = actionLocateFile
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 0
      Width = 409
    end
    object cxButton1: TcxButton
      Left = 479
      Top = 12
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Action = actionImportFile
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 482
      Top = 325
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionClose
      TabOrder = 8
    end
    object registrosEncontrados: TcxMaskEdit
      Left = 12
      Top = 65
      Hint = 'Total de registros encontrados no arquivo'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 2
      Text = '0'
      Width = 118
    end
    object registrosGravados: TcxMaskEdit
      Left = 12
      Top = 116
      Hint = 'Total de registros gravados'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 3
      Text = '0'
      Width = 118
    end
    object registrosRejeitados: TcxMaskEdit
      Left = 12
      Top = 167
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 4
      Text = '0'
      Width = 118
    end
    object memoLog: TcxMemo
      Left = 12
      Top = 220
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Height = 89
      Width = 553
    end
    object indicator: TdxActivityIndicator
      Left = 12
      Top = 316
      Width = 41
      Height = 43
      PropertiesClassName = 'TdxActivityIndicatorCircularDotsProperties'
      Transparent = True
    end
    object ultimasTiragens: TcxListBox
      Left = 228
      Top = 65
      Width = 121
      Height = 127
      ItemHeight = 15
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
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
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Arquivo:'
      Control = nomeArquivo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Registros encontrados'
      CaptionOptions.Layout = clTop
      Control = registrosEncontrados
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Registros gravados'
      CaptionOptions.Layout = clTop
      Control = registrosGravados
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Registros rejeitados'
      CaptionOptions.Layout = clTop
      Control = registrosRejeitados
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'LOG:'
      CaptionOptions.Layout = clTop
      Control = memoLog
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'dxActivityIndicator1'
      CaptionOptions.Visible = False
      Control = indicator
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 41
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Padding.AssignedValues = [lpavLeft, lpavRight]
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #217'ltimas Tiragens'
      CaptionOptions.Layout = clTop
      Control = ultimasTiragens
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 528
    Top = 72
    object actionLocateFile: TAction
      Caption = 'actionLocateFile'
      Hint = 'Localizar arquivo'
      ImageIndex = 104
      OnExecute = actionLocateFileExecute
    end
    object actionImportFile: TAction
      Caption = '&Importar'
      Hint = 'Importar arquivo de tiragem'
      ImageIndex = 103
      OnExecute = actionImportFileExecute
    end
    object actionClose: TAction
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseExecute
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 472
    Top = 88
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos CSV|*.csv'
    Title = 'Localizar arquivos'
    Left = 528
    Top = 128
  end
end
