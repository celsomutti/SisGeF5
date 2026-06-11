object viewImportaPedidos: TviewImportaPedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impota'#231#227'o de Pedidos'
  ClientHeight = 412
  ClientWidth = 650
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
    Width = 650
    Height = 412
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object bteArquivo: TcxButtonEdit
      Left = 52
      Top = 40
      ParentFont = False
      Properties.Buttons = <
        item
          Action = actAbrir
          Default = True
          Kind = bkGlyph
        end
        item
          Action = actLimpar
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 492
    end
    object cxButton1: TcxButton
      Left = 550
      Top = 40
      Width = 90
      Height = 25
      Action = aclImportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 541
      Top = 377
      Width = 99
      Height = 25
      Action = aclSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object progressBar: TcxDBProgressBar
      Left = 22
      Top = 159
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 606
    end
    object txtEncontrados: TcxTextEdit
      Left = 131
      Top = 101
      Hint = 'Quantidade de pedidos encontrados'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      TabOrder = 5
      Text = '0'
      Width = 70
    end
    object txtProcessados: TcxTextEdit
      Left = 316
      Top = 101
      Hint = 'Quantidade de pedidos processados'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = '0'
      Width = 70
    end
    object bteCodigoCliente: TcxButtonEdit
      Left = 52
      Top = 10
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisarCliente
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.OnChange = bteCodigoClientePropertiesChange
      Properties.OnValidate = bteCodigoClientePropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = '0'
      Width = 93
    end
    object txtNomeCliente: TcxTextEdit
      Left = 151
      Top = 10
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 489
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Arquivo'
      Control = bteArquivo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxDBProgressBar1'
      CaptionOptions.Visible = False
      Control = progressBar
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Pedidos encontrados:'
      Control = txtEncontrados
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Pedidos Processados:'
      Control = txtProcessados
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Cliente:'
      Control = bteCodigoCliente
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Visible = False
      Control = txtNomeCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxNavigator1: TcxNavigator
    Left = 0
    Top = 22
    Width = 2
    Height = 25
    Buttons.CustomButtons = <>
    Buttons.First.Visible = False
    Buttons.PriorPage.Visible = False
    Buttons.Prior.Visible = False
    Buttons.Next.Visible = False
    Buttons.NextPage.Visible = False
    Buttons.Last.Visible = False
    Buttons.Insert.Visible = False
    Buttons.Delete.Visible = False
    Buttons.Edit.Visible = False
    Buttons.Post.Visible = False
    Buttons.Cancel.Visible = False
    Buttons.Refresh.Visible = False
    Buttons.SaveBookmark.Visible = False
    Buttons.GotoBookmark.Visible = False
    Buttons.Filter.Visible = False
    InfoPanel.Visible = True
    InfoPanel.Width = 10
    TabOrder = 1
  end
  object aclImportacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 592
    Top = 72
    object aclImportar: TAction
      Caption = '&Importar'
      Hint = 'Importar o arquivo'
      ImageIndex = 103
      OnExecute = aclImportarExecute
    end
    object aclSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = aclSairExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir o arquivo'
      ImageIndex = 104
      OnExecute = actAbrirExecute
    end
    object actLimpar: TAction
      Caption = 'Limpar'
      Hint = 'Limpar o arquivo'
      ImageIndex = 84
      OnExecute = actLimparExecute
    end
    object actPesquisarCliente: TAction
      Caption = 'Pesquisar Cliente'
      Hint = 'Pesquisar cliente'
      ImageIndex = 86
      OnExecute = actPesquisarClienteExecute
    end
  end
  object batchMoveDataSetReaderPedidos: TFDBatchMoveDataSetReader
    DataSet = Data_Sisgef.memPedidosBlink
    Left = 56
    Top = 200
  end
  object batchMovePedidos: TFDBatchMove
    Reader = Data_Sisgef.batchMoveDataSetReaderOrdersShopee
    Writer = batchMoveDataSetWriterPedidos
    Options = [poIdentityInsert, poSkipUnmatchedDestFields]
    Mappings = <
      item
        SourceFieldName = 'Pedido'
        DestinationFieldName = 'NUM_NOSSONUMERO'
      end
      item
        SourceExpression = '0'
        DestinationFieldName = 'COD_AGENTE'
      end
      item
        SourceExpression = '0'
        DestinationFieldName = 'COD_ENTREGADOR'
      end
      item
        SourceExpression = '0'
        DestinationFieldName = 'COD_CLIENTE'
      end
      item
        SourceExpression = #39'0'#39
        DestinationFieldName = 'NUM_NF'
      end
      item
        SourceExpression = #39'CONSUMIDOR'#39
        DestinationFieldName = 'NOM_CONSUMIDOR'
      end
      item
        SourceExpression = #39'00000-000'#39
        DestinationFieldName = 'NOM_CIDADE'
      end
      item
        SourceExpression = '1'
        DestinationFieldName = 'QTD_VOLUMES'
      end
      item
        SourceFieldName = 'HoraEntrega'
        DestinationFieldName = 'DAT_EXPEDICAO'
      end
      item
        SourceFieldName = 'RotaLH'
        DestinationFieldName = 'DES_RETORNO'
      end
      item
        SourceFieldName = 'NumeroTO'
        DestinationFieldName = 'NUM_PEDIDO'
      end
      item
        SourceFieldName = 'Rastreio'
        DestinationFieldName = 'DES_RASTREIO'
      end
      item
        SourceFieldName = 'HoraEntrega'
        DestinationFieldName = 'DAT_RECEBIDO'
      end
      item
        SourceExpression = #39'S'#39
        DestinationFieldName = 'DOM_RECEBIDO'
      end
      item
        SourceFieldName = 'idCliente'
        DestinationFieldName = 'COD_CLIENTE_EMPRESA'
      end>
    LogFileName = 'Data.log'
    StatisticsInterval = 1
    Analyze = [taDelimSep, taHeader, taFields]
    OnProgress = batchMovePedidosProgress
    OnFindDestRecord = batchMovePedidosFindDestRecord
    Left = 150
    Top = 200
  end
  object batchMoveDataSetWriterPedidos: TFDBatchMoveDataSetWriter
    Optimise = False
    Left = 240
    Top = 200
  end
end
