object view_EnvioRespostaCTNC: Tview_EnvioRespostaCTNC
  Left = 0
  Top = 0
  Caption = 'Envio de Respostas do CTNC'
  ClientHeight = 521
  ClientWidth = 1032
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
    Width = 1032
    Height = 521
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Envio de Repostas do CTNC'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtArquivo: TcxButtonEdit
      Left = 10
      Top = 57
      Hint = 'Informe o arquivo da planilha de respostas do CTNC'
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
      TabOrder = 1
      Width = 895
    end
    object cxButton1: TcxButton
      Left = 936
      Top = 53
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Action = actImportar
      TabOrder = 2
    end
    object memLOG: TcxMemo
      Left = 10
      Top = 102
      Lines.Strings = (
        '')
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssBoth
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 89
      Width = 185
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 486
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actEnviar
      TabOrder = 6
    end
    object cxButton3: TcxButton
      Left = 947
      Top = 486
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 7
    end
    object pbImportacao: TcxDBProgressBar
      Left = 10
      Top = 461
      TabOrder = 5
      Width = 121
    end
    object lAnexos: TcxListBox
      Left = 901
      Top = 102
      Width = 121
      Height = 97
      ItemHeight = 13
      ReadOnly = True
      TabOrder = 4
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
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Arquivo'
      CaptionOptions.Layout = clTop
      Control = edtArquivo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'LOG'
      CaptionOptions.Layout = clTop
      Control = memLOG
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
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
      AlignHorz = ahClient
      CaptionOptions.Text = 'Progresso'
      CaptionOptions.Visible = False
      Control = pbImportacao
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Anexos'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = lAnexos
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
  end
  object dsREspostas: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbRespostas
    Left = 768
    Top = 8
  end
  object aclrespostas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 840
    Top = 8
    object actAbrir: TAction
      Category = 'Respostas'
      Caption = 'Abrir'
      Hint = 'Abrir arquivo'
      ImageIndex = 40
      OnExecute = actAbrirExecute
    end
    object actVisualizar: TAction
      Category = 'Respostas'
      Caption = 'Visualizar'
      Hint = 'Visualizar planilha selecionada'
      ImageIndex = 41
      OnExecute = actVisualizarExecute
    end
    object actImportar: TAction
      Category = 'Respostas'
      Caption = 'Importar'
      Hint = 'Importar arquivo informado'
      ImageIndex = 33
      OnExecute = actImportarExecute
    end
    object actEnviar: TAction
      Category = 'Respostas'
      Caption = 'Enviar'
      Enabled = False
      Hint = 'Enviar e-mails'
      ImageIndex = 48
      OnExecute = actEnviarExecute
    end
    object actFechar: TAction
      Category = 'Respostas'
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo CSV|*.csv'
    Title = 'Abrir planilha'
    Left = 704
    Top = 8
  end
end
