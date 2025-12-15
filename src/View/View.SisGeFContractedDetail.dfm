object view_SisGeFContractedDetail: Tview_SisGeFContractedDetail
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cadastro de Contratados'
  ClientHeight = 561
  ClientWidth = 784
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 22
    Width = 701
    Height = 105
  end
  object Image1: TImage
    Left = 0
    Top = 44
    Width = 701
    Height = 105
  end
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 784
    Height = 561
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object maskEditID: TcxMaskEdit
      Left = 31
      Top = 12
      Hint = 'ID do cadastro'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = '0'
      Width = 74
    end
    object textEditNome: TcxTextEdit
      Left = 455
      Top = 12
      Hint = 'Nome ou raz'#227'p social]'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 318
    end
    object layoutControlDados: TdxLayoutControl
      Left = 26
      Top = 76
      Width = 732
      Height = 212
      TabOrder = 4
      object textEditRG: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'N'#250'mero do RG'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
        Visible = False
        Width = 81
      end
      object textEditExpedidor: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'Org'#227'o expedidor do RG'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Visible = False
        Width = 94
      end
      object dateEditDataRG: TcxDateEdit
        Left = 10000
        Top = 10000
        Hint = 'Data da emiss'#227'o do RG'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 3
        Visible = False
        Width = 77
      end
      object lookupComboBoxUFRG: TcxLookupComboBox
        Left = 10000
        Top = 10000
        Properties.KeyFieldNames = 'uf_estado'
        Properties.ListColumns = <
          item
            FieldName = 'uf_estado'
          end>
        Properties.ListSource = dsEstados
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 2
        Visible = False
        Width = 46
      end
      object dateEditNascimento: TcxDateEdit
        Left = 10000
        Top = 10000
        Hint = 'Data do nascimento'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 4
        Visible = False
        Width = 76
      end
      object textEditNomePai: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'Nome do Pai'
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Visible = False
        Width = 257
      end
      object textEditNomeMae: TcxTextEdit
        Left = 10000
        Top = 10000
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Visible = False
        Width = 259
      end
      object textEditNaturalidade: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'Naturalidade'
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Visible = False
        Width = 422
      end
      object lookupComboBoxNaturalidade: TcxLookupComboBox
        Left = 10000
        Top = 10000
        Hint = 'Sigla do estado da naturalidade '
        Properties.KeyFieldNames = 'uf_estado'
        Properties.ListColumns = <
          item
            FieldName = 'uf_estado'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsEstados
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Visible = False
        Width = 151
      end
      object textEditSegurancaCNH: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'C'#243'digo de seguran'#231'a da CNH'
        Properties.MaxLength = 30
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 11
        Visible = False
        Width = 122
      end
      object textEditNumeroCNH: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'N'#250'mero c'#233'dula da CNH'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 10
        Visible = False
        Width = 102
      end
      object textEditRegistroCNH: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'C'#243'digo do regsitro do CNH'
        Properties.MaxLength = 30
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Visible = False
        Width = 121
      end
      object textEditCategoriaCNH: TcxTextEdit
        Left = 10000
        Top = 10000
        Properties.MaxLength = 3
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 12
        Visible = False
        Width = 72
      end
      object dateEditEmissaoCNH: TcxDateEdit
        Left = 10000
        Top = 10000
        Hint = 'Data de emiss'#227'o da CNH'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 13
        Visible = False
        Width = 113
      end
      object dateEditValidadeCNH: TcxDateEdit
        Left = 10000
        Top = 10000
        Hint = 'Data da validade da CNH'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 14
        Visible = False
        Width = 114
      end
      object dateEditPrimeiraCNH: TcxDateEdit
        Left = 10000
        Top = 10000
        Hint = 'Data da emiss'#227'o da primeira CNH'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 15
        Visible = False
        Width = 112
      end
      object lookupComboBoxUFCNH: TcxLookupComboBox
        Left = 10000
        Top = 10000
        Hint = 'Sigla do estado da CNH'
        Properties.KeyFieldNames = 'uf_estado'
        Properties.ListColumns = <
          item
            FieldName = 'uf_estado'
          end>
        Properties.ListSource = dsEstados
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 16
        Visible = False
        Width = 66
      end
      object textEditNomeFantasia: TcxTextEdit
        Left = 135
        Top = 26
        Hint = 'Nome fantasia'
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 17
        Width = 325
      end
      object textEditIE: TcxTextEdit
        Left = 567
        Top = 26
        Hint = 'Inscri'#231#227'o Estadual'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 18
        Width = 139
      end
      object textEditIM: TcxTextEdit
        Left = 135
        Top = 53
        Hint = 'Inscri'#231#227'o municipal'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 19
        Width = 121
      end
      object comboBoxCRT: TcxComboBox
        Left = 290
        Top = 53
        Hint = 'C'#243'digo de Refime Tribut'#225'rio'
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'Selecione ...'
          '1 - Simples Nacional'
          '2 - Simples Nacional, excesso sublimite de receita bruta'
          '3 - Regime Normal')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 20
        Text = 'Selecione ...'
        Width = 416
      end
      object txtRepresentante: TcxTextEdit
        Left = 135
        Top = 80
        Hint = 'Nome do representante'
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 21
        Width = 571
      end
      object mskCPFRepresentante: TcxMaskEdit
        Left = 135
        Top = 107
        Properties.EditMask = '!000\.000\.000\-00;0; '
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 22
        Text = '           '
        Width = 143
      end
      object layoutControlDadosGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldTabbed
        ShowBorder = False
        TabbedOptions.HideTabs = True
        Index = -1
      end
      object layoutGroupPessoaFisica: TdxLayoutGroup
        Parent = layoutControlDadosGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Pessoa F'#237'sica'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        ShowBorder = False
        Index = 0
      end
      object layoutItemRG: TdxLayoutItem
        Parent = layoutGroupFisica1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'RG:'
        Control = textEditRG
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 79
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemExpedidorRG: TdxLayoutItem
        Parent = layoutGroupFisica1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Expedidor:'
        Control = textEditExpedidor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 93
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemDataRG: TdxLayoutItem
        Parent = layoutGroupFisica1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Data RG:'
        Control = dateEditDataRG
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutItemUFRG: TdxLayoutItem
        Parent = layoutGroupFisica1
        CaptionOptions.Hint = 'Sigla do estado emissor do RG'
        CaptionOptions.Text = 'UF:'
        Control = lookupComboBoxUFRG
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemNascimento: TdxLayoutItem
        Parent = layoutGroupFisica1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nascimento:'
        Control = dateEditNascimento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutGroupFisica1: TdxLayoutGroup
        Parent = layoutGroupPessoaFisica
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object layoutGroupFisica2: TdxLayoutGroup
        Parent = layoutGroupPessoaFisica
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object layoutItemNomePai: TdxLayoutItem
        Parent = layoutGroupFisica2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome do Pai:'
        Control = textEditNomePai
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomeMae: TdxLayoutItem
        Parent = layoutGroupFisica2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome da M'#227'e:'
        Control = textEditNomeMae
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutGroupFisica3: TdxLayoutGroup
        Parent = layoutGroupPessoaFisica
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object layoutItemNaturalidade: TdxLayoutItem
        Parent = layoutGroupFisica3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Naturalidade:'
        Control = textEditNaturalidade
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemUFNaturalidade: TdxLayoutItem
        Parent = layoutGroupFisica3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'UF:'
        Control = lookupComboBoxNaturalidade
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 46
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutGroupFisica4: TdxLayoutGroup
        Parent = layoutGroupPessoaFisica
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object layoutItemCodigoSeguranca: TdxLayoutItem
        Parent = layoutGroupFisica4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Seg. CNH:'
        Control = textEditSegurancaCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 97
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemNumeroCNH: TdxLayoutItem
        Parent = layoutGroupFisica4
        AlignVert = avClient
        CaptionOptions.Text = 'N'#186'. CNH:'
        Control = textEditNumeroCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 102
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemRegistroCNH: TdxLayoutItem
        Parent = layoutGroupFisica4
        AlignVert = avClient
        CaptionOptions.Text = 'Registro CNH:'
        Control = textEditRegistroCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemCategoriaCNH: TdxLayoutItem
        Parent = layoutGroupFisica4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Categoria:'
        Control = textEditCategoriaCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 54
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutGroupFisica5: TdxLayoutGroup
        Parent = layoutGroupPessoaFisica
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 4
      end
      object layoutItemDataEmissao: TdxLayoutItem
        Parent = layoutGroupFisica5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Emiss'#227'o CNH:'
        Control = dateEditEmissaoCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 79
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemValidadeCNH: TdxLayoutItem
        Parent = layoutGroupFisica5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Validade CNH:'
        Control = dateEditValidadeCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 79
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemPrimeiraCNH: TdxLayoutItem
        Parent = layoutGroupFisica5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Primeira CNH:'
        Control = dateEditPrimeiraCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 79
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemUFCNH: TdxLayoutItem
        Parent = layoutGroupFisica5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'UF:'
        Control = lookupComboBoxUFCNH
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutGroupPessoaJuridica: TdxLayoutGroup
        Parent = layoutControlDadosGroup_Root
        CaptionOptions.Text = 'Pessoa Jur'#237'dica'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        Index = 1
      end
      object layoutGroupJuridica1: TdxLayoutGroup
        Parent = layoutGroupPessoaJuridica
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object layoutItemNomeFantasia: TdxLayoutItem
        Parent = layoutGroupJuridica1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome Fantasia:'
        Control = textEditNomeFantasia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutGroupJuridica2: TdxLayoutGroup
        Parent = layoutGroupPessoaJuridica
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object layoutItemIE: TdxLayoutItem
        Parent = layoutGroupJuridica1
        AlignVert = avClient
        CaptionOptions.Text = 'Inscri'#231#227'o Estadual:'
        Control = textEditIE
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 139
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemIM: TdxLayoutItem
        Parent = layoutGroupJuridica2
        AlignVert = avClient
        CaptionOptions.Text = 'Inscri'#231#227'o Municipal:'
        Control = textEditIM
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemCRT: TdxLayoutItem
        Parent = layoutGroupJuridica2
        AlignHorz = ahClient
        AlignVert = avCenter
        CaptionOptions.Text = 'CRT:'
        Control = comboBoxCRT
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = layoutGroupPessoaJuridica
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Representante: '
        Control = txtRepresentante
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'CPF Representante: '
        Control = mskCPFRepresentante
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 143
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    object layoutControlComplemento: TdxLayoutControl
      Left = 26
      Top = 294
      Width = 732
      Height = 210
      ParentBackground = True
      TabOrder = 5
      Transparent = True
      object dbComboBoxTipoEndereco: TcxDBComboBox
        Left = 242
        Top = 46
        Hint = 'Tipo de endere'#231'o'
        DataBinding.DataField = 'des_tipo'
        DataBinding.DataSource = dsEnderecos
        Properties.IgnoreMaskBlank = True
        Properties.Items.Strings = (
          'RESIDENCIAL'
          'COMERCIAL'
          'ALTERNATIVO')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 1
        Width = 309
      end
      object dbTextEditEndereco: TcxDBTextEdit
        Left = 89
        Top = 76
        Hint = 'Endere'#231'o'
        DataBinding.DataField = 'des_logradouro'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Width = 251
      end
      object dbTextEditNumero: TcxDBTextEdit
        Left = 371
        Top = 76
        Hint = 'N'#250'mero do endere'#231'o'
        DataBinding.DataField = 'num_logradouro'
        DataBinding.DataSource = dsEnderecos
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Width = 81
      end
      object dbTextEditComplemento: TcxDBTextEdit
        Left = 539
        Top = 76
        DataBinding.DataField = 'des_complemento'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 50
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Width = 167
      end
      object dbTextEditBairro: TcxDBTextEdit
        Left = 89
        Top = 103
        Hint = 'Bairro do endere'#231'o'
        DataBinding.DataField = 'des_bairro'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Width = 223
      end
      object dbTextEditCidade: TcxDBTextEdit
        Left = 363
        Top = 103
        Hint = 'Cidade do endere'#231'o'
        DataBinding.DataField = 'nom_cidade'
        DataBinding.DataSource = dsEnderecos
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Width = 213
      end
      object dbLookupComboBoxUFEndereco: TcxDBLookupComboBox
        Left = 605
        Top = 103
        DataBinding.DataField = 'uf_estado'
        DataBinding.DataSource = dsEnderecos
        Properties.KeyFieldNames = 'uf_estado'
        Properties.ListColumns = <
          item
            FieldName = 'uf_estado'
          end>
        Properties.ListSource = dsEstados
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 8
        Width = 101
      end
      object dbTextEditReferencia: TcxDBTextEdit
        Left = 89
        Top = 130
        Hint = 'Refer'#234'ncia do endere'#231'o'
        DataBinding.DataField = 'des_referencia'
        DataBinding.DataSource = dsEnderecos
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Width = 617
      end
      object dbNavigatorEnderecos: TcxDBNavigator
        Left = 26
        Top = 159
        Width = 217
        Height = 25
        Cursor = crHandPoint
        Buttons.CustomButtons = <>
        Buttons.Images = Data_Sisgef.iml_16_16
        Buttons.First.ImageIndex = 91
        Buttons.PriorPage.Visible = False
        Buttons.Prior.ImageIndex = 94
        Buttons.Next.ImageIndex = 93
        Buttons.NextPage.Visible = False
        Buttons.Last.ImageIndex = 92
        Buttons.Insert.ImageIndex = 97
        Buttons.Delete.ImageIndex = 116
        Buttons.Edit.ImageIndex = 95
        Buttons.Post.Visible = False
        Buttons.Cancel.ImageIndex = 84
        Buttons.Refresh.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = dsEnderecos
        InfoPanel.Visible = True
        TabOrder = 10
      end
      object gridContatos: TcxGrid
        Left = 10000
        Top = 10000
        Width = 680
        Height = 138
        TabOrder = 11
        Visible = False
        object gridContatosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 91
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 94
          Navigator.Buttons.Next.ImageIndex = 93
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 92
          Navigator.Buttons.Insert.ImageIndex = 97
          Navigator.Buttons.Delete.ImageIndex = 116
          Navigator.Buttons.Edit.ImageIndex = 95
          Navigator.Buttons.Post.ImageIndex = 85
          Navigator.Buttons.Cancel.ImageIndex = 84
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsContatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridContatosDBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            VisibleForCustomization = False
          end
          object gridContatosDBTableView1seq_contato: TcxGridDBColumn
            DataBinding.FieldName = 'seq_contato'
            Visible = False
            VisibleForCustomization = False
          end
          object gridContatosDBTableView1des_contato: TcxGridDBColumn
            DataBinding.FieldName = 'des_contato'
            Width = 238
          end
          object gridContatosDBTableView1num_telefone: TcxGridDBColumn
            DataBinding.FieldName = 'num_telefone'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.EditMask = '!\(99\)99999-9999;1; '
            Width = 129
          end
          object gridContatosDBTableView1des_email: TcxGridDBColumn
            DataBinding.FieldName = 'des_email'
            Width = 311
          end
        end
        object gridContatosLevel1: TcxGridLevel
          GridView = gridContatosDBTableView1
        end
      end
      object comboBoxFormaPagamento: TcxComboBox
        Left = 10000
        Top = 10000
        Hint = 'Forma de pagamento'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.IgnoreMaskBlank = True
        Properties.Items.Strings = (
          'NENHUMA'
          'OBB PLUS'
          'DEP'#211'SITO/TRANSFER'#202'NCIA'
          'CHEQUE'
          'TED/DOC'
          'DINHEIRO'
          'FOLHA DE PAGAMENTO'
          'PIX')
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 12
        Text = 'NENHUMA'
        Visible = False
        Width = 562
      end
      object lookupComboBoxBanco: TcxLookupComboBox
        Left = 10000
        Top = 10000
        Hint = 'Banco '
        Properties.KeyFieldNames = 'cod_banco'
        Properties.ListColumns = <
          item
            FieldName = 'nom_banco'
          end>
        Properties.ListSource = dsBancos
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 13
        Visible = False
        Width = 142
      end
      object textEditAgencia: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'Ag'#234'ncia da conta'
        Properties.MaxLength = 10
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 14
        Visible = False
        Width = 115
      end
      object textEditConta: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'N'#250'mero da Conta'
        Properties.MaxLength = 20
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 15
        Visible = False
        Width = 185
      end
      object textEditChavePIX: TcxTextEdit
        Left = 10000
        Top = 10000
        Hint = 'Chave PIX'
        Properties.MaxLength = 70
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 16
        Visible = False
        Width = 562
      end
      object dbCheckBoxCorrespondencia: TcxDBCheckBox
        Left = 26
        Top = 46
        Caption = 'Correspond'#234'ncia'
        DataBinding.DataField = 'dom_correspondencia'
        DataBinding.DataSource = dsEnderecos
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 0
      end
      object dbMaskEditCEP: TcxDBButtonEdit
        Left = 585
        Top = 46
        Hint = 'CEP do endere'#231'o'
        DataBinding.DataField = 'num_cep'
        DataBinding.DataSource = dsEnderecos
        Properties.Buttons = <
          item
            Action = actionPesquisaCEP
            Default = True
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000003084944415478DAA5936B48145114C7FF6776667676669FAE5BB9690F
              D7283048A107A415194905620F90E801BA6410915644515156F425A2282BEA43
              915051F4410A8A8AA8845E509165945256A8EDA699ABBBABEBAE3B33B7512C28
              A32F1D38DC73B9F7FCF873CFFF12FE1185C57E29F035CCEB3CC0221DE0B36731
              B1E460C2D8A9B1D07734958F0331C67E6BF2571EC0F9EA2AA31A8FD28DEB71FE
              E4AE11E0B94F81FE9E249E2F16460206E3DAC7162CCB9A201B67B1BF292B6800
              E2DDE09ECC83FE0B4044436B59C5FE61051EC19BE1F4C7C5096790EA00BE7E82
              925F0871C9B6C7CDABDDF9A3B6D551C22CD230A0D2C83A83F01AFE4D07D8D9B5
              55702CF2211A6A464EC1BAE36F032D15DCE8D1FD59E57B49152C921C6CAF7B7F
              F7C5422D63964EE1FB807DFE20641A3A6E36E0437B2E9F9F55CF965DAA424F24
              2A3EB872A4DF995B7CD55654B642499FA49978E849B3DDAC07BA4EB76E9EB291
              22F761127DE91A51C2A2B685CEF0B256001E31D1027DA08FF7D68B79FEBC137B
              66A479623B7849498A561B54AB532066AA8DACCC2CA1AEBB76509F6A490A428D
              E40C979815438C31360D22E4ECC4D0C3B8FCD59A94EA898B8A8360512C769BF2
              2E32357D7667C5E130355DF75B13E137DB5D8EC63D4A4A6F5C10C109126792DC
              4235C6C6B72A73B733F3F85488B21D9C6C0529F6683F4939BDC1DE4F26BD9BA3
              C81D5A1A08B2A31A615CCA1830C510A48133B57CF62ECE59D576FBCF112E3A74
              23F74E43B41EED0962F74A19B5D53A4C29DEE49AD666B586D14032CD07F5D52D
              3717EDB4B5149DFA3C79A8EBB40B3BC50DB8FC6C22D2BC1E3CAD5A0A5A500303
              000ADE92F8487B52757BA563A1AEBECA60A30B9DAD56B8330CA748B667B18194
              5559CB0BDB3CBE3E96B77B362497537FB9AF58FBA988BEDD04170A409F3C13E8
              F882AD0F2FC899A25D53798BAADBDD4ED93AB5EC51CEF28C8B4083E1B573EC4F
              E70E02D0FD0DF066129A5E311CAE1C051354ACA908C300207FEFF7E1ABEB8C3C
              3BC2D6D46318C95900C41E01AD1FC1D5EE93F984C6687A5182591D32597D0BB5
              E9FE392AB0E5AF3F96F09FF103BC1E2F460AC9B2350000000049454E44AE4260
              82}
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.EditMask = '00000\-999;0; '
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 2
        Width = 121
      end
      object gridCNAE: TcxGrid
        Left = 10000
        Top = 10000
        Width = 680
        Height = 127
        TabOrder = 17
        Visible = False
        object gridCNAEDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsCNAE
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gridCNAEDBTableView1id_cnae: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id_cnae'
            Visible = False
          end
          object gridCNAEDBTableView1id_contratados: TcxGridDBColumn
            Caption = 'ID Cotratado'
            DataBinding.FieldName = 'id_contratados'
            Visible = False
          end
          object gridCNAEDBTableView1cod_tipo_cnae: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'des_tipo_cnae'
            Width = 111
          end
          object gridCNAEDBTableView1cod_cnae: TcxGridDBColumn
            Caption = 'CNAE'
            DataBinding.FieldName = 'cod_cnae'
            Width = 133
          end
          object gridCNAEDBTableView1des_cnae: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'des_cnae'
            Width = 434
          end
        end
        object gridCNAELevel1: TcxGridLevel
          GridView = gridCNAEDBTableView1
        end
      end
      object layoutControlComplementoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldTabbed
        ShowBorder = False
        Index = -1
      end
      object layoutGroupEnderecos: TdxLayoutGroup
        Parent = layoutControlComplementoGroup_Root
        CaptionOptions.Text = 'Endere'#231'os'
        ButtonOptions.Buttons = <>
        Index = 0
      end
      object layoutGroupContatos: TdxLayoutGroup
        Parent = layoutControlComplementoGroup_Root
        CaptionOptions.Text = 'Contatos'
        ButtonOptions.Buttons = <>
        Index = 1
      end
      object layoutGroupDadosBancarios: TdxLayoutGroup
        Parent = layoutControlComplementoGroup_Root
        CaptionOptions.Text = 'Dados Banc'#225'rios'
        ButtonOptions.Buttons = <>
        ItemIndex = 3
        Index = 2
      end
      object layoutGroupEndereco1: TdxLayoutGroup
        Parent = layoutGroupEnderecos
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object layoutItemTipoEndereco: TdxLayoutItem
        Parent = layoutGroupEndereco1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Tipo de Endere'#231'o:'
        Control = dbComboBoxTipoEndereco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 279
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object LayoutGroupEndereco2: TdxLayoutGroup
        Parent = layoutGroupEnderecos
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object layoutItemEndereco: TdxLayoutItem
        Parent = LayoutGroupEndereco2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Endere'#231'o:'
        Control = dbTextEditEndereco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 193
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNumero: TdxLayoutItem
        Parent = LayoutGroupEndereco2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'N'#186'.:'
        Control = dbTextEditNumero
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 61
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemComplementoEndewreco: TdxLayoutItem
        Parent = LayoutGroupEndereco2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Complemento:'
        Control = dbTextEditComplemento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutGroupEndereco3: TdxLayoutGroup
        Parent = layoutGroupEnderecos
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object layoutItemBairro: TdxLayoutItem
        Parent = layoutGroupEndereco3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Bairro:'
        Control = dbTextEditBairro
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemCidade: TdxLayoutItem
        Parent = layoutGroupEndereco3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Cidade:'
        Control = dbTextEditCidade
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemUFEndereco: TdxLayoutItem
        Parent = layoutGroupEndereco3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'UF:'
        Control = dbLookupComboBoxUFEndereco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 57
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutGroupEndereco4: TdxLayoutGroup
        Parent = layoutGroupEnderecos
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 3
      end
      object layoutItemReferencia: TdxLayoutItem
        Parent = layoutGroupEndereco4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Refer'#234'ncia:'
        Control = dbTextEditReferencia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNavegadorEndereco: TdxLayoutItem
        Parent = layoutGroupEnderecos
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'cxDBNavigator1'
        CaptionOptions.Visible = False
        Control = dbNavigatorEnderecos
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 217
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutItemContatos: TdxLayoutItem
        Parent = layoutGroupContatos
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Contatos / EMails'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridContatos
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object LayoutGroupDadosBancarios1: TdxLayoutGroup
        Parent = layoutGroupDadosBancarios
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object layoutItemFormaPagamento: TdxLayoutItem
        Parent = LayoutGroupDadosBancarios1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Forma de Pagamento:'
        Control = comboBoxFormaPagamento
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutGroupDadosBancarios2: TdxLayoutGroup
        Parent = layoutGroupDadosBancarios
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object layoutItemBanco: TdxLayoutItem
        Parent = layoutGroupDadosBancarios2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Banco:'
        Control = lookupComboBoxBanco
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 74
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemAgencia: TdxLayoutItem
        Parent = layoutGroupDadosBancarios2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ag'#234'ncia:'
        Control = textEditAgencia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 72
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemConta: TdxLayoutItem
        Parent = layoutGroupDadosBancarios2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'N'#176'. Conta:'
        Control = textEditConta
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutGroupDadosBancarios3: TdxLayoutGroup
        Parent = layoutGroupDadosBancarios
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object LayoutGrouPDadosBancarios4: TdxLayoutGroup
        Parent = layoutGroupDadosBancarios
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 3
      end
      object layoutItemChavePIX: TdxLayoutItem
        Parent = LayoutGrouPDadosBancarios4
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Chave: PIX:'
        Control = textEditChavePIX
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemCorrespondencia: TdxLayoutItem
        Parent = layoutGroupEndereco1
        AlignVert = avClient
        CaptionOptions.Text = 'cxDBCheckBox1'
        CaptionOptions.Visible = False
        Control = dbCheckBoxCorrespondencia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 112
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutGroupCNAE: TdxLayoutGroup
        Parent = layoutControlComplementoGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'CNAE'
        ButtonOptions.Buttons = <>
        Index = 3
      end
      object layoutGroupGridVeiculos: TdxLayoutGroup
        Parent = layoutGroupCNAE
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = layoutGroupGridVeiculos
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = layoutGroupEndereco1
        CaptionOptions.Text = 'CEP:'
        Control = dbMaskEditCEP
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = layoutGroupGridVeiculos
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'cxGrid1'
        CaptionOptions.Visible = False
        Control = gridCNAE
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
    object memoObservacoes: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      TabOrder = 13
      Visible = False
      Height = 89
      Width = 732
    end
    object cxButton2: TcxButton
      Left = 593
      Top = 525
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionGravar
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 16
    end
    object cxButton3: TcxButton
      Left = 682
      Top = 525
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      OptionsImage.ImageIndex = 98
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 17
    end
    object checkBoxStatus: TcxCheckBox
      Left = 11
      Top = 527
      Hint = 'Cadastro ativo ou inativo'
      Caption = 'ATIVO'
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '2'
      Properties.OnChange = checkBoxStatusPropertiesChange
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 14
    end
    object maskEditCPCNPJ: TcxButtonEdit
      Left = 272
      Top = 11
      Properties.Buttons = <
        item
          Action = actionPesquisaCNPJ
          Default = True
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000003214944415478DA6364C003166F3EC9CAC8C4F83FCEC7FCCFBFFFFFB1
            AA61C4A579DEFA638C890196605D8C8C8C2CC7CEDDFE6B65A48A610A6356F372
            8669B591608E63D204A6FDF30A408AFEAFD9759621D8D54804C8FE0934E0F3FF
            FFFFC0F679E64C65D87FF406434F5930C86006C6FF484E8BAF5BC2B07BD13E06
            963F97187AE6CCC898B5F270DEFBEFBF7F7FB8B57FD585836B565A4C5B7D9FFB
            F2ABBFA79694215CD0B7E61003370313437A8803435ACB12B323072FE77DF9FE
            D1CCC1C648414880F7DF81D357CF3D7FF4459F898B85B33ACB23F1C8993B4BD8
            5959FE1A6ACB315CB87C8581D13F65129FA7B3BED69C75C7B2EF3E7C15F30D68
            AA8A94E8665E6E16F3CF1FBF8BBD7CFFF19A202FDB293D0D2549051921F105EB
            4FBEB1D0957F1BE965D267A4A77B8631A779F9BC3DA76F873F7FFE9E4B5549FC
            B2102F27C3AFDF7FAEFF6762623B78FCBA123F3F8F90A385FA150E16A66F5B0E
            5F0BFAF20F1816DF7E30C848087E30E2BA25CB583D713DF7D92367131FBEFC2C
            999F1BB2B565F68EE54F9EBD939312137C1266AF304D5E5E9E67EAC203A5775E
            BC6365E0606760FCFB87414759EA6B46AC67D5E1B593263116B4AF6098B6FA2F
            03C3D74F0CD6965FE61FB8F030E13F1BCB5786DF7FB8D998987FF9DA6AB1682B
            4BAEDA7EFCC6C70F5FBE3BF173727F76D213CA7DFCF4F9B16553AB10B1A0D3F4
            983155E5BEF5967DE717EF397553819193E3F7FFBF7F1959FF33B0E8288A6F2E
            89776CD252967CBE61D3964F0D15399FE1B10033A0AC76220397A0180337BFB0
            D29AFDD7269DB976CFFB1F2BF32F86BFFFFE33FCFCC31EE26EBA4A5B5B31B221
            D1FE1F4A42FA8F9644F543DA18DE9F9ECD256E99B1E2CC8D27BEA0B4EA68A4B2
            FECE9E39715C021A5F6F5C5CFD1FAF016D7376307233FFFE2F2824CABD64DB99
            F59C9CAC0CD19EA6815F3F7FF89A18E2843F2FB885973398D958337CFCC1C438
            A9C4FBFFDE93377978B9D819CC7415BE34CCDECBF8EFE3CBFF0C9C7C0CCD39BE
            B83353CF82DD0CF79EBE63985A15C670F5C91B06010E560669117E86EA299B19
            94A485195282AC09E7C68A091B19405E63666662E2E66463F8F9EBCF3F2E205D
            91E486A11600D2C14D2A3D80E1790000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!000\.000\.000\/0000\-00;0; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Text = '               '
      Width = 138
    end
    object cxButton6: TcxButton
      Left = 495
      Top = 525
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Action = actionContrato
      OptionsImage.ImageIndex = 115
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 15
    end
    object cedSalario: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'Informa o sal'#225'rio base'
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 116
    end
    object cboBase: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Base'
      Properties.Items.Strings = (
        'Selecione'
        'ABAR'#201
        'ANCHIETA'
        'ARACRUZ'
        'CARIACICA'
        'CARINHANHA'
        'EUN'#193'POLIS'
        'JEROMOABO'
        'MATRIZ '
        'P.AFONSO'
        'PORTO '
        'RIBEIRA '
        'ARRAIL'
        'TRANCOSO'
        'LINE HAUL')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Text = 'Selecione'
      Visible = False
      Width = 117
    end
    object icbFuncao: TcxImageComboBox
      Left = 10000
      Top = 10000
      EditValue = 0
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.Items = <
        item
          Description = 'Selecione'
          ImageIndex = 93
          Value = 0
        end
        item
          Description = 'ANALISTA'
          ImageIndex = 93
          Value = 16
        end
        item
          Description = 'AUXILIAR EXPEDI'#199#195'O'
          ImageIndex = 93
          Value = 17
        end
        item
          Description = 'AJUDANTE DE MOTORISTA'
          ImageIndex = 93
          Value = 18
        end
        item
          Description = 'COORDENADOR(A)'
          ImageIndex = 93
          Value = 19
        end
        item
          Description = 'ASG'
          ImageIndex = 93
          Value = 20
        end
        item
          Description = 'SUPERVISOR(A)'
          ImageIndex = 93
          Value = 21
        end
        item
          Description = 'AUXILIAR EXPEDI'#199#195'O II'
          ImageIndex = 93
          Value = 22
        end
        item
          Description = 'ASSISTENTE FINANCEIRO'
          ImageIndex = 93
          Value = 23
        end
        item
          Description = 'CAPTA'#199#195'O'
          ImageIndex = 93
          Value = 24
        end
        item
          Description = 'FINANCEIRO'
          ImageIndex = 93
          Value = 25
        end
        item
          Description = 'GERENTE'
          ImageIndex = 93
          Value = 26
        end
        item
          Description = 'LIDER DE EXPEDI'#199#195'O'
          ImageIndex = 93
          Value = 27
        end
        item
          Description = 'MONITORAMENTO'
          ImageIndex = 93
          Value = 28
        end
        item
          Description = 'MOTORISTA'
          ImageIndex = 93
          Value = 29
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Visible = False
      Width = 154
    end
    object cboTipoPessoa: TcxComboBox
      Left = 142
      Top = 11
      Hint = 'Tipo de Pessoa'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'F'#237'sica / Aut'#244'nomo'
        'Jur'#237'dica')
      Properties.OnChange = cboTipoPessoaPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Jur'#237'dica'
      Width = 67
    end
    object datAdmissao: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de admiss'#227'o'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Visible = False
      Width = 147
    end
    object datDEmissao: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de demiss'#227'o'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Visible = False
      Width = 147
    end
    object cboCategoria: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Categoria do contratado'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'ADMINISTRATIVO'
        'TRANSPORTE')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Text = 'Selecione ...'
      Visible = False
      Width = 142
    end
    object cboSexo: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Sexo do contratado'
      Properties.Items.Strings = (
        'Selecione ...'
        'MASCULINO'
        'FEMINIMO'
        'N'#195'O SE APLICA')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Text = 'cboSexo'
      Visible = False
      Width = 117
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object layoutItemMaskID: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'ID:'
      Control = maskEditID
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlPadraoGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemTextEditNome: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome:'
      Control = textEditNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 306
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemDadosGeral: TdxLayoutItem
      Parent = layoutGroupCadastro
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = layoutControlDados
      ControlOptions.OriginalHeight = 184
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemComplemento: TdxLayoutItem
      Parent = layoutGroupCadastro
      CaptionOptions.Text = 'Complemento'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = layoutControlComplemento
      ControlOptions.OriginalHeight = 210
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGroupMaster: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object layoutGroupCadastro: TdxLayoutGroup
      Parent = layoutGroupMaster
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object layoutGroupComplementos: TdxLayoutGroup
      Parent = layoutGroupMaster
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'RH / Observa'#231#245'es'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object layoutGroupObs: TdxLayoutGroup
      Parent = layoutGroupComplementos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object layoutItemObservacoes: TdxLayoutItem
      Parent = layoutGroupObs
      CaptionOptions.Text = 'Observa'#231#245'es:'
      CaptionOptions.Layout = clTop
      Control = memoObservacoes
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutGroupOptions: TdxLayoutGroup
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = layoutGroupOptions
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = layoutGroupOptions
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = layoutGroupOptions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = checkBoxStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avCenter
      CaptionOptions.Text = 'CPF/CNPJ:'
      Control = maskEditCPCNPJ
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = layoutGroupOptions
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 92
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutGroupComplementos
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'RH'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sal'#225'rio Base:'
      Control = cedSalario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Base:'
      Control = cboBase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fun'#231#227'o:'
      Control = icbFuncao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 159
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Tipo:'
      Control = cboTipoPessoa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Data de Admiss'#227'o'
      Control = datAdmissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Data de Demiss'#227'o:'
      Control = datDEmissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Categoria:'
      Control = cboCategoria
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lyiSexo: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sexo:'
      Visible = False
      Control = cboSexo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = memTableEnderecos
    Left = 536
    Top = 296
  end
  object memTableContatos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 584
    Top = 240
    object memTableContatosseq_contato: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'seq_contato'
    end
    object memTableContatosid_contratados: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'id_contratados'
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
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = memTableContatos
    Left = 536
    Top = 240
  end
  object actionListCadastro: TActionList
    Left = 640
    Top = 24
    object actionIncluir: TAction
      Caption = 'Incluir'
      Hint = 'Incluir novo cadastro'
      ShortCut = 113
    end
    object actionLocalizar: TAction
      Caption = 'Localizar'
      Hint = 'Localizar cadastro'
      ShortCut = 119
      OnExecute = actionLocalizarExecute
    end
    object actionEditar: TAction
      Caption = 'Editar'
      Hint = 'Editar dados do cadastro'
      ShortCut = 114
    end
    object actionCancelar: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      OnExecute = actionCancelarExecute
    end
    object actionGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dados'
      ShortCut = 116
      OnExecute = actionGravarExecute
    end
    object actionDocumentosVencidos: TAction
      Caption = 'Vencimento de Documentos'
      Hint = 'Lista de Documentos Vencidos e a Vencer'
    end
    object actionVencimentoGR: TAction
      Caption = 'Vencimentos GR'
      Hint = 'Lista de Vencimentos de GR'
    end
    object actionFichaDIRECT: TAction
      Caption = 'Emitir Ficha Direct'
      Hint = 'Emitir ficha de cadastro daa DIRECT'
    end
    object actionSolicitarGR: TAction
      Caption = 'Solicitar Pesquisa GR'
      Hint = 'Emitir E-Mail solicitando pesquisa GR'
    end
    object actionContrato: TAction
      Caption = 'Contrato'
      Hint = 'Emitir contrato de servi'#231'o'
      OnExecute = actionContratoExecute
    end
    object actionFechar: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      OnExecute = actionFecharExecute
    end
    object actionAnexarDocumentos: TAction
      Caption = '&Anexos'
      Enabled = False
      Hint = 'Anexar documentos'
      OnExecute = actionAnexarDocumentosExecute
    end
    object actionNovoVeiculo: TAction
      Caption = 'Novo'
      Hint = 'Novo ve'#237'culo'
      OnExecute = actionNovoVeiculoExecute
    end
    object actionEditarVeiculo: TAction
      Caption = 'Editar'
      Hint = 'Editar ve'#237'culo'
    end
    object actionPesquisaCNPJ: TAction
      Caption = 'Pesquisa CNPJ'
      OnExecute = actionPesquisaCNPJExecute
    end
    object actionPesquisaCEP: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisa CEP'
      OnExecute = actionPesquisaCEPExecute
    end
    object actionPesquisaCNPJMEI: TAction
      Caption = 'Pesquisa CNPJ'
      Hint = 'Pesquisa CNPJ'
    end
  end
  object memTableEstados: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 304
    Top = 38
    object memTableEstadosuf_estado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_estado'
      Size = 2
    end
    object memTableEstadosnom_estado: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_estado'
      Size = 72
    end
  end
  object memTableBancos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 38
    object memTableBancoscod_banco: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_banco'
      Size = 4
    end
    object memTableBancosnom_banco: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_banco'
      Size = 50
    end
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = memTableEstados
    Left = 264
    Top = 38
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = memTableBancos
    Left = 368
    Top = 38
  end
  object memTableEnderecos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_endereco'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'des_logradouro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_logradouro'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'des_complemento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_bairro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_cidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'uf_estado'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'des_referencia'
        DataType = ftString
        Size = 132
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
    Left = 592
    Top = 293
    Content = {
      414442530F00A453E9050000FF00010001FF02FF030400220000006D0065006D
      005400610062006C00650045006E00640065007200650063006F00730005000A
      0000005400610062006C006500060000000000070000080032000000090000FF
      0AFF0B040016000000690064005F0065006E00640065007200650063006F0005
      0016000000690064005F0065006E00640065007200650063006F000C00010000
      000E000D000F0001100001110001120001130016000000690064005F0065006E
      00640065007200650063006F00FEFF0B04001C000000690064005F0063006F00
      6E007400720061007400610064006F00730005001C000000690064005F006300
      6F006E007400720061007400610064006F0073000C00020000000E000D000F00
      0110000111000112000113001C000000690064005F0063006F006E0074007200
      61007400610064006F007300FEFF0B0400100000006400650073005F00740069
      0070006F000500100000006400650073005F007400690070006F000C00030000
      000E0014001500140000000F0001160001100001170001110001120001130010
      0000006400650073005F007400690070006F00180014000000FEFF0B04000E00
      00006E0075006D005F0063006500700005000E0000006E0075006D005F006300
      650070000C00040000000E0014001500090000000F0001160001100001170001
      11000112000113000E0000006E0075006D005F00630065007000180009000000
      FEFF0B04001C0000006400650073005F006C006F0067007200610064006F0075
      0072006F0005001C0000006400650073005F006C006F0067007200610064006F
      00750072006F000C00050000000E0014001500460000000F0001160001100001
      17000111000112000113001C0000006400650073005F006C006F006700720061
      0064006F00750072006F00180046000000FEFF0B04001C0000006E0075006D00
      5F006C006F0067007200610064006F00750072006F0005001C0000006E007500
      6D005F006C006F0067007200610064006F00750072006F000C00060000000E00
      140015000B0000000F000116000110000117000111000112000113001C000000
      6E0075006D005F006C006F0067007200610064006F00750072006F0018000B00
      0000FEFF0B04001E0000006400650073005F0063006F006D0070006C0065006D
      0065006E0074006F0005001E0000006400650073005F0063006F006D0070006C
      0065006D0065006E0074006F000C00070000000E0014001500320000000F0001
      16000110000117000111000112000113001E0000006400650073005F0063006F
      006D0070006C0065006D0065006E0074006F00180032000000FEFF0B04001400
      00006400650073005F00620061006900720072006F0005001400000064006500
      73005F00620061006900720072006F000C00080000000E001400150046000000
      0F00011600011000011700011100011200011300140000006400650073005F00
      620061006900720072006F00180046000000FEFF0B0400140000006E006F006D
      005F006300690064006100640065000500140000006E006F006D005F00630069
      0064006100640065000C00090000000E0014001500460000000F000116000110
      00011700011100011200011300140000006E006F006D005F0063006900640061
      0064006500180046000000FEFF0B040012000000750066005F00650073007400
      610064006F00050012000000750066005F00650073007400610064006F000C00
      0A0000000E0014001500020000000F0001160001190001100001170001110001
      120001130012000000750066005F00650073007400610064006F001800020000
      00FEFF0B04001C0000006400650073005F007200650066006500720065006E00
      63006900610005001C0000006400650073005F00720065006600650072006500
      6E006300690061000C000B0000000E0014001500840000000F00011600011000
      0117000111000112000113001C0000006400650073005F007200650066006500
      720065006E00630069006100180084000000FEFEFF1AFEFF1BFEFF1CFEFEFEFF
      1DFEFF1EFF1FFEFEFE0E004D0061006E0061006700650072001E005500700064
      0061007400650073005200650067006900730074007200790012005400610062
      006C0065004C006900730074000A005400610062006C00650008004E0061006D
      006500140053006F0075007200630065004E0061006D0065000A005400610062
      0049004400240045006E0066006F0072006300650043006F006E007300740072
      00610069006E00740073001E004D0069006E0069006D0075006D004300610070
      0061006300690074007900180043006800650063006B004E006F0074004E0075
      006C006C00140043006F006C0075006D006E004C006900730074000C0043006F
      006C0075006D006E00100053006F007500720063006500490044000E00640074
      0049006E00740033003200100044006100740061005400790070006500140053
      0065006100720063006800610062006C0065000800420061007300650012004F
      0049006E0055007000640061007400650010004F0049006E0057006800650072
      0065001A004F0072006900670069006E0043006F006C004E0061006D00650018
      006400740041006E007300690053007400720069006E0067000800530069007A
      006500120041006C006C006F0077004E0075006C006C0014004F0041006C006C
      006F0077004E0075006C006C00140053006F007500720063006500530069007A
      0065001000460069007800650064004C0065006E001C0043006F006E00730074
      007200610069006E0074004C00690073007400100056006900650077004C0069
      00730074000E0052006F0077004C006900730074001800520065006C00610074
      0069006F006E004C006900730074001C0055007000640061007400650073004A
      006F00750072006E0061006C000E004300680061006E00670065007300}
    object memTableEnderecos_id_endereco: TIntegerField
      FieldName = 'id_endereco'
      Required = True
    end
    object memTableEnderecos_id_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableEnderecos_des_tipo: TStringField
      FieldName = 'des_tipo'
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
      Size = 11
    end
    object memTableEnderecosdes_complemento: TStringField
      FieldName = 'des_complemento'
      Size = 50
    end
    object memTableEnderecos_des_bairro: TStringField
      FieldName = 'des_bairro'
      Size = 70
    end
    object memTableEnderecosnom_cidade: TStringField
      FieldName = 'nom_cidade'
      Size = 70
    end
    object memTableEnderecosuf_estado: TStringField
      FieldName = 'uf_estado'
      FixedChar = True
      Size = 2
    end
    object memTableEnderecosdes_referencia: TStringField
      FieldName = 'des_referencia'
      Size = 132
    end
  end
  object memTableCNAE: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_cnae'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_cnae'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'des_cnae'
        Attributes = [faRequired]
        DataType = ftString
        Size = 132
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
    Left = 400
    Top = 237
    Content = {
      414442530F00A4530F020000FF00010001FF02FF030400180000006D0065006D
      005400610062006C00650043004E004100450005000A0000005400610062006C
      006500060000000000070000080032000000090000FF0AFF0B04000E00000069
      0064005F0063006E006100650005000E000000690064005F0063006E00610065
      000C00010000000E000D000F000110000111000112000113000E000000690064
      005F0063006E0061006500FEFF0B04001C000000690064005F0063006F006E00
      7400720061007400610064006F00730005001C000000690064005F0063006F00
      6E007400720061007400610064006F0073000C00020000000E000D000F000110
      000111000112000113001C000000690064005F0063006F006E00740072006100
      7400610064006F007300FEFF0B04001000000063006F0064005F0063006E0061
      00650005001000000063006F0064005F0063006E00610065000C00030000000E
      0014001500140000000F000110000111000112000113001000000063006F0064
      005F0063006E0061006500160014000000FEFF0B040010000000640065007300
      5F0063006E00610065000500100000006400650073005F0063006E0061006500
      0C00040000000E0014001500840000000F000110000111000112000113001000
      00006400650073005F0063006E0061006500160084000000FEFEFF17FEFF18FE
      FF19FEFEFEFF1AFEFF1BFF1CFEFEFE0E004D0061006E0061006700650072001E
      0055007000640061007400650073005200650067006900730074007200790012
      005400610062006C0065004C006900730074000A005400610062006C00650008
      004E0061006D006500140053006F0075007200630065004E0061006D0065000A
      0054006100620049004400240045006E0066006F0072006300650043006F006E
      00730074007200610069006E00740073001E004D0069006E0069006D0075006D
      0043006100700061006300690074007900180043006800650063006B004E006F
      0074004E0075006C006C00140043006F006C0075006D006E004C006900730074
      000C0043006F006C0075006D006E00100053006F007500720063006500490044
      000E006400740049006E00740033003200100044006100740061005400790070
      0065001400530065006100720063006800610062006C00650008004200610073
      00650012004F0049006E0055007000640061007400650010004F0049006E0057
      0068006500720065001A004F0072006900670069006E0043006F006C004E0061
      006D00650018006400740041006E007300690053007400720069006E00670008
      00530069007A006500140053006F007500720063006500530069007A0065001C
      0043006F006E00730074007200610069006E0074004C00690073007400100056
      006900650077004C006900730074000E0052006F0077004C0069007300740018
      00520065006C006100740069006F006E004C006900730074001C005500700064
      0061007400650073004A006F00750072006E0061006C000E004300680061006E
      00670065007300}
    object memTableCNAEid_cnae: TIntegerField
      FieldName = 'id_cnae'
      Required = True
    end
    object memTableCNAEid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableCNAEdes_tipo_cnae: TStringField
      FieldKind = fkCalculated
      FieldName = 'des_tipo_cnae'
      Calculated = True
    end
    object memTableCNAEcod_cnae: TStringField
      FieldName = 'cod_cnae'
      Required = True
    end
    object memTableCNAEdes_cnae: TStringField
      FieldName = 'des_cnae'
      Required = True
      Size = 132
    end
  end
  object dsCNAE: TDataSource
    AutoEdit = False
    DataSet = memTableCNAE
    Left = 472
    Top = 237
  end
end
