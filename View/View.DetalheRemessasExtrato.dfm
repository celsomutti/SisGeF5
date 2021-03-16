object view_DetalheRemessasExtrato: Tview_DetalheRemessasExtrato
  Left = 0
  Top = 0
  Caption = 'Detalhamento de Remessas'
  ClientHeight = 398
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 771
    Height = 398
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
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
      Left = 10
      Top = 69
      Width = 751
      Height = 288
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object tvPlanilha: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvPlanilhaNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Exportar dados'
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
      Left = 686
      Top = 363
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 4
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 38
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actExpandir
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 91
      Top = 38
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actRetrair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
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
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Planilha'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdPlanilha
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
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
    object actExpandir: TAction
      Category = 'Visualiza'#231#227'o'
      Caption = 'Expandir'
      ImageIndex = 38
      OnExecute = actExpandirExecute
    end
    object actRetrair: TAction
      Category = 'Visualiza'#231#227'o'
      Caption = 'Retrair'
      ImageIndex = 37
      OnExecute = actRetrairExecute
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = fdQueryDetalhe
    Left = 440
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
    Left = 368
    Top = 8
  end
end
