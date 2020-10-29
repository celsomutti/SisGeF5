object view_ImportacaoPlanilhaExtravios: Tview_ImportacaoPlanilhaExtravios
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Importa'#231#227'o de Planilha de Produtos Extraviados'
  ClientHeight = 460
  ClientWidth = 812
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 812
    Height = 460
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 727
      Top = 425
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 9
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Importa'#231#227'o de Planilha de Produtos Extraviados'
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
    object datEvento: TcxDateEdit
      Left = 22
      Top = 140
      Hint = 'Data do evento'
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 99
    end
    object cxButton2: TcxButton
      Left = 22
      Top = 382
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actImportar
      TabOrder = 7
    end
    object txtNomeEntregador: TcxTextEdit
      Left = 108
      Top = 185
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 373
    end
    object edtCodigoEntregador: TcxButtonEdit
      Left = 22
      Top = 185
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 14
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnButtonClick = edtCodigoEntregadorPropertiesButtonClick
      Properties.OnChange = edtCodigoEntregadorPropertiesChange
      Properties.OnValidate = edtCodigoEntregadorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Text = '0'
      Width = 80
    end
    object edtArquivo: TcxButtonEdit
      Left = 22
      Top = 95
      Hint = 'Arquivo da planilha'
      ParentFont = False
      Properties.Buttons = <
        item
          Action = actAbrirArquivo
          Default = True
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
      Width = 443
    end
    object cboDescricaoExtravio: TcxComboBox
      Left = 127
      Top = 140
      Hint = 'Descri'#231#227'o do extravio'
      ParentFont = False
      Properties.Items.Strings = (
        '16-FALHA DO CONTROLE '#9
        '17-FOR'#199'ADO POR ATRASO'#9
        '18-FOR'#199'ADO POR PERDA DO PRODUTO'#9
        '19-FURTO INTERNO NA FRANQUIA'#9
        '20-LR - PRODUTO COLETADO FORA DOS PADR'#213'ES'#9
        '21-FALTA NO CONTAINER OU ROMANEIO  S/ ANOTA'#199#195'O NO ROMANEIO'
        '22-MULTA POR ENTREGA EM LOCAL INDEVIDO'
        '23-MULTA POR PROTOCOLO RASURADO/INCORRETO'
        '24-EXTRAVIO NA IDA - TFO'
        '25-DEVOLU'#199#195'O DE PRODUTO ENTREGUE'
        '99-ROUBO'
        '98-ASSALTO NA ENTREGA (COM B.O.)')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 354
    end
    object pbImportacao: TcxProgressBar
      Left = 22
      Top = 357
      TabOrder = 1
      Width = 121
    end
    object memObs: TcxMemo
      Left = 22
      Top = 230
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 89
      Width = 185
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
      CaptionOptions.Text = 'Importa'#231#227'o'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Planilha Local'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Planilha TFO'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data do Evento'
      CaptionOptions.Layout = clTop
      Control = datEvento
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Nome do Entregador'
      CaptionOptions.Layout = clTop
      Control = txtNomeEntregador
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Entregador'
      CaptionOptions.Layout = clTop
      Control = edtCodigoEntregador
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Planilha'
      CaptionOptions.Layout = clTop
      Control = edtArquivo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Descri'#231#227'o '
      CaptionOptions.Layout = clTop
      Control = cboDescricaoExtravio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Progresso'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Visible = False
      Control = pbImportacao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = memObs
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object aclImportarExtravio: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 656
    object actFechar: TAction
      Category = 'Importa'#231#227'o de Extravios'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actImportar: TAction
      Category = 'Importa'#231#227'o de Extravios'
      Caption = 'Importar'
      Hint = 'Importar planilha'
      ImageIndex = 33
      OnExecute = actImportarExecute
    end
    object actAbrirArquivo: TAction
      Category = 'Importa'#231#227'o de Extravios'
      Caption = 'Abrir'
      Hint = 'Abrir arquivo de planilha'
      ImageIndex = 40
      OnExecute = actAbrirArquivoExecute
    end
  end
  object dsImportacao: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbImportacaoExtravios
    Left = 552
  end
  object OpenDialog: TOpenDialog
    Filter = 'CSV (separado por virgulas)|*.csv'
    Left = 464
  end
end
