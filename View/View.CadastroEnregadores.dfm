object view_TemplateCadastro: Tview_TemplateCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entregadores'
  ClientHeight = 423
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 788
    Height = 423
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 398
    object labelTitle: TcxLabel
      Left = 11
      Top = 11
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gridEntregadores: TcxGrid
      Left = 11
      Top = 60
      Width = 766
      Height = 181
      TabOrder = 1
      object gridEntregadoresDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsEntregadores
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object gridEntregadoresDBTableView1cod_cadastro: TcxGridDBColumn
          Caption = 'Cadastro'
          DataBinding.FieldName = 'cod_cadastro'
          Visible = False
          VisibleForCustomization = False
        end
        object gridEntregadoresDBTableView1cod_entregador: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_entregador'
        end
        object gridEntregadoresDBTableView1nom_fantasia: TcxGridDBColumn
          Caption = 'Nome Fantasia'
          DataBinding.FieldName = 'nom_fantasia'
          Width = 221
        end
        object gridEntregadoresDBTableView1cod_agente: TcxGridDBColumn
          Caption = 'Agente'
          DataBinding.FieldName = 'cod_agente'
          Width = 93
        end
        object gridEntregadoresDBTableView1dat_codigo: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'dat_codigo'
          Width = 88
        end
        object gridEntregadoresDBTableView1des_chave: TcxGridDBColumn
          Caption = 'C'#243'digo ERP'
          DataBinding.FieldName = 'des_chave'
          Width = 147
        end
        object gridEntregadoresDBTableView1val_verba: TcxGridDBColumn
          Caption = 'Verba'
          DataBinding.FieldName = 'val_verba'
        end
        object gridEntregadoresDBTableView1nom_executante: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'nom_executante'
          Visible = False
          VisibleForCustomization = False
        end
        object gridEntregadoresDBTableView1dom_ativo: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'dom_ativo'
        end
        object gridEntregadoresDBTableView1dat_manutencao: TcxGridDBColumn
          Caption = 'Manuten'#231#227'o'
          DataBinding.FieldName = 'dat_manutencao'
          Visible = False
          VisibleForCustomization = False
        end
        object gridEntregadoresDBTableView1cod_tabela: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'cod_tabela'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_tipo'
          Properties.ListColumns = <
            item
              FieldName = 'des_tipo'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTipos
          Width = 96
        end
        object gridEntregadoresDBTableView1cod_grupo: TcxGridDBColumn
          Caption = 'Faixa'
          DataBinding.FieldName = 'cod_grupo'
          PropertiesClassName = 'TcxSpinEditProperties'
        end
      end
      object gridEntregadoresLevel1: TcxGridLevel
        GridView = gridEntregadoresDBTableView1
      end
    end
    object layoutControlCadastro: TdxLayoutControl
      Left = 11
      Top = 266
      Width = 766
      Height = 135
      TabOrder = 2
      object buttonEditPessoa: TcxButtonEdit
        Left = 11
        Top = 30
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 14
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 0
        Text = '0'
        Width = 70
      end
      object textEditNomePessoa: TcxTextEdit
        Left = 87
        Top = 30
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 1
        Width = 290
      end
      object layoutControlCadastroGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object layoutItemCodigoCadastro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pessoa'
        CaptionOptions.Layout = clTop
        Control = buttonEditPessoa
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 70
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomePessoa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'Nome Pessoa'
        CaptionOptions.Layout = clTop
        Control = textEditNomePessoa
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 290
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemLabelTitle: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemGridEntregadores: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Lista Entregadores'
      CaptionOptions.Layout = clTop
      Control = gridEntregadores
      ControlOptions.OriginalHeight = 181
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemCadastro: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Layout = clTop
      Control = layoutControlCadastro
      ControlOptions.OriginalHeight = 135
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object memTableEntregadores: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 536
    Top = 8
    object memTableEntregadorescod_cadastro: TIntegerField
      FieldName = 'cod_cadastro'
    end
    object memTableEntregadorescod_entregador: TIntegerField
      FieldName = 'cod_entregador'
    end
    object memTableEntregadoresnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object memTableEntregadorescod_agente: TIntegerField
      FieldName = 'cod_agente'
    end
    object memTableEntregadoresdat_codigo: TDateField
      FieldName = 'dat_codigo'
    end
    object memTableEntregadoresdes_chave: TStringField
      FieldName = 'des_chave'
      Size = 70
    end
    object memTableEntregadorescod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object memTableEntregadoresval_verba: TFloatField
      FieldName = 'val_verba'
    end
    object memTableEntregadoresnom_executante: TStringField
      FieldName = 'nom_executante'
    end
    object memTableEntregadoresdom_ativo: TIntegerField
      FieldName = 'dom_ativo'
    end
    object memTableEntregadoresdat_manutencao: TDateTimeField
      FieldName = 'dat_manutencao'
    end
    object memTableEntregadorescod_tabela: TIntegerField
      FieldName = 'cod_tabela'
    end
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = memTableEntregadores
    Left = 592
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
    Left = 432
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
    Left = 480
    Top = 8
  end
end
