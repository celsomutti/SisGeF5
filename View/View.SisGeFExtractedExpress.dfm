object view_SisGeFExtractedExpress: Tview_SisGeFExtractedExpress
  Left = 0
  Top = 0
  Caption = 'Extrato de Expressas'
  ClientHeight = 539
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 868
    Height = 539
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object tipoExtrato: TcxComboBox
      Left = 24
      Top = 82
      Hint = 'Tipo de Extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'ANAL'#237'TICO'
        'SINT'#201'TICO')
      Style.HotTrack = False
      TabOrder = 1
      Text = 'SELECIONE ...'
      Width = 96
    end
    object tipoPeriodo: TcxComboBox
      Left = 126
      Top = 82
      Hint = 'Tipo de Periodo'
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Data Inicial e Final / Por Baixa'
        'Data Inicial e Final / Por Expedi'#231#227'o'
        'Quinzena / Por Baixa'
        'Quinzena / Por Expedi'#231#227'o')
      Properties.OnChange = tipoPeriodoPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Selecione ...'
      Width = 113
    end
    object dataInicialPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data inicial do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 96
    end
    object dataFinalPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data final do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 97
    end
    object anoPeriodo: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Ano do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 92
    end
    object mesPeriodo: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'M'#234's do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
      Style.HotTrack = False
      TabOrder = 6
      Text = 'SELECIONE ...'
      Visible = False
      Width = 114
    end
    object periodoParametrizado: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Per'#237'odo parametrizado'
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object situacaoExtrato: TcxComboBox
      Left = 626
      Top = 82
      Hint = 'Situa'#231#227'o do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'ABERTO'
        'ENCERRADO')
      Properties.OnChange = situacaoExtratoPropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Text = 'Selecione ...'
      Width = 125
    end
    object listaClientes: TcxMCListBox
      Left = 36
      Top = 159
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 60
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 181
        end>
      Style.TransparentBorder = True
      TabOrder = 10
    end
    object cxButton1: TcxButton
      Left = 36
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeClients
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 11
    end
    object cxButton2: TcxButton
      Left = 120
      Top = 262
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeClients
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 12
    end
    object listaBases: TcxMCListBox
      Left = 311
      Top = 159
      Width = 246
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 177
        end>
      TabOrder = 14
    end
    object cxButton3: TcxButton
      Left = 311
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeBases
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 15
    end
    object cxButton4: TcxButton
      Left = 395
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeBases
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 16
    end
    object listaEntregadores: TcxMCListBox
      Left = 587
      Top = 159
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 176
        end>
      TabOrder = 18
    end
    object cxButton5: TcxButton
      Left = 587
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeCouriers
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 19
    end
    object cxButton6: TcxButton
      Left = 671
      Top = 262
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = actionExcludeCouriers
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 20
    end
    object cxButton7: TcxButton
      Left = 203
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearClients
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 13
    end
    object cxButton8: TcxButton
      Left = 479
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearBases
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 17
    end
    object cxButton9: TcxButton
      Left = 754
      Top = 262
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionClearCouriers
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 21
    end
    object cxButton10: TcxButton
      Left = 783
      Top = 502
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 36
    end
    object calcularVolumeExtra: TcxCheckBox
      Left = 36
      Top = 323
      Cursor = crHandPoint
      Hint = 'Calcular volumes extras'
      Caption = 'Volumes extras'
      Enabled = False
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
    end
    object considerarExtravios: TcxCheckBox
      Left = 253
      Top = 323
      Cursor = crHandPoint
      Hint = 'Considerar extravios'
      Caption = 'Considerar extravios'
      Enabled = False
      Properties.ValueChecked = 'N'
      Properties.ValueUnchecked = 'S'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 23
      Transparent = True
    end
    object considerarLancamentos: TcxCheckBox
      Left = 529
      Top = 323
      Cursor = crHandPoint
      Hint = 'Considerar lan'#231'amentos de d'#233'bitos e cr'#233'ditos'
      Caption = 'Considerar lan'#231'amentos'
      Enabled = False
      Properties.ValueChecked = 'N'
      Properties.ValueUnchecked = 'S'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
    end
    object gridExtrato: TcxGrid
      Left = 10000
      Top = 10000
      Width = 820
      Height = 357
      TabOrder = 29
      Visible = False
      object gridExtratoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsExtract
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0; -,0'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1qtd_atraso
          end
          item
            Format = ',0; -,0'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1qtd_entregas
          end
          item
            Format = ',0; -,0'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1qtd_volumes
          end
          item
            Format = ',0.000; -,0.000'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1qtd_volumes_extra
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_creditos
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_debitos
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_extravios
          end
          item
            Format = 'M'#233'dia: ,0.000; -,0.000'
            Kind = skAverage
            Position = spFooter
            Column = gridExtratoDBTableView1val_performance
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_producao
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_total_empresa
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_total_expressa
          end
          item
            Format = 'M'#233'dia: ,0.00; -,0.00'
            Kind = skAverage
            Position = spFooter
            Column = gridExtratoDBTableView1val_verba
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Position = spFooter
            Column = gridExtratoDBTableView1val_volumes_extra
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0; -,0'
            Kind = skSum
            Column = gridExtratoDBTableView1qtd_atraso
          end
          item
            Format = ',0; -,0'
            Kind = skSum
            Column = gridExtratoDBTableView1qtd_entregas
          end
          item
            Format = ',0; -,0'
            Kind = skSum
            Column = gridExtratoDBTableView1qtd_volumes
          end
          item
            Format = ',0.000; -,0.000'
            Kind = skSum
            Column = gridExtratoDBTableView1qtd_volumes_extra
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_creditos
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_creditos
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_debitos
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_extravios
          end
          item
            Format = 'M'#233'dia: ,0.000; -,0.000'
            Kind = skAverage
            Column = gridExtratoDBTableView1val_performance
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_producao
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_total_empresa
          end
          item
            Format = 'R$ ,0.00; - R$ ,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_total_expressa
          end
          item
            Format = 'M'#233'dia: ,0.00; -,0.00'
            Kind = skAverage
            Column = gridExtratoDBTableView1val_verba
          end
          item
            Format = ',0.00; -,0.00'
            Kind = skSum
            Column = gridExtratoDBTableView1val_volumes_extra
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.HeaderAutoHeight = True
        ConditionalFormatting = {
          030000000A0000002D0000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500430065006C00
          6C00490073007F000000170000000000000017000000FFFFFF7F0001FF000000
          0B00000007000000430061006C00690062007200690000000000000020000000
          2000000000200000000020000000002000000000200007000000470045004E00
          4500520041004C00000000000002000000000000000001020000003D00300001
          0000003D00040000002D00000054006400780053007000720065006100640053
          00680065006500740043006F006E0064006900740069006F006E0061006C0046
          006F0072006D0061007400740069006E006700520075006C006500430065006C
          006C00490073007F000000150000000000000015000000FFFFFF7F0001FF0000
          000B00000007000000430061006C006900620072006900000000000000200000
          002000000000200000000020000000002000000000200007000000470045004E
          004500520041004C00000000000002000000000000000001020000003D003000
          010000003D00040000002D000000540064007800530070007200650061006400
          5300680065006500740043006F006E0064006900740069006F006E0061006C00
          46006F0072006D0061007400740069006E006700520075006C00650043006500
          6C006C00490073007F000000160000000000000016000000FFFFFF7F0001FF00
          00000B00000007000000430061006C0069006200720069000000000000002000
          0000200000000020000000002000000000200000000020000700000047004500
          4E004500520041004C00000000000002000000000000000001020000003D0030
          00010000003D0004000000}
        object gridExtratoDBTableView1id_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'id_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1dat_inicio: TcxGridDBColumn
          DataBinding.FieldName = 'dat_inicio'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1dat_final: TcxGridDBColumn
          DataBinding.FieldName = 'dat_final'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1num_ano: TcxGridDBColumn
          DataBinding.FieldName = 'num_ano'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1num_mes: TcxGridDBColumn
          DataBinding.FieldName = 'num_mes'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1num_quinzena: TcxGridDBColumn
          DataBinding.FieldName = 'num_quinzena'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1num_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'num_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1nom_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'nom_cliente'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 179
        end
        object gridExtratoDBTableView1cod_base: TcxGridDBColumn
          DataBinding.FieldName = 'cod_base'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 25
        end
        object gridExtratoDBTableView1nom_base: TcxGridDBColumn
          DataBinding.FieldName = 'nom_base'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1cod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          HeaderAlignmentHorz = taCenter
          Width = 32
        end
        object gridExtratoDBTableView1nom_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_entregador'
          HeaderAlignmentHorz = taCenter
          Width = 136
        end
        object gridExtratoDBTableView1val_verba: TcxGridDBColumn
          DataBinding.FieldName = 'val_verba'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object gridExtratoDBTableView1qtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object gridExtratoDBTableView1qtd_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          HeaderAlignmentHorz = taCenter
          Width = 41
        end
        object gridExtratoDBTableView1val_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'val_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
        object gridExtratoDBTableView1qtd_entregas: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_entregas'
          HeaderAlignmentHorz = taCenter
          Width = 46
        end
        object gridExtratoDBTableView1qtd_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_atraso'
          HeaderAlignmentHorz = taCenter
          Width = 49
        end
        object gridExtratoDBTableView1val_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 51
        end
        object gridExtratoDBTableView1val_producao: TcxGridDBColumn
          DataBinding.FieldName = 'val_producao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object gridExtratoDBTableView1val_creditos: TcxGridDBColumn
          DataBinding.FieldName = 'val_creditos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object gridExtratoDBTableView1val_debitos: TcxGridDBColumn
          DataBinding.FieldName = 'val_debitos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 51
        end
        object gridExtratoDBTableView1val_extravios: TcxGridDBColumn
          DataBinding.FieldName = 'val_extravios'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
        object gridExtratoDBTableView1val_total_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_expressa'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object gridExtratoDBTableView1val_total_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_empresa'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1cod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1dat_credito: TcxGridDBColumn
          DataBinding.FieldName = 'dat_credito'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1des_unique_key: TcxGridDBColumn
          DataBinding.FieldName = 'des_unique_key'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridExtratoDBTableView1dat_baixa: TcxGridDBColumn
          DataBinding.FieldName = 'dat_baixa'
          Visible = False
        end
      end
      object gridExtratoLevel1: TcxGridLevel
        GridView = gridExtratoDBTableView1
      end
    end
    object cxButton11: TcxButton
      Left = 757
      Top = 71
      Width = 87
      Height = 25
      Cursor = crHandPoint
      Action = actionProcess
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 9
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionComeBack
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 30
      Visible = False
    end
    object cxButton13: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 25
      Visible = False
    end
    object cxButton14: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionRetractGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 26
      Visible = False
    end
    object cxButton15: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionPanelGroup
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 27
      Visible = False
    end
    object labelPeriod: TcxLabel
      Left = 10000
      Top = 10000
      Caption = 'labelPeriod'
      Style.HotTrack = False
      Transparent = True
      Visible = False
    end
    object cxButton16: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 31
      Visible = False
    end
    object cxButton17: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseExtract
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 32
      Visible = False
    end
    object labelInfo: TcxLabel
      Left = 60
      Top = 506
      Style.HotTrack = False
      Transparent = True
    end
    object activityIndicatorClose: TdxActivityIndicator
      Left = 10
      Top = 500
      Width = 44
      Height = 29
      PropertiesClassName = 'TdxActivityIndicatorCircularDotsProperties'
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Extrato de Expressas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton18: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionReopenExtract
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 33
      Visible = False
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
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Extrato:'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = tipoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = tipoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGroupMain: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object layoutGroupParameters: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Par'#226'metros'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object layoutGroupExtract: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Extrato'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object layoutGroupCustomized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Customizado'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object layoutGroupParameterized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Parametrizado'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutGroupCustomized
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      CaptionOptions.Layout = clTop
      Control = dataInicialPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Hint = 'Data final do per'#237'odo customizado'
      CaptionOptions.Text = 'Data Final:'
      CaptionOptions.Layout = clTop
      Control = dataFinalPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Ano:'
      CaptionOptions.Layout = clTop
      Control = anoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Hint = 'M'#234's do per'#237'odo'
      CaptionOptions.Text = 'M'#234's:'
      CaptionOptions.Layout = clTop
      Control = mesPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = periodoParametrizado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Situa'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = situacaoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = layoutGroupParameters
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Clientes: (Nenhum cliente informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaClientes
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup8
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
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bases: (Nenhuma base informda = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaBases
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Entregadores: (Nenhum informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaEntregadores
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = calcularVolumeExtra
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = considerarExtravios
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = considerarLancamentos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = layoutGroupExtract
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridExtrato
      ControlOptions.OriginalHeight = 113
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = layoutGroupExtract
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = layoutGroupParameters
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton13'
      CaptionOptions.Visible = False
      Control = cxButton13
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton14'
      CaptionOptions.Visible = False
      Control = cxButton14
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'cxButton15'
      CaptionOptions.Visible = False
      Control = cxButton15
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelPeriod
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton16'
      CaptionOptions.Visible = False
      Control = cxButton16
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'cxButton17'
      CaptionOptions.Visible = False
      Control = cxButton17
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelInfo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'dxActivityIndicator1'
      CaptionOptions.Visible = False
      Control = activityIndicatorClose
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'cxButton18'
      CaptionOptions.Visible = False
      Control = cxButton18
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object actionListExtract: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 768
    Top = 16
    object actionIncludeClients: TAction
      Category = 'Clients'
      Caption = 'Incluir'
      Hint = 'Incluir Clientes'
      ImageIndex = 89
      OnExecute = actionIncludeClientsExecute
    end
    object actionExcludeClients: TAction
      Category = 'Clients'
      Caption = 'Excluir'
      Hint = 'Excluir cliente'
      ImageIndex = 90
      OnExecute = actionExcludeClientsExecute
    end
    object actionClearClients: TAction
      Category = 'Clients'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
      OnExecute = actionClearClientsExecute
    end
    object actionIncludeBases: TAction
      Category = 'Bases'
      Caption = 'Incluir'
      Hint = 'Incluir base'
      ImageIndex = 89
      OnExecute = actionIncludeBasesExecute
    end
    object actionExcludeBases: TAction
      Category = 'Bases'
      Caption = 'Excluir'
      Hint = 'Excluir base'
      ImageIndex = 90
      OnExecute = actionExcludeBasesExecute
    end
    object actionClearBases: TAction
      Category = 'Bases'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
      OnExecute = actionClearBasesExecute
    end
    object actionIncludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Incluir'
      Hint = 'Incluir entregadores'
      ImageIndex = 89
      OnExecute = actionIncludeCouriersExecute
    end
    object actionExcludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Excluir'
      Hint = 'Excluir entregador da lista'
      ImageIndex = 90
      OnExecute = actionExcludeCouriersExecute
    end
    object actionClearCouriers: TAction
      Category = 'Couriers'
      Caption = 'Limpar'
      Hint = 'Limpar lista de entregadores'
      ImageIndex = 84
      OnExecute = actionClearCouriersExecute
    end
    object actionCloseForm: TAction
      Category = 'Form'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionProcess: TAction
      Category = 'Filter'
      Caption = '&Processar'
      Hint = 'Processar o extrato'
      ImageIndex = 109
      OnExecute = actionProcessExecute
    end
    object actionExpandGrid: TAction
      Category = 'Form'
      Caption = 'Expa&ndir'
      Hint = 'Expardir os grupos do grid'
      ImageIndex = 106
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Category = 'Form'
      Caption = 'Re&trair'
      Hint = 'Retrair os grupos do grid'
      ImageIndex = 107
      OnExecute = actionRetractGridExecute
    end
    object actionComeBack: TAction
      Category = 'Form'
      Caption = '&Voltar'
      Hint = 'Voltar '#224' tela de par'#226'metros'
      ImageIndex = 108
      OnExecute = actionComeBackExecute
    end
    object actionPanelGroup: TAction
      Category = 'Form'
      Caption = 'Paine&l'
      Hint = 'Painel de grupo'
      ImageIndex = 110
      OnExecute = actionPanelGroupExecute
    end
    object actionExportGrid: TAction
      Category = 'Form'
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseExtract: TAction
      Category = 'Filter'
      Caption = '&Encerrar'
      Hint = 'Encerrar extrato'
      ImageIndex = 83
      OnExecute = actionCloseExtractExecute
    end
    object actionReopenExtract: TAction
      Category = 'Filter'
      Caption = 'Re&abrir'
      Hint = 'Reabrir extrato'
      ImageIndex = 111
      OnExecute = actionReopenExtractExecute
    end
  end
  object dsExtract: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableExtracts
    OnStateChange = dsExtractStateChange
    Left = 384
    Top = 8
  end
  object timer: TTimer
    Enabled = False
    OnTimer = timerTimer
    Left = 720
    Top = 16
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.storedProcListExtractExpress
    OnStateChange = dsExtractStateChange
    Left = 480
  end
end
