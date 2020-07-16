object view_Verbas_Expressas: Tview_Verbas_Expressas
  Left = 0
  Top = 0
  Caption = 'Verbas Expressas'
  ClientHeight = 479
  ClientWidth = 822
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 822
    Height = 479
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Verbas Expressas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 737
      Top = 444
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 5
    end
    object grdVerbas: TcxGrid
      Left = 10
      Top = 102
      Width = 802
      Height = 336
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object tvVerbas: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvVerbasNavigatorButtonsButtonClick
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
        Navigator.Buttons.Insert.ImageIndex = 3
        Navigator.Buttons.Delete.ImageIndex = 4
        Navigator.Buttons.Edit.ImageIndex = 10
        Navigator.Buttons.Post.ImageIndex = 13
        Navigator.Buttons.Cancel.ImageIndex = 2
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsVerbas
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object tvVerbasid_verba: TcxGridDBColumn
          DataBinding.FieldName = 'id_verba'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object tvVerbascod_tipo: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_tipo'
          Properties.ListColumns = <
            item
              FieldName = 'des_tipo'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTipos
          Properties.ReadOnly = False
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
          Width = 134
        end
        object tvVerbasid_grupo: TcxGridDBColumn
          DataBinding.FieldName = 'id_grupo'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 50.000000000000000000
          Properties.MinValue = 1.000000000000000000
          HeaderAlignmentHorz = taCenter
        end
        object tvVerbasdat_vigencia: TcxGridDBColumn
          DataBinding.FieldName = 'dat_vigencia'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object tvVerbasval_verba: TcxGridDBColumn
          DataBinding.FieldName = 'val_verba'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;-,0.00'
          Properties.EditFormat = ' ,0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object tvVerbasval_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;-,0.00'
          Properties.EditFormat = ' ,0.00;-,0.00'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object tvVerbasnum_cep_inicial: TcxGridDBColumn
          DataBinding.FieldName = 'num_cep_inicial'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object tvVerbasnum_cep_final: TcxGridDBColumn
          DataBinding.FieldName = 'num_cep_final'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object tvVerbasqtd_peso_inicial: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_peso_inicial'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000;-,0.000'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object tvVerbasqtd_peso_final: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_peso_final'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ',0.000;-,0.000'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 54
        end
        object tvVerbascod_roteiro: TcxGridDBColumn
          DataBinding.FieldName = 'cod_roteiro'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvVerbas: TcxGridLevel
        GridView = tvVerbas
      end
    end
    object lcbTipoVerba: TcxLookupComboBox
      Left = 10
      Top = 57
      Cursor = crHandPoint
      ParentFont = False
      Properties.KeyFieldNames = 'cod_tipo'
      Properties.ListColumns = <
        item
          FieldName = 'des_tipo'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTipos
      Properties.OnChange = lcbTipoVerbaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 255
    end
    object cxButton2: TcxButton
      Left = 737
      Top = 53
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 3
    end
    object lcbClientes: TcxLookupComboBox
      Left = 271
      Top = 57
      Cursor = crHandPoint
      Hint = 'Selecione o Cliente'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCliente
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 216
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Verbas'
      CaptionOptions.Layout = clTop
      Control = grdVerbas
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tipo de Tabela'
      CaptionOptions.Layout = clTop
      Control = lcbTipoVerba
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = lcbClientes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 216
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object aclVerbas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 600
    Top = 8
    object actFechar: TAction
      Category = 'Verbas'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actPesquisar: TAction
      Category = 'Verbas'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar tipos de tabelas'
      ImageIndex = 14
      OnExecute = actPesquisarExecute
    end
  end
  object mtbverbas: TFDMemTable
    BeforeInsert = mtbverbasBeforeInsert
    AfterInsert = mtbverbasAfterInsert
    BeforeEdit = mtbverbasBeforeEdit
    BeforePost = mtbverbasBeforePost
    AfterPost = mtbverbasAfterPost
    AfterCancel = mtbverbasAfterCancel
    BeforeDelete = mtbverbasBeforeDelete
    AfterDelete = mtbverbasAfterDelete
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 432
    Top = 8
    object mtbverbasid_verba: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_verba'
    end
    object mtbverbascod_cliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
    end
    object mtbverbascod_tipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo'
    end
    object mtbverbasid_grupo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'id_grupo'
    end
    object mtbverbasval_verba: TSingleField
      DisplayLabel = 'Verba'
      FieldName = 'val_verba'
    end
    object mtbverbasval_performance: TSingleField
      DisplayLabel = 'Performance'
      FieldName = 'val_performance'
    end
    object mtbverbasdat_vigencia: TDateField
      DisplayLabel = 'Vig'#234'ncia'
      FieldName = 'dat_vigencia'
    end
    object mtbverbasnum_cep_inicial: TStringField
      DisplayLabel = 'CEP Inicial'
      FieldName = 'num_cep_inicial'
      Size = 9
    end
    object mtbverbasnum_cep_final: TStringField
      DisplayLabel = 'CEP Final'
      FieldName = 'num_cep_final'
      Size = 9
    end
    object mtbverbasqtd_peso_inicial: TSingleField
      DisplayLabel = 'Peso Inicial'
      FieldName = 'qtd_peso_inicial'
    end
    object mtbverbasqtd_peso_final: TSingleField
      DisplayLabel = 'Peso Final'
      FieldName = 'qtd_peso_final'
    end
    object mtbverbascod_roteiro: TIntegerField
      DisplayLabel = 'C'#243'd. Roteiro'
      FieldName = 'cod_roteiro'
    end
  end
  object dsVerbas: TDataSource
    DataSet = mtbverbas
    Left = 488
    Top = 8
  end
  object mtbTipos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 672
    Top = 8
    object mtbTiposcod_tipo: TIntegerField
      FieldName = 'cod_tipo'
    end
    object mtbTiposdes_tipo: TStringField
      FieldName = 'des_tipo'
      Size = 100
    end
    object mtbTiposdes_colunas: TStringField
      FieldName = 'des_colunas'
      Size = 50
    end
  end
  object dsTipos: TDataSource
    AutoEdit = False
    DataSet = mtbTipos
    Left = 720
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 336
    Top = 8
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 544
    Top = 8
  end
end
