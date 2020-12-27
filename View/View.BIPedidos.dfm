object view_BIPedidos: Tview_BIPedidos
  Left = 0
  Top = 0
  Caption = 'BI Pedidos'
  ClientHeight = 390
  ClientWidth = 768
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 768
    Height = 390
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'BI Pedidos'
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
    object cxButton1: TcxButton
      Left = 683
      Top = 355
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 4
    end
    object grdPesquisa: TcxGrid
      Left = 10
      Top = 38
      Width = 748
      Height = 284
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object tvPesquisa: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvPesquisaNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 5
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 8
        Navigator.Buttons.Next.ImageIndex = 7
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 6
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Indicator = True
        object tvPesquisaNUM_NOSSONUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
        object tvPesquisaColumnCOD_AGENTE_NUMERO: TcxGridDBColumn
          Caption = 'C'#243'd. Distribuidor'
          DataBinding.FieldName = 'COD_AGENTE'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Width = 98
        end
        object tvPesquisaCOD_AGENTE: TcxGridDBColumn
          DataBinding.FieldName = 'COD_AGENTE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_base'
          Properties.ListColumns = <
            item
              FieldName = 'nom_base'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBases
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 152
        end
        object tvPesquisaColumnCOD_ENTREGADOR_NUMERO: TcxGridDBColumn
          Caption = 'C'#243'd. Entregador'
          DataBinding.FieldName = 'COD_ENTREGADOR'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Width = 106
        end
        object tvPesquisaCOD_ENTREGADOR: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENTREGADOR'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_ENTREGADOR'
          Properties.ListColumns = <
            item
              FieldName = 'NOM_FANTASIA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEntregadores
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 158
        end
        object tvPesquisaCOD_CLIENTE: TcxGridDBColumn
          DataBinding.FieldName = 'COD_CLIENTE'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_CLIENTE'
          Properties.ListColumns = <
            item
              FieldName = 'NOM_CLIENTE'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmbarcadores
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 159
        end
        object tvPesquisaNUM_NF: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_NF'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNOM_CONSUMIDOR: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_CONSUMIDOR'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 213
        end
        object tvPesquisaDES_ENDERECO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_ENDERECO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 327
        end
        object tvPesquisaDES_COMPLEMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_COMPLEMENTO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object tvPesquisaDES_BAIRRO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_BAIRRO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 317
        end
        object tvPesquisaNOM_CIDADE: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_CIDADE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 316
        end
        object tvPesquisaNUM_CEP: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_CEP'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object tvPesquisaNUM_TELEFONE: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_TELEFONE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDAT_EXPEDICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_EXPEDICAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object tvPesquisaDAT_RECEBIDO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_RECEBIDO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvPesquisaDAT_PREV_DISTRIBUICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_PREV_DISTRIBUICAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object tvPesquisaQTD_VOLUMES: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_VOLUMES'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 64
        end
        object tvPesquisaDAT_ATRIBUICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_ATRIBUICAO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvPesquisaDAT_BAIXA: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_BAIXA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_BAIXADO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_BAIXADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDAT_PAGAMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_PAGAMENTO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_PAGO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_PAGO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_FECHADO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_FECHADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaCOD_STATUS: TcxGridDBColumn
          DataBinding.FieldName = 'COD_STATUS'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDAT_ENTREGA: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_ENTREGA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object tvPesquisaQTD_PESO_REAL: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_PESO_REAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object tvPesquisaQTD_PESO_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_PESO_FRANQUIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object tvPesquisaVAL_VERBA_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_VERBA_FRANQUIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaVAL_ADVALOREM: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_ADVALOREM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaVAL_PAGO_FRANQUIA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_PAGO_FRANQUIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaQTD_PESO_COBRADO: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_PESO_COBRADO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object tvPesquisaDES_TIPO_PESO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_TIPO_PESO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaVAL_VERBA_ENTREGADOR: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_VERBA_ENTREGADOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 104
        end
        object tvPesquisaNUM_EXTRATO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_EXTRATO'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object tvPesquisaQTD_DIAS_ATRASO: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_DIAS_ATRASO'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaQTD_VOLUMES_EXTRA: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_VOLUMES_EXTRA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 1
          Properties.DisplayFormat = ' ,0.0;- ,0.0'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaVAL_VOLUMES_EXTRA: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_VOLUMES_EXTRA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_RECEBIDO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_RECEBIDO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_CTRC: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_CTRC'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_MANIFESTO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_MANIFESTO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDES_RASTREIO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_RASTREIO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_LOTE_REMESSA: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_LOTE_REMESSA'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          Properties.ReadOnly = True
          Properties.UseLeftAlignmentOnEditing = False
          Properties.UseNullString = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDES_RETORNO: TcxGridDBColumn
          DataBinding.FieldName = 'DES_RETORNO'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDAT_CREDITO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_CREDITO'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_CREDITO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_CREDITO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'S'
          Properties.DisplayUnchecked = 'N'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_CONTAINER: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_CONTAINER'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaVAL_PRODUTO: TcxGridDBColumn
          DataBinding.FieldName = 'VAL_PRODUTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object tvPesquisaQTD_ALTURA: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_ALTURA'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaQTD_LARGURA: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_LARGURA'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaQTD_COMPRIMENTO: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_COMPRIMENTO'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaCOD_FEEDBACK: TcxGridDBColumn
          DataBinding.FieldName = 'COD_FEEDBACK'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDAT_FEEDBACK: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_FEEDBACK'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaDOM_CONFERIDO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_CONFERIDO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvPesquisaNUM_PEDIDO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_PEDIDO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object tvPesquisaCOD_CLIENTE_EMPRESA: TcxGridDBColumn
          DataBinding.FieldName = 'COD_CLIENTE_EMPRESA'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'TRANSFOLHA'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'CARRIERS'
              ImageIndex = 1
              Value = 2
            end
            item
              Description = 'SPLOG BRASIL'
              ImageIndex = 1
              Value = 3
            end
            item
              Description = 'DIRECT'
              ImageIndex = 1
              Value = 4
            end
            item
              Description = 'RODO'#202
              ImageIndex = 1
              Value = 5
            end>
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 140
        end
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 355
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFiltro
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 91
      Top = 355
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actlimparDados
      Cancel = True
      TabOrder = 3
    end
    object textQuery: TcxTextEdit
      Left = 10
      Top = 328
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 748
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grade'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdPesquisa
      ControlOptions.OriginalHeight = 259
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object layoutFilterText: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Query'
      CaptionOptions.Visible = False
      Visible = False
      Control = textQuery
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 748
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object aclBIPedidos: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 528
    Top = 8
    object actFiltro: TAction
      Category = 'BI Pedidos'
      Caption = 'Filtro'
      Hint = 'Filtro de pesquisa'
      ImageIndex = 19
      ShortCut = 119
      OnExecute = actFiltroExecute
    end
    object actlimparDados: TAction
      Category = 'BI Pedidos'
      Caption = 'Limpar'
      Enabled = False
      Hint = 'Limpar dados'
      ImageIndex = 9
      OnExecute = actlimparDadosExecute
    end
    object actFechar: TAction
      Category = 'BI Pedidos'
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbEntregas
    Left = 568
    Top = 8
  end
  object dsBases: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbBases
    Left = 600
    Top = 8
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbEntregadores
    Left = 632
    Top = 8
  end
  object dsEmbarcadores: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbEmbarcadores
    Left = 664
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 704
    Top = 8
  end
end
