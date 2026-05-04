object viewCadastroUsuarios: TviewCadastroUsuarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 453
  ClientWidth = 886
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 886
    Height = 453
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 801
      Top = 418
      Width = 75
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 20
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Action = actNovo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 105
      Top = 24
      Width = 75
      Height = 25
      Action = actEditar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 198
      Top = 24
      Width = 75
      Height = 25
      Action = actExportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object btePesquisa: TcxButtonEdit
      Left = 291
      Top = 24
      Hint = 'Procurar por ...'
      Properties.Buttons = <
        item
          Action = actPesquisar
          Default = True
          Kind = bkGlyph
        end
        item
          Action = actLimparPesquisa
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 3
      TextHint = 'Procurar por ...'
      Width = 571
    end
    object gridUsuarios: TcxGrid
      Left = 24
      Top = 67
      Width = 838
      Height = 331
      TabOrder = 4
      object gridUsuariosDBTableView1: TcxGridDBTableView
        OnDblClick = gridUsuariosDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
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
        DataController.DataSource = dsUsuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridUsuariosDBTableView1COD_USUARIO: TcxGridDBColumn
          Caption = '#ID'
          DataBinding.FieldName = 'COD_USUARIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object gridUsuariosDBTableView1NUM_CPF_CNPJ: TcxGridDBColumn
          DataBinding.FieldName = 'CPF'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object gridUsuariosDBTableView1NOM_USUARIO: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'NOM_USUARIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 181
        end
        object gridUsuariosDBTableView1DES_LOGIN: TcxGridDBColumn
          Caption = 'Login'
          DataBinding.FieldName = 'DES_LOGIN'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 109
        end
        object gridUsuariosDBTableView1DES_EMAIL: TcxGridDBColumn
          Caption = 'E-Mail'
          DataBinding.FieldName = 'DES_EMAIL'
          HeaderAlignmentHorz = taCenter
          Width = 167
        end
        object gridUsuariosDBTableView1COD_GRUPO: TcxGridDBColumn
          DataBinding.FieldName = 'COD_GRUPO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1NOM_GRUPO: TcxGridDBColumn
          Caption = 'Grupo'
          DataBinding.FieldName = 'NOM_GRUPO'
          HeaderAlignmentHorz = taCenter
          Width = 136
        end
        object gridUsuariosDBTableView1DOM_PRIVILEGIO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_PRIVILEGIO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1DOM_EXPIRA: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_EXPIRA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1QTD_DIAS_EXPIRA: TcxGridDBColumn
          DataBinding.FieldName = 'QTD_DIAS_EXPIRA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1DOM_PRIMEIRO_ACESSO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_PRIMEIRO_ACESSO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1DOM_ATIVO: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'DOM_ATIVO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object gridUsuariosDBTableView1DAT_SENHA: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_SENHA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1COD_NIVEL: TcxGridDBColumn
          DataBinding.FieldName = 'COD_NIVEL'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1NOM_EXECUTOR: TcxGridDBColumn
          DataBinding.FieldName = 'NOM_EXECUTOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridUsuariosDBTableView1DAT_MANUTENCAO: TcxGridDBColumn
          DataBinding.FieldName = 'DAT_MANUTENCAO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
      end
      object gridUsuariosLevel1: TcxGridLevel
        GridView = gridUsuariosDBTableView1
      end
    end
    object dbID: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do usu'#225'rio'
      TabStop = False
      DataBinding.DataField = 'COD_USUARIO'
      DataBinding.DataSource = dsUsuarios
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 5
      Visible = False
      Width = 77
    end
    object dbNome: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do usu'#225'rio'
      DataBinding.DataField = 'NOM_USUARIO'
      DataBinding.DataSource = dsUsuarios
      Properties.CharCase = ecUpperCase
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 539
    end
    object dbCPF: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF do usu'#225'rio'
      DataBinding.DataField = 'NUM_CPF_CNPJ'
      DataBinding.DataSource = dsUsuarios
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!000\.000\.000\-00;0; '
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 138
    end
    object dbEmail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'E-Mail do usu'#225'rio'
      DataBinding.DataField = 'DES_EMAIL'
      DataBinding.DataSource = dsUsuarios
      Properties.CharCase = ecLowerCase
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 352
    end
    object dbLogin: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Login do usu'#225'rio'
      DataBinding.DataField = 'DES_LOGIN'
      DataBinding.DataSource = dsUsuarios
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 352
    end
    object dbAdministrador: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Selecione se o usu'#225'rio '#233' Administrador odo sistema'
      Caption = 'Administrador'
      DataBinding.DataField = 'DOM_PRIVILEGIO'
      DataBinding.DataSource = dsUsuarios
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = dbAdministradorPropertiesChange
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
    end
    object dbPrimeiroAcesso: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Altera a senha no primeiro acesso'
      Caption = 'Alterar senha no Primeiro Acesso'
      DataBinding.DataField = 'DOM_PRIMEIRO_ACESSO'
      DataBinding.DataSource = dsUsuarios
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
    end
    object dbGrupo: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Grupo do usu'#225'rio'
      DataBinding.DataField = 'COD_GRUPO'
      DataBinding.DataSource = dsUsuarios
      Properties.KeyFieldNames = 'COD_USUARIO'
      Properties.ListColumns = <
        item
          FieldName = 'NOM_USUARIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGrupos
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 365
    end
    object dbSenhaExpira: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Caption = 'Senha expira'
      DataBinding.DataField = 'DOM_EXPIRA'
      DataBinding.DataSource = dsUsuarios
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
    end
    object dbDiasExpira: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      Hint = 'Intervalo de dias para expirar a senha'
      DataBinding.DataField = 'QTD_DIAS_EXPIRA'
      DataBinding.DataSource = dsUsuarios
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 57
    end
    object dbStatus: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Status do usu'#225'rio'
      Caption = 'INATIVO'
      DataBinding.DataField = 'DOM_ATIVO'
      DataBinding.DataSource = dsUsuarios
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = dbStatusPropertiesChange
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
    end
    object cboNivel: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'N'#237'vel do usu'#225'rio'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Master'
        'User'
        'Guest'
        'Custom'
        'External')
      Style.HotTrack = False
      TabOrder = 14
      Text = 'User'
      Visible = False
      Width = 365
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 93
      Height = 25
      Action = actRetornar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 17
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 86
      Height = 25
      Action = actGravar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 18
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 134
      Height = 25
      Action = actResetarSenha
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 19
      Visible = False
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpContainer: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object lgpFooter: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgpSearch: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgpMenu: TdxLayoutGroup
      Parent = lgpSearch
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpMenu
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpMenu
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgpMenu
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgpSearch
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lgpMenu
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = lgpMenu
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgpMenu
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Procurar por'
      CaptionOptions.Visible = False
      Control = btePesquisa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lgpGrid: TdxLayoutGroup
      Parent = lgpSearch
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgpGrid
      AlignVert = avClient
      CaptionOptions.Text = 'Grid'
      CaptionOptions.Visible = False
      Control = gridUsuarios
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'ID'
      Control = dbID
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      Control = dbNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'CPF'
      Control = dbCPF
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Autentica'#231#227'o'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 363
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'E-Mail'
      Control = dbEmail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Login'
      Control = dbLogin
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Administrador'
      CaptionOptions.Visible = False
      Control = dbAdministrador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbPrimeiroAcesso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Status'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 375
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Grupo'
      Control = dbGrupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbSenhaExpira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Dias a expirar'
      Control = dbDiasExpira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'N'#237'vel'
      Control = cboNivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lgpCadastro
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
  end
  object aclMain: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 576
    Top = 8
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Novo usu'#225'rio'
      ImageIndex = 115
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar usu'#225'rio'
      ImageIndex = 95
      OnExecute = actEditarExecute
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da pesquisa'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actRetornar: TAction
      Caption = 'Re&tornar'
      Hint = 'Retornar '#224' pesquisa (cancela a opera'#231#227'o atual)'
      ImageIndex = 108
      OnExecute = actRetornarExecute
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dadados'
      ImageIndex = 85
      OnExecute = actGravarExecute
    end
    object actSair: TAction
      Caption = '&Sair'
      Hint = 'Sair do cadastro'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actPesquisar: TAction
      Caption = 'Prosurar por ...'
      Hint = 'Inicia e pesquisa'
      ImageIndex = 86
      OnExecute = actPesquisarExecute
    end
    object actLimparPesquisa: TAction
      Caption = 'Limpar'
      Hint = 'Limpar campo de pesquisa'
      ImageIndex = 120
      OnExecute = actLimparPesquisaExecute
    end
    object actResetarSenha: TAction
      Caption = '&Reiniciar Senha'
      Hint = 'Resetar a senha do usu'#225'rio'
      ImageIndex = 111
      OnExecute = actResetarSenhaExecute
    end
  end
  object mtbUsuarios: TFDMemTable
    Active = True
    AfterInsert = mtbUsuariosAfterInsert
    AfterEdit = mtbUsuariosAfterEdit
    AfterCancel = mtbUsuariosAfterCancel
    FieldDefs = <
      item
        Name = 'COD_USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOM_USUARIO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DES_LOGIN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DES_EMAIL'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'COD_GRUPO'
        DataType = ftInteger
      end
      item
        Name = 'NOM_GRUPO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DOM_PRIVILEGIO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOM_EXPIRA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTD_DIAS_EXPIRA'
        DataType = ftInteger
      end
      item
        Name = 'DOM_PRIMEIRO_ACESSO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DOM_ATIVO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DAT_SENHA'
        DataType = ftDate
      end
      item
        Name = 'COD_NIVEL'
        DataType = ftInteger
      end
      item
        Name = 'NOM_EXECUTOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUM_CPF_CNPJ'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DAT_MANUTENCAO'
        DataType = ftTimeStamp
      end>
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
    Left = 384
    Top = 8
    Content = {
      414442530F00A44E31080000FF00010001FF02FF030400160000006D00740062
      005500730075006100720069006F00730005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B04001600000043004F
      0044005F005500530055004100520049004F0005001600000043004F0044005F
      005500530055004100520049004F000C00010000000E000D000F000110000111
      000112000113001600000043004F0044005F005500530055004100520049004F
      00FEFF0B0400160000004E004F004D005F005500530055004100520049004F00
      0500160000004E004F004D005F005500530055004100520049004F000C000200
      00000E0014001500500000000F00011600011000011700011100011200011300
      160000004E004F004D005F005500530055004100520049004F00180050000000
      FEFF0B0400120000004400450053005F004C004F00470049004E000500120000
      004400450053005F004C004F00470049004E000C00030000000E00140015001E
      0000000F00011600011000011700011100011200011300120000004400450053
      005F004C004F00470049004E0018001E000000FEFF0B04001200000044004500
      53005F0045004D00410049004C000500120000004400450053005F0045004D00
      410049004C000C00040000000E0014001500960000000F000116000110000117
      00011100011200011300120000004400450053005F0045004D00410049004C00
      180096000000FEFF0B04001200000043004F0044005F0047005200550050004F
      0005001200000043004F0044005F0047005200550050004F000C00050000000E
      000D000F000116000110000117000111000112000113001200000043004F0044
      005F0047005200550050004F00FEFF0B0400120000004E004F004D005F004700
      5200550050004F000500120000004E004F004D005F0047005200550050004F00
      0C00060000000E0014001500500000000F000116000110000117000111000112
      00011300120000004E004F004D005F0047005200550050004F00180050000000
      FEFF0B04001C00000044004F004D005F00500052004900560049004C00450047
      0049004F0005001C00000044004F004D005F00500052004900560049004C0045
      00470049004F000C00070000000E0014001500010000000F0001160001100001
      17000111000112000113001C00000044004F004D005F00500052004900560049
      004C004500470049004F00180001000000FEFF0B04001400000044004F004D00
      5F0045005800500049005200410005001400000044004F004D005F0045005800
      50004900520041000C00080000000E0014001500010000000F00011600011000
      0117000111000112000113001400000044004F004D005F004500580050004900
      52004100180001000000FEFF0B04001E0000005100540044005F004400490041
      0053005F0045005800500049005200410005001E0000005100540044005F0044
      004900410053005F004500580050004900520041000C00090000000E000D000F
      000116000110000117000111000112000113001E0000005100540044005F0044
      004900410053005F00450058005000490052004100FEFF0B0400260000004400
      4F004D005F005000520049004D004500490052004F005F004100430045005300
      53004F0005002600000044004F004D005F005000520049004D00450049005200
      4F005F00410043004500530053004F000C000A0000000E001400150001000000
      0F000116000110000117000111000112000113002600000044004F004D005F00
      5000520049004D004500490052004F005F00410043004500530053004F001800
      01000000FEFF0B04001200000044004F004D005F0041005400490056004F0005
      001200000044004F004D005F0041005400490056004F000C000B0000000E0014
      001500010000000F000116000110000117000111000112000113001200000044
      004F004D005F0041005400490056004F00180001000000FEFF0B040012000000
      4400410054005F00530045004E00480041000500120000004400410054005F00
      530045004E00480041000C000C0000000E0019000F0001160001100001170001
      1100011200011300120000004400410054005F00530045004E0048004100FEFF
      0B04001200000043004F0044005F004E004900560045004C0005001200000043
      004F0044005F004E004900560045004C000C000D0000000E000D000F00011600
      0110000117000111000112000113001200000043004F0044005F004E00490056
      0045004C00FEFF0B0400180000004E004F004D005F0045005800450043005500
      54004F0052000500180000004E004F004D005F00450058004500430055005400
      4F0052000C000E0000000E00140015001E0000000F0001160001100001170001
      1100011200011300180000004E004F004D005F00450058004500430055005400
      4F00520018001E000000FEFF0B0400180000004E0055004D005F004300500046
      005F0043004E0050004A000500180000004E0055004D005F004300500046005F
      0043004E0050004A000C000F0000000E0014001500460000000F000116000110
      00011700011100011200011300180000004E0055004D005F004300500046005F
      0043004E0050004A00180046000000FEFF0B04001C0000004400410054005F00
      4D0041004E005500540045004E00430041004F0005001C000000440041005400
      5F004D0041004E005500540045004E00430041004F000C00100000000E001A00
      0F000116000110000117000111000112000113001C0000004400410054005F00
      4D0041004E005500540045004E00430041004F00FEFEFF1BFEFF1CFEFF1DFEFE
      FEFF1EFEFF1F200001000000FF21FEFEFE0E004D0061006E0061006700650072
      001E005500700064006100740065007300520065006700690073007400720079
      0012005400610062006C0065004C006900730074000A005400610062006C0065
      0008004E0061006D006500140053006F0075007200630065004E0061006D0065
      000A0054006100620049004400240045006E0066006F0072006300650043006F
      006E00730074007200610069006E00740073001E004D0069006E0069006D0075
      006D0043006100700061006300690074007900180043006800650063006B004E
      006F0074004E0075006C006C00140043006F006C0075006D006E004C00690073
      0074000C0043006F006C0075006D006E00100053006F00750072006300650049
      0044000E006400740049006E0074003300320010004400610074006100540079
      00700065001400530065006100720063006800610062006C0065000800420061
      007300650012004F0049006E0055007000640061007400650010004F0049006E
      00570068006500720065001A004F0072006900670069006E0043006F006C004E
      0061006D00650018006400740041006E007300690053007400720069006E0067
      000800530069007A006500120041006C006C006F0077004E0075006C006C0014
      004F0041006C006C006F0077004E0075006C006C00140053006F007500720063
      006500530069007A0065000C006400740044006100740065001E006400740044
      00610074006500540069006D0065005300740061006D0070001C0043006F006E
      00730074007200610069006E0074004C00690073007400100056006900650077
      004C006900730074000E0052006F0077004C006900730074001800520065006C
      006100740069006F006E004C006900730074001C005500700064006100740065
      0073004A006F00750072006E0061006C001200530061007600650050006F0069
      006E0074000E004300680061006E00670065007300}
    object mtbUsuariosCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Required = True
    end
    object mtbUsuariosNOM_USUARIO: TStringField
      FieldName = 'NOM_USUARIO'
      Size = 80
    end
    object mtbUsuariosDES_LOGIN: TStringField
      FieldName = 'DES_LOGIN'
      Size = 30
    end
    object mtbUsuariosDES_EMAIL: TStringField
      FieldName = 'DES_EMAIL'
      Size = 150
    end
    object mtbUsuariosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
    end
    object mtbUsuariosNOM_GRUPO: TStringField
      FieldName = 'NOM_GRUPO'
      Size = 80
    end
    object mtbUsuariosDOM_PRIVILEGIO: TStringField
      FieldName = 'DOM_PRIVILEGIO'
      Size = 1
    end
    object mtbUsuariosDOM_EXPIRA: TStringField
      FieldName = 'DOM_EXPIRA'
      Size = 1
    end
    object mtbUsuariosQTD_DIAS_EXPIRA: TIntegerField
      FieldName = 'QTD_DIAS_EXPIRA'
    end
    object mtbUsuariosDOM_PRIMEIRO_ACESSO: TStringField
      FieldName = 'DOM_PRIMEIRO_ACESSO'
      Size = 1
    end
    object mtbUsuariosDOM_ATIVO: TStringField
      FieldName = 'DOM_ATIVO'
      Size = 1
    end
    object mtbUsuariosDAT_SENHA: TDateField
      FieldName = 'DAT_SENHA'
    end
    object mtbUsuariosCOD_NIVEL: TIntegerField
      FieldName = 'COD_NIVEL'
    end
    object mtbUsuariosNOM_EXECUTOR: TStringField
      FieldName = 'NOM_EXECUTOR'
      Size = 30
    end
    object mtbUsuariosNUM_CPF_CNPJ: TStringField
      FieldName = 'NUM_CPF_CNPJ'
      Size = 70
    end
    object mtbUsuariosDAT_MANUTENCAO: TSQLTimeStampField
      FieldName = 'DAT_MANUTENCAO'
    end
  end
  object dsUsuarios: TDataSource
    DataSet = mtbUsuarios
    Left = 424
    Top = 8
  end
  object mtbGrupos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'COD_USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOM_USUARIO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'COD_GRUPO'
        DataType = ftInteger
      end>
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
    Left = 472
    Top = 8
    Content = {
      414442530F00A44EC0010000FF00010001FF02FF030400120000006D00740062
      0047007200750070006F00730005000A0000005400610062006C006500060000
      000000070000080032000000090000FF0AFF0B04001600000043004F0044005F
      005500530055004100520049004F0005001600000043004F0044005F00550053
      0055004100520049004F000C00010000000E000D000F00011000011100011200
      0113001600000043004F0044005F005500530055004100520049004F00FEFF0B
      0400160000004E004F004D005F005500530055004100520049004F0005001600
      00004E004F004D005F005500530055004100520049004F000C00020000000E00
      14001500500000000F0001160001100001170001110001120001130016000000
      4E004F004D005F005500530055004100520049004F00180050000000FEFF0B04
      001200000043004F0044005F0047005200550050004F0005001200000043004F
      0044005F0047005200550050004F000C00030000000E000D000F000116000110
      000117000111000112000113001200000043004F0044005F0047005200550050
      004F00FEFEFF19FEFF1AFEFF1BFEFEFEFF1CFEFF1D1E0001000000FF1FFEFEFE
      0E004D0061006E0061006700650072001E005500700064006100740065007300
      5200650067006900730074007200790012005400610062006C0065004C006900
      730074000A005400610062006C00650008004E0061006D006500140053006F00
      75007200630065004E0061006D0065000A005400610062004900440024004500
      6E0066006F0072006300650043006F006E00730074007200610069006E007400
      73001E004D0069006E0069006D0075006D004300610070006100630069007400
      7900180043006800650063006B004E006F0074004E0075006C006C0014004300
      6F006C0075006D006E004C006900730074000C0043006F006C0075006D006E00
      100053006F007500720063006500490044000E006400740049006E0074003300
      3200100044006100740061005400790070006500140053006500610072006300
      6800610062006C0065000800420061007300650012004F0049006E0055007000
      640061007400650010004F0049006E00570068006500720065001A004F007200
      6900670069006E0043006F006C004E0061006D00650018006400740041006E00
      7300690053007400720069006E0067000800530069007A006500120041006C00
      6C006F0077004E0075006C006C0014004F0041006C006C006F0077004E007500
      6C006C00140053006F007500720063006500530069007A0065001C0043006F00
      6E00730074007200610069006E0074004C006900730074001000560069006500
      77004C006900730074000E0052006F0077004C00690073007400180052006500
      6C006100740069006F006E004C006900730074001C0055007000640061007400
      650073004A006F00750072006E0061006C001200530061007600650050006F00
      69006E0074000E004300680061006E00670065007300}
    object IntegerField1: TIntegerField
      FieldName = 'COD_USUARIO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOM_USUARIO'
      Size = 80
    end
    object IntegerField2: TIntegerField
      FieldName = 'COD_GRUPO'
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = mtbGrupos
    Left = 512
    Top = 8
  end
end
