object view_CadastroEmpresas: Tview_CadastroEmpresas
  Tag = 1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 444
  ClientWidth = 793
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlHeader: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 793
    Height = 57
    Align = alTop
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object labelTitle: TcxLabel
      Left = 48
      Top = 11
      AutoSize = False
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 32
      Width = 653
      AnchorY = 27
    end
    object buttonFechar: TcxButton
      Left = 707
      Top = 14
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object layoutControlHeaderGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object layoutLabelTitle: TdxLayoutItem
      Parent = layoutControlHeaderGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.ImageIndex = 0
      Control = labelTitle
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 609
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutButtonFechar: TdxLayoutItem
      Parent = layoutControlHeaderGroup_Root
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object layoutControlBody: TdxLayoutControl
    Left = 0
    Top = 57
    Width = 793
    Height = 387
    Align = alClient
    TabOrder = 1
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object layoutControlCadastro: TdxLayoutControl
      Left = 22
      Top = 22
      Width = 749
      Height = 343
      TabOrder = 1
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      object imageComboBoxPessoa: TcxImageComboBox
        Left = 79
        Top = 30
        EditValue = 2
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.Items = <
          item
            Description = 'Indefinido'
            ImageIndex = 54
            Value = 0
          end
          item
            Description = 'F'#237'sica'
            ImageIndex = 56
            Value = 1
          end
          item
            Description = 'Jur'#237'dica'
            ImageIndex = 55
            Value = 2
          end>
        Style.HotTrack = False
        TabOrder = 1
        Width = 98
      end
      object maskEditCNPJCPF: TcxMaskEdit
        Left = 183
        Top = 30
        Properties.IgnoreMaskBlank = True
        Properties.EditMask = '900\.000\.000\/0000\-00;1; '
        Style.HotTrack = False
        TabOrder = 2
        Text = '   .   .   /    -  '
        Width = 114
      end
      object textEditCodigo: TcxTextEdit
        Left = 11
        Top = 30
        Properties.Alignment.Horz = taRightJustify
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 0
        Text = '0'
        Width = 62
      end
      object textEditNome: TcxTextEdit
        Left = 303
        Top = 30
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 3
        Width = 150
      end
      object textEditAlias: TcxTextEdit
        Left = 459
        Top = 30
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 4
        Width = 149
      end
      object imageComboboxSexo: TcxImageComboBox
        Left = 614
        Top = 30
        EditValue = 0
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.Items = <
          item
            Description = 'Indefinido'
            ImageIndex = 54
            Value = 0
          end
          item
            Description = 'Masculino'
            ImageIndex = 52
            Value = 1
          end
          item
            Description = 'Feminino'
            ImageIndex = 53
            Value = 2
          end>
        Style.HotTrack = False
        TabOrder = 5
        Width = 124
      end
      object textEditIERG: TcxTextEdit
        Left = 11
        Top = 76
        Properties.MaxLength = 20
        Style.HotTrack = False
        TabOrder = 6
        Width = 93
      end
      object textEditIEST: TcxTextEdit
        Left = 110
        Top = 76
        Properties.MaxLength = 20
        Style.HotTrack = False
        TabOrder = 7
        Width = 108
      end
      object textEditIM: TcxTextEdit
        Left = 224
        Top = 76
        Properties.MaxLength = 20
        Style.HotTrack = False
        TabOrder = 8
        Width = 97
      end
      object textEditCNAE: TcxTextEdit
        Left = 327
        Top = 76
        Properties.MaxLength = 20
        Style.HotTrack = False
        TabOrder = 9
        Width = 86
      end
      object imageComboBoxCRT: TcxImageComboBox
        Left = 419
        Top = 76
        EditValue = 0
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.Items = <
          item
            Description = 'Indefinido'
            ImageIndex = 54
            Value = 0
          end
          item
            Description = 'Simples Nacional'
            ImageIndex = 1
            Value = 1
          end
          item
            Description = 'Simples Nacional - excesso de sublimite da receita bruta'
            ImageIndex = 1
            Value = 2
          end
          item
            Description = 'Regime Normal'
            ImageIndex = 1
            Value = 3
          end>
        Style.HotTrack = False
        TabOrder = 10
        Width = 152
      end
      object checkBoxStatus: TcxCheckBox
        Left = 577
        Top = 76
        Caption = 'Ativo'
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        State = cbsChecked
        Style.HotTrack = False
        TabOrder = 11
        Transparent = True
      end
      object dbComboBoxTipoEndereco: TcxDBComboBox
        Left = 54
        Top = 138
        DataBinding.DataField = 'des_tipo_endereco'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.Items.Strings = (
          'Comercial'
          'Filial')
        Properties.MaxLength = 50
        Style.HotTrack = False
        TabOrder = 12
        Width = 673
      end
      object dbMaskEditCEP: TcxDBMaskEdit
        Left = 22
        Top = 184
        DataBinding.DataField = 'num_cep'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 13
        Width = 81
      end
      object dbTextEditLogradouro: TcxDBTextEdit
        Left = 109
        Top = 184
        DataBinding.DataField = 'des_logradouro'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 14
        Width = 266
      end
      object dbTextEditNumero: TcxDBTextEdit
        Left = 381
        Top = 184
        DataBinding.DataField = 'num_logradouro'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.MaxLength = 11
        Style.HotTrack = False
        TabOrder = 15
        Width = 75
      end
      object dbTextEditComplemento: TcxDBTextEdit
        Left = 462
        Top = 184
        DataBinding.DataField = 'des_complemento'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.MaxLength = 50
        Style.HotTrack = False
        TabOrder = 16
        Width = 265
      end
      object dbTextEditBairro: TcxDBTextEdit
        Left = 22
        Top = 230
        DataBinding.DataField = 'nom_bairro'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 17
        Width = 321
      end
      object dbTextEditCidade: TcxDBTextEdit
        Left = 349
        Top = 230
        DataBinding.DataField = 'nom_cidade'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 18
        Width = 321
      end
      object dbLookupComboBoxUF: TcxDBLookupComboBox
        Left = 676
        Top = 230
        DataBinding.DataField = 'uf_estado'
        DataBinding.DataSource = dataSourceEnderecos
        Properties.KeyFieldNames = 'uf_estado'
        Properties.ListColumns = <
          item
            FieldName = 'uf_estado'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dataSourceUF
        Style.HotTrack = False
        TabOrder = 19
        Width = 51
      end
      object dbNavigatorEndereco: TcxDBNavigator
        Left = 22
        Top = 264
        Width = 209
        Height = 26
        Buttons.CustomButtons = <>
        Buttons.Images = Data_Sisgef.iml_16_16
        Buttons.First.ImageIndex = 5
        Buttons.PriorPage.Visible = False
        Buttons.Prior.ImageIndex = 8
        Buttons.Next.ImageIndex = 7
        Buttons.NextPage.Visible = False
        Buttons.Last.ImageIndex = 6
        Buttons.Insert.ImageIndex = 3
        Buttons.Delete.ImageIndex = 4
        Buttons.Edit.ImageIndex = 10
        Buttons.Post.ImageIndex = 13
        Buttons.Cancel.ImageIndex = 2
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = dataSourceEnderecos
        TabOrder = 20
      end
      object gridContatos: TcxGrid
        Left = 10000
        Top = 10000
        Width = 705
        Height = 152
        TabOrder = 21
        Visible = False
        object gridContatosDBTableView: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 5
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 7
          Navigator.Buttons.Next.ImageIndex = 7
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 6
          Navigator.Buttons.Insert.ImageIndex = 3
          Navigator.Buttons.Delete.ImageIndex = 4
          Navigator.Buttons.Edit.ImageIndex = 10
          Navigator.Buttons.Post.ImageIndex = 13
          Navigator.Buttons.Cancel.ImageIndex = 2
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dataSourceContatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gridContatosDBTableViewid_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'id_cadastro'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bTrue
          end
          object gridContatosDBTableViewseq_contato: TcxGridDBColumn
            DataBinding.FieldName = 'seq_contato'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridContatosDBTableViewdes_contato: TcxGridDBColumn
            DataBinding.FieldName = 'des_contato'
            HeaderAlignmentHorz = taCenter
            Width = 190
          end
          object gridContatosDBTableViewnum_telefone: TcxGridDBColumn
            DataBinding.FieldName = 'num_telefone'
            HeaderAlignmentHorz = taCenter
            Width = 156
          end
          object gridContatosDBTableViewdes_email: TcxGridDBColumn
            DataBinding.FieldName = 'des_email'
            HeaderAlignmentHorz = taCenter
            Width = 351
          end
        end
        object gridContatosLevel: TcxGridLevel
          GridView = gridContatosDBTableView
        end
      end
      object gridDadosBancarios: TcxGrid
        Left = 10000
        Top = 10000
        Width = 705
        Height = 152
        TabOrder = 22
        Visible = False
        object gridDadosBancariosDBTableView: TcxGridDBTableView
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
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
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dataSourceDadosBancarios
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gridDadosBancariosDBTableViewid_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'id_cadastro'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridDadosBancariosDBTableViewseq_financeiro: TcxGridDBColumn
            DataBinding.FieldName = 'seq_financeiro'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridDadosBancariosDBTableViewdes_forma_credito: TcxGridDBColumn
            DataBinding.FieldName = 'des_forma_credito'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Nenhuma'
              'Cr'#233'dito em conta'
              'Transfer'#234'ncia DOC/TED')
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object gridDadosBancariosDBTableViewdes_tipo_conta: TcxGridDBColumn
            DataBinding.FieldName = 'des_tipo_conta'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Conta Corrente'
              'Conta Poupan'#231'a'
              'Conta Sal'#225'rio')
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object gridDadosBancariosDBTableViewcod_banco: TcxGridDBColumn
            DataBinding.FieldName = 'cod_banco'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'cod_banco'
            Properties.ListColumns = <
              item
                FieldName = 'nom_banco'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dataSourceBancos
            HeaderAlignmentHorz = taCenter
            Width = 157
          end
          object gridDadosBancariosDBTableViewnum_agencia: TcxGridDBColumn
            DataBinding.FieldName = 'num_agencia'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object gridDadosBancariosDBTableViewdes_conta: TcxGridDBColumn
            DataBinding.FieldName = 'des_conta'
            HeaderAlignmentHorz = taCenter
            Width = 145
          end
          object gridDadosBancariosDBTableViewcod_operacao: TcxGridDBColumn
            DataBinding.FieldName = 'cod_operacao'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object gridDadosBancariosDBTableViewdom_ativo: TcxGridDBColumn
            DataBinding.FieldName = 'dom_ativo'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
        end
        object gridDadosBancariosLevel: TcxGridLevel
          GridView = gridDadosBancariosDBTableView
        end
      end
      object buttonGravar: TcxButton
        Left = 11
        Top = 307
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = actionGravar
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 23
      end
      object buttonCancelar: TcxButton
        Left = 92
        Top = 307
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = actionCancelar
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 24
      end
      object layoutControlCadastroGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object layoutImageComboBoxPessoa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Pessoa'
        CaptionOptions.Layout = clTop
        Control = imageComboBoxPessoa
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutMaskEditCNPJCPF: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'CNPJ'
        CaptionOptions.Layout = clTop
        Control = maskEditCNPJCPF
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 114
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutTextEditCodigo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        CaptionOptions.Text = 'C'#243'digo:'
        CaptionOptions.Layout = clTop
        Control = textEditCodigo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutTextEditNome: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Raz'#227'o Social'
        CaptionOptions.Layout = clTop
        Control = textEditNome
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutTextEditAlias: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome Fantasia'
        CaptionOptions.Layout = clTop
        Control = textEditAlias
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutImageComboboxSexo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Sexo'
        CaptionOptions.Layout = clTop
        Visible = False
        Control = imageComboboxSexo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 100
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object layoutTextEditIIERG: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ins. Estadual'
        CaptionOptions.Layout = clTop
        Control = textEditIERG
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 70
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layouttextEditIEST: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ins. Estadual ST'
        CaptionOptions.Layout = clTop
        Control = textEditIEST
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 55
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutTextEditIM: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ins. Municipal'
        CaptionOptions.Layout = clTop
        Control = textEditIM
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutTextEditCNAE: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'CNAE'
        CaptionOptions.Layout = clTop
        Control = textEditCNAE
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 65
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutImageComboBoxCRT: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'CRT'
        CaptionOptions.Layout = clTop
        Control = imageComboBoxCRT
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 114
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutCheckBoxStatus: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = checkBoxStatus
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object layoutGroupComplementos: TdxLayoutGroup
        Parent = layoutControlCadastroGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Complementos'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldTabbed
        ShowBorder = False
        Index = 2
      end
      object layoutGroupEnderecos: TdxLayoutGroup
        Parent = layoutGroupComplementos
        CaptionOptions.Text = 'Endere'#231'os'
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object layoutGroupContatos: TdxLayoutGroup
        Parent = layoutGroupComplementos
        CaptionOptions.Text = 'Contatos'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object layoutGroupDadosBancarios: TdxLayoutGroup
        Parent = layoutGroupComplementos
        CaptionOptions.Text = 'Dados Banc'#225'rios'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object layoutDBComboBoxTipoEndereco: TdxLayoutItem
        Parent = layoutGroupEnderecos
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Tipo:'
        Control = dbComboBoxTipoEndereco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDBMaskEditCEP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'CEP'
        CaptionOptions.Layout = clTop
        Control = dbMaskEditCEP
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 81
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDBTextEditLogradouro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Logradouro'
        CaptionOptions.Layout = clTop
        Control = dbTextEditLogradouro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = layoutGroupEnderecos
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutDBTextEditNumero: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'N'#250'mero'
        CaptionOptions.Layout = clTop
        Control = dbTextEditNumero
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBTextEditComplemento: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Complemento'
        CaptionOptions.Layout = clTop
        Control = dbTextEditComplemento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutDBTextEditBairro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Bairro'
        CaptionOptions.Layout = clTop
        Control = dbTextEditBairro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDBTextEditCidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        CaptionOptions.Layout = clTop
        Control = dbTextEditCidade
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = layoutGroupEnderecos
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object layoutDBLookupComboBoxUF: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'UF'
        CaptionOptions.Layout = clTop
        Control = dbLookupComboBoxUF
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 51
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBNavigatorEnderecos: TdxLayoutItem
        Parent = layoutGroupEnderecos
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Navegador'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = dbNavigatorEndereco
        ControlOptions.OriginalHeight = 26
        ControlOptions.OriginalWidth = 209
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutGridContatos: TdxLayoutItem
        Parent = layoutGroupContatos
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Contatos'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridContatos
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutGridDadosBancarios: TdxLayoutItem
        Parent = layoutGroupDadosBancarios
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Dados Banc'#225'rios'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridDadosBancarios
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutButtonGravar: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonGravar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutButtonCancelar: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignVert = avClient
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 3
        AutoCreated = True
      end
    end
    object layoutControlPesquisa: TdxLayoutControl
      Left = 10000
      Top = 10000
      Width = 749
      Height = 343
      TabOrder = 0
      Visible = False
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      object textEditParametro: TcxTextEdit
        Left = 72
        Top = 15
        Hint = 'Par'#226'metro de pesquisa'
        Style.HotTrack = False
        TabOrder = 0
        Width = 491
      end
      object gridPesquisa: TcxGrid
        Left = 11
        Top = 42
        Width = 727
        Height = 259
        TabOrder = 3
        object gridPesquisaDBTableView: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dataSourcePesquisa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object gridPesquisaDBTableViewid_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'id_cadastro'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewcod_tipo_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_tipo_cadastro'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bTrue
          end
          object gridPesquisaDBTableViewcod_pessoa: TcxGridDBColumn
            DataBinding.FieldName = 'cod_pessoa'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnom_nome_razao: TcxGridDBColumn
            DataBinding.FieldName = 'nom_nome_razao'
            HeaderAlignmentHorz = taCenter
            Width = 266
          end
          object gridPesquisaDBTableViewnom_fantasia: TcxGridDBColumn
            DataBinding.FieldName = 'nom_fantasia'
            HeaderAlignmentHorz = taCenter
            Width = 245
          end
          object gridPesquisaDBTableViewnum_cpf_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cpf_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewnum_rg_ie: TcxGridDBColumn
            DataBinding.FieldName = 'num_rg_ie'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewdes_expedidor: TcxGridDBColumn
            DataBinding.FieldName = 'des_expedidor'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_emissao_rg: TcxGridDBColumn
            DataBinding.FieldName = 'dat_emissao_rg'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewuf_expedidor_rg: TcxGridDBColumn
            DataBinding.FieldName = 'uf_expedidor_rg'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_nascimento: TcxGridDBColumn
            DataBinding.FieldName = 'dat_nascimento'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnom_pai: TcxGridDBColumn
            DataBinding.FieldName = 'nom_pai'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnom_mae: TcxGridDBColumn
            DataBinding.FieldName = 'nom_mae'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdes_nacionalidade: TcxGridDBColumn
            DataBinding.FieldName = 'des_nacionalidade'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdes_naturalidade: TcxGridDBColumn
            DataBinding.FieldName = 'des_naturalidade'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewuf_naturalidade: TcxGridDBColumn
            DataBinding.FieldName = 'uf_naturalidade'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnum_suframa: TcxGridDBColumn
            DataBinding.FieldName = 'num_suframa'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnum_cnae: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnae'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewnum_crt: TcxGridDBColumn
            DataBinding.FieldName = 'num_crt'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewcod_seguranca_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_seguranca_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewcod_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnum_registro_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_registro_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_validade_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdes_categoria_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'des_categoria_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_emissao_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_emissao_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_primeira_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_primeira_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewuf_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'uf_cnh'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewcod_sexo: TcxGridDBColumn
            DataBinding.FieldName = 'cod_sexo'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdes_estado_civil: TcxGridDBColumn
            DataBinding.FieldName = 'des_estado_civil'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdat_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'dat_cadastro'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewcod_usuario: TcxGridDBColumn
            DataBinding.FieldName = 'cod_usuario'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewdes_imagem: TcxGridDBColumn
            DataBinding.FieldName = 'des_imagem'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewid_status: TcxGridDBColumn
            DataBinding.FieldName = 'id_status'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewdes_obs: TcxGridDBColumn
            DataBinding.FieldName = 'des_obs'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridPesquisaDBTableViewnum_im: TcxGridDBColumn
            DataBinding.FieldName = 'num_im'
            HeaderAlignmentHorz = taCenter
          end
          object gridPesquisaDBTableViewdes_iest: TcxGridDBColumn
            DataBinding.FieldName = 'des_iest'
            HeaderAlignmentHorz = taCenter
          end
        end
        object gridPesquisaLevel: TcxGridLevel
          GridView = gridPesquisaDBTableView
        end
      end
      object buttonSelecionar: TcxButton
        Left = 11
        Top = 307
        Width = 86
        Height = 25
        Cursor = crHandPoint
        Action = actionSelecionar
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 4
      end
      object buttonFiltro: TcxButton
        Left = 663
        Top = 11
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = actionFiltro
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 2
      end
      object buttonPesquisar: TcxButton
        Left = 569
        Top = 11
        Width = 88
        Height = 25
        Cursor = crHandPoint
        Action = actionPesquisar
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 1
      end
      object buttonInserir: TcxButton
        Left = 103
        Top = 307
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = actionIncluir
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.Transparent = True
        TabOrder = 5
      end
      object layoutControlPesquisaGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object layoutParametro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'Par'#226'metro:'
        Control = textEditParametro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutGridPesquisa: TdxLayoutItem
        Parent = layoutControlPesquisaGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Pesquisa'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridPesquisa
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutButtonSelecionar: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonSelecionar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = layoutControlPesquisaGroup_Root
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object layoutButtonFiltro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonFiltro
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutButtonPesquisar: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonPesquisar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 88
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutButonInserir: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonInserir
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
        Parent = layoutControlPesquisaGroup_Root
        AlignVert = avBottom
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
    end
    object layoutControlBodyGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = -1
    end
    object layoutCadastro: TdxLayoutItem
      Parent = layoutControlBodyGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = layoutControlCadastro
      ControlOptions.OriginalHeight = 218
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutPesquisa: TdxLayoutItem
      Parent = layoutControlBodyGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pesquisa'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = layoutControlPesquisa
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object actionListCadastroEmpresas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 184
    Top = 8
    object actionPesquisar: TAction
      Category = 'Cadastro Empresas'
      Caption = '&Pesquisar'
      Hint = 'Pesquisar empresas'
      ImageIndex = 14
      ShortCut = 120
      OnExecute = actionPesquisarExecute
    end
    object actionFechar: TAction
      Category = 'Cadastro Empresas'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionSelecionar: TAction
      Category = 'Cadastro Empresas'
      Caption = 'Se&lecionar'
      Hint = 'Selecionar registro'
      ImageIndex = 1
      OnExecute = actionSelecionarExecute
    end
    object actionFiltro: TAction
      Category = 'Cadastro Empresas'
      Caption = 'F&iltro'
      Hint = 'Filtro de pesquisa'
      ImageIndex = 19
      ShortCut = 16504
    end
    object actionGravar: TAction
      Category = 'Cadastro Empresas'
      Caption = 'Gravar'
      ImageIndex = 13
      ShortCut = 116
      OnExecute = actionGravarExecute
    end
    object actionCancelar: TAction
      Category = 'Cadastro Empresas'
      Caption = 'Cancelar'
      ImageIndex = 2
    end
    object actionIncluir: TAction
      Category = 'Cadastro Empresas'
      Caption = 'Incluir'
      ImageIndex = 3
      ShortCut = 113
      OnExecute = actionIncluirExecute
    end
  end
  object dataSourcePesquisa: TDataSource
    AutoEdit = False
    DataSet = memTableCadastro
    Left = 288
    Top = 8
  end
  object dataSourceEnderecos: TDataSource
    DataSet = memTableEnderecos
    Left = 368
    Top = 8
  end
  object dataSourceUF: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableEstados
    Left = 40
    Top = 48
  end
  object dataSourceContatos: TDataSource
    DataSet = memTableContatos
    Left = 464
    Top = 8
  end
  object dataSourceDadosBancarios: TDataSource
    DataSet = memTableDadosBancarios
    Left = 560
    Top = 8
  end
  object dataSourceBancos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableBancos
    Left = 664
    Top = 8
  end
  object memTableEnderecos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 56
    object memTableEnderecosid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
    object memTableEnderecoscod_tipo_cadastro: TIntegerField
      FieldName = 'cod_tipo_cadastro'
    end
    object memTableEnderecosdes_tipo_endereco: TStringField
      FieldName = 'des_tipo_endereco'
      Size = 50
    end
    object memTableEnderecosnum_cep: TStringField
      FieldName = 'num_cep'
      Size = 9
    end
    object memTableEnderecosdes_logradouro: TStringField
      FieldName = 'des_logradouro'
      Size = 70
    end
    object memTableEnderecosnum_logradouro: TStringField
      FieldName = 'num_logradouro'
      Size = 10
    end
    object memTableEnderecosdes_complemento: TStringField
      FieldName = 'des_complemento'
      Size = 50
    end
    object memTableEnderecosnom_bairro: TStringField
      FieldName = 'nom_bairro'
      Size = 70
    end
    object memTableEnderecosnom_cidade: TStringField
      FieldName = 'nom_cidade'
      Size = 70
    end
    object memTableEnderecosuf_estado: TStringField
      FieldName = 'uf_estado'
      Size = 2
    end
  end
  object memTableDadosBancarios: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 560
    Top = 56
    object memTableDadosBancariosid_cadastro: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_cadastro'
    end
    object memTableDadosBancarioscod_tipo_cadastro: TIntegerField
      FieldName = 'cod_tipo_cadastro'
    end
    object memTableDadosBancariosseq_financeiro: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'seq_financeiro'
    end
    object memTableDadosBancariosdes_forma_credito: TStringField
      DisplayLabel = 'Forma Cr'#233'dito'
      FieldName = 'des_forma_credito'
      Size = 30
    end
    object memTableDadosBancariosdes_tipo_conta: TStringField
      DisplayLabel = 'Tipo Conta'
      FieldName = 'des_tipo_conta'
      Size = 40
    end
    object memTableDadosBancarioscod_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cod_banco'
      Size = 5
    end
    object memTableDadosBancariosnum_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'num_agencia'
      Size = 10
    end
    object memTableDadosBancariosdes_conta: TStringField
      DisplayLabel = 'N'#186' Conta'
      FieldName = 'des_conta'
    end
    object dom: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'cod_operacao'
      Size = 10
    end
    object memTableDadosBancariosdom_ativo: TSmallintField
      DisplayLabel = 'Ativo'
      FieldName = 'dom_ativo'
    end
    object memTableDadosBancariosnom_favorecido: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'nom_favorecido'
      Size = 70
    end
    object memTableDadosBancariosnum_cnpj_cpf_favorecido: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'num_cnpj_cpf_favorecido'
    end
  end
  object memTableContatos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_cadastro'
        DataType = ftInteger
      end
      item
        Name = 'seq_contato'
        DataType = ftInteger
      end
      item
        Name = 'des_contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'num_telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'des_email'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 464
    Top = 56
    object memTableContatosid_cadastro: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_cadastro'
    end
    object memTableContatoscod_tipo_cadastro: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'cod_tipo_cadastro'
      Calculated = True
    end
    object memTableContatosseq_contato: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'seq_contato'
    end
    object memTableContatosdes_contato: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_contato'
      Size = 30
    end
    object memTableContatosnum_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'num_telefone'
      Size = 15
    end
    object memTableContatosdes_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'des_email'
      Size = 150
    end
  end
  object memTableCadastro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 288
    Top = 56
    object memTableCadastroid_cadastro: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_cadastro'
    end
    object memTableCadastrocod_tipo_cadastro: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo_cadastro'
    end
    object memTableCadastrocod_pessoa: TSmallintField
      DisplayLabel = 'Pessoa'
      FieldName = 'cod_pessoa'
    end
    object memTableCadastronom_nome_razao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_nome_razao'
      Size = 70
    end
    object memTableCadastronom_fantasia: TStringField
      DisplayLabel = 'Alias'
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object memTableCadastronum_cpf_cnpj: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'num_cpf_cnpj'
    end
    object memTableCadastronum_rg_ie: TStringField
      DisplayLabel = 'Ins. Estadual / RG'
      FieldName = 'num_rg_ie'
    end
    object memTableCadastrodes_expedidor: TStringField
      DisplayLabel = 'Expedidor RG'
      FieldName = 'des_expedidor'
      Size = 70
    end
    object memTableCadastrodat_emissao_rg: TDateField
      DisplayLabel = 'Data Emiss'#227'o RG'
      FieldName = 'dat_emissao_rg'
    end
    object memTableCadastrouf_expedidor_rg: TStringField
      DisplayLabel = 'UF RG'
      FieldName = 'uf_expedidor_rg'
      Size = 2
    end
    object memTableCadastrodat_nascimento: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'dat_nascimento'
    end
    object memTableCadastronom_pai: TStringField
      DisplayLabel = 'Nome do Pai'
      FieldName = 'nom_pai'
      Size = 70
    end
    object memTableCadastronom_mae: TStringField
      DisplayLabel = 'Nome da M'#227'e'
      FieldName = 'nom_mae'
      Size = 70
    end
    object memTableCadastrodes_nacionalidade: TStringField
      DisplayLabel = 'Nacionalidade'
      FieldName = 'des_nacionalidade'
      Size = 50
    end
    object memTableCadastrodes_naturalidade: TStringField
      DisplayLabel = 'Naturalidade'
      FieldName = 'des_naturalidade'
      Size = 70
    end
    object memTableCadastrouf_naturalidade: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_naturalidade'
      Size = 2
    end
    object memTableCadastronum_suframa: TStringField
      DisplayLabel = 'SUFRAMA'
      FieldName = 'num_suframa'
    end
    object memTableCadastronum_cnae: TStringField
      DisplayLabel = 'CNAE'
      FieldName = 'num_cnae'
    end
    object memTableCadastronum_crt: TIntegerField
      DisplayLabel = 'CRT'
      FieldName = 'num_crt'
    end
    object memTableCadastrocod_seguranca_cnh: TStringField
      DisplayLabel = 'C'#243'd. Seg. CNH'
      FieldName = 'cod_seguranca_cnh'
    end
    object memTableCadastrocod_cnh: TStringField
      DisplayLabel = 'C'#243'd. CNH'
      FieldName = 'cod_cnh'
    end
    object memTableCadastronum_registro_cnh: TStringField
      DisplayLabel = 'Registro CNH'
      FieldName = 'num_registro_cnh'
    end
    object memTableCadastrodat_validade_cnh: TDateField
      DisplayLabel = 'Validade CNH'
      FieldName = 'dat_validade_cnh'
    end
    object memTableCadastrodes_categoria: TStringField
      DisplayLabel = 'Categoria CNH'
      FieldName = 'des_categoria'
      Size = 2
    end
    object memTableCadastrodat_emissao_cnh: TDateField
      DisplayLabel = 'Data Emiss'#227'o CNH'
      FieldName = 'dat_emissao_cnh'
    end
    object memTableCadastrodat_primeira_cnh: TDateField
      DisplayLabel = 'Data Primeira CNH'
      FieldName = 'dat_primeira_cnh'
    end
    object memTableCadastrouf_cnh: TStringField
      DisplayLabel = 'UF CNH'
      FieldName = 'uf_cnh'
      Size = 2
    end
    object memTableCadastrocod_sexo: TSmallintField
      DisplayLabel = 'Sexo'
      FieldName = 'cod_sexo'
    end
    object memTableCadastrodes_estado_civil: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'des_estado_civil'
      Size = 30
    end
    object memTableCadastrodat_cadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_cadastro'
    end
    object memTableCadastrocod_usuario: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'cod_usuario'
    end
    object memTableCadastrodes_imagem: TStringField
      DisplayLabel = 'Foto'
      FieldName = 'des_imagem'
      Size = 100
    end
    object memTableCadastroid_status: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'id_status'
    end
    object memTableCadastrodes_obs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_obs'
      BlobType = ftMemo
    end
    object memTableCadastronum_im: TStringField
      DisplayLabel = 'Ins. Municipal'
      FieldName = 'num_im'
    end
    object memTableCadastronum_iest: TStringField
      DisplayLabel = 'Ins. Estadual ST'
      FieldName = 'num_iest'
    end
  end
end
