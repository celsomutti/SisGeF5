object view_RecepcaoPedidos: Tview_RecepcaoPedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recep'#231#227'o de Pedidos'
  ClientHeight = 547
  ClientWidth = 919
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 919
    Height = 547
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton2: TcxButton
      Left = 834
      Top = 512
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 11
    end
    object crbRecepcao: TcxRadioGroup
      Left = 24
      Top = 74
      Hint = 'Selecione o tipo de recep'#231#227'o'
      Caption = 'Tipo de Recep'#231#227'o'
      ParentFont = False
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'Pedidos'
          Value = 1
        end
        item
          Caption = 'Container'
          Value = 2
        end
        item
          Caption = 'Pedidos Leves'
          Value = '3'
        end
        item
          Caption = 'Pedidos Pesados'
          Value = '4'
        end>
      Properties.OnChange = crbRecepcaoPropertiesChange
      ItemIndex = 0
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 43
      Width = 771
    end
    object txtLeitura: TcxTextEdit
      Left = 62
      Top = 123
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnValidate = txtLeituraPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 833
    end
    object cxButton1: TcxButton
      Left = 801
      Top = 74
      Width = 94
      Height = 43
      Cursor = crHandPoint
      Action = actIniciar
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grdRecepcao: TcxGrid
      Left = 10
      Top = 174
      Width = 899
      Height = 332
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object tvRecepcao: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvRecepcaoNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 101
          end>
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
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsRecepcao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skCount
            Column = tvRecepcaonum_nossonumero
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvRecepcaoqtd_volumes
          end
          item
            Format = ',0.000;-,0.000'
            Kind = skSum
            Column = tvRecepcaoqtd_peso_real
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvRecepcaonum_nossonumero: TcxGridDBColumn
          DataBinding.FieldName = 'num_nossonumero'
          PropertiesClassName = 'TcxTextEditProperties'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object tvRecepcaocod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_cliente'
          Properties.ListColumns = <
            item
              FieldName = 'nom_cliente'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsEmbarcadores
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object tvRecepcaonum_nf: TcxGridDBColumn
          DataBinding.FieldName = 'num_nf'
          HeaderAlignmentHorz = taCenter
          Width = 118
        end
        object tvRecepcaonum_pedido: TcxGridDBColumn
          Caption = 'Pedido'
          DataBinding.FieldName = 'num_pedido'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object tvRecepcaonom_consumidor: TcxGridDBColumn
          DataBinding.FieldName = 'nom_consumidor'
          HeaderAlignmentHorz = taCenter
          Width = 201
        end
        object tvRecepcaodat_expedicao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_expedicao'
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object tvRecepcaoqtd_volumes: TcxGridDBColumn
          Caption = 'Vol.'
          DataBinding.FieldName = 'qtd_volumes'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object tvRecepcaoqtd_peso_real: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_peso_real'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object tvRecepcaodat_recebido: TcxGridDBColumn
          Caption = 'Recebimento'
          DataBinding.FieldName = 'dat_recebido'
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object tvRecepcaonum_container: TcxGridDBColumn
          DataBinding.FieldName = 'num_container'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
      end
      object lvRecepcao: TcxGridLevel
        GridView = tvRecepcao
      end
    end
    object datInicio: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de in'#237'cio de expedi'#231#227'o'
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
      Visible = False
      Width = 121
    end
    object datFinal: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data final de expedi'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Visible = False
      Width = 121
    end
    object cboSituacao: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Situa'#231#227'o do pedido'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione...'
        'Recebidos'
        'Pendentes')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Text = 'Selecione...'
      Visible = False
      Width = 121
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 8
      Visible = False
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 512
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 10
    end
    object cxButton4: TcxButton
      Left = 91
      Top = 512
      Width = 75
      Height = 25
      Action = actCancelar
      TabOrder = 12
    end
    object lblResultado: TcxLabel
      Left = 455
      Top = 517
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
    object codCliente: TcxButtonEdit
      Left = 48
      Top = 10
      Hint = 'C'#243'digo do cliente'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisarCliente
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = codClientePropertiesValidate
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 0
      Text = '0'
      Width = 89
    end
    object nomCliente: TcxTextEdit
      Left = 143
      Top = 10
      Hint = 'Nome do cliente'
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 766
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = dxLayoutGroup2TabChanged
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Recep'#231#227'o'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = crbRecepcao
      ControlOptions.OriginalHeight = 43
      ControlOptions.OriginalWidth = 613
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Leitura'
      Control = txtLeitura
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Relat'#243'rios'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grade'
      CaptionOptions.Visible = False
      Control = grdRecepcao
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'In'#237'cio'
      Control = datInicio
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Final'
      Control = datFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Situa'#231#227'o'
      Control = cboSituacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
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
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahCenter
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = lblResultado
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 8
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Cliente'
      Control = codCliente
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome Cliente'
      CaptionOptions.Visible = False
      Control = nomCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object aclRecepcao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 568
    object actFechar: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actFecharExecute
    end
    object actIniciar: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Iniciar'
      Hint = 'Iniciar a recep'#231#227'o'
      ImageIndex = 83
      OnExecute = actIniciarExecute
    end
    object actGravar: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Gravar recep'#231#227'o'
      ImageIndex = 85
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 84
      OnExecute = actCancelarExecute
    end
    object actPesquisar: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
      OnExecute = actPesquisarExecute
    end
    object actPesquisarCliente: TAction
      Category = 'Recep'#231#227'o'
      Caption = 'Pesquisar Cliente'
      Hint = 'Pesquisar Cliente'
      ImageIndex = 86
      OnExecute = actPesquisarClienteExecute
    end
  end
  object dsRecepcao: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbRecepcaoPedidos
    Left = 632
  end
  object dsEmbarcadores: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbEmbarcadores
    Left = 696
  end
  object SaveDialog: TSaveDialog
    Left = 768
  end
end
