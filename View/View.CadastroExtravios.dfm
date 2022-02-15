object view_CadastroExtravios: Tview_CadastroExtravios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Extravios, Multas e Sinistros de Expressas'
  ClientHeight = 402
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    777
    402)
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
    ExplicitWidth = 958
    Height = 62
    Width = 771
    object cxLabel1: TcxLabel
      Left = 3
      Top = 16
      Caption = 'N'#186'.:'
      Transparent = True
    end
    object cod_extravio: TcxTextEdit
      Left = 4
      Top = 38
      Hint = 'N'#250'mero do extravio'
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 1
      Text = '0'
      Width = 72
    end
    object cxLabel2: TcxLabel
      Left = 82
      Top = 15
      Caption = 'Tipo:'
      Transparent = True
    end
    object cod_tipo: TcxComboBox
      Left = 82
      Top = 38
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
      Left = 176
      Top = 15
      Caption = 'Motivo:'
      Transparent = True
    end
    object des_extravio: TcxComboBox
      Left = 176
      Top = 38
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
      TabOrder = 5
      Width = 192
    end
    object cxLabel4: TcxLabel
      Left = 374
      Top = 15
      Caption = 'Data:'
      Transparent = True
    end
    object cxDateEdit1: TcxDateEdit
      Left = 374
      Top = 38
      Hint = 'Data do registro'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 7
      Width = 80
    end
    object cxLabel5: TcxLabel
      Left = 460
      Top = 15
      Caption = 'Entregador:'
      Transparent = True
    end
    object cod_entregador: TcxButtonEdit
      Left = 460
      Top = 38
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 9
      Text = '0'
      Width = 71
    end
    object nom_entregador: TcxTextEdit
      Left = 537
      Top = 38
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 204
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 8
    Top = 71
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Valores '
    TabOrder = 1
    Transparent = True
    ExplicitWidth = 217
    Height = 131
    Width = 218
    object cxLabel6: TcxLabel
      Left = 3
      Top = 23
      Caption = 'Valor do Produto: '
      Transparent = True
    end
    object val_produto: TcxCurrencyEdit
      Left = 107
      Top = 22
      Hint = 'Valor do produto'
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
    object val_multa: TcxCurrencyEdit
      Left = 107
      Top = 48
      Hint = 'Valor da multa'
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
    object val_verba: TcxCurrencyEdit
      Left = 107
      Top = 75
      Hint = 'Verba do motorista'
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
    object val_total: TcxCurrencyEdit
      Left = 107
      Top = 101
      Hint = 'Verba do motorista'
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      TabOrder = 7
      Width = 101
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 231
    Top = 71
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Avisos / Observa'#231#245'es '
    TabOrder = 2
    Transparent = True
    ExplicitWidth = 378
    Height = 131
    Width = 379
    object cxLabel10: TcxLabel
      Left = 3
      Top = 23
      Caption = 'Correspond'#234'ncia:'
      Transparent = True
    end
    object des_envio_correspondencia: TcxComboBox
      Left = 98
      Top = 22
      Hint = 'Envio da correspond'#234'ncia'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'N'#195'O SE APLICA'
        'ENVIADA'
        'N'#195'O ENVIADA')
      TabOrder = 1
      Width = 271
    end
    object cxLabel11: TcxLabel
      Left = 3
      Top = 49
      Caption = 'Retorno:'
      Transparent = True
    end
    object des_retorno_correspondencia: TcxComboBox
      Left = 98
      Top = 48
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
      Width = 271
    end
    object des_observacoes: TMemo
      Left = 98
      Top = 75
      Width = 271
      Height = 47
      Hint = 'Observa'#231#245'es'
      TabOrder = 4
    end
    object cxLabel12: TcxLabel
      Left = 3
      Top = 76
      Caption = 'Observa'#231#245'es:'
      Transparent = True
    end
  end
  object cxGroupBox4: TcxGroupBox
    Left = 615
    Top = 71
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Situa'#231#227'o '
    TabOrder = 3
    ExplicitWidth = 158
    Height = 131
    Width = 159
    object des_situacao: TcxLabel
      Left = 6
      Top = 78
      AutoSize = False
      Caption = 'SITUA'#199#195'O'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 17
      Width = 150
      AnchorX = 81
      AnchorY = 87
    end
    object dom_restricao: TcxLabel
      Left = 3
      Top = 101
      AutoSize = False
      Caption = 'STATUS'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 17
      Width = 152
      AnchorX = 79
      AnchorY = 110
    end
    object val_percentual_pago: TcxProgressBar
      Left = 16
      Top = 40
      Style.BorderStyle = ebsOffice11
      TabOrder = 2
      Width = 129
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 8
    Top = 208
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Administra'#231#227'o '
    TabOrder = 4
    Height = 49
    Width = 766
    object cxLabel14: TcxLabel
      Left = 3
      Top = 15
      Caption = 'Produto:'
      Transparent = True
    end
    object des_produto: TcxTextEdit
      Left = 55
      Top = 14
      Hint = 'Descri'#231#227'o do produto'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 330
    end
    object cxLabel15: TcxLabel
      Left = 391
      Top = 15
      Caption = 'Acarea'#231#227'o N'#186'.:'
      Transparent = True
    end
    object seq_acareacao: TcxTextEdit
      Left = 475
      Top = 14
      Hint = 'N'#250'mero da acarea'#231#227'o'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 102
    end
    object num_extrato: TcxTextEdit
      Left = 652
      Top = 14
      Hint = 'N'#250'mero da acarea'#231#227'o'
      TabStop = False
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 111
    end
    object cxLabel16: TcxLabel
      Left = 583
      Top = 17
      Caption = 'Extrato N'#186'.:'
      Transparent = True
    end
  end
  object panelFooter: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 362
    Width = 771
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'panelFooter'
    ShowCaption = False
    TabOrder = 5
    ExplicitLeft = 0
    ExplicitTop = 424
    ExplicitWidth = 777
    object cxButton1: TcxButton
      Left = 486
      Top = 8
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionFinalizar
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 581
      Top = 8
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionGravar
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 676
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
  end
end
