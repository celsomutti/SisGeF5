object view_ExtraviosMultas: Tview_ExtraviosMultas
  Left = 0
  Top = 0
  Caption = 'Extravios de Produtos e Multas'
  ClientHeight = 546
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1075
    Height = 546
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object cxLabel1: TcxLabel
      Left = 48
      Top = 11
      Caption = 'Extravios de Produtos e Multas'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton10: TcxButton
      Left = 989
      Top = 510
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 37
    end
    object txtNossoNumero: TcxTextEdit
      Left = 233
      Top = 98
      Hint = 'Nosso n'#250'mero'
      ParentFont = False
      Properties.OnValidate = txtNossoNumeroPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 141
    end
    object cboMotivo: TcxComboBox
      Left = 380
      Top = 98
      Hint = 'Selecione ou informe o motivo do extravio ou da multa'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '01-ENTREGA LOCAL INDEVIDO'
        '02-CORREIO INTERNO'
        '03-EMBALGEM VIOLADA'
        '04-EMBALAGEM LACRADA'
        '05-ENTREGA RESOLVIDA'
        '06-AVARIA EM PODER DO ENTREGADOR/AGENTE'
        '07-PRODUTO N'#195'O ENTREGUE'
        '08-PRODUTO INCOMPLETO'
        '09-DEVOLU'#199#195'O DA DECLARA'#199#195'O'
        '10-EXTRAVIO - FALTA DE RETORNO'
        '11-PERDEU O PRAZO PARA DEFESA'
        '12-EXTRAVIO-ENTREGA N'#195'O COMPROVADA'
        '13-AVARIA DO PRODUTO NA TRANSFER'#202'NCIA'#9
        '14-AVARIA NA DEVOLU'#199#195'O'#9
        '15-EXTRAVIO PARCIAL'#9
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
        '26-MULTA BAIXA INDEVIDA'
        '27-MULTA INFORMATIVO FALSO'
        '28-EXTRAVIO DEVOLU'#199#195'O-ERRO PROCESSO FRANQUIA'
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
      Width = 251
    end
    object datExtravio: TcxDateEdit
      Left = 637
      Top = 98
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 121
    end
    object txtCodigoEntregador: TcxButtonEdit
      Left = 764
      Top = 98
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisaEntregador
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = txtCodigoEntregadorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = '0'
      Width = 83
    end
    object txtNomeEntregador: TcxTextEdit
      Left = 853
      Top = 98
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 187
    end
    object dblValorProduto: TcxCurrencyEdit
      Left = 130
      Top = 158
      Hint = 'Valor do produto'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnValidate = dblValorProdutoPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object dblMulta: TcxCurrencyEdit
      Left = 130
      Top = 185
      Hint = 'Valto da Multa'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnValidate = dblMultaPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 121
    end
    object dblVerba: TcxCurrencyEdit
      Left = 130
      Top = 212
      Hint = 'Valor da verba'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.OnValidate = dblVerbaPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 121
    end
    object dblTotalExtravio: TcxCurrencyEdit
      Left = 130
      Top = 239
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 121
    end
    object chkRestricao: TcxCheckBox
      Left = 130
      Top = 266
      Hint = 'Valor gerou restri'#231#227'o'
      ParentFont = False
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueGrayed = 'E'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Transparent = True
    end
    object cboCorrespondencia: TcxComboBox
      Left = 377
      Top = 158
      Hint = 'Envio da correspond'#234'ncia'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'N'#195'O SE APLICA'
        'ENVIADA'
        'N'#195'O ENVIADA')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 309
    end
    object cboRetorno: TcxComboBox
      Left = 377
      Top = 185
      Hint = 'Retorno da Correspond'#234'ncia'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'N'#195'O SE APLICA'
        'N'#195'O FOI DEVOLVIDA'
        'DEVOLVIDA POR MALOTE INTERNO'
        'DEVOLVIDA POR CORREIO'
        'DEVOLVIDA PESSOALMENTE'
        'DEVOLVIDA DIGITALIZADA POR E-MAIL')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 309
    end
    object memObservacoes: TcxMemo
      Left = 283
      Top = 231
      Hint = 'Observa'#231#245'es sobre o extravio/multa'
      Lines.Strings = (
        '')
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Height = 55
      Width = 403
    end
    object chkFranquia: TcxCheckBox
      Left = 837
      Top = 158
      Hint = 'Valor debitado da franquia'
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ReadOnly = True
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Transparent = True
    end
    object dblValorDebitado: TcxCurrencyEdit
      Left = 837
      Top = 185
      Hint = 'Valor debitado da franquia'
      TabStop = False
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 203
    end
    object datDebitoFranquia: TcxDateEdit
      Left = 837
      Top = 212
      Hint = 'Data do d'#233'bito para a franquia'
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 203
    end
    object pbPercentual: TcxProgressBar
      Left = 837
      Top = 239
      TabStop = False
      TabOrder = 19
      Width = 203
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actIncluir
      TabOrder = 20
    end
    object cxButton2: TcxButton
      Left = 126
      Top = 468
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 21
    end
    object cxButton3: TcxButton
      Left = 229
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actFiltrar
      TabOrder = 22
    end
    object cxButton4: TcxButton
      Left = 333
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actEstornar
      TabOrder = 23
    end
    object cxButton5: TcxButton
      Left = 437
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actEditar
      TabOrder = 24
    end
    object cxButton6: TcxButton
      Left = 541
      Top = 468
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      Cancel = True
      TabOrder = 25
    end
    object cxButton7: TcxButton
      Left = 644
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actDeclaracao
      TabOrder = 26
    end
    object cxButton8: TcxButton
      Left = 748
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 27
    end
    object cxButton9: TcxButton
      Left = 852
      Top = 468
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Action = actFinalizar
      TabOrder = 28
    end
    object mskCodigo: TcxMaskEdit
      Left = 35
      Top = 98
      Hint = 'C'#243'digo do extravio'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = '0'
      Width = 65
    end
    object txtParametro: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 30
      Visible = False
      OnEnter = txtParametroEnter
      OnExit = txtParametroExit
      Width = 892
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actPesquisarParametros
      TabOrder = 31
      Visible = False
    end
    object grdExtravios: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1031
      Height = 344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
      Visible = False
      OnEnter = grdExtraviosEnter
      OnExit = grdExtraviosExit
      object tvExtravios: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvExtraviosNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Exportar dados'
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Hint = 'Primeiro registro'
        Navigator.Buttons.First.ImageIndex = 5
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Hint = 'Registro anterior'
        Navigator.Buttons.Prior.ImageIndex = 8
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo registro'
        Navigator.Buttons.Next.ImageIndex = 7
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Hint = #218'ltimo registro'
        Navigator.Buttons.Last.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OnCellDblClick = tvExtraviosCellDblClick
        DataController.DataSource = dsExtravios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtraviosVAL_TOTAL
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtraviosVAL_PRODUTO
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtraviosVAL_VERBA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object tvExtraviosRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExtraviosCOD_EXTRAVIO: TcxGridDBColumn
          DataBinding.FieldName = 'COD_EXTRAVIO'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtraviosDES_EXTRAVIO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_EXTRAVIO'
          HeaderAlignmentHorz = taCenter
          Width = 213
        end
        object tvExtraviosNUM_NOSSONUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtraviosCOD_TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'COD_TIPO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'EXTRAVIO'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'SINISTTRO'
              Value = 1
            end
            item
              Description = 'MULTA'
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object tvExtraviosDAT_EXTRAVIO: TcxGridDBColumn
          DataBinding.FieldName = 'dat_extravio'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvExtraviosCOD_AGENTE: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agente'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtraviosColumn1: TcxGridDBColumn
          Caption = 'Nome Base'
          DataBinding.FieldName = 'COD_AGENTE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_base'
          Properties.ListColumns = <
            item
              FieldName = 'nom_base'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBase
          HeaderAlignmentHorz = taCenter
          Width = 254
        end
        object tvExtraviosCOD_ENTREGADOR: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENTREGADOR'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvExtraviosColumn2: TcxGridDBColumn
          Caption = 'Nome Entregador'
          DataBinding.FieldName = 'COD_ENTREGADOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_ENTREGADOR'
          Properties.ListColumns = <
            item
              FieldName = 'NOM_FANTASIA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEntregadores
          HeaderAlignmentHorz = taCenter
          Width = 246
        end
        object tvExtraviosVAL_PRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_PRODUTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object tvExtraviosVAL_MULTA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_MULTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object tvExtraviosVAL_VERBA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_VERBA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object tvExtraviosVAL_TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = 'R$ ,0.00;-R$ ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object tvExtraviosDOM_RESTRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_RESTRICAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object tvExtraviosVAL_EXTRATO_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_EXTRATO_FRANQUIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object tvExtraviosDOM_EXTRATO_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_EXTRATO_FRANQUIA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object tvExtraviosDAT_EXTRAVIO_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_EXTRAVIO_FRANQUIA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object tvExtraviosDES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'DES_ENVIO_CORRESPONDENCIA'
          HeaderAlignmentHorz = taCenter
          Width = 208
        end
        object tvExtraviosDES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'DES_RETORNO_CORRESPONDENCIA'
          HeaderAlignmentHorz = taCenter
          Width = 262
        end
        object tvExtraviosDES_OBSERVACOES: TcxGridDBColumn
          DataBinding.FieldName = 'DES_OBSERVACOES'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object tvExtraviosVAL_PERCENTUAL_PAGO: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_PERCENTUAL_PAGO'
          PropertiesClassName = 'TcxProgressBarProperties'
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object tvExtraviosID_EXTRATO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_EXTRATO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object tvExtraviosSEQ_ACAREACAO: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ_ACAREACAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object tvExtraviosNOM_EXECUTOR: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_EXECUTOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExtraviosDAT_MANUTENCAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_MANUTENCAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvExtravios: TcxGridLevel
        GridView = tvExtravios
      end
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 84
      Height = 25
      Action = actRetornar
      TabOrder = 34
      Visible = False
    end
    object cxButton13: TcxButton
      Left = 10000
      Top = 10000
      Width = 82
      Height = 25
      Action = actSelecionar
      TabOrder = 35
      Visible = False
    end
    object cxButton14: TcxButton
      Left = 10000
      Top = 10000
      Width = 82
      Height = 25
      Action = actFinalizarGrade
      TabOrder = 36
      Visible = False
    end
    object cxButton15: TcxButton
      Left = 955
      Top = 468
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actImportar
      TabOrder = 29
    end
    object textQuery: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 1031
    end
    object cboTipo: TcxComboBox
      Left = 106
      Top = 98
      Hint = 'Tipo de D'#233'bito'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'EXTRAVIO'
        'SINISTRO'
        'MULTA')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      CaptionOptions.ImageIndex = 10
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      Control = cxLabel1
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'Dados'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Identifica'#231#227'o'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nosso N'#250'mero'
      CaptionOptions.Layout = clTop
      Control = txtNossoNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 141
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Motivo do Extravio/Multa'
      CaptionOptions.Layout = clTop
      Control = cboMotivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Data do Extravio'
      CaptionOptions.Layout = clTop
      Control = datExtravio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Entregador'
      CaptionOptions.Layout = clTop
      Control = txtCodigoEntregador
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Layout = clTop
      Control = txtNomeEntregador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Valores'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Valor do Produto'
      Control = dblValorProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Valor da Multa'
      Control = dblMulta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Valor da Verba'
      Control = dblVerba
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Total do Extravio'
      Control = dblTotalExtravio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Finalizado'
      Control = chkRestricao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Aviso / Observa'#231'oes'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Correspond'#234'ncia'
      Control = cboCorrespondencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Retorno'
      Control = cboRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Oberva'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = memObservacoes
      ControlOptions.OriginalHeight = 55
      ControlOptions.OriginalWidth = 403
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Franquia'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Debitado da Franquia'
      Control = chkFranquia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Valor Debitado'
      Control = dblValorDebitado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Data D'#233'bito'
      Control = datDebitoFranquia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Percentual Debitado'
      Control = pbPercentual
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = mskCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup7
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Par'#226'metro'
      Control = txtParametro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignVert = avClient
      Control = grdExtravios
      ControlOptions.OriginalHeight = 375
      ControlOptions.OriginalWidth = 1101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup7
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton13'
      CaptionOptions.Visible = False
      Control = cxButton13
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'cxButton14'
      CaptionOptions.Visible = False
      Control = cxButton14
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton15'
      CaptionOptions.Visible = False
      Control = cxButton15
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object layoutFilterText: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Filtro'
      CaptionOptions.Visible = False
      Visible = False
      Control = textQuery
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo'
      CaptionOptions.Layout = clTop
      Control = cboTipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object aclExtravios: TActionList
    Images = Data_Sisgef.iml_16_16
    OnExecute = aclExtraviosExecute
    Left = 912
    Top = 8
    object actIncluir: TAction
      Tag = 20106001
      Category = 'Extravios'
      Caption = 'Incluir'
      Hint = 'Incluir extravio'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = actIncluirExecute
    end
    object actPesquisar: TAction
      Category = 'Extravios'
      Caption = 'Localizar'
      Hint = 'Pesquisar dados'
      ImageIndex = 14
      ShortCut = 119
      OnExecute = actPesquisarExecute
    end
    object actFiltrar: TAction
      Category = 'Extravios'
      Caption = 'Filtrar'
      Hint = 'Filtrar dados'
      ImageIndex = 19
      ShortCut = 16503
      OnExecute = actFiltrarExecute
    end
    object actEstornar: TAction
      Tag = 20106002
      Category = 'Extravios'
      Caption = 'Estornar'
      Hint = 'Estornar extravio / multa'
      ImageIndex = 9
      ShortCut = 115
      OnExecute = actEstornarExecute
    end
    object actEditar: TAction
      Tag = 20106003
      Category = 'Extravios'
      Caption = 'Editar'
      Hint = 'Editar dados'
      ImageIndex = 10
      ShortCut = 114
      OnExecute = actEditarExecute
    end
    object actCancelar: TAction
      Category = 'Extravios'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actImportar: TAction
      Tag = 20106005
      Category = 'Extravios'
      Caption = 'Importar'
      Hint = 'Importar extravios'
      ImageIndex = 33
      OnExecute = actImportarExecute
    end
    object actGravar: TAction
      Category = 'Extravios'
      Caption = 'Gravar'
      Hint = 'Gravar dados'
      ImageIndex = 13
      ShortCut = 116
      OnExecute = actGravarExecute
    end
    object actFinalizar: TAction
      Tag = 20106007
      Category = 'Extravios'
      Caption = 'Finalizar'
      Hint = 'Finalizar extravio'
      ImageIndex = 1
      OnExecute = actFinalizarExecute
    end
    object actFechar: TAction
      Category = 'Extravios'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actPesquisaEntregador: TAction
      Category = 'Extravios'
      Caption = 'Pesquisa Entregador'
      Hint = 'Pesquisar entregador'
      ImageIndex = 14
      OnExecute = actPesquisaEntregadorExecute
    end
    object actDeclaracao: TAction
      Tag = 20106008
      Category = 'Extravios'
      Caption = 'Declara'#231#227'o'
      Hint = 'Imprimir Declara'#231#227'o'
      ImageIndex = 39
      ShortCut = 118
      OnExecute = actDeclaracaoExecute
    end
    object actRetornar: TAction
      Category = 'Extravios'
      Caption = 'Retornar'
      Hint = 'Retornar a tela de cadastro'
      ImageIndex = 18
      OnExecute = actRetornarExecute
    end
    object actSelecionar: TAction
      Category = 'Extravios'
      Caption = 'Selecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 1
      OnExecute = actSelecionarExecute
    end
    object actPesquisarParametros: TAction
      Category = 'Extravios'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar par'#227'metros'
      ImageIndex = 14
      OnExecute = actPesquisarParametrosExecute
    end
    object actFinalizarGrade: TAction
      Tag = 20106007
      Category = 'Extravios'
      Caption = 'Finalizar'
      Hint = 'Finalizar extravio/multa'
      ImageIndex = 1
      OnExecute = actFinalizarGradeExecute
    end
  end
  object frxDeclaracao: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43152.700742719900000000
    ReportOptions.LastChange = 43259.683053148150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 824
    Top = 8
    Datasets = <>
    Variables = <
      item
        Name = ' Declara'#231#227'o'
        Value = Null
      end
      item
        Name = 'vAgente'
        Value = ''
      end
      item
        Name = 'vEntregador'
        Value = ''
      end
      item
        Name = 'vNN'
        Value = ''
      end
      item
        Name = 'vValor'
        Value = ''
      end
      item
        Name = 'vMulta'
        Value = ''
      end
      item
        Name = 'vVerba'
        Value = ''
      end
      item
        Name = 'vData'
        Value = ''
      end
      item
        Name = 'vImpressao'
        Value = ''
      end
      item
        Name = 'vCPF'
        Value = ''
      end
      item
        Name = 'vFantasia'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPictureStretched = False
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Declara'#231#227'o de Multa e/ou Extravio de Produto')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590599999999990000
        Top = 219.212740000000000000
        Width = 151.181200000000000000
        Height = 170.078850000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Agente: '
          'Entregador: '
          ''
          'Nosso N'#250'mero: '
          ''
          'Valor do Produto: '
          'Valor da Multa: '
          'Valor da Verba:  ')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 442.205010000000000000
        Width = 559.370440000000000000
        Height = 294.803340000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haBlock
        LineSpacing = 40.000000000000000000
        Memo.UTF8W = (
          
            '                              Declaro para os devidos fins que o' +
            ' NN acima com seu(s) respectivo(s) valor(es) '#233' de minha inteira ' +
            'responsabilidade ficando a Franquia desde j'#225' autorizada a descon' +
            'tar da minha Presta'#231#227'o de Contas a que tempo lhe convir. ')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 680.315400000000000000
        Width = 559.370440000000000000
        Height = 249.448980000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haBlock
        Memo.UTF8W = (
          '[vData]'
          ''
          ''
          ''
          ''
          ''
          '____________________________________________'
          '[vEntregador]'
          '[vCPF]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 1028.032160000000000000
        Width = 714.331170000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vImpressao]')
        ParentFont = False
      end
      object vAgente: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 215.433210000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vAgente]')
        ParentFont = False
      end
      object vEntregador: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 238.110390000000000000
        Width = 400.630180000000000000
        Height = 41.574830000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vFantasia]')
        ParentFont = False
      end
      object vNN: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 283.464750000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vNN]')
        ParentFont = False
      end
      object vValor: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 317.480520000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vValor]')
        ParentFont = False
      end
      object vMulta: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 343.937230000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vMulta]')
        ParentFont = False
      end
      object vVerba: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 366.614410000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vVerba]')
        ParentFont = False
      end
    end
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = mtbExtravios
    Left = 624
    Top = 16
  end
  object dsBase: TDataSource
    AutoEdit = False
    DataSet = mtbBases
    Left = 424
    Top = 16
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = mtbEntregadores
    Left = 520
    Top = 16
  end
  object SaveDialog: TSaveDialog
    Left = 384
    Top = 16
  end
  object mtbEntregadores: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 560
    Top = 16
  end
  object mtbBases: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 456
    Top = 16
    object mtbBasesdom_check: TLargeintField
      FieldName = 'dom_check'
    end
    object mtbBasescod_base: TIntegerField
      FieldName = 'cod_base'
    end
    object mtbBasesnom_base: TStringField
      FieldName = 'nom_base'
      Size = 70
    end
  end
  object mtbExtravios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 672
    Top = 14
    object mtbExtravioscod_extravio: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_extravio'
    end
    object mtbExtraviosdes_extravio: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_extravio'
      Size = 150
    end
    object mtbExtraviosnum_nossonumero: TStringField
      DisplayLabel = 'Remessa'
      FieldName = 'num_nossonumero'
    end
    object mtbExtravioscod_agente: TIntegerField
      DisplayLabel = 'Base'
      FieldName = 'cod_agente'
    end
    object mtbExtraviosval_produto: TFloatField
      DisplayLabel = 'Valor Produto'
      FieldName = 'val_produto'
    end
    object mtbExtraviosdat_extravio: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_extravio'
    end
    object mtbExtraviosval_multa: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'val_multa'
    end
    object mtbExtraviosval_verba: TFloatField
      DisplayLabel = 'Verba'
      FieldName = 'val_verba'
    end
    object mtbExtraviosval_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'val_total'
    end
    object mtbExtraviosdom_restricao: TStringField
      DisplayLabel = 'Finalizado'
      FieldName = 'dom_restricao'
      Size = 1
    end
    object mtbExtravioscod_entregador: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'cod_entregador'
    end
    object mtbExtravioscod_tipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo'
    end
    object mtbExtraviosval_verba_franquia: TFloatField
      DisplayLabel = 'Verba UN'
      FieldName = 'val_verba_franquia'
    end
    object mtbExtraviosval_extrato_franquia: TFloatField
      DisplayLabel = 'D'#233'bito Extrato UN'
      FieldName = 'val_extrato_franquia'
    end
    object mtbExtraviosdom_extrato_franquia: TStringField
      DisplayLabel = 'Finalizado UN'
      FieldName = 'dom_extrato_franquia'
      Size = 1
    end
    object mtbExtraviosdat_extravio_franquia: TDateField
      DisplayLabel = 'Data UN'
      FieldName = 'dat_extravio_franquia'
    end
    object mtbExtraviosdes_envio_correspondencia: TStringField
      DisplayLabel = 'Envio de Correspond'#234'ncia'
      FieldName = 'des_envio_correspondencia'
    end
    object mtbExtraviosdes_retorno_correspondencia: TStringField
      DisplayLabel = 'Retorno Correspond'#234'ncia'
      FieldName = 'des_retorno_correspondencia'
      Size = 70
    end
    object mtbExtraviosdes_observacoes: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_observacoes'
      BlobType = ftMemo
    end
    object mtbExtraviosval_percentual_pago: TFloatField
      DisplayLabel = 'Percentual Debitado'
      FieldName = 'val_percentual_pago'
    end
    object mtbExtraviosid_extrato: TIntegerField
      DisplayLabel = 'ID Extrato'
      FieldName = 'id_extrato'
    end
    object mtbExtraviosseq_acareacao: TIntegerField
      DisplayLabel = 'N'#186' Acarea'#231#227'o'
      FieldName = 'seq_acareacao'
    end
    object mtbExtraviosnom_executor: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nom_executor'
    end
    object mtbExtraviosdat_manutencao: TDateTimeField
      DisplayLabel = 'Manuten'#231#227'o'
      FieldName = 'dat_manutencao'
    end
    object mtbExtraviosnum_extrato: TStringField
      DisplayLabel = 'N'#176' Extrato'
      FieldName = 'num_extrato'
      Size = 30
    end
  end
end
