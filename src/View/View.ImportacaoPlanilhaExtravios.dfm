object view_ImportacaoPlanilhaExtravios: Tview_ImportacaoPlanilhaExtravios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Importa'#231#227'o de Planilha de Produtos Extraviados'
  ClientHeight = 519
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
    Height = 519
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 727
      Top = 484
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 12
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
      Left = 24
      Top = 258
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
      TabOrder = 6
      Width = 99
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 439
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actImportar
      TabOrder = 10
    end
    object txtNomeEntregador: TcxTextEdit
      Left = 110
      Top = 303
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 678
    end
    object edtCodigoEntregador: TcxButtonEdit
      Left = 24
      Top = 303
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
      TabOrder = 8
      Text = '0'
      Width = 80
    end
    object edtArquivo: TcxButtonEdit
      Left = 24
      Top = 71
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
      TabOrder = 1
      Width = 764
    end
    object cboDescricaoExtravio: TcxComboBox
      Left = 129
      Top = 258
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
      TabOrder = 7
      Width = 659
    end
    object pbImportacao: TcxProgressBar
      Left = 24
      Top = 412
      TabOrder = 5
      Width = 764
    end
    object memObs: TcxMemo
      Left = 24
      Top = 348
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Height = 58
      Width = 764
    end
    object cliente: TcxLookupComboBox
      Left = 24
      Top = 119
      Hint = 'Cliente'
      ParentFont = False
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 764
    end
    object tipo: TcxRadioGroup
      Left = 24
      Top = 191
      Cursor = crHandPoint
      Hint = 'Selecione o tipo de extravio'
      Caption = ' Tipo de Extravio '
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'EXTRAVIO'
          Value = 0
        end
        item
          Caption = 'SINISTRO'
          Value = 1
        end
        item
          Caption = 'MULTA'
          Value = 2
        end>
      ItemIndex = 0
      TabOrder = 4
      Transparent = True
      Height = 43
      Width = 764
    end
    object cbxTMS: TcxComboBox
      Left = 24
      Top = 164
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'PLANCK'
        'ENGLOBA'
        'SIM EXPRESS'
        'STDCLIENTE'
        'SPX XPRESS')
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Selecione ...'
      Width = 764
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
      AlignVert = avClient
      CaptionOptions.Text = 'Importa'#231#227'o'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Planilha Local'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data do Evento'
      CaptionOptions.Layout = clTop
      Control = datEvento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nome do Entregador'
      CaptionOptions.Layout = clTop
      Control = txtNomeEntregador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 373
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 6
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Entregador'
      CaptionOptions.Layout = clTop
      Control = edtCodigoEntregador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 5
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Planilha'
      CaptionOptions.Layout = clTop
      Control = edtArquivo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 459
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Descri'#231#227'o '
      CaptionOptions.Layout = clTop
      Control = cboDescricaoExtravio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 354
      ControlOptions.ShowBorder = False
      Index = 1
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
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = memObs
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = cliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = tipo
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'TMS:'
      CaptionOptions.Layout = clTop
      Control = cbxTMS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
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
    Filter = 
      'Planilha Excel XLSX|*.xlsx|Planilha Excel XLS|*.xls|CSV (separad' +
      'o por virgulas)|*.csv'
    Left = 464
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 592
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 728
    Top = 8
  end
end
