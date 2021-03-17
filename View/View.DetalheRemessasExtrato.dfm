object view_DetalheRemessasExtrato: Tview_DetalheRemessasExtrato
  Left = 0
  Top = 0
  Caption = 'Detalhamento de Remessas'
  ClientHeight = 467
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 786
    Height = 467
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 12
      Top = 12
      Caption = 'Detalhamento de Remessas'
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
    object grdPlanilha: TcxGrid
      Left = 12
      Top = 62
      Width = 405
      Height = 112
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object tvPlanilha: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvPlanilhaNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end
          item
            ImageIndex = 38
          end
          item
            ImageIndex = 37
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
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Position = spFooter
            Column = tvPlanilhaQTD_VOLUMES
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Position = spFooter
            Column = tvPlanilhaVAL_VERBA_FRANQUIA
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Position = spFooter
            Column = tvPlanilhaVAL_VERBA_ENTREGADOR
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Position = spFooter
            Column = tvPlanilhaVAL_PRODUTO
          end
          item
            Format = ',0.000; -,0.000'
            Kind = skSum
            Position = spFooter
            Column = tvPlanilhaQTD_PESO_REAL
          end
          item
            Format = ',0;-,0'
            Kind = skCount
            Position = spFooter
            Column = tvPlanilhaNUM_CEP
          end
          item
            Format = 'TOTAL GRUPO'
            Kind = skCount
            Position = spFooter
            Column = tvPlanilhaNUM_NOSSONUMERO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvPlanilhaQTD_VOLUMES
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Column = tvPlanilhaVAL_VERBA_FRANQUIA
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Column = tvPlanilhaVAL_VERBA_ENTREGADOR
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Column = tvPlanilhaVAL_PRODUTO
          end
          item
            Format = ',0.000; -,0.000'
            Kind = skSum
            Column = tvPlanilhaQTD_PESO_REAL
          end
          item
            Format = ',0;-,0'
            Kind = skCount
            Column = tvPlanilhaNUM_CEP
          end
          item
            Format = 'TOTAL GERAL'
            Kind = skCount
            Column = tvPlanilhaNUM_NOSSONUMERO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.Indicator = True
        object tvPlanilhaNUM_NOSSONUMERO: TcxGridDBColumn
          Caption = 'Remessa / NN'
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          Width = 95
        end
        object tvPlanilhaCOD_CLIENTE_EMPRESA: TcxGridDBColumn
          Caption = 'C'#243'd. Cliente'
          DataBinding.FieldName = 'COD_CLIENTE_EMPRESA'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvPlanilhaCOD_AGENTE: TcxGridDBColumn
          Caption = 'C'#243'd. Agente'
          DataBinding.FieldName = 'COD_AGENTE'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bTrue
        end
        object tvPlanilhaNUM_CEP: TcxGridDBColumn
          Caption = 'CEP'
          DataBinding.FieldName = 'NUM_CEP'
          FooterAlignmentHorz = taRightJustify
        end
        object tvPlanilhaDAT_EXPEDICAO: TcxGridDBColumn
          Caption = 'Expedi'#231#227'o'
          DataBinding.FieldName = 'DAT_EXPEDICAO'
          Width = 79
        end
        object tvPlanilhaDAT_PREV_DISTRIBUICAO: TcxGridDBColumn
          Caption = 'Previs'#227'o'
          DataBinding.FieldName = 'DAT_PREV_DISTRIBUICAO'
          Width = 94
        end
        object tvPlanilhaQTD_VOLUMES: TcxGridDBColumn
          Caption = 'Volumes'
          DataBinding.FieldName = 'QTD_VOLUMES'
          Width = 65
        end
        object tvPlanilhaDAT_ATRIBUICAO: TcxGridDBColumn
          Caption = 'Atribui'#231#227'o'
          DataBinding.FieldName = 'DAT_ATRIBUICAO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvPlanilhaDAT_BAIXA: TcxGridDBColumn
          Caption = 'Baixa'
          DataBinding.FieldName = 'DAT_BAIXA'
          Width = 82
        end
        object tvPlanilhaQTD_PESO_REAL: TcxGridDBColumn
          Caption = 'Peso'
          DataBinding.FieldName = 'QTD_PESO_REAL'
        end
        object tvPlanilhaVAL_VERBA_FRANQUIA: TcxGridDBColumn
          Caption = 'Verba Unidade'
          DataBinding.FieldName = 'VAL_VERBA_FRANQUIA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvPlanilhaVAL_VERBA_ENTREGADOR: TcxGridDBColumn
          Caption = 'Verba Entregador'
          DataBinding.FieldName = 'VAL_VERBA_ENTREGADOR'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 104
        end
        object tvPlanilhaDES_TIPO_PESO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'DES_TIPO_PESO'
          Width = 79
        end
        object tvPlanilhaVAL_PRODUTO: TcxGridDBColumn
          Caption = 'Valor Produto'
          DataBinding.FieldName = 'VAL_PRODUTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 82
        end
        object tvPlanilhaQTD_ALTURA: TcxGridDBColumn
          Caption = 'Altura'
          DataBinding.FieldName = 'QTD_ALTURA'
        end
        object tvPlanilhaQTD_LARGURA: TcxGridDBColumn
          Caption = 'Largura'
          DataBinding.FieldName = 'QTD_LARGURA'
        end
        object tvPlanilhaQTD_COMPRIMENTO: TcxGridDBColumn
          Caption = 'Comprimento'
          DataBinding.FieldName = 'QTD_COMPRIMENTO'
        end
        object tvPlanilhaCOD_ENTREGADOR: TcxGridDBColumn
          Caption = 'C'#243'd. Entregador'
          DataBinding.FieldName = 'COD_ENTREGADOR'
          Width = 95
        end
        object tvPlanilhaNOM_FANTASIA: TcxGridDBColumn
          Caption = 'Entregador'
          DataBinding.FieldName = 'NOM_FANTASIA'
          Width = 193
        end
      end
      object lvPlanilha: TcxGridLevel
        GridView = tvPlanilha
      end
    end
    object cxButton1: TcxButton
      Left = 699
      Top = 430
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 2
    end
    object gridExtravios: TcxGrid
      Left = 12
      Top = 202
      Width = 762
      Height = 92
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object gridExtraviosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = gridExtraviosDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsExtravios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        object gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'COD_EXTRAVIO'
          Width = 48
        end
        object gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENTREGADOR'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DAT_EXTRAVIO'
          Width = 67
        end
        object gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DES_EXTRAVIO'
          Width = 312
        end
        object gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn
          Caption = 'Remessa / NN'
          DataBinding.FieldName = 'NUM_NOSSONUMERO'
          Width = 80
        end
        object gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn
          Caption = 'Val. Produto'
          DataBinding.FieldName = 'VAL_PRODUTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 69
        end
        object gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn
          Caption = 'Multa'
          DataBinding.FieldName = 'VAL_MULTA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn
          Caption = 'Verba'
          DataBinding.FieldName = 'VAL_VERBA'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'VAL_TOTAL'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn
          Caption = 'Finalizado'
          DataBinding.FieldName = 'DOM_RESTRICAO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 58
        end
        object gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'COD_TIPO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'EXTRAVIO'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'SINISTRO'
              Value = 1
            end
            item
              Description = 'MULTA'
              Value = 2
            end>
        end
        object gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn
          Caption = 'Obs.'
          DataBinding.FieldName = 'DES_OBSERVACOES'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
        end
        object gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn
          Caption = '% Debitado'
          DataBinding.FieldName = 'VAL_PERCENTUAL_PAGO'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.PeakValue = 100.000000000000000000
          Width = 66
        end
        object gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn
          Caption = 'ID Acarea'#231#227'o'
          DataBinding.FieldName = 'SEQ_ACAREACAO'
          Width = 86
        end
        object gridExtraviosDBTableView1NOM_EXECUTOR: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_EXECUTOR'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridExtraviosDBTableView1DAT_MANUTENCAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_MANUTENCAO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn
          DataBinding.FieldName = 'NUM_EXTRATO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
      end
      object gridExtraviosLevel1: TcxGridLevel
        GridView = gridExtraviosDBTableView1
      end
    end
    object gridLancamentos: TcxGrid
      Left = 12
      Top = 322
      Width = 762
      Height = 101
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object gridLancamentosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = gridLancamentosDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsLancamentos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        object gridLancamentosDBTableView1COD_LANCAMENTO: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'COD_LANCAMENTO'
          Width = 46
        end
        object gridLancamentosDBTableView1DES_LANCAMENTO: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'DES_LANCAMENTO'
          Width = 622
        end
        object gridLancamentosDBTableView1DAT_LANCAMENTO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DAT_LANCAMENTO'
        end
        object gridLancamentosDBTableView1COD_CADASTRO: TcxGridDBColumn
          DataBinding.FieldName = 'COD_CADASTRO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridLancamentosDBTableView1COD_ENTREGADOR: TcxGridDBColumn
          DataBinding.FieldName = 'COD_ENTREGADOR'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridLancamentosDBTableView1DES_TIPO: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'DES_TIPO'
        end
        object gridLancamentosDBTableView1VAL_LANCAMENTO: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VAL_LANCAMENTO'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gridLancamentosDBTableView1DOM_DESCONTO: TcxGridDBColumn
          Caption = 'Processado'
          DataBinding.FieldName = 'DOM_DESCONTO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 65
        end
        object gridLancamentosDBTableView1DAT_DESCONTO: TcxGridDBColumn
          Caption = 'Data Proc.'
          DataBinding.FieldName = 'DAT_DESCONTO'
          Width = 72
        end
        object gridLancamentosDBTableView1NUM_EXTRATO: TcxGridDBColumn
          Caption = 'N'#186'. Extrato'
          DataBinding.FieldName = 'NUM_EXTRATO'
          Width = 82
        end
        object gridLancamentosDBTableView1DOM_PERSISTIR: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_PERSISTIR'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridLancamentosDBTableView1COD_REFERENCIA: TcxGridDBColumn
          DataBinding.FieldName = 'COD_REFERENCIA'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridLancamentosDBTableView1DAT_CADASTRO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_CADASTRO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridLancamentosDBTableView1NOM_USUARIO: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_USUARIO'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
      end
      object gridLancamentosLevel1: TcxGridLevel
        GridView = gridLancamentosDBTableView1
      end
    end
    object gridConsolidado: TcxGrid
      Left = 424
      Top = 62
      Width = 350
      Height = 112
      TabOrder = 4
      object gridConsolidadoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = gridConsolidadoDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataSource = dsConsolidado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = gridConsolidadoDBTableView1qtd_entregas
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = gridConsolidadoDBTableView1val_total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object gridConsolidadoDBTableView1cod_cliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'cod_cliente'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_cliente'
          Properties.ListColumns = <
            item
              FieldName = 'nom_cliente'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsCliente
          Width = 102
        end
        object gridConsolidadoDBTableView1qtd_entregas: TcxGridDBColumn
          Caption = 'Qtde. Entregas'
          DataBinding.FieldName = 'qtd_entregas'
          Width = 87
        end
        object gridConsolidadoDBTableView1val_verba: TcxGridDBColumn
          Caption = 'Verba'
          DataBinding.FieldName = 'val_verba'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 60
        end
        object gridConsolidadoDBTableView1val_total: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 59
        end
      end
      object gridConsolidadoLevel1: TcxGridLevel
        GridView = gridConsolidadoDBTableView1
      end
    end
    object cxButton2: TcxButton
      Left = 12
      Top = 430
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Action = actConsolidado
      TabOrder = 1
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
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Remessas'
      CaptionOptions.Layout = clTop
      Control = grdPlanilha
      ControlOptions.OriginalHeight = 169
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Extravios'
      CaptionOptions.Layout = clTop
      Control = gridExtravios
      ControlOptions.OriginalHeight = 92
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Lan'#231'amentos de Cr'#233'dito e D'#233'bito'
      CaptionOptions.Layout = clTop
      Control = gridLancamentos
      ControlOptions.OriginalHeight = 101
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Consolidado Cliente X Verba'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = gridConsolidado
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  object aclVisualizacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 808
    Top = 16
    object actFechar: TAction
      Category = 'Visualiza'#231#227'o'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actConsolidado: TAction
      Category = 'Visualiza'#231#227'o'
      Caption = 'Consolidado'
      Hint = 'Consolidado ClienteXVerba'
      ImageIndex = 36
      OnExecute = actConsolidadoExecute
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = fdQueryDetalhe
    Left = 312
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Filter = 
      'Excel (*.xls) |*.xls|Excel (*.xlsx) |*.xlsx|XML (*.xml) |*.xml|A' +
      'rquivo Texto (*.txt) |*.txt|P'#225'gina Web (*.html)|*.html|CSV (Sepa' +
      'rado por v'#237'gulas)|*.csv'
    Left = 696
    Top = 16
  end
  object fdQueryDetalhe: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_DetalheRemessasExtrato')
    Left = 240
    Top = 8
  end
  object fdQueryLancamentos: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_LancamentosExtrato')
    Left = 552
    Top = 8
  end
  object dsLancamentos: TDataSource
    AutoEdit = False
    DataSet = fdQueryLancamentos
    Left = 632
    Top = 8
  end
  object fdQueryExtravios: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_DemonstrativoExtravios')
    Left = 384
    Top = 8
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = fdQueryExtravios
    Left = 448
    Top = 8
  end
  object fdQueryConsolidado: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'SELECT '
      '        tbentregas.COD_CLIENTE_EMPRESA AS cod_cliente,'
      '        COUNT(tbentregas.NUM_NOSSONUMERO) AS qtd_entregas,'
      '        tbentregas.VAL_VERBA_ENTREGADOR AS val_verba,'
      
        '        (COUNT(tbentregas.NUM_NOSSONUMERO)  * tbentregas.VAL_VER' +
        'BA_ENTREGADOR) as val_total'
      '    FROM'
      '        tbentregas')
    Left = 152
    Top = 424
  end
  object dsConsolidado: TDataSource
    AutoEdit = False
    DataSet = fdQueryConsolidado
    Left = 232
    Top = 424
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 168
    Top = 16
  end
end
