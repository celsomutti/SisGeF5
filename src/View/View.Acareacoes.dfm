object view_Acareacoes: Tview_Acareacoes
  Left = 0
  Top = 0
  Caption = 'Controle de Acarea'#231#245'es'
  ClientHeight = 587
  ClientWidth = 1192
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
    Width = 1192
    Height = 587
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object cxLabel1: TcxLabel
      Left = 48
      Top = 11
      Caption = 'Controle de Acarea'#231#245'es'
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
    object cxButton9: TcxButton
      Left = 1106
      Top = 551
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 50
    end
    object mskCodigo: TcxMaskEdit
      Left = 35
      Top = 100
      Hint = 'C'#243'digo Interno da Acarea'#231#227'o'
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
      Width = 47
    end
    object txtID: TcxTextEdit
      Left = 88
      Top = 100
      Hint = 'ID da acarea'#231#227'o na Transfolha'
      ParentFont = False
      Properties.MaxLength = 100
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 68
    end
    object txtNN: TcxTextEdit
      Left = 162
      Top = 100
      Hint = 'Nosso N'#250'mero TFO'
      ParentFont = False
      Properties.MaxLength = 14
      Properties.OnValidate = txtNNPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 97
    end
    object edtCodigoEntregador: TcxButtonEdit
      Left = 452
      Top = 100
      Hint = 'C'#243'digo do entregador'
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
      Properties.OnValidate = edtCodigoEntregadorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = '0'
      Width = 68
    end
    object txtNomeEntregador: TcxTextEdit
      Left = 526
      Top = 100
      Hint = 'Nome do entregador'
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
      Width = 208
    end
    object edtCodigoBase: TcxButtonEdit
      Left = 740
      Top = 100
      Hint = 'C'#243'digo da base'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisaBases
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnValidate = edtCodigoBasePropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Text = '0'
      Width = 65
    end
    object txtNomeBase: TcxTextEdit
      Left = 811
      Top = 100
      Hint = 'Nome da Base'
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 249
    end
    object edtValorExtravio: TcxCurrencyEdit
      Left = 583
      Top = 342
      Hint = 'Valor do Extravio'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 29
      Width = 74
    end
    object edtValorMulta: TcxCurrencyEdit
      Left = 663
      Top = 342
      Hint = 'Valor da multa'
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = ' ,0.00;- ,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 30
      Width = 64
    end
    object cboEnvioCorrespondencia: TcxComboBox
      Left = 733
      Top = 342
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'ENVIADA'
        'N'#195'O ENVIADA'
        'SUCESSO - ACAREA'#199#195'O RESOLVIDA')
      Properties.MaxLength = 20
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 31
      Width = 168
    end
    object cboRetornoCorrespondencia: TcxComboBox
      Left = 907
      Top = 342
      Hint = 'Retorno da correspond'#234'ncia'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'DEVOLVIDA DIGITALIZADA POR E-MAIL'
        'N'#195'O FOI DEVOLVIDA'
        'DEVOLVIDA POR MALOTE INTERNO'
        'DEVOLVIDA PESSOALMENTE'
        'DEVOLVIDA POR CORREIO')
      Properties.MaxLength = 70
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 32
      Width = 153
    end
    object chkStatus: TcxCheckBox
      Left = 1066
      Top = 342
      Hint = 'Status da acarea'#231#227'o (Aberta ou Finalizada)'
      AutoSize = False
      Caption = 'ABERTA'
      ParentFont = False
      Properties.Alignment = taLeftJustify
      Properties.ReadOnly = True
      Properties.OnChange = chkStatusPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      TabOrder = 33
      Transparent = True
      Height = 19
      Width = 91
    end
    object memObs: TcxMemo
      Left = 35
      Top = 403
      Lines.Strings = (
        '')
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 34
      Height = 87
      Width = 1122
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actIncluir
      TabOrder = 35
    end
    object cxButton2: TcxButton
      Left = 278
      Top = 509
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Action = actEditar
      TabOrder = 37
    end
    object cxButton4: TcxButton
      Left = 407
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actFiltltrar
      TabOrder = 38
    end
    object cxButton5: TcxButton
      Left = 535
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actFinalizar
      TabOrder = 39
    end
    object cxButton6: TcxButton
      Left = 663
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actExcluir
      TabOrder = 40
    end
    object cxButton7: TcxButton
      Left = 791
      Top = 509
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Action = actSalvar
      TabOrder = 41
    end
    object cxButton8: TcxButton
      Left = 920
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      Cancel = True
      TabOrder = 42
    end
    object cxButton10: TcxButton
      Left = 1048
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actDeclaracao
      TabOrder = 43
    end
    object txtParametro: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Par'#226'metro de pesquisa'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 44
      Visible = False
      OnEnter = txtParametroEnter
      OnExit = txtParametroExit
      Width = 121
    end
    object grdPesquisa: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 302
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 46
      Visible = False
      OnEnter = grdPesquisaEnter
      OnExit = grdPesquisaExit
      object tvPesquisa: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvPesquisaNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Exportar'
            ImageIndex = 9
          end>
        Navigator.Buttons.First.Hint = 'Primeiro Registro'
        Navigator.Buttons.First.ImageIndex = 16
        Navigator.Buttons.Prior.Hint = 'Registro Anterior'
        Navigator.Buttons.Prior.ImageIndex = 19
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo Registro'
        Navigator.Buttons.Next.ImageIndex = 18
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Hint = #218'ltimo Registro'
        Navigator.Buttons.Last.ImageIndex = 17
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
        OnCellDblClick = tvPesquisaCellDblClick
        DataController.DataSource = dsPesquisa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvPesquisaRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvPesquisaSEQ_ACAREACAO: TcxGridDBColumn
          DataBinding.FieldName = 'SEQ_ACAREACAO'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object tvPesquisaID_ACAREACAO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_ACAREACAO'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object tvPesquisaDAT_ACAREACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_ACAREACAO'
          PropertiesClassName = 'TcxDateEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn
          Caption = 'C'#243'd. Entregador'
          DataBinding.FieldName = 'COD_ENTREGADOR'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object tvPesquisaNOM_ENTREGADOR: TcxGridDBColumn
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
          Width = 184
        end
        object tvPesquisaCOD_BASE: TcxGridDBColumn
          Caption = 'C'#243'd. Base'
          DataBinding.FieldName = 'COD_BASE'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object tvPesquisaNOM_BASE: TcxGridDBColumn
          Caption = 'Nome da Base'
          DataBinding.FieldName = 'COD_BASE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_AGENTE'
          Properties.ListColumns = <
            item
              FieldName = 'NOM_FANTASIA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBase
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object tvPesquisaDAT_ENTREGA: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_ENTREGA'
          Width = 79
        end
        object tvPesquisaDES_MOTIVO: TcxGridDBColumn
          Caption = 'Motivo'
          DataBinding.FieldName = 'DES_MOTIVO'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 226
        end
        object tvPesquisaDES_TRATATIVA: TcxGridDBColumn
          DataBinding.FieldName = 'DES_TRATATIVA'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 252
        end
        object tvPesquisaDES_APURACAO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_APURACAO'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 247
        end
        object tvPesquisaDES_RESULTADO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_RESULTADO'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 318
        end
        object tvPesquisaVAL_EXTRAVIO: TcxGridDBColumn
          Caption = 'Valor Extravio'
          DataBinding.FieldName = 'VAL_EXTRAVIO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 126
        end
        object tvPesquisaVAL_MULTA: TcxGridDBColumn
          Caption = 'Valor Multa'
          DataBinding.FieldName = 'VAL_MULTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object tvPesquisaDES_ENVIO_CORRESPONDENCIA: TcxGridDBColumn
          Caption = 'Envio Correspond'#234'ncia'
          DataBinding.FieldName = 'DES_ENVIO_CORRESPONDENCIA'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 210
        end
        object tvPesquisaDES_RETORNO_CORRESPONDENCIA: TcxGridDBColumn
          Caption = 'Retorno Correspond'#234'ncia'
          DataBinding.FieldName = 'DES_RETORNO_CORRESPONDENCIA'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 165
        end
        object tvPesquisaDES_OBSERVACOES: TcxGridDBColumn
          DataBinding.FieldName = 'DES_OBSERVACOES'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.MemoScrollBars = ssVertical
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object tvPesquisaDOM_FINALIZAR: TcxGridDBColumn
          Caption = 'Finalizado'
          DataBinding.FieldName = 'DOM_FINALIZAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object tvPesquisaDES_EXECUTOR: TcxGridDBColumn
          DataBinding.FieldName = 'DES_EXECUTOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object tvPesquisaDAT_MANUTENCAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_MANUTENCAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actRetornar
      TabOrder = 48
      Visible = False
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actSelecionar
      TabOrder = 49
      Visible = False
    end
    object cxButton13: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisarAcareacoes
      TabOrder = 45
      Visible = False
    end
    object txtConsumidor: TcxTextEdit
      Left = 35
      Top = 181
      Hint = 'Nome do Consumidor'
      ParentFont = False
      Properties.MaxLength = 70
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 389
    end
    object cxButton3: TcxButton
      Left = 150
      Top = 509
      Width = 122
      Height = 25
      Cursor = crHandPoint
      Action = actLocalizar
      TabOrder = 36
    end
    object datRetorno: TcxDateEdit
      Left = 367
      Top = 100
      Hint = 'Data do prazo do retorno'
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
      TabOrder = 5
      Width = 79
    end
    object datAcareacao: TcxDateEdit
      Left = 265
      Top = 101
      Hint = 'Data da acarea'#231#227'o / acarea'#231#227'o'
      ParentFont = False
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 96
    end
    object cboUnidade: TcxComboBox
      Left = 1066
      Top = 100
      Hint = 'Especifique a Unidade'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'RAMOS'
        'NIT 2'
        'ZNO 1')
      Properties.OnChange = cboUnidadePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Text = 'Selecione ...'
      Width = 91
    end
    object textQuery: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Width = 121
    end
    object cboMotivo: TcxComboBox
      Left = 35
      Top = 342
      Hint = 'Motivo da acarea'#231#227'o'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'EMBALAGEM VAZIA'
        'ITEM FALTANTE'
        'N'#195'O RECEBIMENTO'
        'PRODUTO DIFERENTE DO SOLICITADO'
        'RECEBEDOR DESCONHECIDO'
        'EMBALAGEM/PRODUTO DANIFICADO')
      Properties.MaxLength = 60
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Width = 151
    end
    object cboTratativa: TcxComboBox
      Left = 192
      Top = 342
      Hint = 'Tratativa da acarea'#231#227'o'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'ENVIAR A DECLARA'#199#195'O'
        'REALIZAR AUDIO'
        'ENVIO DE E-MAIL CONSTATANDO'
        'ENVIO DE E-MAIL RECORRENDO'
        'APURA'#199#195'O FEITA PELO CONTROLE'
        'SOMENTE RELATO')
      Properties.MaxLength = 60
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Width = 121
    end
    object cboApuracao: TcxComboBox
      Left = 319
      Top = 342
      Hint = 'Apura'#231#227'o da acarea'#231#227'o'
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
        '12-EXTRAVIO-ENTREGA N'#195'O COMPROVADA')
      Properties.MaxLength = 60
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Width = 105
    end
    object cboResultado: TcxComboBox
      Left = 430
      Top = 342
      Hint = 'Resultado da acarea'#231#227'o'
      ParentFont = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '01-ACAREA'#199#195'O RESOLVIDA'
        '02-BAIXADA COMO EXTRAVIO'
        '03-BAIXADA COMO EXTRAVIO + MULTA'
        '04-MULTA')
      Properties.MaxLength = 60
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 28
      Width = 121
    end
    object txtPedido: TcxTextEdit
      Left = 964
      Top = 181
      ParentFont = False
      Properties.MaxLength = 20
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 193
    end
    object txtNomeCliente: TcxTextEdit
      Left = 430
      Top = 181
      ParentFont = False
      Properties.MaxLength = 80
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 382
    end
    object datEntrega: TcxDateEdit
      Left = 818
      Top = 181
      ParentFont = False
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 140
    end
    object textEditEndereco: TcxTextEdit
      Left = 99
      Top = 208
      ParentFont = False
      Properties.MaxLength = 70
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 271
    end
    object textEditRemetente: TcxTextEdit
      Left = 99
      Top = 235
      ParentFont = False
      Properties.MaxLength = 20
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 514
    end
    object textEditNumero: TcxTextEdit
      Left = 426
      Top = 208
      ParentFont = False
      Properties.MaxLength = 11
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 76
    end
    object textEditBairro: TcxTextEdit
      Left = 547
      Top = 208
      ParentFont = False
      Properties.MaxLength = 70
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 224
    end
    object textEditCidade: TcxTextEdit
      Left = 822
      Top = 208
      ParentFont = False
      Properties.MaxLength = 70
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 215
    end
    object maskEditCEP: TcxMaskEdit
      Left = 1068
      Top = 208
      ParentFont = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 89
    end
    object textEditProduto: TcxTextEdit
      Left = 670
      Top = 235
      ParentFont = False
      Properties.MaxLength = 100
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 487
    end
    object textEditRecebedor: TcxTextEdit
      Left = 99
      Top = 262
      ParentFont = False
      Properties.MaxLength = 70
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 296
    end
    object textEditIdentificacao: TcxTextEdit
      Left = 476
      Top = 262
      ParentFont = False
      Properties.MaxLength = 40
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 23
      Width = 306
    end
    object textEditDocumento: TcxTextEdit
      Left = 857
      Top = 262
      ParentFont = False
      Properties.MaxLength = 20
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Width = 300
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.ImageIndex = 9
      Control = cxLabel1
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Layout = clBottom
      CaptionOptions.Text = 'Dados'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Identifica'#231#227'o'
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'C'#243'digo:'
      CaptionOptions.Layout = clTop
      Control = mskCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'ID/Chamado:'
      CaptionOptions.Layout = clTop
      Control = txtID
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'NN/Remessa:'
      CaptionOptions.Layout = clTop
      Control = txtNN
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Entregador:'
      CaptionOptions.Layout = clTop
      Control = edtCodigoEntregador
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome do Entregador:'
      CaptionOptions.Layout = clTop
      Control = txtNomeEntregador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 222
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Base:'
      CaptionOptions.Layout = clTop
      Control = edtCodigoBase
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome da Base:'
      CaptionOptions.Layout = clTop
      Control = txtNomeBase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Complemento'
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Valor Extravio:'
      CaptionOptions.Layout = clTop
      Control = edtValorExtravio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Valor Multa:'
      CaptionOptions.Layout = clTop
      Control = edtValorMulta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Envio Correspond'#234'ncia:'
      CaptionOptions.Layout = clTop
      Control = cboEnvioCorrespondencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Retorno da Correspond'#234'ncia:'
      CaptionOptions.Layout = clTop
      Control = cboRetornoCorrespondencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Status;'
      CaptionOptions.Layout = clTop
      Control = chkStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es:'
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = memObs
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
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
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 
        'Par'#226'metro (Sequ'#234'ncia ou #ID ou Nosso N'#250'mero ou C'#243'digo do Entrega' +
        'dor ou C'#243'digo da Base)'
      CaptionOptions.Layout = clTop
      Control = txtParametro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Pesquisa'
      CaptionOptions.Layout = clTop
      Control = grdPesquisa
      ControlOptions.OriginalHeight = 302
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton13'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton13
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Entrega'
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 1
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome do Consumidor:'
      CaptionOptions.Layout = clTop
      Control = txtConsumidor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 338
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Retorno:'
      CaptionOptions.Layout = clTop
      Control = datRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'Data:'
      CaptionOptions.Layout = clTop
      Control = datAcareacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Unidade:'
      CaptionOptions.Layout = clTop
      Control = cboUnidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object layoutFilterText: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Par'#226'metros:'
      Visible = False
      Control = textQuery
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tratativa'
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Motivo:'
      CaptionOptions.Layout = clTop
      Control = cboMotivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tratativa:'
      CaptionOptions.Layout = clTop
      Control = cboTratativa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Apura'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = cboApuracao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Resultado:'
      CaptionOptions.Layout = clTop
      Control = cboResultado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Visible = False
      Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'N'#250'mero do Pedido:'
      CaptionOptions.Layout = clTop
      Control = txtPedido
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 168
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup8
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome do Cliente:'
      CaptionOptions.Layout = clTop
      Control = txtNomeCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 332
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Data da Entrega:'
      CaptionOptions.Layout = clTop
      Control = datEntrega
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Endere'#231'o:'
      Control = textEditEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Remetente:'
      Control = textEditRemetente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'N'#250'mero:'
      Control = textEditNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup9
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Bairro:'
      Control = textEditBairro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 224
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Cidade:'
      Control = textEditCidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 215
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'CEP'
      Control = maskEditCEP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Produto:'
      Control = textEditProduto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup9
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Recebedor:'
      Control = textEditRecebedor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Identifica'#231#227'o:'
      Control = textEditIdentificacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup9
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Documento:'
      Control = textEditDocumento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object aclAcareacoes: TActionList
    Images = Data_Sisgef.iml_16_16
    OnExecute = aclAcareacoesExecute
    Left = 1056
    Top = 8
    object actIncluir: TAction
      Tag = 20105001
      Category = 'Acarea'#231#245'es'
      Caption = '&Incluir'
      Hint = 'Incluir acarea'#231#227'o'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = actIncluirExecute
    end
    object actEditar: TAction
      Tag = 20105002
      Category = 'Acarea'#231#245'es'
      Caption = '&Editar'
      Hint = 'Editar acarea'#231#227'o'
      ImageIndex = 10
      ShortCut = 114
      OnExecute = actEditarExecute
    end
    object actExcluir: TAction
      Tag = 20105004
      Category = 'Acarea'#231#245'es'
      Caption = 'E&xcluir'
      Hint = 'Excluir acarea'#231#227'o'
      ImageIndex = 4
      ShortCut = 115
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Cancelar'
      Hint = 'Cancelar a opera'#231#227'o atual'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actLocalizar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = '&Localizar'
      Hint = 'Localizar acarea'#231#227'o'
      ImageIndex = 12
      ShortCut = 119
      OnExecute = actLocalizarExecute
    end
    object actFiltltrar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = '&Filtrar'
      Hint = 'Filtrar acarea'#231#245'es'
      ImageIndex = 19
      ShortCut = 16503
      OnExecute = actFiltltrarExecute
    end
    object actExportar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Ex&portar'
      Hint = 'Exportar acarea'#231#245'es'
      ImageIndex = 11
    end
    object actFinalizar: TAction
      Tag = 20105003
      Category = 'Acarea'#231#245'es'
      Caption = 'Finali&zar'
      Hint = 'Finalizar a acarea'#231#227'o'
      ImageIndex = 1
      ShortCut = 16500
      OnExecute = actFinalizarExecute
    end
    object actSalvar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Sal&var'
      Hint = 'Salvar dados'
      ImageIndex = 13
      ShortCut = 116
      OnExecute = actSalvarExecute
    end
    object actDeclaracao: TAction
      Tag = 20105005
      Category = 'Acarea'#231#245'es'
      Caption = '&Declara'#231#227'o'
      Hint = 'Imprimir declra'#231#227'o'
      ImageIndex = 39
      ShortCut = 16452
      OnExecute = actDeclaracaoExecute
    end
    object actFechar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Fec&har'
      Hint = 'Fechar a tela atual'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actPesquisaEntregador: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Pesquisa Entregadores'
      Hint = 'Lista de Apoio de  Entregadores'
      ImageIndex = 14
      OnExecute = actPesquisaEntregadorExecute
    end
    object actPesquisaBases: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Pesquisa de Bases'
      Hint = 'Lista de apoio de bases'
      ImageIndex = 14
      OnExecute = actPesquisaBasesExecute
    end
    object actRetornar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Retornar'
      Hint = 'Retornar para a tela de acarea'#231#227'o'
      ImageIndex = 18
      OnExecute = actRetornarExecute
    end
    object actSelecionar: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Selecionar'
      Hint = 'Selecionar o registro'
      ImageIndex = 1
      OnExecute = actSelecionarExecute
    end
    object actPesquisarAcareacoes: TAction
      Category = 'Acarea'#231#245'es'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar acarea'#231#245'es'
      ImageIndex = 14
      OnExecute = actPesquisarAcareacoesExecute
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = mtbPesquisa
    Left = 880
    Top = 8
  end
  object mtbPesquisa: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 936
    Top = 8
    object mtbPesquisaSEQ_ACAREACAO: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQ_ACAREACAO'
    end
    object mtbPesquisaID_ACAREACAO: TStringField
      DisplayLabel = '#ID TFO'
      FieldName = 'ID_ACAREACAO'
    end
    object mtbPesquisaDAT_ACAREACAO: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DAT_ACAREACAO'
    end
    object mtbPesquisaNUM_NOSSONUMERO: TStringField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NUM_NOSSONUMERO'
      Size = 14
    end
    object mtbPesquisaCOD_ENTREGADOR: TIntegerField
      DisplayLabel = 'C'#243'digo do Entregador'
      FieldName = 'COD_ENTREGADOR'
    end
    object mtbPesquisaCOD_BASE: TIntegerField
      DisplayLabel = 'C'#243'digo da Base'
      FieldName = 'COD_BASE'
    end
    object mtbPesquisaDAT_ENTREGA: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'DAT_ENTREGA'
    end
    object mtbPesquisaDES_MOTIVO: TStringField
      DisplayLabel = 'Motivo da Acarea'#231#227'o'
      FieldName = 'DES_MOTIVO'
      Size = 60
    end
    object mtbPesquisaDES_TRATATIVA: TStringField
      DisplayLabel = 'Tratativa'
      FieldName = 'DES_TRATATIVA'
      Size = 60
    end
    object mtbPesquisaDES_APURACAO: TStringField
      DisplayLabel = 'Apura'#231#227'o'
      FieldName = 'DES_APURACAO'
      Size = 60
    end
    object mtbPesquisaDES_RESULTADO: TStringField
      DisplayLabel = 'Resultado'
      FieldName = 'DES_RESULTADO'
      Size = 60
    end
    object mtbPesquisaVAL_EXTRAVIO: TCurrencyField
      DisplayLabel = 'Valor do Extravio'
      FieldName = 'VAL_EXTRAVIO'
    end
    object mtbPesquisaVAL_MULTA: TCurrencyField
      DisplayLabel = 'Valor da Multa'
      FieldName = 'VAL_MULTA'
    end
    object mtbPesquisaDES_ENVIO_CORRESPONDENCIA: TStringField
      DisplayLabel = 'Envio Declara'#231#227'o'
      FieldName = 'DES_ENVIO_CORRESPONDENCIA'
    end
    object mtbPesquisaDES_RETORNO_CORRESPONDENCIA: TStringField
      DisplayLabel = 'Retorno Declara'#231#227'o'
      FieldName = 'DES_RETORNO_CORRESPONDENCIA'
    end
    object mtbPesquisaDES_OBSERVACOES: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'DES_OBSERVACOES'
      BlobType = ftMemo
    end
    object mtbPesquisaDOM_FINALIZAR: TBooleanField
      DisplayLabel = 'Finalizar'
      FieldName = 'DOM_FINALIZAR'
    end
    object mtbPesquisaDES_EXECUTOR: TStringField
      DisplayLabel = 'Executor'
      FieldName = 'DES_EXECUTOR'
    end
    object mtbPesquisaDAT_MANUTENCAO: TDateTimeField
      DisplayLabel = 'Manuten'#231#227'o'
      FieldName = 'DAT_MANUTENCAO'
    end
    object mtbPesquisaNOM_CONSUMIDOR: TStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOM_CONSUMIDOR'
      Size = 70
    end
    object mtbPesquisaDAT_RETORNO: TDateField
      FieldName = 'DAT_RETORNO'
    end
    object mtbPesquisaDES_UNIDADE: TStringField
      FieldName = 'DES_UNIDADE'
    end
    object mtbPesquisaDES_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'DES_ENDERECO'
      Size = 70
    end
    object mtbPesquisaNUM_ENDERECO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUM_ENDERECO'
      Size = 11
    end
    object mtbPesquisaDES_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'DES_BAIRRO'
      Size = 70
    end
    object mtbPesquisaDES_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'DES_CIDADE'
      Size = 70
    end
    object mtbPesquisaNUM_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'NUM_CEP'
      Size = 9
    end
    object mtbPesquisaDES_REMETENTE: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'DES_REMETENTE'
    end
    object mtbPesquisaDES_PRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DES_PRODUTO'
      Size = 40
    end
    object mtbPesquisaNOM_RECEBEDOR: TStringField
      DisplayLabel = 'Recebedor'
      FieldName = 'NOM_RECEBEDOR'
      Size = 70
    end
    object mtbPesquisaDES_IDENTIFICACAO: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'DES_IDENTIFICACAO'
      Size = 40
    end
    object mtbPesquisaDES_DOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DES_DOCUMENTO'
    end
  end
  object mtbEntregadores: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 832
    Top = 8
  end
  object mtbBase: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 712
    Top = 8
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = mtbEntregadores
    Left = 776
    Top = 8
  end
  object dsBase: TDataSource
    AutoEdit = False
    DataSet = mtbBase
    Left = 656
    Top = 8
  end
  object frxDeclaracao: TfrxReport
    Version = '6.6.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43775.503367939800000000
    ReportOptions.LastChange = 43936.463419270830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 8
    Datasets = <>
    Variables = <
      item
        Name = ' Report Variables'
        Value = Null
      end
      item
        Name = 'vUnidade'
        Value = ''
      end
      item
        Name = 'vSolicitacao'
        Value = ''
      end
      item
        Name = 'vRetorno'
        Value = ''
      end
      item
        Name = 'vMotorista'
        Value = ''
      end
      item
        Name = 'vRemessa'
        Value = ''
      end
      item
        Name = 'vCliente'
        Value = ''
      end
      item
        Name = 'vEndereco'
        Value = ''
      end
      item
        Name = 'vNumero'
        Value = ''
      end
      item
        Name = 'vBairro'
        Value = ''
      end
      item
        Name = 'vCidade'
        Value = ''
      end
      item
        Name = 'vCEP'
        Value = ''
      end
      item
        Name = 'vInformacao'
        Value = ''
      end
      item
        Name = 'vProduto'
        Value = ''
      end
      item
        Name = 'vEntrega'
        Value = ''
      end
      item
        Name = 'vRecebedor'
        Value = ''
      end
      item
        Name = 'vIdentificacao'
        Value = ''
      end
      item
        Name = 'vDocumento'
        Value = ''
      end
      item
        Name = 'vChamado'
        Value = ''
      end
      item
        Name = 'vRemetente'
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
      Frame.Typ = []
      MirrorMode = []
      object Rich1: TfrxRichView
        AllowVectorExport = True
        Left = 118.385900000000000000
        Top = 24.944960000000000000
        Width = 710.551640000000000000
        Height = 1031.811690000000000000
        Frame.Typ = []
        GapX = 2.000000000000000000
        GapY = 1.000000000000000000
        RichEdit = {
          7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
          7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
          305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
          67656E657261746F722052696368656432302031302E302E31393034317D5C76
          6965776B696E64345C756331200D0A5C706172645C66305C667331365C706172
          0D0A7D0D0A00}
      end
      object Shape1: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 0.015770000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = []
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 51.574830000000000000
        Top = 3.795300000000000000
        Width = 381.732530000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'REGISTRO DE ACAREA'#199#195'O')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 427.086890000000000000
        Top = 0.015770000000000000
        Width = 60.472480000000000000
        Height = 34.015770000000000000
        Frame.Typ = []
        Picture.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005100
          0000340806000000F2B6D4DF000000017352474200AECE1CE90000000467414D
          410000B18F0BFC61050000000970485973000017110000171101CA26F33F0000
          1B7E4944415478DAED7B09741CE599EDADEA5A7ADFD5524B6AB57659BB6CE305
          79634D6C423031C4664B6692C0399330648640CE2421E730F35E189249420843
          E631408093C3E284D5106383C1365EE57D91AC7DDF5AADDEA4DEBBABBBEA7D25
          9EDF219C2C3301B39D29BB8EECEEAAFAAB6EDDEFBBF7FE5562F03FCB075E980B
          3D80A228ECFF1F8C61E40FF1B8CCBB87FCF08EF9D72E170C44BA4861627CF4D7
          79192B23F3511416B92088C2B30E8BE15996D5F6FDB5C7CD66B34BFD7EBF2599
          4AFDC26834E80D2643A7D960FE0ACBB2898F07C20B04A22CCB8691C1A1C74727
          C76E1899188342C368050E9E9212D84CD650634DE383AC5EF84FBAF0C05F388E
          1DE1F4B7904C02660E81B9B0D5178CDC351B0820100ED1160AAAAA2B61329976
          36D4377D995819FF2C81683AB8EF60B4E3E451982C2694B9DD403E8F999919C8
          0AB0AE7D1D4C7AF39EC28AE2ABE9C2937FF418D1D9DB9440F41F0347BB1AE474
          1AEEE58D188947B0FB58271CAE42E88D06CCC5A20BC76C5DDC8A9ABA9A352585
          25073E33204682D1EB0F1E39F474201414EBEB6AC32EA76D5B3E995122E1B9A5
          A1E87C6BFFE0005A5B9B515D5BF5464989770B0139FFBE9BE0CEF49DD93AFAFB
          D7D79E79EE15086061695B84822B2F87B56D39E6D3D9FD66B371702610E027A7
          A66E9115194D8D8D07EAEBEBD77C66401CE81FD9DFDDD3B59AD8925CBC74C5A5
          4EABE1E80238927CBF9CC97FEF74E7090C4D0EC1EEB0A0A2CCBBB3B2B2711395
          76EA3D20B6C7F6EF39F8FA3DDF832714059F67306333A3FC969B83CDB7DF7107
          6DB29DB68FA9DB1E3972E49F62B1D88FCD26F3D1E52B96AFF8CC8078B4E3F88E
          81C1DEF555E565C9E5EDAB37D3471252A9457303E3F78782617DC5E2C6BE13C3
          DDD383037D97BAEC0ED4D62E7AC5535E7D8B2A0E297FAA5AD469360576BFF193
          23BF7A00968929303283548907459BAE9D68BDE3EFCBDE3BD6F0F8F0BA5C3AB7
          77C63F7368ED9AB5AB3E3320767474EC981E1B595FE374A2A2D009BDC023343A
          813DAFBE01D16041DBFA2BBEEFBD74CD8FF7EFDBF77464DA7F7391CB81C2E2C2
          E73CB5F5BFF4F70D3DEBEB1BAA34655290FACF61F89D7790C9E6D0B8E16A7836
          5CE9D3B5345510D899F36385C3E1B229DFD4F3F1585C77F1CA8B5B3E3320F69D
          3DBB2DE2F35DC387C2E8DDFB36B8F83C62D37E4C0D4FC15251811BEEFB9760E1
          AAF61B1549698DF60DFE6CFB8E57E1A9A940456D7578B47FC87E74CF7E3478CA
          B1BCB11E3229336B34C25C5991E28A8A6E2245DA463D54F9839B76E4C88326B3
          F99AC6FAFACA4F3588E40BDB68BD529E0E4166F2DF18EB1FA8D3040318787B17
          CEBEB913DA7406525A82585A82EBEEBD07856DAD183DDD8DFED367D13F360CB3
          A7148EB232CC8782C8CDCF233AEDC3359BAE83A77DD55E14D8F7218F7D2CCFBE
          FDFE7123115F792492793E954E8B8D0D8B3EBD4C945372C54CF7D9837C5E7687
          86C7C1F302922962D07C04B1C16E1C7EE56508F10494AC0C8DD582C2D606F016
          3346BAFB109E0D216B32C041D7EF696C263FA9C174F7694C0FF462C3C66BB162
          CBCDE7505DB98986F11103455A83EF1D7B6464E22A5EE4B747C2A1B3CD4D8DAD
          9F5A109578A66DDF134F9E7AE78927C16733B03B0BE07217231D9A4632388D78
          300CA4F210A80819022945265926C3C8AB27C0B148984CB02D6A46E9A246B074
          46B3E37D880CF4C3617560CD355F82A9A646528C3AC954E48EF09595DF27205F
          A3754E1DBBB3B3A75D10F983C84B0FD6D5D7DFF9A90551CEC8CD6FFFFC81B307
          1FFE156C72169C464360F0644D52C8E593C8320C1499DC5E9E80E359F01C7D4F
          FBE5150519DA56E7F5A276E94A626F86442405B3D38050DF208283A370D89D30
          B90A302749703734A1F5EAAB61ACF376C068D8CAE8CD8F057CBEE7A2B1E8357B
          7B7ACDB75E7B6DECD30BA22C374FEED87D76DBBDF742333D0EB38620226F2711
          2B73F93464629BC4709008442DC7915A6BD4268A0C34C8DB6C286F5D0CBBCE82
          E9DE5EE49414DC4D55D0D0F6D35D8350FCB310D349C4B312E6392D78AF07ABB7
          5C0BBDBB08164FD97444CE1707625165C9E597FD0D587EE75F8A929F64106B73
          BDC37D5BBF7D07323D5DB01046D98C8C742E4703C8004BFF866A1635D06B0418
          897D59528A34AF47514B0BDC9E12843BFBA04C8D43C3E72097B850D4B818C948
          02E1739DB0C4E6A85A654473405C4DE2563358B31905D5D59848C621381DB872
          F31638AA2A8FC053BA9180F47FEA402455BE028323BB5EFCD6ED88777542871C
          B14E468ED5409DA892731964350A7254E21A85801449783806BAD20A54363721
          393B05A97B002E62AECACFA8410F5D4D238C45C5888C0F431A19828E98CDE464
          3A5E0E29298F644E811ABAE3D444E33C072DF5E0CB6EBA11E55F583FCC15BB9F
          6304E109EA9BC39F0A1065397111E653DBE6F61E2C7EEBDF7E86ECE03065DD3C
          553381A6A10B57189588044D0E59121399A5521744A0C0818AA5CBA0A5FFCF9C
          380A7B781E8504BAC2E411A39F692A735BFD22703A0EC19E5E70A1791888D922
          81C8D08DA07F1298392488E951258F10B58A3CA59FE6ABD6A3E1B24B60A8AA98
          636D8EEBF98282B73FE8355E3010897D3CADCBA3274FBCD8B76F5F61CFF69D50
          868661201566A9DFC98C843CB18F6108983C88850A2445428680548C6694B4B6
          A1C8538699AE736089692E02C1C8F1501B408E539020E9668A5D70D4D5221589
          92551AA46327A09565F032ABCEC6D2F1406D825899CF2146F6299891903518C0
          171662F9976F44DDC62FBEA229F77EE9130922F5405DCE1F7B36313676D5B1AD
          4F0BC7B7BF06910CB29DD032302234AC40652941D1C8C413EA8A947D73547639
          023641176C292D47D39215480502983D7B1AF64C024E622CCF6BC9FE9092530F
          C80BC4483D07536D03742E37FCC37D6082333066F310898602B15C51FD100995
          3A5F99CA641123431F2730FD993CF886366CFCE77F910C4B5BEE65B5DAFB3F51
          204E4F8FFDDD5C24B1598C662F1DD9F926CE3CFF3B0891007454665C3E039E40
          140503B885234B50A7A9E8BA164A3B41ACC919B4A86B590AA7DE0CFF99B310A2
          411889A146028623D149E3DDA709A43948F11AC46D0530D437229D4D203A3A08
          4B2A0D532E459E53221BC5D24A7D97FEB03C432C27A62B3C7C94AC475813EABE
          7C036AAFBA02C652F7338A28FE87456F39F4B18248A5AB99999EB97D6A7AEC97
          2CB1C6C5E9F0CE238F61E4F5ED70A97D4ACA4060E827B150C3E9A1A58BE3F279
          A82937477D2EC5E63047FED0525D8B3A02253E348A2C196A33E9B44040EB72E4
          2FA93FAAE5ACA882AE2370442D821A1E59B23596D22224FC3360037E58A518B1
          3145669DCA5AE617AE22CFD10DD312270D36F81511616B192A366C44CA650763
          344164C5406D49CD06A1D87AE2E304D1BA77EF01FF5CD82FD454579E5BE4299B
          EF7DEDB5F697EEFF31B4E108B1898151604850188285034B176F664508A4A494
          F7906025A46C76542C6F27E1613077EA0CACD1080C721E9A1C032DB156E05445
          57DE0552E0A0D10A8813832356236C15E5103522A213A330C40330AA2E930ECD
          C82264B254392E89BC91C626BF992FA82095BE01A6C625C7661946E79F9E6D42
          2403AFC33569AB287D12AC34CADA5C4F7CE420769EEB7DE85CE7B9DBA54C32B3
          F692B5CB3C1E8F2F3736B87BF7934FB6F6ECDA8362BD09C1F171A41371481A0E
          6EF270ADC4B8A9D36711191D418E0031D52E82BBB6964C7517F8B1319492C8E8
          24D503516B230957419489BA7932E7792A4F9E9459A2BE10264BA4905898DC25
          48D20DE3FCE3948CE22430796A172CF5466A136216491D015A5407EFE5D7C076
          CDCD74E3D91F308CE1492512DA1C3ADDF5CBC9932751448C2E6C6E24936FBF9E
          2FF6BCF8918278F8F0915D4343235764A56CBCE3F001FBA38F3E2A294AAA32D8
          D9F77B91D1D4636A1A2F3DFE2462B3B3F01080176FDA08575B0B8EFEFBAFB0FF
          B7CFC364B6A176D90AA4D329F84F75A024934209F52F5EA28353A93324423C01
          C610F3F20BCC9221AA252DB088916A472C2670DE726A1754BE9363D41B432462
          245EA4D67962719A3E8E189D70AFBB0EDEAFFE1D01A8799AE12D5F271597A227
          8FFE7CF88D37BF33F0C6EFA1F697DACF6F40E5D5D76E3734B47C958C79F82303
          F1CCD9AEDD3D7DFD9726A5747EE5AA950F36782BEF563F27A536D389B6283EFF
          1766FBFABF1E9D0D700E6F59D45C5D7197C66E67C7DFDCF5FCB16DDB100D8450
          525482C953A7214C8CA18A002BA022E6D454C366C070A4A80418ABA619B23812
          95BFA027366AC9330A02E6F53A6448A5594B01F22464DA79EA8D4A9A7CA34C85
          CD20C489D035B7A3FE6FEE84E2F23CC3B0A20A6096DA5051E0C8BEE943FFFE20
          C3F67753BFA631EAEAB1FEBE9F4071572D23108F7F64200642A11F0D0C8FDD73
          E4680796B636C35358F090B7BCFC6D24D2A95C683EC595145B1991EBA04D2374
          E2FAF3CF40F2BEE0A3937D3D6BCF759DA94B92A5C9F5F6C3E6F3413F3BB300A2
          2049241019022F0F41502D0B8B0CB1324D42A135B1D0121B73D41F93028F7993
          1D594709B18C8C53D4077B768E945A424CE6902DAEC1A2CDB781A9BFF8695667
          FBCAF9F3A673D1A67B3BFD679F79CA3C75600FB50BC07BC9E568BCE1965E6D4D
          CB7A3ACFB18F0CC40536525F0C4CFBEE18A43CBBACB91E4B9A9A91ECEA437074
          0C9CD988A2A54D2F33C545CFB25AF30BE7F721A6168CF50FEE3A79FA44AB9752
          4811F5CCF4F1E3E87DFD5514A6653816549C5235F32E880CAD19EA8F5991FCA0
          9985C1CC83AA9ED8C822CA1B11371721A73341CE84604ECFC22227295373E0EB
          DB51B5E5EFA1389BAB0998A1F36F5E8C0D0CDDCDCFCFFF2831D8CDE766A7A1A7
          DC5D78D17268ECAE7F10DC9E873E2880FF6D10D565A87BF0A16C6CEE8EC8C820
          6C9108865EDB09F867911679ACBCED2B28DE7C5D1E3AEB52BA9033EA85CCF903
          DFEEEAEBFD452899407B5B5B50EF9F1506766E371F7EE62978C91C7BC8126929
          67F3D4D7B46A398B1A121305599E7CA35181DE2E80D3B3645F34C890798C8A56
          32E14E484C16A67C0066268104D91CAEEA62545FF72D2886E29DE974AE435634
          B7F40F8F606678AA7A6ED2878B1A17A1ACAC048251EC80B3E83B54EA3DE7E724
          3F7210D52519083FC68583B7BEF5D39F227DB003A5E405E7D48981863A7CEE7F
          DD0BB1A9E599606CF63997C5BDBDB7E76CE84CE7397B4D6DC3705B4BF3B59991
          A9477AF6EF6D9F3A7E18057341C44F9E862941069AE4414B7D52D072A4CE242C
          820C454759D9C141B012155570791E71D18C39431124F2903A360E139F408A40
          14CB96C1B3F25AFADC81D1A9594C53BA99A314C5E534A82EAD4071A1FB554B91
          F379BDC5F4F48701DC07065135DECAE4D4F6D3CF3CFDF981ADBF832B93A11EC6
          21D7D8888A4D9BC15655626A3E9876B95D27A6274657649229AEA9A9E5804B36
          6D12CC869B7C63630F1AC80D5AE261ECFDC583C874F5C041AAAC275B23524A51
          7D1F4320E604EA972A880E112096E688ED49A305F35A17D21A23049E80D72491
          A6DC9D3378211634212671988F53A23188F0788B6132594E35D436DE0D513CF8
          DEA7841F3B88EA920B85B6A447869FEDDCFA5B36D2D30783CB85E6EBAF87B6B6
          09C706469124DBA2D1321819A2EFB45A545556209FC94B52564EE525C66C24C5
          6D70DAD0FDD2F398D9BB1F668A6C3A2A638157A31C43F95B8122E6408E7D61D5
          889491B52252A4D2099E4A3AAF277FC891254A9341278C4D1E14799AC13002A2
          E139E869BB45AD8D3017387FC2982CDFBB10E07D6010DF05D2FFCDFC6CE4DF62
          83A346C16E8E9BCA3CF7E574F6C1482CB125264B495F70E6ABA74E1E4395B72C
          E928B069588E118381886A022110DDF8F91094E141C88383D0CB192A6785C459
          599837E4D497763412242D196A839A8DB985E9B5349D719292504A6323F13192
          A8A4612B2CC065575D4FF9DCFC8414085C746CE7AE96F95004EE9A1A542F5B1C
          77B7B678DEDFFFD4F785540F496BFAFDFF57FFFD472E37AB325996935E450AFF
          8CE15DEA5EC46EED831FC27CA25C82B9F8376035FE9A0699523FA372E762C9CC
          D5E7BA3A5F966229D51F7EA7B0A6706F2A1BBFDFEFF383A5A8268237B391C0C5
          9D2FBF88EC994E582975E888B9E470C066158894BB59468624907F3493B8506A
          91D4C95DFA93A10C9ED61721637623218A685CD58EBAF675BF6605EBADD3C78E
          1C3EF2BB17563A0D66707607ECD55EB9B4B9FEF5503AFA70229D83DD60815114
          6B199DE1874C3631994CCEFF40D09B0A049DF07359CEF972196927A7377E0D34
          162F880B536E3986A59B9A1F9135B97B7352E23EAD5EB314EA4C956240564AFD
          E3057B3FB1B3B3738B7FC6BF5504D7BD7ACDBAEB182DD3FBDEEF55A0C343032F
          0EBFB5FB9AEE67B7C29989834E093A629B4824E4F3EAA3418A7F945C781DA517
          BD66614E324B6D224DE293D23A90B679A15FD48245977F4EB1553559E92646A7
          3A0E9C39F2DB975A9C362BDCA4C87145014BED446FB32099CD404FA0EB68FCF0
          F42444A30E46BB9DFC2859A75814996C127A8316C9780CD95C16EE520FF44613
          79E4000ADC6E682D664C0D1C47321124800D745E0EB88AAB2ED8AB758EEECEEE
          C3D35353354693E195F635ABFFE8C4A89C4E7F31DAD5F3EC89A77F63B4F92621
          0DF5C32265161E2FC894A9B30A290CFD054F42616421E94858780119BD48A56C
          82BEB40EF6E615705DD4AEE86AEABF48ACD93371F4F0AE13DBDF6CAFA9AB42CD
          EAE5B3A3A33EDE3F366933E8B408CCF991CE24516AB52243AD249A8CC15E5C06
          46A43494A5DE9A4FC1556883868CFFDCDC3CCC0430AFD5239E4AC3E52985D16A
          C468CF6198E92EE46401BCDE056F75DB850371FF3BFBA7E3F184D0D8D8B0ABBC
          B2FC737F6ADBF4D4D43BF08DAF1DA56818D8F5360AE27168A534F2521E8A86A3
          F8C7505F949132D1A93A9DB0D734C1555F8B0CF5CDF9D939C43332098F13D59F
          5B0F83D7BB633E16ADF2F7F5D5D6B534417158FE75666CD65B6473DC9C26D066
          FC9360FFDFB4DB40D729C8E4065ADB57239A9690A0712D5613EC7633A5270519
          721C6059C493E985F3B0D86DD0127363A109F094D90979E8EC654827F32F5C10
          10038140DDE1431D274451D4B7B4B63EE77617DEFCA7B65552A94B94CCDCCBC1
          3D07AC03BFD90AA1770026F5ED0975669C7C6392B274DC6A80585F89FA8D1BA1
          F3D68075154E496313EE038F3ECECEF5F5D005F1B037B6E1923BEE044A8AD17F
          F81062F1391494148F992B6AEEB696BA834A3CCE24E24168195E139EF13D140D
          CCD49792AF152DF6FF0023D7335AC3A572323ECA706C4C51D44935A4D4A64C1E
          A181426640C3E23E865126882077311A6325E464049C4B35EDBB2E0888FDFDFD
          DB7AFB06AED18A426CC992F606A7D330F9E7B657A4C825F2F4DC5323BF79DE3B
          FED2AB304442D02B9905759ED30AD02F532716FE16DAE56D7B1841BB95EAE877
          A1DD7B478F3CF88085270BC553749CA148D84E20BA962DC3AB4F3E418C93D07E
          D57AD86A6A7EA8AFF0DEF70795128F2F6134CA0949CDDD81D0D339E4AAAD6ED7
          4A5E147F01E8CFA96D4151726D0CC339E3D18987389EDF2E6A0BAAA81E1EE758
          D3C3EADC00ADF9F3BEF3828078FCC48937FBFA07AF2C292E8EAD5DB34A7D152E
          F497F649F40D6D4D1E3FB3A5EB99E7901FE88393FA531E69848C7A34DF7E378A
          BE7E2B145959C28AEC29758238FCCE41FFE19FFE5460077B17DEB888DA0AF0F9
          EFDD03C15B86DF3EFC104A0B5D685AB70A068F17C170E405AD419082D110D2D9
          1C5C66AB8D13B9F591591F4C161B724A16A9740C95358B2029EA635EE6785E23
          B76944869BA7546530E8A9B20D6AA2EAE6B4C66B59AD6BE0BDE77E41403C76FC
          F88EFE81A1F5C504E2BA35ABD40981D93FB7FD4CDFB91F3081E80F431DC774FE
          BD7B90EDEB43A19247369F46907AD1E2EFFE3056B871D3F749E11F53A7B7D4E9
          B76C5FFF3B336FED6EEBDFFD36196E8A76EB2E8167C3065F283627BCF6F8630E
          9783F65BBB0EF13C303C30884A6F0974D4D318D51E25E611F08D53AA511F2D68
          168CB92A2C8268402225A1B0B898525092D4577D34AB5A1D4A63520EEEC25268
          AD2527054BD9D20B0EE2E18E8E1D4323E3EB3D2525B135AB2FFEB3204E8F0CDD
          A904830FCCECEB40F0E07E48833D302E3C8C621023CD885678B0F2BB77079D97
          ADBD89D599769DDF4F0E87BD88255E890E0EB74D8C4DA26AD945A3BAA6DA2FF9
          3B3B7F7976F7EEB53C015BB3A40D917806E74E9D44536D35DCC545A407024273
          01188DDCC28B02C9448A2C2E89094BD95C7D92413F5304284736CAE576224C4C
          64A921AA0FC304F28D5A6BF184D652F1076FEB5E1010F71F38B0637C627201C4
          D5AB5755FDA9F763864646EECCCDCF3FE03B7A1CBEED6F40E83F079B94A0E6CF
          903A6B10E10DA8D9B209757F7BE3088A6A56B146D6F7DEFDD55FD11838DDD93D
          39E12B2C2C2CDADBB4B2EDD2EC94EF64766A6A71D0EF87A3BC0C799D5E8AF803
          4789993AF01A91620723532A1204F599B8A4C8E93C38F51183EA4A791E1AF2A6
          3925B790DF17EC95FAEC423D1F52759EBEA7E4F45DADB1E2F50B0EE2C1C30777
          8C8E8EAD2F7038A2575C7165F1FB7F51872EBEC51F086C9E181BBFA7D06446E8
          CC691CFB3F8FC234310E279D344F49252E93BD29ABC2E26F7C15DE2F5EEE83C5
          F00596359E7AEF710291C865478E1C7D31149EB736D5D51F5DBAB47945B46FF8
          44DF81FD4B2606FA51BBB81515172D8DE92A2AFE376DFE1C9DC7E47FEB42FE8B
          CB851116EA899DE7CEADD76BB5B9C6FAFA871B9A9A7EA48A0B81E7F2CDF8EE27
          0BF4792A9F12865249B9D7F3232E12BA75EAEDDD45BDA4CC99C969321729C87A
          031A365D07EFC6AB31456E436F2F0816BABDD7731C3ACEABE2E8C0D0EBC7CF9D
          DEA09AE1E54B97ED68A8ADBDCA77E4E889FD2FBCB8C42208D03A1DB0D556A179
          DD1AC8F97C37C3B2AF4E4FF87EA6EE5B545AB8195AFDD5C824108D26FCD39CF6
          DB4D85857FD52F135D288BB3FFF4D9B3ABA72626505B5B0B7751914FC371CF45
          A3D1DBD2D9B4492B6AA94917C169B77FD3EA703CA228A92B104FBCA0F40E5BDE
          7AF8318C777563FD2D37A2E0D27579AEACE4E5EEB1912FA9CD2A95CDE5B406ED
          AE9C243DC1E4F34BC3B381BB7A06FBF9F2BA1A2C6A6D6EAE7697758D1F3A78EA
          D8B657DB56AD5809C668C4044536A7DA0B39B54C19128E6C2C9F97A0D5F1262B
          996BADC823ABA114A4111F28ABACBDEB1303622412B9AEB7B7F7D9AEAE2E8180
          83C562A1B0E1A4E6CD92172E86C96CDE565050F094CD667BE5FC3EB29C5D456D
          7DF3DC3B07BF3D3B3886CA8B96BCC4B5363F4EFBEC989F0F6D88CC046F89A592
          37CD45E34853E208078208CCCC827A211A5B9AB168516DB9FABC64FCE8A15387
          5E79ADAD9E6E9E4242A0503F13743A4CCFF8A8512828282A2435D66276760656
          BB050E527F497DC66DB23FE2A969FEE627064475191818D8924AA57E93CD6605
          2A63C462319591878ADCEE31ABD5FAB53F35419A9A1CFC57B1C0BD2E9F48DCCF
          DB5DBF3FFFB93A111C9A9D7D2414996B98F04DAEB05AAC9A1C793EBBDD79D266
          B3FEA7D369575FA5CB0507FA46FDBD3DDE10015CEC2D47656D0DF2943B429108
          B406B23814230D6469628918890B07BDC54CD99C43389178CA5154F9B54F1488
          EA422CDCA8D56A9B551093C9E4A8DD6EFF50A6E655A613BBEB03A180E472BA7E
          AE8277FEBB4C24749B2693BE259BC9ACCD6672FF6CB6DBF3E96C76E13BAD5E8F
          743A899C9C5BA80AD04F412B309CD1BC39954EDF6B303B5FFAC481F8712D6AA2
          A1B592803AF95FD93E1108141B0A0AA6FFDAF13E93207ED4CBFF80F8212CFF17
          9B168E3E26F0BAD70000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 487.457020000000000000
        Top = 0.015770000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Unidade:')
        ParentFont = False
      end
      object Line1: TfrxLineView
        AllowVectorExport = True
        Left = 483.677490000000000000
        Top = 0.015770000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Shape2: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 38.590600000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = 122.488250000000000000
        Top = 37.811070000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line3: TfrxLineView
        AllowVectorExport = True
        Left = 248.787570000000000000
        Top = 37.811070000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line4: TfrxLineView
        AllowVectorExport = True
        Left = 376.291590000000000000
        Top = 37.811070000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo3: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 37.811070000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Chamado:')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 121.944960000000000000
        Top = 37.811070000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Dt. da Solicita'#231#227'o:')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 250.787570000000000000
        Top = 37.811070000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Prazo de Retorno:')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 380.071120000000000000
        Top = 37.811070000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Nome do Motorista:')
        ParentFont = False
      end
      object Shape3: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 76.385900000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Memo7: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 75.606370000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Remessa:')
        ParentFont = False
      end
      object Line5: TfrxLineView
        AllowVectorExport = True
        Left = 207.874150000000000000
        Top = 75.606370000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 207.874150000000000000
        Top = 75.606370000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cliente Destinat'#225'rio:')
        ParentFont = False
      end
      object Shape4: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 114.181200000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Memo9: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 115.181200000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Endere'#231'o:')
        ParentFont = False
      end
      object Line6: TfrxLineView
        AllowVectorExport = True
        Left = 574.488560000000000000
        Top = 114.401670000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo10: TfrxMemoView
        AllowVectorExport = True
        Left = 574.488560000000000000
        Top = 115.181200000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'N'#250'mero:')
        ParentFont = False
      end
      object Shape5: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 151.976500000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 151.196970000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Bairro:')
        ParentFont = False
      end
      object Line7: TfrxLineView
        AllowVectorExport = True
        Left = 245.669450000000000000
        Top = 152.196970000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo12: TfrxMemoView
        AllowVectorExport = True
        Left = 245.669450000000000000
        Top = 151.196970000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Cidade:')
        ParentFont = False
      end
      object Line8: TfrxLineView
        AllowVectorExport = True
        Left = 529.134200000000000000
        Top = 152.196970000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 529.134200000000000000
        Top = 151.196970000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'CEP:')
        ParentFont = False
      end
      object Shape6: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 254.141930000000000000
        Width = 661.417322830000000000
        Height = 37.795278030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 253.362400000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Remetente:')
        ParentFont = False
      end
      object Line9: TfrxLineView
        AllowVectorExport = True
        Left = 148.842610000000000000
        Top = 254.362400000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 151.181200000000000000
        Top = 253.141930000000000000
        Width = 52.913420000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Produto:')
        ParentFont = False
      end
      object Line10: TfrxLineView
        AllowVectorExport = True
        Left = 566.929500000000000000
        Top = 254.362400000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Left = 566.929500000000000000
        Top = 253.362400000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Dt. Entrega:')
        ParentFont = False
      end
      object Memo17: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 291.157700000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Recebedor:')
        ParentFont = False
      end
      object Line11: TfrxLineView
        AllowVectorExport = True
        Left = 234.330860000000000000
        Top = 292.157700000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line12: TfrxLineView
        AllowVectorExport = True
        Left = 525.354670000000000000
        Top = 292.157700000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo18: TfrxMemoView
        AllowVectorExport = True
        Left = 234.330860000000000000
        Top = 291.157700000000000000
        Width = 83.149660000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Identifica'#231#227'o:')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 525.354670000000000000
        Top = 291.157700000000000000
        Width = 83.149660000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Documento:')
        ParentFont = False
      end
      object Shape8: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 189.771800000000000000
        Width = 661.417322830000000000
        Height = 64.251988030000000000
        Frame.Typ = [ftLeft, ftRight, ftBottom]
      end
      object Memo20: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 188.992270000000000000
        Width = 139.842610000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Informa'#231#227'o adicional:')
        ParentFont = False
      end
      object Shape9: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 328.968770000000000000
        Width = 661.417322830000000000
        Height = 691.653968030000000000
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
      object Memo21: TfrxMemoView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 332.614410000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Quem recebeu a visita da acarea'#231#227'o?')
        ParentFont = False
      end
      object Shape10: TfrxShapeView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 359.071120000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Shape11: TfrxShapeView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 381.748300000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Shape12: TfrxShapeView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 404.425480000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo22: TfrxMemoView
        AllowVectorExport = True
        Left = 78.370130000000000000
        Top = 360.071120000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'O Cliente Destinat'#225'rio')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 79.370130000000000000
        Top = 381.748300000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'O Recebedor')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 79.370130000000000000
        Top = 404.425480000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Outro')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        AllowVectorExport = True
        Left = 79.370130000000000000
        Top = 427.102660000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'Nome:                                                        Ide' +
            'ntifica'#231#227'o:                                    Documento:')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        AllowVectorExport = True
        Left = 56.692950000000000000
        Top = 469.457020000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'O Recebedor '#233' conhecido no local?')
        ParentFont = False
      end
      object Shape13: TfrxShapeView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 492.134200000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Shape14: TfrxShapeView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 514.811380000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo27: TfrxMemoView
        AllowVectorExport = True
        Left = 78.370130000000000000
        Top = 493.134200000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            'Sim, a diverg'#234'ncia doi solucionada e o Destinat'#225'rio recebeu a en' +
            'comenda.')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        AllowVectorExport = True
        Left = 79.370130000000000000
        Top = 514.811380000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'N'#227'o, a encomenda foi extraviada.')
        ParentFont = False
      end
      object Memo29: TfrxMemoView
        AllowVectorExport = True
        Left = 55.692950000000000000
        Top = 542.945270000000000000
        Width = 393.071120000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Coment'#225'rios da pessoa que recebeu a visita da acarea'#231#227'o:')
        ParentFont = False
      end
      object Line13: TfrxLineView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 628.315400000000000000
        Width = 661.417750000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Line14: TfrxLineView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 697.598950000000000000
        Width = 661.417750000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo30: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 629.213050000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Acareado:')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        AllowVectorExport = True
        Left = 411.968770000000000000
        Top = 631.213050000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Motorista:')
        ParentFont = False
      end
      object Line15: TfrxLineView
        AllowVectorExport = True
        Left = 408.189240000000000000
        Top = 629.772110000000000000
        Height = 68.031540000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo32: TfrxMemoView
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 680.126470000000000000
        Width = 200.315090000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Assinatura')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        AllowVectorExport = True
        Left = 264.567100000000000000
        Top = 680.126470000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Data')
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        AllowVectorExport = True
        Left = 438.425480000000000000
        Top = 680.126470000000000000
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Assinatura')
        ParentFont = False
      end
      object Shape15: TfrxShapeView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 709.126470000000000000
        Width = 661.417750000000000000
        Height = 22.677180000000000000
        Fill.BackColor = clScrollBar
        Frame.Typ = []
      end
      object Memo35: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 711.906000000000000000
        Width = 661.417750000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          #193'REA DE PREENCHIMENTO DA BASE')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo36: TfrxMemoView
        AllowVectorExport = True
        Left = 52.913420000000000000
        Top = 737.008350000000000000
        Width = 238.110390000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Chamado classificado como:')
        ParentFont = False
      end
      object Shape16: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 759.685530000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo37: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 760.685530000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '1- Procedente')
        ParentFont = False
      end
      object Shape17: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 782.362710000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo38: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 783.362710000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '2- Improcedente: Entrega feita no endere'#231'o correto, estava  na P' +
            'ortaria /Adm. do Condom'#237'nio.')
        ParentFont = False
      end
      object Shape18: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 805.039890000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo39: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 806.039890000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '3- Improcedente: Entrega feita no endere'#231'o correto, estava parad' +
            'a com parente /funcion'#225'rio.')
        ParentFont = False
      end
      object Shape19: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 827.717070000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo40: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 828.717070000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '4- Improcedente: Entrega feita no endere'#231'o alternativo, registra' +
            'do pelo SAM..')
        ParentFont = False
      end
      object Shape20: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 850.394250000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo41: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 851.394250000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '5- Improcedente: Chamado incorreto - deveria ser '#8220'Auditoria Clie' +
            'nte Interno'#8221'*.')
        ParentFont = False
      end
      object Shape21: TfrxShapeView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 873.071430000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
      end
      object Memo42: TfrxMemoView
        AllowVectorExport = True
        Left = 74.590600000000000000
        Top = 874.071430000000000000
        Width = 582.047620000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '6- Improcedente: Chamado incorreto - deveria ser '#8220'Comprovante'#8221'*.')
        ParentFont = False
      end
      object Memo43: TfrxMemoView
        AllowVectorExport = True
        Left = 49.133890000000000000
        Top = 895.748610000000000000
        Width = 608.504330000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          
            '*Lembrando que um chamado de '#8220'Auditoria Cliente Interno'#8221' ou '#8220'Com' +
            'provante'#8221', sem encerramento pela Base dentro do prazo de 48 hora' +
            's, vira um chamado de Acarea'#231#227'o. Se for este o caso, o chamado d' +
            'e Acarea'#231#227'o deve ser dado como '#8220'Procedente'#8221'.')
        ParentFont = False
      end
      object Line16: TfrxLineView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 294.803340000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line17: TfrxLineView
        AllowVectorExport = True
        Left = 691.653990000000000000
        Top = 291.023810000000000000
        Height = 37.795300000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line18: TfrxLineView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 941.102970000000000000
        Width = 661.417750000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo44: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 941.102970000000000000
        Width = 139.842610000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Registro entregue pelo '
          'Motorista '#224' Base em:')
        ParentFont = False
      end
      object Memo45: TfrxMemoView
        AllowVectorExport = True
        Left = 272.126160000000000000
        Top = 941.102970000000000000
        Width = 154.960730000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Chamado finalizado pelo '
          'Controller em:')
        ParentFont = False
      end
      object Memo46: TfrxMemoView
        AllowVectorExport = True
        Left = 514.016080000000000000
        Top = 941.102970000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Controller:')
        ParentFont = False
      end
      object Line19: TfrxLineView
        AllowVectorExport = True
        Left = 222.992270000000000000
        Top = 944.882500000000000000
        Height = 75.590600000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line20: TfrxLineView
        AllowVectorExport = True
        Left = 495.118430000000000000
        Top = 941.102970000000000000
        Height = 79.370130000000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Memo47: TfrxMemoView
        AllowVectorExport = True
        Left = 45.354360000000000000
        Top = 1001.575450000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Data')
        ParentFont = False
      end
      object Memo48: TfrxMemoView
        AllowVectorExport = True
        Left = 283.464750000000000000
        Top = 1005.354980000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Data')
        ParentFont = False
      end
      object Memo49: TfrxMemoView
        AllowVectorExport = True
        Left = 514.016080000000000000
        Top = 1005.354980000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          'Nome Leg'#237'vel')
        ParentFont = False
      end
      object Memo50: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 1024.252630000000000000
        Width = 661.417750000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          'PED_EO-013 - Registro de Acarea'#231#227'o_Rev00')
        ParentFont = False
        VAlign = vaCenter
      end
      object vUnidade: TfrxMemoView
        AllowVectorExport = True
        Left = 487.559370000000000000
        Top = 15.118120000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vUnidade]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vChamado: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 52.913420000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vChamado]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vSolicitacao: TfrxMemoView
        AllowVectorExport = True
        Left = 124.724490000000000000
        Top = 52.913420000000000000
        Width = 120.944960000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vSolicitacao]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vRetorno: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 52.913420000000000000
        Width = 124.724490000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vRetorno]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vMotorista: TfrxMemoView
        AllowVectorExport = True
        Left = 377.953000000000000000
        Top = 52.913420000000000000
        Width = 306.141930000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vMotorista]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vRemessa: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 90.708720000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vRemessa]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vCliente: TfrxMemoView
        AllowVectorExport = True
        Left = 211.653680000000000000
        Top = 90.708720000000000000
        Width = 472.441250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vCliente]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vEndereco: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 128.504020000000000000
        Width = 540.472790000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vEndereco]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vNumero: TfrxMemoView
        AllowVectorExport = True
        Left = 574.488560000000000000
        Top = 128.504020000000000000
        Width = 109.606370000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vNumero]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vBairro: TfrxMemoView
        AllowVectorExport = True
        Left = 30.236240000000000000
        Top = 166.299320000000000000
        Width = 211.653680000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vBairro]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vCidade: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 166.299320000000000000
        Width = 275.905690000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vCidade]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vCEP: TfrxMemoView
        AllowVectorExport = True
        Left = 585.827150000000000000
        Top = 166.299320000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vCEP]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vInformacao: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 206.653680000000000000
        Width = 650.079160000000000000
        Height = 45.354360000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haBlock
        Memo.UTF8W = (
          '[vInformacao]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vRemetente: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 268.346630000000000000
        Width = 109.606370000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vRemetente]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vProduto: TfrxMemoView
        AllowVectorExport = True
        Left = 151.181200000000000000
        Top = 268.346630000000000000
        Width = 411.968770000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vProduto]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vEntrega: TfrxMemoView
        AllowVectorExport = True
        Left = 570.709030000000000000
        Top = 268.346630000000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          '[vEntrega]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vRecebedor: TfrxMemoView
        AllowVectorExport = True
        Left = 34.015770000000000000
        Top = 306.141930000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vRecebedor]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vIdentificacao: TfrxMemoView
        AllowVectorExport = True
        Left = 238.110390000000000000
        Top = 306.141930000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vIdentificacao]')
        ParentFont = False
        VAlign = vaCenter
      end
      object vDocumento: TfrxMemoView
        AllowVectorExport = True
        Left = 529.134200000000000000
        Top = 306.141930000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vDocumento]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object SaveDialog: TSaveDialog
    Left = 1120
    Top = 8
  end
  object memTableAcareacoes: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 984
    Top = 8
    object memTableAcareacoesseq_acareacao: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'seq_acareacao'
    end
    object memTableAcareacoesid_acareacao: TStringField
      DisplayLabel = 'ID'
      FieldName = 'id_acareacao'
      Size = 100
    end
    object memTableAcareacoesdat_acareacao: TDateTimeField
      DisplayLabel = 'Data Acarea'#231#227'o'
      FieldName = 'dat_acareacao'
    end
    object memTableAcareacoesnum_nossonumero: TStringField
      DisplayLabel = 'Remessa'
      FieldName = 'num_nossonumero'
      Size = 14
    end
    object memTableAcareacoescod_entregador: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'cod_entregador'
    end
    object memTableAcareacoescod_base: TIntegerField
      DisplayLabel = 'Base'
      FieldName = 'cod_base'
    end
    object memTableAcareacoesdat_entrega: TDateField
      DisplayLabel = 'Data Entrega'
      FieldName = 'dat_entrega'
    end
    object memTableAcareacoesdes_motivo: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'des_motivo'
      Size = 60
    end
    object memTableAcareacoesdes_tratativa: TStringField
      DisplayLabel = 'Tratativa'
      FieldName = 'des_tratativa'
      Size = 60
    end
    object memTableAcareacoesdes_apuracao: TStringField
      DisplayLabel = 'Apura'#231#227'o'
      FieldName = 'des_apuracao'
      Size = 60
    end
    object memTableAcareacoesdes_resultado: TStringField
      DisplayLabel = 'Resultado'
      FieldName = 'des_resultado'
      Size = 60
    end
    object memTableAcareacoesval_extravio: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'val_extravio'
    end
    object memTableAcareacoesval_multa: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'val_multa'
    end
    object memTableAcareacoesdes_envio_correspondencia: TStringField
      DisplayLabel = 'Envio Correspondencia'
      FieldName = 'des_envio_correspondencia'
    end
    object memTableAcareacoesdes_retorno_correspondencia: TStringField
      DisplayLabel = 'Retorno Correspond'#234'ncia'
      FieldName = 'des_retorno_correspondencia'
    end
    object memTableAcareacoesdes_observacoes: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_observacoes'
      BlobType = ftMemo
    end
    object memTableAcareacoesdom_finalizar: TSmallintField
      DisplayLabel = 'Finalizada'
      FieldName = 'dom_finalizar'
    end
    object memTableAcareacoesdes_executor: TStringField
      DisplayLabel = 'Executor'
      FieldName = 'des_executor'
    end
    object memTableAcareacoesdat_manutencao: TDateTimeField
      DisplayLabel = 'Manuten'#231#227'o'
      FieldName = 'dat_manutencao'
    end
    object memTableAcareacoesdat_retorno: TDateTimeField
      DisplayLabel = 'Data Retorno'
      FieldName = 'dat_retorno'
    end
    object memTableAcareacoesdes_unidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'des_unidade'
    end
    object memTableAcareacoesnom_consumidor: TStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'nom_consumidor'
      Size = 70
    end
    object memTableAcareacoesdes_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'des_endereco'
      Size = 70
    end
    object memTableAcareacoesnum_endereco: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'num_endereco'
      Size = 11
    end
    object memTableAcareacoesdes_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'des_bairro'
      Size = 70
    end
    object memTableAcareacoesdes_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'des_cidade'
      Size = 70
    end
    object memTableAcareacoesnum_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'num_cep'
      Size = 9
    end
    object memTableAcareacoesdes_remetente: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'des_remetente'
    end
    object memTableAcareacoesdes_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'des_produto'
      Size = 100
    end
    object des_identificacao: TStringField
      DisplayLabel = 'Recebedor'
      FieldName = 'nom_recebedor'
      Size = 70
    end
    object memTableAcareacoesdes_identificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'des_identificacao'
      Size = 40
    end
    object memTableAcareacoesdes_documento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'des_documento'
    end
  end
end
