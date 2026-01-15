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
    object cboParametros: TcxComboBox
      Left = 97
      Top = 60
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
      Width = 82
    end
    object cxButton1: TcxButton
      Left = 618
      Top = 58
      Width = 84
      Height = 25
      Action = actPesquisa
      Default = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 655
      Top = 435
      Width = 75
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 32
    end
    object txeValor: TcxTextEdit
      Left = 218
      Top = 60
      Hint = 'Informe o que pesquisar'
      Style.HotTrack = False
      TabOrder = 1
      Width = 276
    end
    object cxButton3: TcxButton
      Left = 38
      Top = 376
      Width = 75
      Height = 25
      Action = actNovo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
    end
    object cxButton4: TcxButton
      Left = 119
      Top = 376
      Width = 75
      Height = 25
      Action = actEditar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
    end
    object grdUsuarios: TcxGrid
      Left = 38
      Top = 89
      Width = 664
      Height = 281
      TabOrder = 4
      object grdUsuariosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.First.Visible = True
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
        OnCellDblClick = grdUsuariosDBTableView1CellDblClick
        DataController.DataSource = dsUsuarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
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
    object cxButton6: TcxButton
      Left = 200
      Top = 376
      Width = 75
      Height = 25
      Action = actExportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
    end
    object speCodigo: TcxSpinEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do usu'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 59
    end
    object mskCPF: TcxMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF do usu'#225'rio'
      Properties.EditMask = '!000\.000\.000\-00;1; '
      Style.HotTrack = False
      TabOrder = 9
      Text = '   .   .   -  '
      Visible = False
      Width = 100
    end
    object txeNome: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do usu'#225'rio'
      Properties.MaxLength = 80
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 385
    end
    object txeLogin: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Login do usu'#225'rio'
      Properties.CharCase = ecLowerCase
      Properties.MaxLength = 30
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 191
    end
    object cbxNivel: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'N'#237'vel do usu'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'Master'
        'User'
        'Guest'
        'Custom'
        'External')
      Style.HotTrack = False
      TabOrder = 17
      Text = 'USER'
      Visible = False
      Width = 177
    end
    object txeEMail: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'E-mail do usu'#225'rio'
      Properties.MaxLength = 150
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 312
    end
    object ckbAdministrador: TcxCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Marque para atribuir permiss'#245'es de administraddor'
      Properties.Alignment = taRightJustify
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = ckbAdministradorPropertiesChange
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 16
      Transparent = True
      Visible = False
    end
    object ckbSenhaExpira: TcxCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Marque para indicar que a senha expira'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
      Visible = False
    end
    object speDiasExpira: TcxSpinEdit
      Left = 10000
      Top = 10000
      Hint = 'Quantidade de dias a expirar a senha'
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxValue = 365.000000000000000000
      Properties.MinValue = 7.000000000000000000
      Style.HotTrack = False
      TabOrder = 19
      Value = 7
      Visible = False
      Width = 51
    end
    object ckbPrimeiroAcesso: TcxCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Marque para o usu'#225'rio alterar a senha no primeiro acesso'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      State = cbsGrayed
      Style.HotTrack = False
      TabOrder = 20
      Transparent = True
      Visible = False
    end
    object lcbGrupoUsuario: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'cod_usuario'
      Properties.ListColumns = <
        item
          FieldName = 'nom_usuario'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGrupos
      Properties.OnChange = lcbGrupoUsuarioPropertiesChange
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 328
    end
    object ckbStatus: TcxCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Status do usu'#225'rio'
      Caption = 'INATIVO'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Properties.OnChange = ckbStatusPropertiesChange
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actCancelar
      Cancel = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 22
      Visible = False
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actGravar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 23
      Visible = False
    end
    object lcbGrupos: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Selecione o grupo'
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'cod_usuario'
      Properties.ListColumns = <
        item
          FieldName = 'nom_usuario'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsGrupos
      Properties.OnChange = lcbGruposPropertiesChange
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Width = 492
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actNovoGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 26
      Visible = False
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actListarAcessos
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 25
      Visible = False
    end
    object gridAcessos: TcxGrid
      Left = 10000
      Top = 10000
      Width = 692
      Height = 278
      TabOrder = 29
      Visible = False
      object gridAcessosDBTableView1: TcxGridDBTableView
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
        object gridAcessosDBTableView1dom_acesso: TcxGridDBColumn
          DataBinding.FieldName = 'dom_acesso'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taRightJustify
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 43
        end
        object gridAcessosDBTableView1cod_sistema: TcxGridDBColumn
          DataBinding.FieldName = 'cod_sistema'
          Visible = False
          VisibleForCustomization = False
        end
        object gridAcessosDBTableView1des_sistema: TcxGridDBColumn
          DataBinding.FieldName = 'des_sistema'
          Visible = False
          GroupIndex = 0
        end
        object gridAcessosDBTableView1cod_modulo: TcxGridDBColumn
          DataBinding.FieldName = 'cod_modulo'
          Visible = False
          VisibleForCustomization = False
        end
        object gridAcessosDBTableView1des_modulo: TcxGridDBColumn
          DataBinding.FieldName = 'des_modulo'
          Visible = False
          GroupIndex = 1
        end
        object gridAcessosDBTableView1cod_menu: TcxGridDBColumn
          DataBinding.FieldName = 'cod_menu'
          Visible = False
          VisibleForCustomization = False
        end
        object gridAcessosDBTableView1des_menu: TcxGridDBColumn
          DataBinding.FieldName = 'des_menu'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 593
        end
      end
      object gridAcessosLevel1: TcxGridLevel
        GridView = gridAcessosDBTableView1
      end
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 85
      Height = 25
      Action = actCancelarGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 30
      Visible = False
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actGravarGrupo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 31
      Visible = False
    end
    object cxButton13: TcxButton
      Left = 10000
      Top = 10000
      Width = 117
      Height = 25
      Action = actSelecionarTudo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 27
      Visible = False
    end
    object cxButton14: TcxButton
      Left = 10000
      Top = 10000
      Width = 114
      Height = 25
      Action = actLimparRegistros
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 28
      Visible = False
    end
    object cboStatus: TcxComboBox
      Left = 536
      Top = 60
      Hint = 'Selecione o status a ser listado'
      Properties.Items.Strings = (
        'TODOS'
        'ATIVOS'
        'INATIVOS')
      Style.HotTrack = False
      TabOrder = 2
      Text = 'ATIVOS'
      Width = 76
    end
    object bteSenha: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'Senha do usu'#225'rio'
      Properties.Buttons = <
        item
          Action = actMostrarSenha
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 186
    end
    object bteConfirmarSenha: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'Confirma'#231#227'o da senha do usu'#225'rio'
      Properties.Buttons = <
        item
          Action = actMostrarConfirmacao
          Default = True
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 191
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemControlAreaAlignment = catNone
      ShowBorder = False
      Index = -1
    end
    object lgpTabbed: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Usu'#225'rios'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object lgpFooter: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
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
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpParameters: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
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
      Index = 3
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
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lgpButtons: TdxLayoutGroup
      Parent = lgpPesquisa
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemIndex = 2
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
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpTabbed
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemIndex = 2
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
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpCadastro
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
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
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lgpLogin: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Login'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 3
      Index = 0
    end
    object lgpConfig: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Configura'#231#227'o'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = lgpLogin
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Login:'
      Control = txeLogin
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = lgpConfig
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'N'#237'vel:'
      Control = cbxNivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 177
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = lgpLogin
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail:'
      Control = txeEMail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 312
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = lgpConfig
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Administrador:'
      Control = ckbAdministrador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = lgpConfig
      CaptionOptions.Text = 'Senha Expira:'
      Control = ckbSenhaExpira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = lgpConfig
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Dias para Expirar:'
      Control = speDiasExpira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = lgpConfig
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Alterar senha no primeiro acesso:'
      Control = ckbPrimeiroAcesso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = lgpLogin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Grupo:'
      Control = lcbGrupoUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = lgpConfig
      CaptionOptions.Text = 'Status:'
      Control = ckbStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgpGrupos: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Grupos'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgpGrupos
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Grupo:'
      Control = lcbGrupos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup4
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
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lgpGrupos
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridAcessos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lgpGrupos
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton13'
      CaptionOptions.Visible = False
      Control = cxButton13
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton14'
      CaptionOptions.Visible = False
      Control = cxButton14
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = lgpParameters
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Status'
      Control = cboStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = lgpLogin
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Senha:'
      Control = bteSenha
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 186
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = lgpLogin
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Confirmar Senha:'
      Control = bteConfirmarSenha
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
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
      OnExecute = actNovoExecute
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar dados de usu'#225'rio'
      ImageIndex = 95
      OnExecute = actEditarExecute
    end
    object actGRupos: TAction
      Caption = '&Grupos'
      Hint = 'Cadastro de grupos'
      ImageIndex = 60
      OnExecute = actGRuposExecute
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 85
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 84
      OnExecute = actCancelarExecute
    end
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
    object actPesquisa: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
      OnExecute = actPesquisaExecute
    end
    object actNovoGrupo: TAction
      Caption = 'No&vo'
      Hint = 'Criar novo grupo'
      ImageIndex = 115
      OnExecute = actNovoGrupoExecute
    end
    object actGravarGrupo: TAction
      Caption = 'Grava&r'
      Hint = 'Gravar dados do grupo'
      ImageIndex = 85
      OnExecute = actGravarGrupoExecute
    end
    object actListarAcessos: TAction
      Caption = 'L&istar'
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
    object actMostrarSenha: TAction
      Caption = 'Mostrar'
      Hint = 'Mostar senha'
      ImageIndex = 88
      OnExecute = actMostrarSenhaExecute
    end
    object actMostrarConfirmacao: TAction
      Caption = 'Mostrar'
      Hint = 'Mostrar confirma'#231#227'o'
      ImageIndex = 88
      OnExecute = actMostrarConfirmacaoExecute
    end
  end
  object mtbGrupos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 8
    object mtbGruposcod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
    object mtbGruposnom_usuario: TStringField
      FieldName = 'nom_usuario'
      Size = 80
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = mtbGrupos
    Left = 472
    Top = 8
  end
  object mtbAcessos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 312
    Top = 8
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
  object dsAcessos: TDataSource
    DataSet = mtbAcessos
    Left = 368
    Top = 8
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
    Left = 240
    Top = 8
    object mtbAcessosUsuariocod_menu: TIntegerField
      FieldName = 'cod_menu'
    end
    object mtbAcessosUsuariocod_usuario: TIntegerField
      FieldName = 'cod_usuario'
    end
  end
end
