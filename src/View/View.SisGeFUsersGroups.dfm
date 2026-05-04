object viewUsersGroup: TviewUsersGroup
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Grupos de Usu'#225'rios (Acessos)'
  ClientHeight = 467
  ClientWidth = 678
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layContainer: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 678
    Height = 467
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object lcbGrupo: TcxLookupComboBox
      Left = 48
      Top = 12
      Hint = 'Selecione o grupo'
      Properties.KeyFieldNames = 'COD_USUARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NOM_USUARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGrupos
      Properties.OnChange = lcbGrupoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 458
    end
    object cxButton1: TcxButton
      Left = 512
      Top = 10
      Width = 75
      Height = 25
      Action = actListarAcessos
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 593
      Top = 10
      Width = 75
      Height = 25
      Action = actNovoGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 53
      Width = 123
      Height = 25
      Action = actSelecionarTudo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object cxButton4: TcxButton
      Left = 139
      Top = 53
      Width = 122
      Height = 25
      Action = actLimparRegistros
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton5: TcxButton
      Left = 577
      Top = 432
      Width = 91
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 7
    end
    object cxButton6: TcxButton
      Left = 10
      Top = 432
      Width = 95
      Height = 25
      Action = actCancelarGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton7: TcxButton
      Left = 111
      Top = 432
      Width = 98
      Height = 25
      Action = actGravarGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object gridGrupos: TcxGrid
      Left = 10
      Top = 96
      Width = 658
      Height = 330
      TabOrder = 8
      object gridGruposDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsAcessos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridGruposDBTableView1dom_acesso: TcxGridDBColumn
          DataBinding.FieldName = 'dom_acesso'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          Width = 66
        end
        object gridGruposDBTableView1cod_sistema: TcxGridDBColumn
          DataBinding.FieldName = 'cod_sistema'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridGruposDBTableView1des_sistema: TcxGridDBColumn
          DataBinding.FieldName = 'des_sistema'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
        end
        object gridGruposDBTableView1cod_modulo: TcxGridDBColumn
          DataBinding.FieldName = 'cod_modulo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridGruposDBTableView1des_modulo: TcxGridDBColumn
          DataBinding.FieldName = 'des_modulo'
          Visible = False
          GroupIndex = 1
          HeaderAlignmentHorz = taCenter
        end
        object gridGruposDBTableView1cod_menu: TcxGridDBColumn
          DataBinding.FieldName = 'cod_menu'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridGruposDBTableView1des_menu: TcxGridDBColumn
          DataBinding.FieldName = 'des_menu'
          HeaderAlignmentHorz = taCenter
          Width = 560
        end
      end
      object gridGruposLevel1: TcxGridLevel
        GridView = gridGruposDBTableView1
      end
    end
    object layContainerGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpMenuSearch: TdxLayoutGroup
      Parent = layContainerGroup_Root
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpMenuSearch
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Grupo:'
      Control = lcbGrupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 397
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpMenuSearch
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpMenuSearch
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = layContainerGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layContainerGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = layContainerGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = layContainerGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = layContainerGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridGrupos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object mtbGrupos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 344
    Top = 48
    object mtbGruposcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object mtbGruposnom_usuario: TStringField
      FieldName = 'nom_usuario'
      Size = 80
    end
    object mtbGruposcod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = mtbGrupos
    Left = 400
    Top = 48
  end
  object aclUsuarios: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 584
    Top = 48
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actSair: TAction
      Caption = '&Sair'
      Hint = 'Sair do sistema'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actNovoGrupo: TAction
      Caption = 'No&vo'
      Hint = 'Criar novo grupo'
      ImageIndex = 115
      OnExecute = actNovoGrupoExecute
    end
    object actGravarGrupo: TAction
      Caption = '&Gravar'
      Hint = 'Gravar dados do grupo'
      ImageIndex = 85
      OnExecute = actGravarGrupoExecute
    end
    object actListarAcessos: TAction
      Caption = '&Listar'
      Hint = 'Listar acessos do grupo'
      ImageIndex = 127
      OnExecute = actListarAcessosExecute
    end
    object actCancelarGrupo: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 84
      OnExecute = actCancelarGrupoExecute
    end
    object actSelecionarTudo: TAction
      Caption = 'Selecionar Todos'
      Hint = 'Selecionar todos os registros'
      ImageIndex = 71
      ShortCut = 16468
      OnExecute = actSelecionarTudoExecute
    end
    object actLimparRegistros: TAction
      Caption = 'Limpar Sele'#231#227'o'
      Hint = 'Limpar sele'#231#227'o de registros'
      ImageIndex = 72
      ShortCut = 16457
      OnExecute = actLimparRegistrosExecute
    end
  end
  object dsAcessos: TDataSource
    DataSet = mtbAcessos
    Left = 528
    Top = 48
  end
  object mtbAcessos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 472
    Top = 48
    object mtbAcessosdom_acesso: TIntegerField
      DisplayLabel = 'Acesso'
      FieldName = 'dom_acesso'
    end
    object mtbAcessoscod_sistema: TIntegerField
      DisplayLabel = 'C'#243'd. Sistema'
      FieldName = 'cod_sistema'
    end
    object mtbAcessosdes_sistema: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'des_sistema'
      Size = 50
    end
    object mtbAcessoscod_modulo: TIntegerField
      DisplayLabel = 'C'#243'd. M'#243'dulo'
      FieldName = 'cod_modulo'
    end
    object mtbAcessosdes_modulo: TStringField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'des_modulo'
      Size = 150
    end
    object mtbAcessoscod_menu: TIntegerField
      DisplayLabel = 'C'#243'd. Menu'
      FieldName = 'cod_menu'
    end
    object mtbAcessosdes_menu: TStringField
      DisplayLabel = 'Menu'
      FieldName = 'des_menu'
      Size = 150
    end
  end
  object mtbAcessosUsuario: TFDMemTable
    Indexes = <
      item
        Active = True
        Fields = 'cod_menu'
      end>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 48
    object mtbAcessosUsuariocod_menu: TIntegerField
      FieldName = 'cod_menu'
    end
    object mtbAcessosUsuariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
  end
end
