object viewAcareacoes: TviewAcareacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Acarea'#231#245'es'
  ClientHeight = 517
  ClientWidth = 1044
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1044
    Height = 517
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object cxButton1: TcxButton
      Left = 959
      Top = 482
      Width = 75
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 33
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Action = actNovo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 105
      Top = 24
      Width = 75
      Height = 25
      Action = actEditar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 198
      Top = 24
      Width = 75
      Height = 25
      Action = actExportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object btePesquisa: TcxButtonEdit
      Left = 291
      Top = 24
      Hint = 'Par'#226'metros de pesquisa (Ctrl+Enter)'
      Properties.Buttons = <
        item
          Action = actPesquisar
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
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      TextHint = 'Procurar por ...'
      Width = 729
    end
    object gridAcareacoes: TcxGrid
      Left = 24
      Top = 98
      Width = 996
      Height = 352
      TabOrder = 7
      object gridAcareacoesDBTableView1: TcxGridDBTableView
        OnDblClick = gridAcareacoesDBTableView1DblClick
        Navigator.Buttons.OnButtonClick = gridAcareacoesDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Limpar o grid'
            ImageIndex = 84
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Hint = 'Primeiro registro'
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Hint = 'Registro anterior'
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo registro'
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Hint = #218'ltimo registro'
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsAcareacao
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0'
            Kind = skCount
            Position = spFooter
            Column = gridAcareacoesDBTableView1SEQ_ACAREACAO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridAcareacoesDBTableView1VAL_MULTA
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridAcareacoesDBTableView1VAL_EXTRAVIO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0'
            Kind = skCount
            Column = gridAcareacoesDBTableView1SEQ_ACAREACAO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = gridAcareacoesDBTableView1VAL_MULTA
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = gridAcareacoesDBTableView1VAL_EXTRAVIO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object gridAcareacoesDBTableView1SEQ_ACAREACAO: TcxGridDBColumn
          Caption = 'N'#186' Acarea'#231#227'o'
          DataBinding.FieldName = 'SEQ_ACAREACAO'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object gridAcareacoesDBTableView1ID_ACAREACAO: TcxGridDBColumn
          Caption = 'ID Acarea'#231#227'o'
          DataBinding.FieldName = 'ID_ACAREACAO'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object gridAcareacoesDBTableView1COD_CLIENTE: TcxGridDBColumn
          Caption = 'C'#243'd. Cliente'
          DataBinding.FieldName = 'COD_CLIENTE'
          Visible = False
        end
        object gridAcareacoesDBTableView1NOM_CLIENTE: TcxGridDBColumn
          Caption = 'Nome Cliente'
          DataBinding.FieldName = 'NOM_CLIENTE'
          Width = 184
        end
        object gridAcareacoesDBTableView1DAT_ACAREACAO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DAT_ACAREACAO'
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object gridAcareacoesDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn
          Caption = 'SPXTN \ Remessa'
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          HeaderAlignmentHorz = taCenter
          Width = 239
        end
        object gridAcareacoesDBTableView1COD_ENTREGADOR: TcxGridDBColumn
          Caption = 'C'#243'd. Motorista'
          DataBinding.FieldName = 'COD_ENTREGADOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object gridAcareacoesDBTableView1NOM_MOTORISTA: TcxGridDBColumn
          Caption = 'Nome do Motorista'
          DataBinding.FieldName = 'NOM_MOTORISTA'
          HeaderAlignmentHorz = taCenter
          Width = 263
        end
        object gridAcareacoesDBTableView1COD_BASE: TcxGridDBColumn
          Caption = 'C'#243'd. Base'
          DataBinding.FieldName = 'COD_BASE'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1NOM_BASE: TcxGridDBColumn
          Caption = 'Nome da Base'
          DataBinding.FieldName = 'NOM_BASE'
          HeaderAlignmentHorz = taCenter
          Width = 264
        end
        object gridAcareacoesDBTableView1DAT_ENTREGA: TcxGridDBColumn
          Caption = 'Data Entrega'
          DataBinding.FieldName = 'DAT_ENTREGA'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object gridAcareacoesDBTableView1DES_MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'DES_MOTIVO'
          HeaderAlignmentHorz = taCenter
          Width = 328
        end
        object gridAcareacoesDBTableView1DES_TRATATIVA: TcxGridDBColumn
          Caption = 'Tratativa'
          DataBinding.FieldName = 'DES_TRATATIVA'
          HeaderAlignmentHorz = taCenter
          Width = 300
        end
        object gridAcareacoesDBTableView1DES_APURACAO: TcxGridDBColumn
          Caption = 'Apura'#231#227'o'
          DataBinding.FieldName = 'DES_APURACAO'
          HeaderAlignmentHorz = taCenter
          Width = 319
        end
        object gridAcareacoesDBTableView1DES_RESULTADO: TcxGridDBColumn
          Caption = 'Resultado'
          DataBinding.FieldName = 'DES_RESULTADO'
          HeaderAlignmentHorz = taCenter
          Width = 218
        end
        object gridAcareacoesDBTableView1VAL_EXTRAVIO: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VAL_EXTRAVIO'
          HeaderAlignmentHorz = taCenter
          Width = 121
        end
        object gridAcareacoesDBTableView1VAL_MULTA: TcxGridDBColumn
          Caption = 'Multa'
          DataBinding.FieldName = 'VAL_MULTA'
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object gridAcareacoesDBTableView1DES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn
          Caption = 'Correspondencia Envio'
          DataBinding.FieldName = 'DES_ENVIO_CORRESPONDENCIA'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn
          Caption = 'Correspondencia Retorno'
          DataBinding.FieldName = 'DES_RETORNO_CORRESPONDENCIA'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DES_OBSERVACOES: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'DES_OBSERVACOES'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DOM_FINALIZAR: TcxGridDBColumn
          Caption = 'Finalizada'
          DataBinding.FieldName = 'DOM_FINALIZAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object gridAcareacoesDBTableView1DES_EXECUTOR: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'DES_EXECUTOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DAT_MANUTENCAO: TcxGridDBColumn
          Caption = 'Manuten'#231#227'o'
          DataBinding.FieldName = 'DAT_MANUTENCAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object gridAcareacoesDBTableView1DAT_RETORNO: TcxGridDBColumn
          Caption = 'Data Retorno'
          DataBinding.FieldName = 'DAT_RETORNO'
          HeaderAlignmentHorz = taCenter
          Width = 113
        end
        object gridAcareacoesDBTableView1DES_UNIDADE: TcxGridDBColumn
          Caption = 'Unidade'
          DataBinding.FieldName = 'DES_UNIDADE'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1NOM_CONSUMIDOR: TcxGridDBColumn
          Caption = 'Nome Consumidor'
          DataBinding.FieldName = 'NOM_CONSUMIDOR'
          HeaderAlignmentHorz = taCenter
          Width = 252
        end
        object gridAcareacoesDBTableView1DES_ENDERECO: TcxGridDBColumn
          Caption = 'Endere'#231'o'
          DataBinding.FieldName = 'DES_ENDERECO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1NUM_ENDERECO: TcxGridDBColumn
          Caption = 'N'#186'.'
          DataBinding.FieldName = 'NUM_ENDERECO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DES_BAIRRO: TcxGridDBColumn
          Caption = 'Bairro'
          DataBinding.FieldName = 'DES_BAIRRO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 205
        end
        object gridAcareacoesDBTableView1DES_CIDADE: TcxGridDBColumn
          Caption = 'Cidade'
          DataBinding.FieldName = 'DES_CIDADE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 271
        end
        object gridAcareacoesDBTableView1NUM_CEP: TcxGridDBColumn
          Caption = 'CEP'
          DataBinding.FieldName = 'NUM_CEP'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DES_REMETENTE: TcxGridDBColumn
          Caption = 'Remetente'
          DataBinding.FieldName = 'DES_REMETENTE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 191
        end
        object gridAcareacoesDBTableView1DES_PRODUTO: TcxGridDBColumn
          Caption = 'Produto'
          DataBinding.FieldName = 'DES_PRODUTO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 378
        end
        object gridAcareacoesDBTableView1NOM_RECEBEDOR: TcxGridDBColumn
          Caption = 'Nome Recebedor'
          DataBinding.FieldName = 'NOM_RECEBEDOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 303
        end
        object gridAcareacoesDBTableView1DES_IDENTIFICACAO: TcxGridDBColumn
          Caption = 'Identifica'#231#227'o Recebedor'
          DataBinding.FieldName = 'DES_IDENTIFICACAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridAcareacoesDBTableView1DES_DOCUMENTO: TcxGridDBColumn
          Caption = 'Documento Recebedor'
          DataBinding.FieldName = 'DES_DOCUMENTO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridAcareacoesLevel1: TcxGridLevel
        GridView = gridAcareacoesDBTableView1
      end
    end
    object cxButton5: TcxButton
      Left = 24
      Top = 67
      Width = 25
      Height = 25
      Action = actExpandir
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton6: TcxButton
      Left = 55
      Top = 67
      Width = 25
      Height = 25
      Action = actRetrair
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton7: TcxButton
      Left = 86
      Top = 67
      Width = 25
      Height = 25
      Action = actPainel
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object dbCodigo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da acarea'#231#227'o'
      TabStop = False
      DataBinding.DataField = 'SEQ_ACAREACAO'
      DataBinding.DataSource = dsAcareacao
      ParentFont = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Visible = False
      Width = 76
    end
    object dbIdAcareacao: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do cliente da acarea'#231#227'o'
      DataBinding.DataField = 'ID_ACAREACAO'
      DataBinding.DataSource = dsAcareacao
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Visible = False
      Width = 156
    end
    object dbIdPedido: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Id do pedido'
      DataBinding.DataField = 'NUM_NOSSONUMERO'
      DataBinding.DataSource = dsAcareacao
      ParentFont = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Visible = False
      Width = 151
    end
    object dbCodigoCliente: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do cliente'
      DataBinding.DataField = 'COD_CLIENTE'
      DataBinding.DataSource = dsAcareacao
      Properties.Buttons = <
        item
          Action = actPesquisarClientes
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = dbCodigoClientePropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Visible = False
      Width = 76
    end
    object dbData: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da acarea'#231#227'o'
      DataBinding.DataField = 'DAT_ACAREACAO'
      DataBinding.DataSource = dsAcareacao
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Visible = False
      Width = 99
    end
    object dbConsumidor: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do consumidor'
      DataBinding.DataField = 'NOM_CONSUMIDOR'
      DataBinding.DataSource = dsAcareacao
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 387
    end
    object dbMotivo: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Motivo da acarea'#231#227'o'
      DataBinding.DataField = 'DES_MOTIVO'
      DataBinding.DataSource = dsAcareacao
      Properties.Items.Strings = (
        'FALTANTE'
        'AVARIA'
        'PERDIDO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Visible = False
      Width = 433
    end
    object dbDataEntrega: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da entrega do pedido'
      DataBinding.DataField = 'DAT_ENTREGA'
      DataBinding.DataSource = dsAcareacao
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 19
      Visible = False
      Width = 121
    end
    object dbValorMulta: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'Valor da multa aplicada'
      DataBinding.DataField = 'VAL_MULTA'
      DataBinding.DataSource = dsAcareacao
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 121
    end
    object dbMulta: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'Valor do produto'
      DataBinding.DataField = 'VAL_EXTRAVIO'
      DataBinding.DataSource = dsAcareacao
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 121
    end
    object dbTratativa: TcxDBComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DES_TRATATIVA'
      DataBinding.DataSource = dsAcareacao
      Properties.Items.Strings = (
        ''
        'Tratativa realizada pelo driver'
        'Tratativa via WhatsApp')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Visible = False
      Width = 433
    end
    object dbApuracao: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Apura'#231#227'o realizada'
      DataBinding.DataField = 'DES_APURACAO'
      DataBinding.DataSource = dsAcareacao
      Properties.Items.Strings = (
        ''
        'ENTREGA LOCAL INDEVIDO'
        'EMBALGEM VIOLADA'
        'EMBALAGEM LACRADA'
        'ENTREGA RESOLVIDA'
        'AVARIA EM PODER DO ENTREGADOR/BASE'
        'PRODUTO N'#195'O ENTREGUE'
        'PRODUTO INCOMPLETO'
        'FALTA DE RETORNO'
        'ENTREGA N'#195'O COMPROVADA')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 25
      Visible = False
      Width = 433
    end
    object dbDataRetorno: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data do prazo de resposta'
      DataBinding.DataField = 'DAT_RETORNO'
      DataBinding.DataSource = dsAcareacao
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 22
      Visible = False
      Width = 121
    end
    object dbResultado: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Resultado da apura'#231#227'o'
      DataBinding.DataField = 'DES_RESULTADO'
      DataBinding.DataSource = dsAcareacao
      ParentFont = False
      Properties.Items.Strings = (
        ''
        'PROCEDENTE'
        'IMPROCEDENTE')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      Style.IsFontAssigned = True
      TabOrder = 26
      Visible = False
      Width = 349
    end
    object dbStatus: TcxDBCheckBox
      Left = 10000
      Top = 10000
      TabStop = False
      Caption = 'PENDENTE'
      DataBinding.DataField = 'DOM_FINALIZAR'
      DataBinding.DataSource = dsAcareacao
      ParentFont = False
      Properties.Alignment = taLeftJustify
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = dbStatusPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Transparent = True
      Visible = False
    end
    object dbObs: TcxDBMemo
      Left = 10000
      Top = 10000
      Hint = 'Obsercacoes'
      DataBinding.DataField = 'DES_OBSERVACOES'
      DataBinding.DataSource = dsAcareacao
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
      Height = 89
      Width = 996
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actRetornar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 29
      Visible = False
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actGravar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 32
      Visible = False
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actFinalizar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 31
      Visible = False
    end
    object dbCodigoMotorista: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do motorista'
      DataBinding.DataField = 'COD_ENTREGADOR'
      DataBinding.DataSource = dsAcareacao
      Properties.Buttons = <
        item
          Action = actPesquisaEntregador
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnValidate = dbCodigoMotoristaPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 14
      Visible = False
      Width = 96
    end
    object dbNomeMotorista: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do motorista'
      DataBinding.DataField = 'NOM_MOTORISTA'
      DataBinding.DataSource = dsAcareacao
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 354
    end
    object dbCodigoBase: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo da base'
      DataBinding.DataField = 'COD_BASE'
      DataBinding.DataSource = dsAcareacao
      Properties.Buttons = <
        item
          Action = actPesquisaBases
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnValidate = dbCodigoBasePropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Visible = False
      Width = 86
    end
    object dbNomeBase: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da base'
      DataBinding.DataField = 'NOM_BASE'
      DataBinding.DataSource = dsAcareacao
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 364
    end
    object dbNomeCliente: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do cliente'
      TabStop = False
      DataBinding.DataField = 'NOM_CLIENTE'
      DataBinding.DataSource = dsAcareacao
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 200
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 80
      Height = 25
      Action = actAnexar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 30
      Visible = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpFooter: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgpContainer: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object lgpGrid: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpMenu: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpMenu
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpMenu
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgpMenu
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgpGrid
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lgpMenu
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar'
      CaptionOptions.Visible = False
      Control = btePesquisa
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = lgpMenu
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridAcareacoes
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'N'#186'.'
      Control = dbCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'ID Acarea'#231#227'o'
      Control = dbIdAcareacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'ID Pedido'
      Control = dbIdPedido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      Control = dbCodigoCliente
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Data'
      Control = dbData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Dados da acarea'#231#227'o'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      SizeOptions.Width = 480
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tratativa'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avTop
      CaptionOptions.Text = 'Consumidor'
      Control = dbConsumidor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Motivo'
      Control = dbMotivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 223
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data Entrega'
      Control = dbDataEntrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Valor Multa'
      Control = dbValorMulta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Valor Produto'
      Control = dbMulta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Tratativa'
      Control = dbTratativa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Apura'#231#227'o'
      Control = dbApuracao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data Prazo'
      Control = dbDataRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Hint = 'Resultado da apura'#231#227'o'
      CaptionOptions.Text = 'Resultado'
      Control = dbResultado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dbStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup6
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = dbObs
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lgpCadastro
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignVert = avClient
      CaptionOptions.Text = 'Motorista'
      Control = dbCodigoMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = dbNomeMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 258
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Base'
      Control = dbCodigoBase
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = dbNomeBase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBTextEdit1'
      CaptionOptions.Visible = False
      Control = dbNomeCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object mtbAcareacao: TFDMemTable
    AfterInsert = mtbAcareacaoAfterInsert
    AfterEdit = mtbAcareacaoAfterEdit
    BeforePost = mtbAcareacaoBeforePost
    FieldDefs = <
      item
        Name = 'SEQ_ACAREACAO'
        DataType = ftAutoInc
      end
      item
        Name = 'ID_ACAREACAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COD_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'NOM_CLIENTE'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DAT_ACAREACAO'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'NUM_NOSSONUMERO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'COD_ENTREGADOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOM_MOTORISTA'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'COD_BASE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOM_BASE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DAT_ENTREGA'
        DataType = ftDate
      end
      item
        Name = 'DES_MOTIVO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DES_TRATATIVA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DES_APURACAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DES_RESULTADO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VAL_EXTRAVIO'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'VAL_MULTA'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'DES_ENVIO_CORRESPONDENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DES_RETORNO_CORRESPONDENCIA'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_OBSERVACOES'
        DataType = ftMemo
      end
      item
        Name = 'DOM_FINALIZAR'
        DataType = ftShortint
      end
      item
        Name = 'DES_EXECUTOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DAT_MANUTENCAO'
        DataType = ftDateTime
      end
      item
        Name = 'DAT_RETORNO'
        DataType = ftDateTime
      end
      item
        Name = 'DES_UNIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOM_CONSUMIDOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_ENDERECO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NUM_ENDERECO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DES_BAIRRO'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_CIDADE'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NUM_CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DES_REMETENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DES_PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NOM_RECEBEDOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DES_IDENTIFICACAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DES_DOCUMENTO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 808
    Top = 48
    object mtbAcareacaoSEQ_ACAREACAO: TFDAutoIncField
      FieldName = 'SEQ_ACAREACAO'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object mtbAcareacaoID_ACAREACAO: TStringField
      FieldName = 'ID_ACAREACAO'
      Required = True
      Size = 100
    end
    object mtbAcareacaoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object mtbAcareacaoNOM_CLIENTE: TStringField
      FieldName = 'NOM_CLIENTE'
      Size = 70
    end
    object mtbAcareacaoDAT_ACAREACAO: TDateTimeField
      FieldName = 'DAT_ACAREACAO'
      Required = True
    end
    object mtbAcareacaoNUM_NOSSONUMERO: TStringField
      FieldName = 'NUM_NOSSONUMERO'
      Required = True
      Size = 50
    end
    object mtbAcareacaoCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
      Required = True
    end
    object mtbAcareacaoNOM_MOTORISTA: TStringField
      FieldName = 'NOM_MOTORISTA'
      Size = 70
    end
    object mtbAcareacaoCOD_BASE: TIntegerField
      FieldName = 'COD_BASE'
      Required = True
    end
    object mtbAcareacaoNOM_BASE: TStringField
      FieldName = 'NOM_BASE'
      Size = 80
    end
    object mtbAcareacaoDAT_ENTREGA: TDateField
      FieldName = 'DAT_ENTREGA'
    end
    object mtbAcareacaoDES_MOTIVO: TStringField
      FieldName = 'DES_MOTIVO'
      Size = 100
    end
    object mtbAcareacaoDES_TRATATIVA: TStringField
      FieldName = 'DES_TRATATIVA'
      Size = 100
    end
    object mtbAcareacaoDES_APURACAO: TStringField
      FieldName = 'DES_APURACAO'
      Size = 100
    end
    object mtbAcareacaoDES_RESULTADO: TStringField
      FieldName = 'DES_RESULTADO'
      Size = 100
    end
    object mtbAcareacaoVAL_EXTRAVIO: TFloatField
      FieldName = 'VAL_EXTRAVIO'
    end
    object mtbAcareacaoVAL_MULTA: TFloatField
      FieldName = 'VAL_MULTA'
    end
    object mtbAcareacaoDES_ENVIO_CORRESPONDENCIA: TStringField
      FieldName = 'DES_ENVIO_CORRESPONDENCIA'
    end
    object mtbAcareacaoDES_RETORNO_CORRESPONDENCIA: TStringField
      FieldName = 'DES_RETORNO_CORRESPONDENCIA'
      Size = 70
    end
    object mtbAcareacaoDES_OBSERVACOES: TMemoField
      FieldName = 'DES_OBSERVACOES'
      BlobType = ftMemo
    end
    object mtbAcareacaoDOM_FINALIZAR: TShortintField
      FieldName = 'DOM_FINALIZAR'
    end
    object mtbAcareacaoDES_EXECUTOR: TStringField
      FieldName = 'DES_EXECUTOR'
    end
    object mtbAcareacaoDAT_MANUTENCAO: TDateTimeField
      FieldName = 'DAT_MANUTENCAO'
    end
    object mtbAcareacaoDAT_RETORNO: TDateTimeField
      FieldName = 'DAT_RETORNO'
    end
    object mtbAcareacaoDES_UNIDADE: TStringField
      FieldName = 'DES_UNIDADE'
    end
    object mtbAcareacaoNOM_CONSUMIDOR: TStringField
      FieldName = 'NOM_CONSUMIDOR'
      Size = 70
    end
    object mtbAcareacaoDES_ENDERECO: TStringField
      FieldName = 'DES_ENDERECO'
      Size = 70
    end
    object mtbAcareacaoNUM_ENDERECO: TStringField
      FieldName = 'NUM_ENDERECO'
      Size = 11
    end
    object mtbAcareacaoDES_BAIRRO: TStringField
      FieldName = 'DES_BAIRRO'
      Size = 70
    end
    object mtbAcareacaoDES_CIDADE: TStringField
      FieldName = 'DES_CIDADE'
      Size = 70
    end
    object mtbAcareacaoNUM_CEP: TStringField
      FieldName = 'NUM_CEP'
      Size = 9
    end
    object mtbAcareacaoDES_REMETENTE: TStringField
      FieldName = 'DES_REMETENTE'
    end
    object mtbAcareacaoDES_PRODUTO: TStringField
      FieldName = 'DES_PRODUTO'
      Size = 100
    end
    object mtbAcareacaoNOM_RECEBEDOR: TStringField
      FieldName = 'NOM_RECEBEDOR'
      Size = 70
    end
    object mtbAcareacaoDES_IDENTIFICACAO: TStringField
      FieldName = 'DES_IDENTIFICACAO'
      Size = 40
    end
    object mtbAcareacaoDES_DOCUMENTO: TStringField
      FieldName = 'DES_DOCUMENTO'
    end
  end
  object dsAcareacao: TDataSource
    DataSet = mtbAcareacao
    Left = 856
    Top = 48
  end
  object aclAcareacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 928
    Top = 48
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Nova acarea'#231#227'o'
      ImageIndex = 97
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar acarea'#231#227'o'
      ImageIndex = 95
      OnExecute = actEditarExecute
    end
    object actPesquisar: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar acarea'#231#245'es'
      ImageIndex = 86
      OnExecute = actPesquisarExecute
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar a acarea'#231#227'o'
      ImageIndex = 85
      OnExecute = actGravarExecute
    end
    object actFinalizar: TAction
      Tag = 201055
      Caption = 'Finali&zar'
      Hint = 'Finalizar acarea'#231#227'o'
      ImageIndex = 83
      OnExecute = actFinalizarExecute
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dos dados do grid'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actLimpar: TAction
      Caption = 'Limpar'
      Hint = 'Limpar o par'#226'metro'
      ImageIndex = 120
      OnExecute = actLimparExecute
    end
    object actExpandir: TAction
      Caption = 'Expandir'
      Hint = 'Expandir o grid'
      ImageIndex = 106
      OnExecute = actExpandirExecute
    end
    object actRetrair: TAction
      Caption = 'Retrair'
      Hint = 'Retrair o grid'
      ImageIndex = 107
      OnExecute = actRetrairExecute
    end
    object actPainel: TAction
      Caption = 'Painel'
      Hint = 'Exibir o painel de grupos'
      ImageIndex = 110
      OnExecute = actPainelExecute
    end
    object actRetornar: TAction
      Caption = 'Ret&ornar'
      Hint = 'Retornar '#224' tela de pesquisa'
      ImageIndex = 108
      OnExecute = actRetornarExecute
    end
    object actPesquisarClientes: TAction
      Caption = 'Pesquisa Cliente'
      Hint = 'Pesquisar clientes'
      ImageIndex = 86
      OnExecute = actPesquisarClientesExecute
    end
    object actPesquisaEntregador: TAction
      Caption = 'Pesquisa Entregador'
      Hint = 'Pesquisar motorista'
      ImageIndex = 86
      OnExecute = actPesquisaEntregadorExecute
    end
    object actPesquisaBases: TAction
      Caption = 'Pesquisa Base'
      Hint = 'Pesquisar Bases'
      ImageIndex = 86
      OnExecute = actPesquisaBasesExecute
    end
    object actAnexar: TAction
      Caption = 'Anexar'
      Hint = 'Anexar documentos'
      ImageIndex = 99
    end
  end
end
