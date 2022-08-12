object view_SisGeFExtractSO: Tview_SisGeFExtractSO
  Left = 0
  Top = 0
  Caption = 'Extrato de Ordens de Servi'#231'o'
  ClientHeight = 580
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 922
    Height = 580
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.dxLayoutStandardLookAndFeel2
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Extrato de Ordens de Servi'#231'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object tipoOS: TcxComboBox
      Left = 10
      Top = 52
      Hint = 'Tipo de OS'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'CONSUMO'
        'PRESTA'#199#195'O')
      Properties.OnChange = tipoOSPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 121
    end
    object situacaoExtrato: TcxComboBox
      Left = 10
      Top = 97
      Hint = 'Situa'#231#227'o do extrato'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'ABERTO'
        'FECHADO')
      Properties.OnChange = situacaoExtratoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Selecione ...'
      Width = 121
    end
    object listaClientes: TcxMCListBox
      Left = 137
      Top = 52
      Width = 237
      Height = 75
      HeaderSections = <
        item
          Text = 'C'#243'digo'
          Width = 60
        end
        item
          Text = 'Nome'
          Width = 172
        end>
      TabOrder = 3
    end
    object listaTerceiros: TcxMCListBox
      Left = 380
      Top = 52
      Width = 237
      Height = 75
      HeaderSections = <
        item
          Text = 'C'#243'digo'
          Width = 60
        end
        item
          Text = 'Nome'
          Width = 172
        end>
      TabOrder = 7
    end
    object cxButton1: TcxButton
      Left = 137
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeClients
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton2: TcxButton
      Left = 218
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionDeleteClients
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton3: TcxButton
      Left = 299
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClearClientsList
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object cxButton4: TcxButton
      Left = 380
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionIncludeOutsourced
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 8
    end
    object cxButton5: TcxButton
      Left = 461
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionDeleteOutsourced
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 9
    end
    object cxButton6: TcxButton
      Left = 542
      Top = 133
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClearOutsourcedList
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 10
    end
    object dataInicial: TcxDateEdit
      Left = 623
      Top = 52
      Hint = 'Data inicial do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 121
    end
    object dataFinal: TcxDateEdit
      Left = 623
      Top = 97
      Hint = 'Data final do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Width = 121
    end
    object cxButton7: TcxButton
      Left = 837
      Top = 83
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionProcessExtract
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 13
    end
    object cxButton8: TcxButton
      Left = 91
      Top = 545
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClosedExtract
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 19
    end
    object cxButton9: TcxButton
      Left = 837
      Top = 545
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 20
    end
    object cxButton10: TcxButton
      Left = 22
      Top = 182
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionGroupsPanel
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 14
    end
    object cxButton11: TcxButton
      Left = 103
      Top = 182
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandGroup
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 15
    end
    object cxButton12: TcxButton
      Left = 184
      Top = 182
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionRetractGroup
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 16
    end
    object cxButton14: TcxButton
      Left = 10
      Top = 545
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 18
    end
    object gridExtractSO: TcxGrid
      Left = 22
      Top = 213
      Width = 878
      Height = 314
      TabOrder = 17
      object gridExtractSODBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExtract
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.Indicator = True
        object gridExtractSODBTableView1num_os: TcxGridDBColumn
          DataBinding.FieldName = 'num_os'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridExtractSODBTableView1data_os: TcxGridDBColumn
          DataBinding.FieldName = 'data_os'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1cod_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cadastro'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1nom_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_cadastro'
          HeaderAlignmentHorz = taCenter
          Width = 253
        end
        object gridExtractSODBTableView1des_servico: TcxGridDBColumn
          DataBinding.FieldName = 'des_servico'
          HeaderAlignmentHorz = taCenter
          Width = 358
        end
        object gridExtractSODBTableView1qtd_servico: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_servico'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1val_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'val_unitario'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1val_servico: TcxGridDBColumn
          DataBinding.FieldName = 'val_servico'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1cod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1nom_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_entregador'
          HeaderAlignmentHorz = taCenter
        end
        object gridExtractSODBTableView1des_placa: TcxGridDBColumn
          DataBinding.FieldName = 'des_placa'
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridExtractSOLevel1: TcxGridLevel
        GridView = gridExtractSODBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 18
      ControlOptions.OriginalWidth = 183
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tipo de OS:'
      CaptionOptions.Layout = clTop
      Control = tipoOS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Situa'#231#227'o Extrato:'
      CaptionOptions.Layout = clTop
      Control = situacaoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGroupClientes: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = layoutGroupClientes
      AlignVert = avTop
      CaptionOptions.Text = 'Clientes: (Nenhum cliente informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaClientes
      ControlOptions.OriginalHeight = 75
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = layoutGroupClientes
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object layoutGroupTerceirizados: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = layoutGroupTerceirizados
      CaptionOptions.Text = 'Terceirizados: (Nenhum informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaTerceiros
      ControlOptions.OriginalHeight = 75
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutGroupTerceirizados
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data inicial:'
      CaptionOptions.Layout = clTop
      Control = dataInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data final:'
      CaptionOptions.Layout = clTop
      Control = dataFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton14'
      CaptionOptions.Visible = False
      Control = cxButton14
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridExtractSO
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionListExtractSO: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 584
    object actionGroupsPanel: TAction
      Category = 'Form'
      Caption = 'Paine&l'
      Hint = 'Painel de Grupos'
      ImageIndex = 110
      OnExecute = actionGroupsPanelExecute
    end
    object actionExpandGroup: TAction
      Category = 'Form'
      Caption = '&Expandir'
      Hint = 'Expandir todos os grupos do grid'
      ImageIndex = 106
      OnExecute = actionExpandGroupExecute
    end
    object actionRetractGroup: TAction
      Category = 'Form'
      Caption = '&Retrair'
      Hint = 'Retrair todos os rupos do grid'
      ImageIndex = 107
      OnExecute = actionRetractGroupExecute
    end
    object actionProcessExtract: TAction
      Category = 'Service Orders'
      Caption = '&Processar'
      Hint = 'Processar/Listar extrato'
      ImageIndex = 109
    end
    object actionClosedExtract: TAction
      Category = 'Service Orders'
      Caption = 'E&ncerrar'
      Enabled = False
      Hint = 'Encerrar extrato'
      ImageIndex = 83
    end
    object actionExportGrid: TAction
      Category = 'Form'
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseForm: TAction
      Category = 'Form'
      Caption = '&Fechar'
      Hint = 'Fehar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionIncludeClients: TAction
      Category = 'Filter'
      Caption = 'Incluir'
      Hint = 'Incluir clientes'
      ImageIndex = 89
      OnExecute = actionIncludeClientsExecute
    end
    object actionDeleteClients: TAction
      Category = 'Filter'
      Caption = 'Excluir'
      Hint = 'Excluir Clientes'
      ImageIndex = 90
      OnExecute = actionDeleteClientsExecute
    end
    object actionClearClientsList: TAction
      Category = 'Filter'
      Caption = 'Limpar'
      Hint = 'Limpar lista de clientes'
      ImageIndex = 84
      OnExecute = actionClearClientsListExecute
    end
    object actionIncludeOutsourced: TAction
      Category = 'Filter'
      Caption = 'Incluir'
      Hint = 'Incluir terceirizado'
      ImageIndex = 89
      OnExecute = actionIncludeOutsourcedExecute
    end
    object actionDeleteOutsourced: TAction
      Category = 'Filter'
      Caption = 'Excluir'
      Hint = 'Excluir terceirizado'
      ImageIndex = 90
      OnExecute = actionDeleteOutsourcedExecute
    end
    object actionClearOutsourcedList: TAction
      Category = 'Filter'
      Caption = 'Limpar'
      Hint = 'Limpar lista de terceirizados'
      ImageIndex = 84
      OnExecute = actionClearOutsourcedListExecute
    end
  end
  object memTableExtract: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 800
    Top = 24
    object memTableExtractnum_os: TIntegerField
      DisplayLabel = 'N'#176'. OS'
      FieldName = 'num_os'
    end
    object memTableExtractdata_os: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data_os'
    end
    object memTableExtractcod_cadastro: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cadastro'
    end
    object memTableExtractnom_cadastro: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_cadastro'
      Size = 70
    end
    object memTableExtractdes_servico: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'des_servico'
      Size = 150
    end
    object memTableExtractqtd_servico: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_servico'
    end
    object memTableExtractval_unitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'val_unitario'
    end
    object memTableExtractval_servico: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'val_servico'
    end
    object memTableExtractcod_entregador: TIntegerField
      DisplayLabel = 'Motorista'
      FieldName = 'cod_entregador'
    end
    object memTableExtractnom_entregador: TStringField
      DisplayLabel = 'Nome Motorista'
      FieldName = 'nom_entregador'
      Size = 70
    end
    object memTableExtractdes_placa: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'des_placa'
      Size = 8
    end
  end
  object dsExtract: TDataSource
    AutoEdit = False
    DataSet = memTableExtract
    Left = 864
    Top = 24
  end
end
