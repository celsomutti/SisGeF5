object view_SisGeFPrintRunsImports: Tview_SisGeFPrintRunsImports
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o de Tiragens'
  ClientHeight = 346
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 577
    Height = 346
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object nomeArquivo: TcxButtonEdit
      Left = 56
      Top = 10
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
      Width = 419
    end
    object cxButton1: TcxButton
      Left = 481
      Top = 10
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Action = actionImportFile
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 484
      Top = 302
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionClose
      TabOrder = 7
    end
    object registrosEncontrados: TcxMaskEdit
      Left = 10
      Top = 59
      Hint = 'Total de registros encontrados no arquivo'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 2
      Text = '0'
      Width = 109
    end
    object registrosGravados: TcxMaskEdit
      Left = 10
      Top = 104
      Hint = 'Total de registros gravados'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 3
      Text = '0'
      Width = 109
    end
    object registrosRejeitados: TcxMaskEdit
      Left = 10
      Top = 149
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 4
      Text = '0'
      Width = 109
    end
    object memoLog: TcxMemo
      Left = 10
      Top = 194
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Height = 93
      Width = 557
    end
    object indicator: TdxActivityIndicator
      Left = 10
      Top = 293
      Width = 41
      Height = 43
      PropertiesClassName = 'TdxActivityIndicatorCircularDotsProperties'
      Transparent = True
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
      Index = 2
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
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Registros encontrados'
      CaptionOptions.Layout = clTop
      Control = registrosEncontrados
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Registros gravados'
      CaptionOptions.Layout = clTop
      Control = registrosGravados
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Registros rejeitados'
      CaptionOptions.Layout = clTop
      Control = registrosRejeitados
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'LOG:'
      CaptionOptions.Layout = clTop
      Control = memoLog
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
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
