object view_CadastroExtravios: Tview_CadastroExtravios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Extravios, Multas e Sinistros de Expressas'
  ClientHeight = 451
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  DesignSize = (
    842
    451)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alTop
    Caption = ' Identifica'#231#227'o '
    TabOrder = 0
    Transparent = True
    Height = 83
    Width = 836
    object cxLabel1: TcxLabel
      Left = 3
      Top = 22
      Caption = 'N'#186'.:'
      Transparent = True
    end
    object Id: TcxTextEdit
      Left = 33
      Top = 21
      Hint = 'N'#250'mero do extravio'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      TabOrder = 1
      Text = '0'
      Width = 72
    end
    object cxLabel2: TcxLabel
      Left = 130
      Top = 22
      Caption = 'Tipo:'
      Transparent = True
    end
    object Tipo: TcxComboBox
      Left = 164
      Top = 21
      Hint = 'Tipo de registro'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'EXTRAVIO'
        'SINISTRO'
        'MULTA')
      TabOrder = 3
      Width = 88
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 49
      Caption = 'Motivo:'
      Transparent = True
    end
    object Descricao: TcxComboBox
      Left = 49
      Top = 48
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'FURTO'
        'PRODUTO COLETADO FORA DOS PADR'#213'ES'#9
        'FALTA NO CONTAINER OU ROMANEIO  S/ ANOTA'#199#195'O NO ROMANEIO'
        'MULTA POR ENTREGA EM LOCAL INDEVIDO'
        'MULTA POR PROTOCOLO RASURADO/INCORRETO'
        'EXTRAVIO NA IDA'
        'DEVOLU'#199#195'O DE PRODUTO ENTREGUE'
        'MULTA BAIXA INDEVIDA'
        'MULTA INFORMATIVO FALSO'
        'EXTRAVIO DEVOLU'#199#195'O - ERRO PROCESSO'
        'ROUBO'
        'ASSALTO NA ENTREGA (COM R.O.)'
        '')
      TabOrder = 10
      Width = 184
    end
    object cxLabel4: TcxLabel
      Left = 258
      Top = 22
      Caption = 'Data:'
      Transparent = True
    end
    object Data: TcxDateEdit
      Left = 295
      Top = 21
      Hint = 'Data do registro'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 5
      Width = 83
    end
    object cxLabel5: TcxLabel
      Left = 239
      Top = 50
      Caption = 'Entregador:'
      Transparent = True
    end
    object Entregador: TcxButtonEdit
      Left = 307
      Top = 49
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionPesquisar
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      TabOrder = 12
      Text = '0'
      Width = 71
    end
    object NomeEntregador: TcxTextEdit
      Left = 384
      Top = 49
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 14
      Width = 233
    end
    object cxLabel17: TcxLabel
      Left = 388
      Top = 22
      Caption = 'N'#186'. Remessa:'
      Transparent = True
    end
    object cxLabel18: TcxLabel
      Left = 623
      Top = 22
      Caption = 'AWB:'
      Transparent = True
    end
    object cxLabel13: TcxLabel
      Left = 623
      Top = 49
      Caption = 'Cliente:'
      Transparent = True
    end
    object Cliente: TcxLookupComboBox
      Left = 670
      Top = 49
      Hint = 'Cliente'
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      TabOrder = 16
      Width = 163
    end
    object NN: TcxButtonEdit
      Left = 464
      Top = 21
      Hint = 'N'#250'mero da remessa'
      Properties.Buttons = <
        item
          Action = actionRemessa
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      TabOrder = 6
      Width = 153
    end
    object AWB: TcxButtonEdit
      Left = 670
      Top = 21
      Hint = 'C'#243'digo AWB'
      Properties.Buttons = <
        item
          Action = actionAWB
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      TabOrder = 8
      Width = 163
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 3
    Top = 92
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Valores '
    TabOrder = 1
    Transparent = True
    Height = 138
    Width = 221
    object cxLabel6: TcxLabel
      Left = 3
      Top = 23
      Caption = 'Valor do Produto: '
      Transparent = True
    end
    object ValorProduto: TcxCurrencyEdit
      Left = 107
      Top = 22
      Hint = 'Valor do produto'
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 1
      Width = 101
    end
    object cxLabel7: TcxLabel
      Left = 3
      Top = 49
      Caption = 'Valor da Multa: '
      Transparent = True
    end
    object Multa: TcxCurrencyEdit
      Left = 107
      Top = 48
      Hint = 'Valor da multa'
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 3
      Width = 101
    end
    object cxLabel8: TcxLabel
      Left = 3
      Top = 76
      Caption = 'Verba da Motorista: '
      Transparent = True
    end
    object Verba: TcxCurrencyEdit
      Left = 107
      Top = 75
      Hint = 'Verba do motorista'
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 5
      Width = 101
    end
    object cxLabel9: TcxLabel
      Left = 3
      Top = 102
      Caption = 'Valor do Extravio:'
      Transparent = True
    end
    object Total: TcxCurrencyEdit
      Left = 107
      Top = 101
      Hint = 'Verba do motorista'
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 7
      Width = 101
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 230
    Top = 92
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Avisos / Observa'#231#245'es '
    TabOrder = 2
    Transparent = True
    Height = 138
    Width = 609
    object cxLabel10: TcxLabel
      Left = 3
      Top = 22
      Caption = 'Correspond'#234'ncia:'
      Transparent = True
    end
    object EnvioCorrespondencia: TcxComboBox
      Left = 98
      Top = 21
      Hint = 'Envio da correspond'#234'ncia'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'N'#195'O SE APLICA'
        'ENVIADA'
        'N'#195'O ENVIADA')
      TabOrder = 1
      Width = 224
    end
    object cxLabel11: TcxLabel
      Left = 328
      Top = 22
      Caption = 'Retorno:'
      Transparent = True
    end
    object RetornoCorrespondencia: TcxComboBox
      Left = 381
      Top = 21
      Hint = 'Retorno do Envio da correspond'#234'ncia'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'N'#195'O SE APLICA'
        'N'#195'O FOI DEVOLVIDA'
        'DEVOLVIDA POR MALOTE INTERNO'
        'DEVOLVIDA POR CORREIO'
        'DEVOLVIDA PESSOALMENTE'
        'DEVOLVIDA DIGITALIZADA POR E-MAIL')
      TabOrder = 3
      Width = 225
    end
    object Obs: TMemo
      Left = 98
      Top = 48
      Width = 508
      Height = 47
      Hint = 'Observa'#231#245'es'
      TabOrder = 4
    end
    object cxLabel12: TcxLabel
      Left = 3
      Top = 49
      Caption = 'Observa'#231#245'es:'
      Transparent = True
    end
    object cxLabel14: TcxLabel
      Left = 3
      Top = 102
      Caption = 'Produto:'
      Transparent = True
    end
    object Produto: TcxTextEdit
      Left = 98
      Top = 101
      Hint = 'Descri'#231#227'o do produto'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 508
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 3
    Top = 236
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Administra'#231#227'o '
    TabOrder = 3
    Height = 41
    Width = 836
    object cxLabel15: TcxLabel
      Left = 489
      Top = 17
      Caption = 'Acarea'#231#227'o N'#186'.:'
      Transparent = True
    end
    object Sequencia: TcxTextEdit
      Left = 573
      Top = 14
      Hint = 'N'#250'mero da acarea'#231#227'o'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 82
    end
    object NumeroExtrato: TcxTextEdit
      Left = 730
      Top = 14
      Hint = 'N'#250'mero da acarea'#231#227'o'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 103
    end
    object cxLabel16: TcxLabel
      Left = 661
      Top = 17
      Caption = 'Extrato N'#186'.:'
      Transparent = True
    end
    object val_percentual_pago: TcxProgressBar
      Left = 3
      Top = 17
      TabStop = False
      Style.BorderStyle = ebsOffice11
      TabOrder = 4
      Transparent = True
      Width = 102
    end
    object Situacao: TcxLabel
      Left = 143
      Top = 17
      AutoSize = False
      Caption = 'SITUA'#199#195'O'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 17
      Width = 122
      AnchorX = 204
      AnchorY = 26
    end
    object Status: TcxLabel
      Left = 307
      Top = 17
      AutoSize = False
      Caption = 'STATUS'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 17
      Width = 137
      AnchorX = 376
      AnchorY = 26
    end
  end
  object panelFooter: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 411
    Width = 836
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'panelFooter'
    ShowCaption = False
    TabOrder = 4
    ExplicitTop = 362
    ExplicitWidth = 748
    object cxButton1: TcxButton
      Left = 528
      Top = 8
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionFinalizar
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 637
      Top = 8
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionGravar
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 742
      Top = 8
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelar
      TabOrder = 2
    end
  end
  object actionListExtravios: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 656
    Top = 304
    object actionFinalizar: TAction
      Category = 'Extravios'
      Caption = '&Finalizar'
      Enabled = False
      Hint = 'Finalizar extravio'
      ImageIndex = 83
    end
    object actionGravar: TAction
      Category = 'Extravios'
      Caption = '&Gravar'
      Hint = 'Gravar dados'
      ImageIndex = 85
    end
    object actionCancelar: TAction
      Category = 'Extravios'
      Caption = '&Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 84
    end
    object actionPesquisar: TAction
      Category = 'Extravios'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar Entregadores'
      ImageIndex = 86
    end
    object actionRemessa: TAction
      Category = 'Extravios'
      Caption = 'Remessa'
      Hint = 'Localizar remessa'
      ImageIndex = 86
    end
    object actionAWB: TAction
      Category = 'Extravios'
      Caption = 'AWB'
      Hint = 'Localizar remessa pelo AWB'
      ImageIndex = 86
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 360
    Top = 320
  end
end
