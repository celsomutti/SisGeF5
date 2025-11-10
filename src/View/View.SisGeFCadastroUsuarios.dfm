object viewSisGefCadastroUsuarios: TviewSisGefCadastroUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 470
  ClientWidth = 740
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 740
    Height = 470
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitWidth = 765
    ExplicitHeight = 501
    object cboParametros: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.Items.Strings = (
        'Todos'
        'ID'
        'Nome'
        'Login'
        'E-Mail'
        'CPF')
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Todos'
      Visible = False
      Width = 82
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 84
      Height = 25
      Action = actPesquisa
      TabOrder = 2
      Visible = False
    end
    object cxButton2: TcxButton
      Left = 655
      Top = 435
      Width = 75
      Height = 25
      Action = actSair
      TabOrder = 11
    end
    object txeValor: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Informe o que pesquisar'
      Style.HotTrack = False
      TabOrder = 1
      Visible = False
      Width = 422
    end
    object cxButton3: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actNovo
      TabOrder = 4
      Visible = False
    end
    object cxButton4: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actEditar
      TabOrder = 5
      Visible = False
    end
    object grdUsuarios: TcxGrid
      Left = 10000
      Top = 10000
      Width = 692
      Height = 309
      TabOrder = 3
      Visible = False
      object grdUsuariosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsUsuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object grdUsuariosDBTableView1cod_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'cod_usuario'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
          Properties.SpinButtons.Visible = False
          Width = 40
        end
        object grdUsuariosDBTableView1nom_usuario: TcxGridDBColumn
          DataBinding.FieldName = 'nom_usuario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 143
        end
        object grdUsuariosDBTableView1des_login: TcxGridDBColumn
          DataBinding.FieldName = 'des_login'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 157
        end
        object grdUsuariosDBTableView1des_email: TcxGridDBColumn
          DataBinding.FieldName = 'des_email'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 197
        end
        object grdUsuariosDBTableView1dom_ativo: TcxGridDBColumn
          DataBinding.FieldName = 'dom_ativo'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 43
        end
      end
      object grdUsuariosLevel1: TcxGridLevel
        GridView = grdUsuariosDBTableView1
      end
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actStatus
      TabOrder = 6
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actExportar
      TabOrder = 7
      Visible = False
    end
    object speCodigo: TcxSpinEdit
      Left = 44
      Top = 44
      Hint = 'ID do usu'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.HotTrack = False
      TabOrder = 8
      Width = 59
    end
    object mskCPF: TcxMaskEdit
      Left = 137
      Top = 44
      Hint = 'CPF do usu'#225'rio'
      Properties.EditMask = '!000\.000\.000\-00;1; '
      Style.HotTrack = False
      TabOrder = 9
      Text = '   .   .   -  '
      Width = 100
    end
    object txeNome: TcxTextEdit
      Left = 279
      Top = 44
      Hint = 'Nome do usu'#225'rio'
      Style.HotTrack = False
      TabOrder = 10
      Width = 437
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpTabbed: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgpFooter: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgpPesquisa: TdxLayoutGroup
      Parent = lgpTabbed
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object lgpParameters: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpParameters
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Par'#226'metro:'
      Control = cboParametros
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpParameters
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgpParameters
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Valor:'
      Control = txeValor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 237
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgpGrade: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lgpButtons: TdxLayoutGroup
      Parent = lgpPesquisa
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgpButtons
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgpButtons
      CaptionOptions.Text = 'Editar'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lgpGrade
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grdUsuarios
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lgpButtons
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpTabbed
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lgpButtons
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'ID:'
      Control = speCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'CPF:'
      Control = mskCPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome:'
      Control = txeNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object mtbUsuartios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 544
    Top = 8
    object mtbUsuartioscod_usuario: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_usuario'
    end
    object mtbUsuartiosnom_usuario: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_usuario'
      Size = 80
    end
    object mtbUsuartiosdes_login: TStringField
      DisplayLabel = 'Login'
      FieldName = 'des_login'
      Size = 30
    end
    object mtbUsuartiosdes_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'des_email'
      Size = 150
    end
    object mtbUsuartiosdom_ativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'dom_ativo'
      Size = 1
    end
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = mtbUsuartios
    Left = 592
    Top = 8
  end
  object aclUsuarios: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 640
    Top = 8
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Novo usu'#225'rio'
      ImageIndex = 115
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar dados de usu'#225'rio'
      ImageIndex = 95
    end
    object actStatus: TAction
      Caption = 'Stat&us'
      Hint = 'Alterar status do usu'#225'rio'
      ImageIndex = 71
    end
    object actGravar: TAction
      Caption = 'actGravar'
      Hint = 'Gravar os dados'
      ImageIndex = 85
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 84
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      Hint = 'Sair do sistema'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actPesquisa: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
      OnExecute = actPesquisaExecute
    end
  end
end
