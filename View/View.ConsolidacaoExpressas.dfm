object view_ConsolidacaoExpressas: Tview_ConsolidacaoExpressas
  Left = 0
  Top = 0
  Caption = 'Planilha de Cr'#233'dito do Extrato de Expressas'
  ClientHeight = 461
  ClientWidth = 818
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
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dxLayoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 818
    Height = 461
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object labelTitle: TcxLabel
      Left = 49
      Top = 16
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object labelStatus: TcxLabel
      Left = 12
      Top = 51
      Caption = 'labelStatus'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gridFechamento: TcxGrid
      Left = 12
      Top = 77
      Width = 794
      Height = 340
      TabOrder = 2
      object tvFechamento: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvFechamentoNavigatorButtonsButtonClick
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
        Navigator.Buttons.Filter.Hint = 'Filtro'
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsFechamento
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvFechamentoqtd_atraso
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvFechamentoqtd_entregas
          end
          item
            Format = ',0;-,0'
            Column = tvFechamentoqtd_pfp
          end
          item
            Format = ',0'
            Kind = skSum
            Column = tvFechamentoqtd_volumes
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skSum
            Column = tvFechamentoqtd_volumes_extra
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_creditos
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_debitos
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_extravios
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skAverage
            Column = tvFechamentoval_performance
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_producao
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skAverage
            Column = tvFechamentoval_ticket_medio
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_total
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_total_ticket
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvFechamentoval_volume_extra
          end
          item
            Format = 'TOTAL GERAL'
            Kind = skCount
            Column = tvFechamentonom_expressa
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvFechamentocod_tipo_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo_expressa'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'Distribuidor'
              ImageIndex = 16
              Value = 1
            end
            item
              Description = 'Entregador'
              ImageIndex = 32
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 93
        end
        object tvFechamentocod_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_expressa'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          SortIndex = 1
          SortOrder = soAscending
        end
        object tvFechamentonom_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'nom_expressa'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 224
        end
        object tvFechamentoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentoqtd_entregas: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_entregas'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentoqtd_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 1
          Properties.DisplayFormat = ',0.0;-,0.0'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentoqtd_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_atraso'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentoqtd_pfp: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_pfp'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          Width = 85
        end
        object tvFechamentoval_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.0;-,0.0'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentoval_producao: TcxGridDBColumn
          DataBinding.FieldName = 'val_producao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object tvFechamentoval_volume_extra: TcxGridDBColumn
          DataBinding.FieldName = 'val_volume_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object tvFechamentoval_creditos: TcxGridDBColumn
          DataBinding.FieldName = 'val_creditos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object tvFechamentoval_extravios: TcxGridDBColumn
          DataBinding.FieldName = 'val_extravios'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object tvFechamentoval_debitos: TcxGridDBColumn
          DataBinding.FieldName = 'val_debitos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object tvFechamentoval_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object tvFechamentoval_total_ticket: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_ticket'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object tvFechamentoval_ticket_medio: TcxGridDBColumn
          DataBinding.FieldName = 'val_ticket_medio'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object tvFechamentonom_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'nom_favorecido'
          HeaderAlignmentHorz = taCenter
          Width = 232
        end
        object tvFechamentodes_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_conta'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object tvFechamentonom_banco: TcxGridDBColumn
          DataBinding.FieldName = 'nom_banco'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object tvFechamentonum_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_agencia'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object tvFechamentonum_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvFechamentonum_cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'num_cpf_cnpj'
          HeaderAlignmentHorz = taCenter
        end
        object tvFechamentodat_inicio: TcxGridDBColumn
          Caption = 'In'#237'cio'
          DataBinding.FieldName = 'dat_inicio'
          Visible = False
        end
        object tvFechamentodat_fim: TcxGridDBColumn
          Caption = 'T'#233'rmino'
          DataBinding.FieldName = 'dat_fim'
          Visible = False
        end
        object tvFechamentocod_banco: TcxGridDBColumn
          Caption = 'Banco'
          DataBinding.FieldName = 'cod_banco'
          Visible = False
        end
        object tvFechamentodes_unique_key: TcxGridDBColumn
          Caption = 'UK'
          DataBinding.FieldName = 'des_unique_key'
          Visible = False
        end
      end
      object lvFechamento: TcxGridLevel
        GridView = tvFechamento
      end
    end
    object buttonGravar: TcxButton
      Left = 12
      Top = 424
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = actionGravar
      TabOrder = 3
    end
    object buttonFechar: TcxButton
      Left = 720
      Top = 424
      Width = 86
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      Cancel = True
      TabOrder = 4
    end
    object dxLayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      CaptionOptions.ImageIndex = 58
      Control = labelTitle
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGrid: TdxLayoutItem
      Parent = dxLayoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Consolida'#231#227'o'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gridFechamento
      ControlOptions.OriginalHeight = 284
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutbuttonGravar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonGravar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutBottonFechar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControlGroup_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
  end
  object dsFechamento: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbFechamentoExpressas
    Left = 544
    Top = 24
  end
  object actionListConsolidacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 664
    Top = 16
    object actionFechar: TAction
      Category = 'Consolida'#231#227'o'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionGravar: TAction
      Category = 'Consolida'#231#227'o'
      Caption = 'Gravar'
      Hint = 'Gravar a consolida'#231#227'o no banco de dados'
      ImageIndex = 13
      OnExecute = actionGravarExecute
    end
  end
  object SaveDialog: TSaveDialog
    Left = 496
    Top = 24
  end
end
