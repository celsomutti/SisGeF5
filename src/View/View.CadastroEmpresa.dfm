object view_CadastroEmpresas: Tview_CadastroEmpresas
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresas'
  ClientHeight = 530
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
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 793
    Height = 530
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    object labelTitle: TcxLabel
      Left = 48
      Top = 12
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorY = 27
    end
    object maskEditCodigo: TcxMaskEdit
      Left = 11
      Top = 68
      Properties.Alignment.Horz = taRightJustify
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 1
      Text = '0'
      Width = 71
    end
    object comboBoxTipoPessoa: TcxComboBox
      Left = 85
      Top = 68
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'F'#237'sica'
        'Juridica')
      Properties.OnChange = comboBoxTipoPessoaPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Juridica'
      Width = 89
    end
    object maskEditCNPJ: TcxMaskEdit
      Left = 176
      Top = 68
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '99\.999\.999\/9999\-99;1; '
      Style.HotTrack = False
      TabOrder = 3
      Text = '  .   .   /    -  '
      Width = 87
    end
    object textEditRazaoSocial: TcxTextEdit
      Left = 266
      Top = 68
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 4
      Width = 258
    end
    object textEditRGIE: TcxTextEdit
      Left = 11
      Top = 114
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object textEditNomeFantasia: TcxTextEdit
      Left = 600
      Top = 68
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 6
      Width = 190
    end
    object textEditIEST: TcxTextEdit
      Left = 185
      Top = 114
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 8
      Width = 115
    end
    object textEditIM: TcxTextEdit
      Left = 350
      Top = 114
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object comboBoxCRT: TcxComboBox
      Left = 524
      Top = 114
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        '1 '#8211' Simples Nacional'
        '2 '#8211' Simples Nacional '#8211' excesso de sublimite da receita bruta'
        '3 '#8211' Regime Normal NOTAS EXPLICATIVAS')
      Style.HotTrack = False
      TabOrder = 10
      Text = 'Selecione ...'
      Width = 186
    end
    object maskEditNascimento: TcxMaskEdit
      Left = 519
      Top = 68
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!99/99/9999;1;1'
      Style.HotTrack = False
      TabOrder = 5
      Text = '  /  /    '
      Width = 78
    end
    object LayoutControlEnderecos: TdxLayoutControl
      Left = 11
      Top = 160
      Width = 422
      Height = 169
      TabOrder = 11
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      object dbComboBoxTipoEndereco: TcxDBComboBox
        Left = 43
        Top = 11
        DataBinding.DataField = 'des_tipo_endereco'
        DataBinding.DataSource = dsEnderecos
        Properties.Items.Strings = (
          'Comercial'
          'Operacional'
          'Filial')
        Properties.MaxLength = 50
        Style.HotTrack = False
        TabOrder = 0
        Width = 121
      end
      object dbTextEditLogradouro: TcxDBTextEdit
        Left = 95
        Top = 57
        DataBinding.DataField = 'des_logradouro'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 2
        Width = 152
      end
      object dbTextEditNumero: TcxDBTextEdit
        Left = 221
        Top = 57
        DataBinding.DataField = 'num_logradouro'
        DataBinding.DataSource = dsEnderecos
        Style.HotTrack = False
        TabOrder = 3
        Width = 68
      end
      object dbTextEditBairro: TcxDBTextEdit
        Left = 11
        Top = 103
        DataBinding.DataField = 'nom_bairro'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 5
        Width = 157
      end
      object dbTextEditCidade: TcxDBTextEdit
        Left = 164
        Top = 103
        DataBinding.DataField = 'nom_cidade'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.HotTrack = False
        TabOrder = 6
        Width = 184
      end
      object dbLookupComboBoxUF: TcxDBLookupComboBox
        Left = 343
        Top = 103
        DataBinding.DataField = 'uf_estado'
        DataBinding.DataSource = dsEnderecos
        Properties.KeyFieldNames = 'cod_banco'
        Properties.ListColumns = <
          item
            FieldName = 'nom_banco'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsEstados
        Style.HotTrack = False
        TabOrder = 7
        Width = 62
      end
      object dbNavigatorEnderecos: TcxDBNavigator
        Left = 11
        Top = 130
        Width = 387
        Height = 25
        BorderStyle = nbsNone
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
        DataSource = dsEnderecos
        TabOrder = 8
      end
      object dbTextEditComplementoEndereco: TcxDBTextEdit
        Left = 280
        Top = 57
        DataBinding.DataField = 'des_complemento'
        DataBinding.DataSource = dsEnderecos
        Style.HotTrack = False
        TabOrder = 4
        Width = 121
      end
      object dbMaskEditCEP: TcxDBMaskEdit
        Left = 11
        Top = 57
        DataBinding.DataField = 'num_cep'
        DataBinding.DataSource = dsEnderecos
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 1
        Width = 78
      end
      object layoutControlGroupEnderecos_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object layoutDbComboBoxTipoEndereco: TdxLayoutItem
        Parent = layoutControlGroupEnderecos_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Tipo:'
        Control = dbComboBoxTipoEndereco
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDBTextEditLogradouro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Logradouro'
        CaptionOptions.Layout = clTop
        Control = dbTextEditLogradouro
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = layoutControlGroupEnderecos_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutDBTextEditNumero: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'N'#250'mero'
        CaptionOptions.Layout = clTop
        Control = dbTextEditNumero
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBTextEditBairro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Bairro'
        CaptionOptions.Layout = clTop
        Control = dbTextEditBairro
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDBtextEditCidade: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade'
        CaptionOptions.Layout = clTop
        Control = dbTextEditCidade
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = layoutControlGroupEnderecos_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 2
        AutoCreated = True
      end
      object layoutDBLookupComboBoxUF: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'UF'
        CaptionOptions.Layout = clTop
        Control = dbLookupComboBoxUF
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBNavigatorEnderecos: TdxLayoutItem
        Parent = layoutControlGroupEnderecos_Root
        CaptionOptions.Text = 'Navegador'
        CaptionOptions.Visible = False
        Control = dbNavigatorEnderecos
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutDBTextEditComplementoEndereco: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Complemento'
        CaptionOptions.Layout = clTop
        Control = dbTextEditComplementoEndereco
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutDBMaskEditCEP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'CEP'
        CaptionOptions.Layout = clTop
        Control = dbMaskEditCEP
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object layoutControlFinanceiro: TdxLayoutControl
      Left = 11
      Top = 354
      Width = 446
      Height = 143
      TabOrder = 13
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      object dbComboBoxFormaCredito: TcxDBComboBox
        Left = 11
        Top = 30
        DataBinding.DataField = 'des_forma_credito'
        DataBinding.DataSource = dsFinanceiro
        Properties.Items.Strings = (
          'NENHUMA'
          'TRANSFER'#202'NCIA'
          'TRANSFER'#202'NCIA TED/DOC'
          'DEP'#211'SITO')
        Properties.MaxLength = 30
        Style.HotTrack = False
        TabOrder = 0
        Width = 112
      end
      object dbTextBoxAgencia: TcxDBTextEdit
        Left = 11
        Top = 76
        DataBinding.DataField = 'num_agencia'
        DataBinding.DataSource = dsFinanceiro
        Properties.MaxLength = 10
        Style.HotTrack = False
        TabOrder = 3
        Width = 63
      end
      object dbTextEditConta: TcxDBTextEdit
        Left = 96
        Top = 76
        DataBinding.DataField = 'des_conta'
        DataBinding.DataSource = dsFinanceiro
        Style.HotTrack = False
        TabOrder = 4
        Width = 69
      end
      object dbComboBoxTipoConta: TcxDBComboBox
        Left = 129
        Top = 30
        DataBinding.DataField = 'des_tipo_conta'
        DataBinding.DataSource = dsFinanceiro
        Properties.Items.Strings = (
          'CORRENTE'
          'POUPAN'#199'A'
          'SAL'#193'RIO')
        Properties.MaxLength = 40
        Style.HotTrack = False
        TabOrder = 1
        Width = 104
      end
      object dbLookupComboBoxBanco: TcxDBLookupComboBox
        Left = 239
        Top = 30
        DataBinding.DataField = 'cod_banco'
        DataBinding.DataSource = dsFinanceiro
        Properties.KeyFieldNames = 'cod_banco'
        Properties.ListColumns = <
          item
            FieldName = 'nom_banco'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsBancos
        Style.HotTrack = False
        TabOrder = 2
        Width = 164
      end
      object bTextEditOperacao: TcxDBTextEdit
        Left = 189
        Top = 76
        DataBinding.DataField = 'cod_operacao'
        DataBinding.DataSource = dsFinanceiro
        Style.HotTrack = False
        TabOrder = 5
        Width = 61
      end
      object dbNavigatorDadosBancarios: TcxDBNavigator
        Left = 11
        Top = 103
        Width = 414
        Height = 25
        BorderStyle = nbsNone
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
        DataSource = dsFinanceiro
        TabOrder = 7
      end
      object dbCheckBoxAtivo: TcxDBCheckBox
        Left = 272
        Top = 78
        Caption = 'Conta Ativa'
        DataBinding.DataField = 'dom_ativo'
        DataBinding.DataSource = dsFinanceiro
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.NullStyle = nssUnchecked
        Style.HotTrack = False
        TabOrder = 6
        Transparent = True
      end
      object dxLayoutControlFinanceiroGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object layoutDBComboBoxFormaCredito: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Forma Cr'#233'dito'
        CaptionOptions.Layout = clTop
        Control = dbComboBoxFormaCredito
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControlFinanceiroGroup_Root
        Index = 0
        AutoCreated = True
      end
      object layoutDBTextBoxAgencia: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ag'#234'ncia'
        CaptionOptions.Layout = clTop
        Control = dbTextBoxAgencia
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutDbtextEditConta: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'N'#186' Conta'
        CaptionOptions.Layout = clTop
        Control = dbTextEditConta
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutDBComboBoxTipoConta: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Tipo de conta'
        CaptionOptions.Layout = clTop
        Control = dbComboBoxTipoConta
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object LAYOUTDBLookupComboBoxBanco: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Banco'
        CaptionOptions.Layout = clTop
        Control = dbLookupComboBoxBanco
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBTextEditOperacao: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Opera'#231#227'o'
        CaptionOptions.Layout = clTop
        Control = bTextEditOperacao
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBNavigatorDadosBancarios: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Text = 'Navegador'
        CaptionOptions.Visible = False
        Control = dbNavigatorDadosBancarios
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutDBCheckBoxAtivo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'Ativo'
        CaptionOptions.Visible = False
        Control = dbCheckBoxAtivo
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
    object layoutControlContatos: TdxLayoutControl
      Left = 429
      Top = 160
      Width = 353
      Height = 143
      TabOrder = 12
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      object gridContatos: TcxGrid
        Left = 11
        Top = 11
        Width = 250
        Height = 200
        TabOrder = 0
        object gridContatosDBTableView: TcxGridDBTableView
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
          Navigator.Visible = True
          DataController.DataSource = dsContatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object gridContatosDBTableViewdes_contato: TcxGridDBColumn
            DataBinding.FieldName = 'des_contato'
            HeaderAlignmentHorz = taCenter
            Width = 144
          end
          object gridContatosDBTableViewnum_telefone: TcxGridDBColumn
            DataBinding.FieldName = 'num_telefone'
            HeaderAlignmentHorz = taCenter
          end
          object gridContatosDBTableViewdes_email: TcxGridDBColumn
            DataBinding.FieldName = 'des_email'
            HeaderAlignmentHorz = taCenter
            Width = 230
          end
        end
        object gridContatosLevel: TcxGridLevel
          GridView = gridContatosDBTableView
        end
      end
      object layoutControlContatosGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = layoutControlContatosGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Contatos'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridContatos
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object memoObservacoes: TcxMemo
      Left = 466
      Top = 354
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.Shadow = False
      TabOrder = 14
      Height = 143
      Width = 314
    end
    object layoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutTitle: TdxLayoutItem
      Parent = layoutControlGroup_Root
      CaptionOptions.ImageIndex = 0
      Control = labelTitle
      ControlOptions.AlignVert = avCenter
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutCodigo: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo'
      CaptionOptions.Layout = clTop
      Control = maskEditCodigo
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutTipoPessoa: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tipo Pessoa'
      CaptionOptions.Layout = clTop
      Control = comboBoxTipoPessoa
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutAutoCreatedGroupID: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutCNPJ: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CNPJ'
      CaptionOptions.Layout = clTop
      Control = maskEditCNPJ
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutRazaoSocial: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Raz'#227'o Social'
      CaptionOptions.Layout = clTop
      Control = textEditRazaoSocial
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutTextEditRGIE: TdxLayoutItem
      Parent = layoutAutoCreatedGroupDocumentos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ins. Estadual'
      CaptionOptions.Layout = clTop
      Control = textEditRGIE
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutNomeFantasia: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome Fantasia'
      CaptionOptions.Layout = clTop
      Control = textEditNomeFantasia
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object layoutTextEditIEST: TdxLayoutItem
      Parent = layoutAutoCreatedGroupDocumentos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ins. Estadual ST'
      CaptionOptions.Layout = clTop
      Control = textEditIEST
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutAutoCreatedGroupDocumentos: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object layoutTextEditIM: TdxLayoutItem
      Parent = layoutAutoCreatedGroupDocumentos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ins. Municipal'
      CaptionOptions.Layout = clTop
      Control = textEditIM
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutComboBoxCRT: TdxLayoutItem
      Parent = layoutAutoCreatedGroupDocumentos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CRT'
      CaptionOptions.Layout = clTop
      Control = comboBoxCRT
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutMaskEditNascimento: TdxLayoutItem
      Parent = layoutAutoCreatedGroupID
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nascimento'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = maskEditNascimento
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutEnderecos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Endere'#231'os'
      CaptionOptions.Layout = clTop
      Control = LayoutControlEnderecos
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutFinanceiro: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Dados Banc'#225'rios'
      CaptionOptions.Layout = clTop
      Control = layoutControlFinanceiro
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutContatos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Contatos'
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      Control = layoutControlContatos
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object layoutmemoObservacoes: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = memoObservacoes
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableEnderecos
    Left = 576
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbContatos
    Left = 608
  end
  object dsFinanceiro: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableDadosBancarios
    Left = 648
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableBancos
    Left = 680
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableBancos
    Left = 712
  end
end
