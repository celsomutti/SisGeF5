object view_CadastroUsuarios: Tview_CadastroUsuarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 539
  ClientWidth = 1072
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1072
    Height = 539
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Cadastro de Usu'#225'rios e Grupos de Usu'#225'rios'
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
    object mskCodigo: TcxMaskEdit
      Left = 99
      Top = 53
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = '0'
      Width = 65
    end
    object txtNome: TcxTextEdit
      Left = 99
      Top = 80
      Hint = 'Nome do entregador'
      ParentFont = False
      Properties.MaxLength = 80
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 949
    end
    object txtEMail: TcxTextEdit
      Left = 99
      Top = 134
      Hint = 'E-Mail do usu'#225'rio'
      ParentFont = False
      Properties.CharCase = ecLowerCase
      Properties.MaxLength = 150
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 949
    end
    object txtLogin: TcxTextEdit
      Left = 99
      Top = 107
      Hint = 'Login do usu'#225'rio'
      ParentFont = False
      Properties.CharCase = ecLowerCase
      Properties.MaxLength = 30
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 949
    end
    object edtGrupo: TcxButtonEdit
      Left = 99
      Top = 161
      Hint = 'C'#243'digo do grupo de usu'#225'rios'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisaGrupos
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = edtGrupoPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Text = '0'
      Width = 65
    end
    object txtDescricaoGrupo: TcxTextEdit
      Left = 170
      Top = 161
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 878
    end
    object chkSenhaExpira: TcxCheckBox
      Left = 198
      Top = 191
      Hint = 'Marque aqui se a senha do usu'#225'rio ir'#225' expirar'
      ParentFont = False
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      OnClick = chkSenhaExpiraClick
    end
    object chkAdministrador: TcxCheckBox
      Left = 99
      Top = 191
      Hint = 
        'Marque esta op'#231#227'o para que o usu'#225'rio seja o administrador do sis' +
        'tema'
      ParentFont = False
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
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
    object speDias: TcxSpinEdit
      Left = 300
      Top = 191
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 51
    end
    object chkAtivo: TcxCheckBox
      Left = 430
      Top = 191
      Hint = 'Marque para ativar o usu'#225'rio'
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      State = cbsGrayed
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
    end
    object cboNivel: TcxComboBox
      Left = 489
      Top = 191
      Hint = 'N'#237'vel do usu'#225'rio'
      ParentFont = False
      Properties.Items.Strings = (
        'Master'
        'User'
        'Guest'
        'Custom'
        'External')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Text = 'User'
      Width = 111
    end
    object grdAcessos: TcxGrid
      Left = 24
      Top = 236
      Width = 1024
      Height = 248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object tvAcessos: TcxGridDBTableView
        PopupMenu = ppmOpcoes
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.Hint = 'Primeiro registro'
        Navigator.Buttons.First.ImageIndex = 6
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Hint = 'Registro anterior'
        Navigator.Buttons.Prior.ImageIndex = 9
        Navigator.Buttons.Next.Hint = 'Pr'#243'ximo registro'
        Navigator.Buttons.Next.ImageIndex = 8
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Hint = #218'ltimo registro'
        Navigator.Buttons.Last.ImageIndex = 7
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
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object tvAcessosRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object tvAcessosCOD_SISTEMA: TcxGridDBColumn
          Caption = 'Sistema:'
          DataBinding.FieldName = 'COD_SISTEMA'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_SISTEMA'
          Properties.ListColumns = <
            item
              FieldName = 'DES_SISTEMA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSistema
          Properties.ReadOnly = True
          Visible = False
          GroupIndex = 0
        end
        object tvAcessosCOD_MODULO: TcxGridDBColumn
          Caption = 'M'#243'dulo:'
          DataBinding.FieldName = 'COD_MODULO'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_MODULO'
          Properties.ListColumns = <
            item
              FieldName = 'DES_MODULO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsModulos
          Properties.ReadOnly = True
          Visible = False
          GroupIndex = 1
        end
        object tvAcessosDOM_ACESSO: TcxGridDBColumn
          DataBinding.FieldName = 'DOM_ACESSO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.NullStyle = nssUnchecked
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E0000000000000000000000000000000000000000
            000000000002000000070000000C0000001000000012000000110000000E0000
            0008000000020000000000000000000000000000000000000000000000010000
            0004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A533AD20F2F
            218400010115000000050000000100000000000000000000000000000005050F
            0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE80FF2585
            60FF1A563DD405110C3D00000007000000010000000000000003040E0A312065
            48ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C996FF32CA
            99FF2BA479FF227050F805110C3D00000005000000000000000A1A573DD02EA5
            7CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB99FF31CB
            98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A66FF3BCD
            9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3A8FF36CF
            9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB38CFF39CD
            9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4A1FF43D5
            A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCAA4FF44D2
            A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B754FFF60DC
            B8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9B8FF46D3
            A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A28BFF46A6
            85FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9BEFF52DA
            B1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EAE7FF4F88
            6CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8B0FF62E0
            BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E76FFE6E1
            DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C7BFF95EC
            D6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A17EFF1F6D
            4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F46B578C6
            ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEAC9FF5ED6
            B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A0718247B
            5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2DDFFBAF4
            E7FF78CDB3FF2A906DEA0615102E00000002000000000000000000000001030A
            07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8C1FF4BB6
            92FF237F60CB05130E2700000003000000000000000000000000000000000000
            0001000000030A241B411B60489D258464CF2C9D77EE258867CF1F7156B00E32
            26560000000600000002000000000000000000000000}
          HeaderGlyphAlignmentHorz = taCenter
          Width = 25
          IsCaptionAssigned = True
        end
        object tvAcessosCOD_MENU: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'COD_MENU'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'COD_MENU'
          Properties.ListColumns = <
            item
              FieldName = 'DES_MENU'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsMenus
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 959
        end
        object tvAcessosCOD_USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'COD_USUARIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          VisibleForCustomization = False
        end
      end
      object lvAcessos: TcxGridLevel
        GridView = tvAcessos
      end
    end
    object grdPesquisa: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 200
      TabOrder = 24
      Visible = False
      OnEnter = grdPesquisaEnter
      OnExit = grdPesquisaExit
      object tvPesquisa: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = tvPesquisaCellDblClick
        DataController.DataSource = dsPesquisa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object lvPesquisa: TcxGridLevel
        GridView = tvPesquisa
      end
    end
    object txtParametro: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Par'#226'metro de pesquisa'
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      OnEnter = txtParametroEnter
      OnExit = txtParametroExit
      Width = 121
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisarUsuarios
      TabOrder = 23
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actRetornar
      TabOrder = 25
      Visible = False
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actSelecionarUsuario
      TabOrder = 26
      Visible = False
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 490
      Width = 107
      Height = 25
      Cursor = crHandPoint
      Action = actIncluir
      TabOrder = 13
    end
    object cxButton3: TcxButton
      Left = 137
      Top = 490
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Action = actIncluirGrupo
      TabOrder = 14
    end
    object cxButton4: TcxButton
      Left = 249
      Top = 490
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actLocalizar
      TabOrder = 15
    end
    object cxButton9: TcxButton
      Left = 330
      Top = 490
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actEditar
      TabOrder = 16
    end
    object cxButton5: TcxButton
      Left = 411
      Top = 490
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      Cancel = True
      TabOrder = 17
    end
    object cxButton6: TcxButton
      Left = 492
      Top = 490
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Action = actAlterarSenha
      TabOrder = 18
    end
    object cxButton8: TcxButton
      Left = 602
      Top = 490
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 19
    end
    object cxButton7: TcxButton
      Left = 683
      Top = 490
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Action = actConsistirGrupo
      TabOrder = 20
    end
    object cxButton1: TcxButton
      Left = 973
      Top = 490
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 21
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      ItemIndex = 7
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo:'
      Control = mskCodigo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avTop
      CaptionOptions.Text = 'Nome:'
      Control = txtNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 518
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'E-Mail:'
      Control = txtEMail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Login:'
      Control = txtLogin
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Grupo:'
      Control = edtGrupo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o do Grupo:'
      CaptionOptions.Visible = False
      Control = txtDescricaoGrupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Senha Expira:'
      Control = chkSenhaExpira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 5
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Administrador:'
      Control = chkAdministrador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Dias a Expirar:'
      Control = speDias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Usu'#225'rio Ativo:'
      Control = chkAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'N'#237'vel:'
      Control = cboNivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'Acessos'
      CaptionOptions.Layout = clTop
      Control = grdAcessos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pesquisa'
      CaptionOptions.Layout = clTop
      Control = grdPesquisa
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Par'#226'metro:'
      Control = txtParametro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 7
      AutoCreated = True
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  object aclUsuarios: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 624
    Top = 184
    object actIncluir: TAction
      Category = 'Cadastro'
      Caption = ' &Incluir Usu'#225'rio'
      Hint = 'Incluir o usu'#225'rio'
      ImageIndex = 3
      OnExecute = actIncluirExecute
    end
    object actIncluirGrupo: TAction
      Category = 'Cadastro'
      Caption = 'Incluir &Grupo'
      Hint = 'Incluir grupo de usu'#225'rios'
      ImageIndex = 15
      OnExecute = actIncluirGrupoExecute
    end
    object actLocalizar: TAction
      Category = 'Cadastro'
      Caption = '&Localizar'
      Hint = 'Localizar usu'#225'rios'
      ImageIndex = 12
      OnExecute = actLocalizarExecute
    end
    object actCancelar: TAction
      Category = 'Cadastro'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actAlterarSenha: TAction
      Category = 'Cadastro'
      Caption = '&Alterar Senha'
      Hint = 'Alterar a senha do usu'#225'rio'
      ImageIndex = 0
      OnExecute = actAlterarSenhaExecute
    end
    object actConsistirGrupo: TAction
      Category = 'Cadastro'
      Caption = 'Consistir Grupo'
      Hint = 'Consistir acessos pelo grupo'
      ImageIndex = 16
      OnExecute = actConsistirGrupoExecute
    end
    object actGravar: TAction
      Category = 'Cadastro'
      Caption = 'Gravar'
      Hint = 'Gravar dados'
      ImageIndex = 13
      OnExecute = actGravarExecute
    end
    object actFechar: TAction
      Category = 'Cadastro'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actMarcarTodos: TAction
      Category = 'Cadastro'
      Caption = 'Marcar Todos'
      Hint = 'marcar todos os menus'
      ImageIndex = 1
      OnExecute = actMarcarTodosExecute
    end
    object actDesmarcarTodos: TAction
      Category = 'Cadastro'
      Caption = 'Desmarcar Todos'
      Hint = 'Desmarcar todos os menus'
      ImageIndex = 9
      OnExecute = actDesmarcarTodosExecute
    end
    object actEditar: TAction
      Category = 'Cadastro'
      Caption = '&Editar'
      Hint = 'Editar dados'
      ImageIndex = 10
      OnExecute = actEditarExecute
    end
    object actPesquisaGrupos: TAction
      Category = 'Cadastro'
      Caption = 'Pesquisa Grupos'
      Hint = 'Pesquisar grupos'
      ImageIndex = 14
      OnExecute = actPesquisaGruposExecute
    end
    object actPesquisarUsuarios: TAction
      Category = 'Cadastro'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar Usu'#225'rios'
      ImageIndex = 14
      OnExecute = actPesquisarUsuariosExecute
    end
    object actRetornar: TAction
      Category = 'Cadastro'
      Caption = 'Retornar'
      Hint = 'Retornar '#224' tela de cadastro'
      ImageIndex = 18
      OnExecute = actRetornarExecute
    end
    object actSelecionarUsuario: TAction
      Category = 'Cadastro'
      Caption = 'Selecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 1
      OnExecute = actSelecionarUsuarioExecute
    end
  end
  object mtbSistemas: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 368
    Top = 8
  end
  object mtbModulos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 432
    Top = 8
  end
  object mtbMenus: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 496
    Top = 8
  end
  object mtbAcessos: TdxMemData
    Indexes = <
      item
        FieldName = 'COD_MENU'
        SortOptions = []
      end>
    SortOptions = []
    Left = 560
    Top = 8
    object mtbAcessosCOD_SISTEMA: TIntegerField
      FieldName = 'COD_SISTEMA'
    end
    object mtbAcessosCOD_MODULO: TIntegerField
      FieldName = 'COD_MODULO'
    end
    object mtbAcessosCOD_MENU: TIntegerField
      FieldName = 'COD_MENU'
    end
    object mtbAcessosCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
    end
    object mtbAcessosDOM_ACESSO: TBooleanField
      FieldName = 'DOM_ACESSO'
    end
  end
  object dsSistema: TDataSource
    AutoEdit = False
    DataSet = mtbSistemas
    Left = 680
    Top = 8
  end
  object dsModulos: TDataSource
    AutoEdit = False
    DataSet = mtbModulos
    Left = 736
    Top = 8
  end
  object dsMenus: TDataSource
    AutoEdit = False
    DataSet = mtbMenus
    Left = 792
    Top = 8
  end
  object dsAcessos: TDataSource
    DataSet = mtbAcessos
    Left = 848
    Top = 8
  end
  object ppmOpcoes: TPopupMenu
    Images = Data_Sisgef.iml_16_16
    Left = 688
    Top = 184
    object MarcarTodos1: TMenuItem
      Action = actMarcarTodos
    end
    object Fechar1: TMenuItem
      Action = actDesmarcarTodos
    end
  end
  object mtbPesquisa: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 616
    Top = 8
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = mtbPesquisa
    Left = 912
    Top = 8
  end
end
