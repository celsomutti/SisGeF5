object view_SisGeFImportWorksheetExpress: Tview_SisGeFImportWorksheetExpress
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o de Planilhas de Expressas'
  ClientHeight = 500
  ClientWidth = 880
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 880
    Height = 500
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object panelDragandDrop: TPanel
      Left = 13
      Top = 46
      Width = 854
      Height = 51
      BevelKind = bkFlat
      BevelOuter = bvNone
      Caption = 'Arraste e solte os arquivos das planilhas nesta '#225'rea'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object labelLocateFile1: TcxLabel
      Left = 13
      Top = 105
      Caption = 'Clique '
      Style.HotTrack = False
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 65
      Top = 105
      Width = 64
      Height = 21
      Cursor = crHandPoint
      Action = actionLocateFile
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object labelLocateFile2: TcxLabel
      Left = 137
      Top = 105
      Caption = 'para localizar o arquivos'
      Style.HotTrack = False
      Transparent = True
    end
    object indicador: TdxActivityIndicator
      Left = 13
      Top = 444
      Width = 854
      Height = 10
      PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
      Transparent = True
    end
    object cxButton4: TcxButton
      Left = 784
      Top = 462
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 16
    end
    object tipoArquivo: TcxComboBox
      Left = 116
      Top = 13
      Hint = 'Selecione o tipo de arquivo.'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Entregas'
        'Baixas'
        'Tracking'
        'Lojas Direct')
      Properties.OnChange = tipoArquivoPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Selecione ...'
      Width = 117
    end
    object cliente: TcxLookupComboBox
      Left = 289
      Top = 13
      Hint = 'Selecione o cliente'
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      Properties.OnChange = clientePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 248
    end
    object cxButton5: TcxButton
      Left = 13
      Top = 167
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Action = actionImportWorksheet
      TabOrder = 8
    end
    object cxButton6: TcxButton
      Left = 114
      Top = 167
      Width = 96
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelImport
      Cancel = True
      TabOrder = 9
    end
    object totalRegistros: TcxMaskEdit
      Left = 13
      Top = 223
      Hint = 'Total de registros'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 10
      Text = '0'
      Width = 121
    end
    object registrosGravados: TcxMaskEdit
      Left = 13
      Top = 279
      Hint = 'Total de registros gravados'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 11
      Text = '0'
      Width = 121
    end
    object registrosIgnorados: TcxMaskEdit
      Left = 13
      Top = 335
      Hint = 'Total de registros ignorados'
      Properties.Alignment.Horz = taRightJustify
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 12
      Text = '0'
      Width = 121
    end
    object log: TcxMemo
      Left = 142
      Top = 223
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.HotTrack = False
      TabOrder = 14
      Height = 213
      Width = 725
    end
    object arquivoSelecionado: TcxButtonEdit
      Left = 142
      Top = 134
      TabStop = False
      Properties.Buttons = <
        item
          Action = actionDeleteSelectedFiles
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 725
    end
    object progressBar: TcxProgressBar
      Left = 13
      Top = 391
      TabOrder = 13
      Width = 121
    end
    object comboTMS: TcxComboBox
      Left = 580
      Top = 13
      Properties.Items.Strings = (
        'Selecione ...'
        'PLANCK'
        'ENGLOBA'
        'SIM EXPRESS'
        'STDCLIENTE')
      Properties.OnChange = comboTMSPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Selecione ...'
      Width = 181
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemControlAreaAlignment = catNone
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = panelDragandDrop
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 51
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelLocateFile1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelLocateFile2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 149
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'dxActivityIndicator1'
      CaptionOptions.Visible = False
      Control = indicador
      ControlOptions.OriginalHeight = 10
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Arquivo:'
      Control = tipoArquivo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Cliente:'
      Visible = False
      Control = cliente
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 248
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Total de registros'
      CaptionOptions.Layout = clTop
      Control = totalRegistros
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Registros Gravados'
      CaptionOptions.Layout = clTop
      Control = registrosGravados
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Registros Ignorados'
      CaptionOptions.Layout = clTop
      Control = registrosIgnorados
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'LOG'
      CaptionOptions.Layout = clTop
      Control = log
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Arquivo Selecionado:'
      Control = arquivoSelecionado
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'Progresso:'
      CaptionOptions.Layout = clTop
      Control = progressBar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'TMS:'
      Control = comboTMS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 717
    Top = 21
    object actionLocateFile: TAction
      Caption = '&AQUI'
      Enabled = False
      Hint = 'Localizar arquivo'
      ImageIndex = 104
      OnExecute = actionLocateFileExecute
    end
    object actionDeleteSelectedFiles: TAction
      Caption = '&Excluir'
      Hint = 'Excluir arquivos selecionados'
      ImageIndex = 90
      OnExecute = actionDeleteSelectedFilesExecute
    end
    object actionDeleteAllFiles: TAction
      Caption = '&Limpar'
      Hint = 'Limpar lista de arquivos selecionados'
      ImageIndex = 120
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fechar o formul'#225'rio'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionImportWorksheet: TAction
      Caption = '&Importar'
      Hint = 'Importar planilhas selecionadas'
      ImageIndex = 103
      OnExecute = actionImportWorksheetExecute
    end
    object actionCancelImport: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar importa'#231#227'o'
      ImageIndex = 84
      OnExecute = actionCancelImportExecute
    end
    object actionViewWorsheet: TAction
      Caption = 'Visuslizar'
      Hint = 'Visualizar planilha'
      ImageIndex = 88
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 768
    Top = 24
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 664
    Top = 24
  end
end
