object view_CadastroEmpresas: Tview_CadastroEmpresas
  Left = 0
  Top = 0
  Hint = 'Excluir registro'
  Caption = 'Cadastro de Empresas'
  ClientHeight = 445
  ClientWidth = 873
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 58
    Width = 873
    Height = 387
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object codigoEmpresa: TcxDBTextEdit
      Left = 60
      Top = 12
      Hint = 'C'#243'digo da empresa'
      TabStop = False
      DataBinding.DataField = 'cod_empresa'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 0
      Width = 73
    end
    object nomeRazao: TcxDBTextEdit
      Left = 394
      Top = 12
      Hint = 'Nome ou Raz'#227'o Social'
      DataBinding.DataField = 'des_razao_social'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 2
      Width = 467
    end
    object nomeFantasia: TcxDBTextEdit
      Left = 100
      Top = 43
      Hint = 'Nome fantasia ou alias'
      DataBinding.DataField = 'nom_fantasia'
      DataBinding.DataSource = dsCadastro
      Style.HotTrack = False
      TabOrder = 3
      Width = 236
    end
    object crt: TcxDBImageComboBox
      Left = 373
      Top = 43
      DataBinding.DataField = 'cod_crt'
      DataBinding.DataSource = dsCadastro
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = '1 - Simples Nacional'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = '2 - Simples Nacional, excesso sublimite de receita bruta'
          Value = 2
        end
        item
          Description = '3 - Regime Normal'
          Value = 3
        end>
      Style.HotTrack = False
      TabOrder = 4
      Width = 166
    end
    object dataCadastro: TcxDBDateEdit
      Left = 629
      Top = 43
      Hint = 'Data do cadastro'
      TabStop = False
      DataBinding.DataField = 'dat_cadastro'
      DataBinding.DataSource = dsCadastro
      Properties.ReadOnly = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 5
      Width = 157
    end
    object status: TcxDBCheckBox
      Left = 793
      Top = 43
      Cursor = crHandPoint
      Caption = 'INATIVO'
      DataBinding.DataField = 'cod_status'
      DataBinding.DataSource = dsCadastro
      Properties.Alignment = taRightJustify
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = statusPropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object cnpjEmpresa: TcxDBButtonEdit
      Left = 177
      Top = 12
      DataBinding.DataField = 'num_cnpj'
      DataBinding.DataSource = dsCadastro
      Properties.Buttons = <
        item
          Action = actionConsultaCNPJ
          Default = True
          ImageIndex = 81
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '99\.999\.999\/9999\-99;1; '
      Style.HotTrack = False
      TabOrder = 1
      Width = 136
    end
    object gridContatos: TcxGrid
      Left = 521
      Top = 132
      Width = 324
      Height = 227
      TabOrder = 19
      object gridContatosDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsContatos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridContatosDBTableView1seq_contato: TcxGridDBColumn
          DataBinding.FieldName = 'seq_contato'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridContatosDBTableView1cod_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_empresa'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridContatosDBTableView1des_contato: TcxGridDBColumn
          DataBinding.FieldName = 'des_contato'
          Width = 103
        end
        object gridContatosDBTableView1num_telefone: TcxGridDBColumn
          DataBinding.FieldName = 'num_telefone'
        end
        object gridContatosDBTableView1des_email: TcxGridDBColumn
          Caption = 'E-Mail'
          DataBinding.FieldName = 'des_email'
        end
      end
      object gridContatosLevel1: TcxGridLevel
        GridView = gridContatosDBTableView1
      end
    end
    object tipoEndereco: TcxDBTextEdit
      Left = 60
      Top = 111
      Hint = 'Tipo de endere'#231'o'
      DataBinding.DataField = 'des_tipo'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 7
      Width = 293
    end
    object cepEndereco: TcxDBButtonEdit
      Left = 390
      Top = 111
      Hint = 'CEP do endere'#231'o'
      DataBinding.DataField = 'num_cep'
      DataBinding.DataSource = dsEnderecos
      Properties.Buttons = <
        item
          Action = actionPesquisarCEP
          Default = True
          ImageIndex = 82
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '00000\-999;1; '
      Style.HotTrack = False
      TabOrder = 8
      Width = 124
    end
    object logradouroEndereco: TcxDBTextEdit
      Left = 99
      Top = 142
      DataBinding.DataField = 'des_logradouro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 9
      Width = 314
    end
    object numeroEndereco: TcxDBTextEdit
      Left = 443
      Top = 142
      DataBinding.DataField = 'num_logradouro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 10
      Width = 71
    end
    object complementoEndereco: TcxDBTextEdit
      Left = 114
      Top = 172
      Hint = 'Complemento do endere'#231'o'
      DataBinding.DataField = 'des_complemento'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 11
      Width = 183
    end
    object bairroEndereco: TcxDBTextEdit
      Left = 344
      Top = 172
      Hint = 'Bairro do endere'#231'o'
      DataBinding.DataField = 'des_bairro'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 12
      Width = 170
    end
    object cidadeEndereco: TcxDBTextEdit
      Left = 74
      Top = 202
      DataBinding.DataField = 'nom_cidade'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 13
      Width = 354
    end
    object ufEndereco: TcxDBComboBox
      Left = 458
      Top = 202
      DataBinding.DataField = 'uf_estado'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 14
      Width = 56
    end
    object cnpjEndereco: TcxDBMaskEdit
      Left = 28
      Top = 253
      Hint = 'CN PJ do endere'#231'o'
      DataBinding.DataField = 'num_cnpj'
      DataBinding.DataSource = dsEnderecos
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '99\.999\.999\/9999\-99;1; '
      Style.HotTrack = False
      TabOrder = 15
      Width = 176
    end
    object ieEndereco: TcxDBTextEdit
      Left = 211
      Top = 253
      Hint = 'Inscri'#231#227'o Estadual do endere'#231'o'
      DataBinding.DataField = 'num_ie'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 16
      Width = 161
    end
    object imEndereco: TcxDBTextEdit
      Left = 379
      Top = 253
      Hint = 'Inscri'#231#227'o Municipal do endere'#231'o'
      DataBinding.DataField = 'num_im'
      DataBinding.DataSource = dsEnderecos
      Style.HotTrack = False
      TabOrder = 17
      Width = 135
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 28
      Top = 333
      Width = 239
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
      DataSource = dsEnderecos
      InfoPanel.Visible = True
      TabOrder = 18
    end
    object gridCNAE: TcxGrid
      Left = 10000
      Top = 10000
      Width = 794
      Height = 200
      TabOrder = 20
      Visible = False
      object gridCNAEDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsCNAE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridCNAEDBTableView1id_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'id_cnae'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridCNAEDBTableView1cod_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_empresa'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridCNAEDBTableView1cod_tipo: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'PRIM'#193'RIA'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'SEGUND'#193'RIA'
              Value = 2
            end>
          Width = 80
        end
        object gridCNAEDBTableView1cod_cnae: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_cnae'
          Width = 111
        end
        object gridCNAEDBTableView1des_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'des_cnae'
        end
      end
      object gridCNAELevel1: TcxGridLevel
        GridView = gridCNAEDBTableView1
      end
    end
    object gridFinanceiro: TcxGrid
      Left = 10000
      Top = 10000
      Width = 817
      Height = 200
      TabOrder = 21
      Visible = False
      object gridFinanceiroDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsFinanceiro
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridFinanceiroDBTableView1id_financeiro: TcxGridDBColumn
          DataBinding.FieldName = 'id_financeiro'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridFinanceiroDBTableView1cod_empresa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_empresa'
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object gridFinanceiroDBTableView1cod_banco: TcxGridDBColumn
          DataBinding.FieldName = 'cod_banco'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Action = actionPesquisarBancos
              Default = True
              ImageIndex = 14
              Kind = bkGlyph
            end>
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.ReadOnly = True
          Width = 66
        end
        object gridFinanceiroDBTableView1nom_banco: TcxGridDBColumn
          DataBinding.FieldName = 'nom_banco'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 181
        end
        object gridFinanceiroDBTableView1cod_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agencia'
          Width = 81
        end
        object gridFinanceiroDBTableView1num_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          Width = 187
        end
      end
      object gridFinanceiroLevel1: TcxGridLevel
        GridView = gridFinanceiroDBTableView1
      end
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'C'#243'digo:'
      Control = codigoEmpresa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Raz'#227'o Social:'
      Control = nomeRazao
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 153
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome Fantasia:'
      Control = nomeFantasia
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 154
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CRT:'
      Control = crt
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Data Cadastro:'
      Control = dataCadastro
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = status
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 68
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Endere'#231'os / Contatos'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Adicionais'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Endere'#231'os'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 5
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'CNPJ:'
      Control = cnpjEmpresa
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 136
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Contatos'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Contatos:'
      CaptionOptions.Layout = clTop
      Control = gridContatos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo:'
      Control = tipoEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'CEP:'
      Control = cepEndereco
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Logradouro:'
      Control = logradouroEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'N'#186'.'
      Control = numeroEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Complemento:'
      Control = complementoEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Bairro:'
      Control = bairroEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Cidade:'
      Control = cidadeEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'UF:'
      Control = ufEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'CNPJ:'
      CaptionOptions.Layout = clTop
      Control = cnpjEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Ins. Estadual:'
      CaptionOptions.Layout = clTop
      Control = ieEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Ins. Municipal:'
      CaptionOptions.Layout = clTop
      Control = imEndereco
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxDBNavigator1'
      CaptionOptions.Visible = False
      Control = cxDBNavigator1
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 239
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup15
      CaptionOptions.Text = 'C'#243'digo Nacional de Atividade Econ'#244'mica'
      CaptionOptions.Layout = clTop
      Control = gridCNAE
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Dados Banc'#225'rios:'
      CaptionOptions.Layout = clTop
      Control = gridFinanceiro
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Financeiro'
      ButtonOptions.Buttons = <>
      Index = 2
    end
  end
  object memTableCadastro: TFDMemTable
    AfterInsert = memTableCadastroAfterInsert
    AfterEdit = memTableCadastroAfterEdit
    BeforePost = memTableCadastroBeforePost
    AfterPost = memTableCadastroAfterPost
    AfterCancel = memTableCadastroAfterCancel
    BeforeDelete = memTableCadastroBeforeDelete
    AfterDelete = memTableCadastroAfterDelete
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
    Left = 448
    object memTableCadastrocod_empresa: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_empresa'
      Required = True
    end
    object memTableCadastrodes_razao_social: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'des_razao_social'
      Size = 70
    end
    object memTableCadastronom_fantasia: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nom_fantasia'
      Size = 80
    end
    object memTableCadastrodes_tipo_doc: TStringField
      DisplayLabel = 'Tipo DOC'
      FieldName = 'des_tipo_doc'
      Size = 4
    end
    object memTableCadastronum_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'num_cnpj'
    end
    object memTableCadastrocod_cnae: TStringField
      DisplayLabel = 'CNAE'
      FieldName = 'cod_cnae'
      Size = 10
    end
    object memTableCadastrocod_crt: TIntegerField
      DisplayLabel = 'CRT'
      FieldName = 'cod_crt'
    end
    object memTableCadastrocod_status: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_status'
    end
    object memTableCadastrodes_observacao: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_observacao'
      BlobType = ftMemo
    end
    object memTableCadastrodat_cadastro: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_cadastro'
    end
  end
  object dsCadastro: TDataSource
    AutoEdit = False
    DataSet = memTableCadastro
    OnStateChange = dsCadastroStateChange
    Left = 410
  end
  object memTableEnderecos: TFDMemTable
    BeforeInsert = memTableEnderecosBeforeInsert
    AfterInsert = memTableEnderecosAfterInsert
    BeforeEdit = memTableEnderecosBeforeEdit
    BeforeDelete = memTableEnderecosBeforeDelete
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
    Left = 544
    object memTableEnderecosseq_endereco: TFDAutoIncField
      FieldName = 'seq_endereco'
      ReadOnly = True
    end
    object memTableEnderecoscod_empresa: TIntegerField
      FieldName = 'cod_empresa'
      Required = True
    end
    object memTableEnderecosdes_tipo: TStringField
      FieldName = 'des_tipo'
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
    object memTableEnderecosdes_bairro: TStringField
      FieldName = 'des_bairro'
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
    object memTableEnderecosnum_cep: TStringField
      FieldName = 'num_cep'
      Size = 9
    end
    object memTableEnderecosnum_cnpj: TStringField
      FieldName = 'num_cnpj'
    end
    object memTableEnderecosnum_ie: TStringField
      FieldName = 'num_ie'
    end
    object memTableEnderecosnum_im: TStringField
      FieldName = 'num_im'
    end
    object memTableEnderecosdes_referencia: TStringField
      FieldName = 'des_referencia'
      Size = 132
    end
  end
  object memTableContatos: TFDMemTable
    BeforeInsert = memTableContatosBeforeInsert
    AfterInsert = memTableContatosAfterInsert
    BeforeEdit = memTableContatosBeforeEdit
    BeforeDelete = memTableContatosBeforeDelete
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
    Left = 640
    object memTableContatosseq_contato: TFDAutoIncField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'seq_contato'
      ReadOnly = True
    end
    object memTableContatoscod_empresa: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Required = True
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
      FieldName = 'des_email'
      Size = 128
    end
  end
  object memTableFinanceiro: TFDMemTable
    BeforeInsert = memTableFinanceiroBeforeInsert
    AfterInsert = memTableFinanceiroAfterInsert
    BeforeEdit = memTableFinanceiroBeforeEdit
    BeforeDelete = memTableFinanceiroBeforeDelete
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
    Left = 720
    object memTableFinanceiroid_financeiro: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_financeiro'
      ReadOnly = True
    end
    object memTableFinanceirocod_empresa: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Required = True
    end
    object memTableFinanceirocod_banco: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'cod_banco'
      Required = True
      Size = 4
    end
    object memTableFinanceirocod_agencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cod_agencia'
      Required = True
      Size = 10
    end
    object memTableFinanceironum_conta: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'num_conta'
      Required = True
    end
    object memTableFinanceironom_banco: TStringField
      DisplayLabel = 'Nom Banco'
      FieldName = 'nom_banco'
      Size = 70
    end
  end
  object memTableCNAE: TFDMemTable
    BeforeInsert = memTableCNAEBeforeInsert
    AfterInsert = memTableCNAEAfterInsert
    BeforeEdit = memTableCNAEBeforeEdit
    BeforeDelete = memTableCNAEBeforeDelete
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
    Left = 792
    object memTableCNAEid_cnae: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_cnae'
      ReadOnly = True
    end
    object memTableCNAEcod_empresa: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'cod_empresa'
      Required = True
    end
    object memTableCNAEcod_tipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo'
      Required = True
    end
    object memTableCNAEcod_cnae: TStringField
      FieldName = 'cod_cnae'
      Required = True
    end
    object memTableCNAEdes_cnae: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_cnae'
      Required = True
      Size = 125
    end
  end
  object barManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Data_Sisgef.imageListOperation_32_32
    ImageOptions.LargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 664
    Top = 264
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 901
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Data_Sisgef.lmi_32_32
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = '&Novo'
      Category = 0
      Hint = 'Novo registro'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 59
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actionLocalizar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = '&Editar'
      Category = 0
      Hint = 'Editar registro'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 61
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'E&xcluir'
      Category = 0
      Hint = 'Excluir registro'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 60
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar opera'#231#227'o'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 67
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = '&Gravar'
      Category = 0
      Enabled = False
      Hint = 'Gravar registro'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 63
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionFechar
      Align = iaRight
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 3
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = DatasetInsert1
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actionLocalizar
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = DatasetEdit1
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 9
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = DatasetDelete1
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 4
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = DatasetCancel1
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 2
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = DatasetPost1
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 13
    end
  end
  object actionListMenu: TActionList
    Images = Data_Sisgef.lmi_32_32
    Left = 744
    Top = 260
    object actionLocalizar: TAction
      Caption = '&Localizar'
      Hint = 'Localizar registro'
      ImageIndex = 66
      OnExecute = actionLocalizarExecute
    end
    object actionFechar: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 64
      OnExecute = actionFecharExecute
    end
    object actionConsultaCNPJ: TAction
      Caption = 'Consulta CNPJ'
      Hint = 'Consulta CNPJ'
      OnExecute = actionConsultaCNPJExecute
    end
    object actionPesquisarCEP: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisar CEP'
      OnExecute = actionPesquisarCEPExecute
    end
    object actionPesquisarBancos: TAction
      Caption = 'Pesquisar Bancos'
      Hint = 'Pesquisar Bancos'
      OnExecute = actionPesquisarBancosExecute
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Novo'
      Hint = 'Novo registro'
      ImageIndex = 73
      DataSource = dsCadastro
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Editar'
      Hint = 'Editar registro'
      ImageIndex = 74
      DataSource = dsCadastro
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = 'E&xcluir'
      Hint = 'Excluir registro'
      ImageIndex = 75
      DataSource = dsCadastro
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 76
      DataSource = dsCadastro
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Gravar'
      Hint = 'Gravar o registro'
      ImageIndex = 77
      DataSource = dsCadastro
    end
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = memTableEnderecos
    OnStateChange = dsEnderecosStateChange
    Left = 504
    Top = 65535
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = memTableContatos
    Left = 608
    Top = 2
  end
  object dsCNAE: TDataSource
    AutoEdit = False
    DataSet = memTableCNAE
    Left = 760
    Top = 2
  end
  object dsFinanceiro: TDataSource
    AutoEdit = False
    DataSet = memTableFinanceiro
    Left = 680
    Top = 2
  end
end
