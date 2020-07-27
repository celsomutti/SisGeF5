object view_ImportarBaixasTFO: Tview_ImportarBaixasTFO
  Left = 0
  Top = 0
  Caption = 'Importar Baixas'
  ClientHeight = 360
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 784
    Height = 360
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Importar Baixas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtArquivo: TcxButtonEdit
      Left = 167
      Top = 56
      ParentFont = False
      Properties.Buttons = <
        item
          Action = actAbrir
          Default = True
          Kind = bkGlyph
        end
        item
          Action = actVisualizar
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 526
    end
    object cxButton1: TcxButton
      Left = 699
      Top = 53
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actImportar
      TabOrder = 3
    end
    object memLog: TcxMemo
      Left = 10
      Top = 129
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Height = 190
      Width = 764
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 325
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      TabOrder = 6
    end
    object cxButton3: TcxButton
      Left = 699
      Top = 325
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 7
    end
    object pbImportacao: TcxProgressBar
      Left = 10
      Top = 84
      TabOrder = 4
      Width = 764
    end
    object cboCliente: TcxComboBox
      Left = 10
      Top = 56
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'TRANSFOLHA'
        'DIRECT')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 151
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Arquivo'
      CaptionOptions.Layout = clTop
      Control = edtArquivo
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'LOG'
      CaptionOptions.Layout = clTop
      Control = memLog
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Progresso'
      CaptionOptions.Visible = False
      Visible = False
      Control = pbImportacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = cboCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo CSV|*.csv|Todos arquivos|*.*'
    FilterIndex = 0
    Title = 'Importar Planilha de Baixas'
    Left = 568
    Top = 8
  end
  object aclBaixas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 616
    Top = 8
    object actFechar: TAction
      Category = 'Importar'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actAbrir: TAction
      Category = 'Importar'
      Caption = 'Abrir'
      Hint = 'Abrir arquivo de planilha de baixas TFO'
      ImageIndex = 40
      OnExecute = actAbrirExecute
    end
    object actImportar: TAction
      Category = 'Importar'
      Caption = 'Importar'
      Hint = 'Imprtar arquivo de planilha de baixas TFO'
      ImageIndex = 33
      OnExecute = actImportarExecute
    end
    object actCancelar: TAction
      Category = 'Importar'
      AutoCheck = True
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar a importa'#231#227'o'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actVisualizar: TAction
      Category = 'Importar'
      Caption = 'Visualizar'
      Hint = 'Visualizar planilha'
      ImageIndex = 41
      OnExecute = actVisualizarExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 376
    Top = 24
  end
end
