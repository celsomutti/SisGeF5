object view_ExtratoExpressas: Tview_ExtratoExpressas
  Left = 0
  Top = 0
  Caption = 'Extrato de Expressas'
  ClientHeight = 609
  ClientWidth = 1143
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
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1143
    Height = 609
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Extrato de Expressas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object sbExtrato: TdxStatusBar
      Left = 10
      Top = 579
      Width = 1123
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWindowText
          PanelStyle.Font.Height = -11
          PanelStyle.Font.Name = 'Tahoma'
          PanelStyle.Font.Style = [fsBold]
          PanelStyle.ParentFont = False
          Fixed = False
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Alignment = taCenter
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWindowText
          PanelStyle.Font.Height = -11
          PanelStyle.Font.Name = 'Tahoma'
          PanelStyle.Font.Style = [fsBold]
          PanelStyle.ParentFont = False
          Bevel = dxpbNone
          MinWidth = 20
          Width = 250
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object btnFechar: TcxButton
      Left = 1058
      Top = 548
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 18
    end
    object cboMes: TcxComboBox
      Left = 839
      Top = 124
      Cursor = crHandPoint
      Hint = 'Selecione o m'#234's do per'#237'odo do extrato'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione...'
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outuibro '
        'Novembro'
        'Dezembro')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = 'Selecione...'
      Width = 98
    end
    object grdExtrato: TcxGrid
      Left = 10
      Top = 61
      Width = 811
      Height = 481
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = popMenu
      TabOrder = 2
      object tvExtrato: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvExtratoNavigatorButtonsButtonClick
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
        Navigator.Buttons.Filter.Hint = 'Filtrar dados'
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsExtrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_atraso
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_entregas
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_volumes
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skSum
            Column = tvExtratoqtd_volumes_extra
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtratoval_creditos
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtratoval_debitos
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtratoval_extravios
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skAverage
            Column = tvExtratoval_performance
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtratoval_producao
          end
          item
            Format = ',0.00;-,0.00'
            Kind = skSum
            Column = tvExtratoval_total_empresa
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_total_expressa
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_volumes_extra
          end
          item
            Format = 'TOTAL GERAL'
            Kind = skCount
            Column = tvExtratonom_entregador
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end
              item
                Column = tvExtratonom_base
              end>
            SummaryItems = <
              item
                Format = 'TOTAL DA BASE'
                Kind = skCount
                Position = spFooter
                Column = tvExtratonom_entregador
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_atraso
              end
              item
                Column = tvExtratoqtd_atraso
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_entregas
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes
              end
              item
                Format = ',0.0;-,0.0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes_extra
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_creditos
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_debitos
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_extravios
              end
              item
                Format = ',0.0;-,0.0'
                Kind = skAverage
                Position = spFooter
                Column = tvExtratoval_performance
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_producao
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total_empresa
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total_expressa
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_volumes_extra
              end>
          end
          item
            Links = <
              item
                Column = tvExtratonom_cliente
              end>
            SummaryItems = <
              item
                Format = 'TOTAL DO CLIENTE'
                Kind = skCount
                Position = spFooter
                Column = tvExtratonom_entregador
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_atraso
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_entregas
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes
              end
              item
                Format = ',0.0;-,0.0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes_extra
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_creditos
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_debitos
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_extravios
              end
              item
                Format = ',0.0;-,0.0'
                Kind = skAverage
                Position = spFooter
                Column = tvExtratoval_performance
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_producao
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total_empresa
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total_expressa
              end
              item
                Format = ',0.00;-,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_volumes_extra
              end>
          end>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.Indicator = True
        object tvExtratodat_inicio: TcxGridDBColumn
          DataBinding.FieldName = 'dat_inicio'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForEditForm = bFalse
        end
        object tvExtratodat_final: TcxGridDBColumn
          DataBinding.FieldName = 'dat_final'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForEditForm = bFalse
        end
        object tvExtratonum_ano: TcxGridDBColumn
          DataBinding.FieldName = 'num_ano'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvExtratonum_mes: TcxGridDBColumn
          DataBinding.FieldName = 'num_mes'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvExtratonum_quinzena: TcxGridDBColumn
          DataBinding.FieldName = 'num_quinzena'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvExtratocod_base: TcxGridDBColumn
          DataBinding.FieldName = 'cod_base'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExtratonom_base: TcxGridDBColumn
          DataBinding.FieldName = 'nom_base'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 212
        end
        object tvExtratonom_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nom_cliente'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
          Width = 235
        end
        object tvExtratocod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-0'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object tvExtratonom_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_entregador'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 299
        end
        object tvExtratonum_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'num_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object tvExtratoval_verba: TcxGridDBColumn
          DataBinding.FieldName = 'val_verba'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtratoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-0'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object tvExtratoqtd_entregas: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_entregas'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-0'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtratoqtd_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.0;-,0.0'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 94
        end
        object tvExtratoval_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'val_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object tvExtratoqtd_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_atraso'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-0'
          HeaderAlignmentHorz = taCenter
        end
        object tvExtratoval_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.0;- ,0.0'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object tvExtratoval_producao: TcxGridDBColumn
          DataBinding.FieldName = 'val_producao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvExtratoval_creditos: TcxGridDBColumn
          DataBinding.FieldName = 'val_creditos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object tvExtratoval_debitos: TcxGridDBColumn
          DataBinding.FieldName = 'val_debitos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 105
        end
        object tvExtratoval_extravios: TcxGridDBColumn
          DataBinding.FieldName = 'val_extravios'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvExtratoval_total_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_expressa'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object tvExtratoval_total_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_empresa'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object tvExtratocod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object tvExtratodat_credito: TcxGridDBColumn
          DataBinding.FieldName = 'dat_credito'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExtratoid_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'id_extrato'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object tvExtratodes_unique_key: TcxGridDBColumn
          Caption = 'UK'
          DataBinding.FieldName = 'des_unique_key'
          Visible = False
        end
      end
      object lvExtrato: TcxGridLevel
        GridView = tvExtrato
      end
    end
    object grdClientes: TcxGrid
      Left = 839
      Top = 232
      Width = 282
      Height = 115
      Hint = 'Selecione o cliente (nenhum selecionado = TODOS)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object tvClientes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsClientes
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        object tvClientesdom_check: TcxGridDBColumn
          Caption = '#'
          DataBinding.FieldName = 'dom_check'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object tvClientescod_cliente: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_cliente'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 60
        end
        object tvClientesnom_cliente: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nom_cliente'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 173
        end
      end
      object lvClientes: TcxGridLevel
        GridView = tvClientes
      end
    end
    object chkExtra: TcxCheckBox
      Left = 943
      Top = 88
      Cursor = crHandPoint
      Hint = 'Selecione para calcular os volumes extra'
      Caption = 'Calcular volumes extra'
      ParentFont = False
      Properties.OnChange = chkExtraPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
    end
    object grdBases: TcxGrid
      Left = 839
      Top = 371
      Width = 282
      Height = 128
      Hint = 
        'Selecione os agentes a serem processados (nenhum selecionado = T' +
        'ODOS)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = popMenuBases
      TabOrder = 12
      object tvBases: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBases
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        object tvBasesdom_check: TcxGridDBColumn
          Caption = '#'
          DataBinding.FieldName = 'dom_check'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          Width = 46
        end
        object tvBasescod_base: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_base'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soAscending
          Width = 61
        end
        object tvBasesnom_base: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nom_base'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 173
        end
      end
      object lvBases: TcxGridLevel
        GridView = tvBases
      end
    end
    object chkExtravios: TcxCheckBox
      Left = 943
      Top = 115
      Hint = 'Considerar extravios finalizados'
      Caption = 'Considerar Extravios'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
    end
    object chkProcessaAnteriores: TcxCheckBox
      Left = 943
      Top = 61
      Cursor = crHandPoint
      Hint = 
        'Selecione para processar baixas que n'#227'o foram processadas em ext' +
        'ratos anteriores'
      Caption = 'Processa baixas em aberto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
    end
    object cboAno: TcxComboBox
      Left = 839
      Top = 79
      Cursor = crHandPoint
      Hint = 'Seleione o ano do periodo do extrato'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = 'Selecione ...'
      Width = 98
    end
    object chkLancamentos: TcxCheckBox
      Left = 943
      Top = 142
      Hint = 'Considerar lan'#231'amentos de d'#233'bitos e cr'#233'ditos'
      Caption = 'Considerar Lan'#231'amentos'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
    end
    object cboQuinzena: TcxComboBox
      Left = 839
      Top = 187
      Cursor = crHandPoint
      Hint = 'Selecione os dias da quinzena '
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 136
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 548
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actEncerrarExtrato
      TabOrder = 14
    end
    object cxButton4: TcxButton
      Left = 91
      Top = 548
      Width = 75
      Height = 25
      Action = actCancelarExtrato
      TabOrder = 15
    end
    object cboStatus: TcxComboBox
      Left = 981
      Top = 187
      Cursor = crHandPoint
      Hint = 'Selecione o status do extrato'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Aberto'
        'Fechado')
      Properties.OnChange = cboStatusPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Text = 'Selecione ...'
      Width = 140
    end
    object cxButton2: TcxButton
      Left = 172
      Top = 548
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actConsolidar
      TabOrder = 16
    end
    object cxLabel2: TcxLabel
      Left = 262
      Top = 548
      Caption = 'cxLabel2'
      Style.HotTrack = False
      Transparent = True
    end
    object cxButton5: TcxButton
      Left = 1097
      Top = 12
      Width = 36
      Height = 25
      Cursor = crHandPoint
      Action = actVisualizarParamatros
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 942
      Top = 505
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actProcessar
      TabOrder = 13
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Barra de Status'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = sbExtrato
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 1123
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'M'#234's'
      CaptionOptions.Layout = clTop
      Control = cboMes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Extrato'
      CaptionOptions.Layout = clTop
      Control = grdExtrato
      ControlOptions.OriginalHeight = 372
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Clientes'
      CaptionOptions.Layout = clTop
      Control = grdClientes
      ControlOptions.OriginalHeight = 107
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkExtra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bases'
      CaptionOptions.Layout = clTop
      Control = grdBases
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 282
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Visible = False
      Control = chkExtravios
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkProcessaAnteriores
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ano'
      CaptionOptions.Layout = clTop
      Control = cboAno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkLancamentos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Per'#237'odo'
      CaptionOptions.Layout = clTop
      Control = cboQuinzena
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avBottom
      CaptionOptions.Text = 'Status'
      CaptionOptions.Layout = clTop
      Control = cboStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Par'#226'metros'
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 36
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object dsExtrato: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbExtratosExpressas
    Left = 272
    Top = 16
  end
  object aclExtrato: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 328
    Top = 16
    object actFechar: TAction
      Category = 'Extrato'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actProcessar: TAction
      Category = 'Extrato'
      Caption = 'Processar'
      Hint = 'Processar o extrato'
      ImageIndex = 49
      OnExecute = actProcessarExecute
    end
    object actAlterarCliente: TAction
      Category = 'Extrato'
      Caption = 'Alterar Cliente'
      Enabled = False
      Hint = 'Alterar o cliente do item do extrato'
      ImageIndex = 16
      OnExecute = actAlterarClienteExecute
    end
    object actEncerrarExtrato: TAction
      Category = 'Extrato'
      Caption = 'Encerrar'
      Enabled = False
      Hint = 'Encerrar extrato'
      ImageIndex = 1
      OnExecute = actEncerrarExtratoExecute
    end
    object actCancelarExtrato: TAction
      Category = 'Extrato'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar o extrato'
      ImageIndex = 2
      OnExecute = actCancelarExtratoExecute
    end
    object actExpandir: TAction
      Category = 'Extrato'
      Caption = 'Expandir'
      Hint = 'Expandir os detalhes'
      ImageIndex = 38
      OnExecute = actExpandirExecute
    end
    object acrRetrair: TAction
      Category = 'Extrato'
      Caption = 'Retrair'
      Hint = 'Retrair detalhes'
      ImageIndex = 37
      OnExecute = acrRetrairExecute
    end
    object actSelecionarTodasBases: TAction
      Category = 'Extrato'
      Caption = 'Selecionar todas'
      Hint = 'Selecionar todas as bases'
      ImageIndex = 50
      OnExecute = actSelecionarTodasBasesExecute
    end
    object actDesconsiderarBases: TAction
      Category = 'Extrato'
      Caption = 'Desconsiderar todas'
      Hint = 'Desconsiderar todas as bases slecionadas'
      ImageIndex = 51
      OnExecute = actDesconsiderarBasesExecute
    end
    object actConsolidar: TAction
      Category = 'Extrato'
      Caption = 'Planilha'
      Enabled = False
      Hint = 'Emiss'#227'o da planilha de cr'#233'ditos'
      ImageIndex = 58
      OnExecute = actConsolidarExecute
    end
    object actVisualizarParamatros: TAction
      Category = 'Extrato'
      Caption = 'Par'#226'metros'
      Hint = 'Visualizar Par'#226'metros'
      ImageIndex = 14
      OnExecute = actVisualizarParamatrosExecute
    end
  end
  object SaveDialog: TSaveDialog
    Left = 384
    Top = 16
  end
  object dsClientes: TDataSource
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 272
    Top = 72
  end
  object dsBases: TDataSource
    DataSet = Data_Sisgef.mtbBases
    Left = 328
    Top = 72
  end
  object popMenu: TPopupMenu
    Images = Data_Sisgef.iml_16_16
    Left = 432
    Top = 16
    object AlterarCliente1: TMenuItem
      Action = actAlterarCliente
    end
    object Expandir1: TMenuItem
      Action = actExpandir
    end
    object Retrair1: TMenuItem
      Action = acrRetrair
    end
  end
  object popMenuBases: TPopupMenu
    Images = Data_Sisgef.iml_16_16
    Left = 488
    Top = 16
    object Selecionartodas1: TMenuItem
      Action = actSelecionarTodasBases
    end
    object Desconsiderartodas1: TMenuItem
      Action = actDesconsiderarBases
    end
  end
end
