object viewCadastroFuncionarios: TviewCadastroFuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 564
  ClientWidth = 1067
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1067
    Height = 564
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 320
    ExplicitTop = 128
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Cadastro de Funcion'#225'rios'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Shape1: TShape
      Left = 10
      Top = 38
      Width = 1047
      Height = 1
      Align = alClient
      Pen.Color = cl3DDkShadow
    end
    object cxButton1: TcxButton
      Left = 982
      Top = 529
      Width = 75
      Height = 25
      Action = actSair
      TabOrder = 19
    end
    object cxButton2: TcxButton
      Left = 10000
      Top = 10000
      Width = 89
      Height = 25
      Action = actPesquisar
      TabOrder = 2
      Visible = False
    end
    object cxButton3: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actNovo
      TabOrder = 6
      Visible = False
    end
    object gridPesquisa: TcxGrid
      Left = 10000
      Top = 10000
      Width = 995
      Height = 307
      TabOrder = 3
      Visible = False
      object gridPesquisaDBTableView1: TcxGridDBTableView
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
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsEmploye
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridPesquisaDBTableView1cod_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cadastro'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1num_cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'num_cpf_cnpj'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1des_tipo_doc: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_doc'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1nom_razao_social: TcxGridDBColumn
          DataBinding.FieldName = 'nom_razao_social'
          HeaderAlignmentHorz = taCenter
          Width = 301
        end
        object gridPesquisaDBTableView1nom_fantasia_alias: TcxGridDBColumn
          DataBinding.FieldName = 'nom_fantasia_alias'
          HeaderAlignmentHorz = taCenter
          Width = 187
        end
        object gridPesquisaDBTableView1dom_pessoa: TcxGridDBColumn
          DataBinding.FieldName = 'dom_pessoa'
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object gridPesquisaDBTableView1num_rg_ie: TcxGridDBColumn
          DataBinding.FieldName = 'num_rg_ie'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1dat_emissao_rg: TcxGridDBColumn
          DataBinding.FieldName = 'dat_emissao_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1nom_emissor_rg: TcxGridDBColumn
          DataBinding.FieldName = 'nom_emissor_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1uf_emissor_rg: TcxGridDBColumn
          DataBinding.FieldName = 'uf_emissor_rg'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1dat_nascimento: TcxGridDBColumn
          DataBinding.FieldName = 'dat_nascimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1des_nacionalidade: TcxGridDBColumn
          DataBinding.FieldName = 'des_nacionalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1des_naturalidade: TcxGridDBColumn
          DataBinding.FieldName = 'des_naturalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1uf_naturalidade: TcxGridDBColumn
          DataBinding.FieldName = 'uf_naturalidade'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1nom_pai: TcxGridDBColumn
          DataBinding.FieldName = 'nom_pai'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1nom_mae: TcxGridDBColumn
          DataBinding.FieldName = 'nom_mae'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_cnae: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cnae'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1cod_crt: TcxGridDBColumn
          DataBinding.FieldName = 'cod_crt'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1num_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'num_cnh'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1num_registro_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'num_registro_cnh'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1des_categoria_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'des_categoria_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
        object gridPesquisaDBTableView1dat_validade_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'dat_validade_cnh'
          HeaderAlignmentHorz = taCenter
          Width = 108
        end
        object gridPesquisaDBTableView1dat_emissao_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'dat_emissao_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1uf_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'uf_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1dat_primeira_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'dat_primeira_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_seguranca_cnh: TcxGridDBColumn
          DataBinding.FieldName = 'cod_seguranca_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1dat_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'dat_cadastro'
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1dat_demissao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_demissao'
          HeaderAlignmentHorz = taCenter
          Width = 107
        end
        object gridPesquisaDBTableView1cod_status: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status'
          HeaderAlignmentHorz = taCenter
          Width = 130
        end
        object gridPesquisaDBTableView1des_forma_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'des_forma_pagamento'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1des_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_conta'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_banco: TcxGridDBColumn
          DataBinding.FieldName = 'cod_banco'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'cod_agencia'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1num_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1nom_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'nom_favorecido'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'num_cpf_cnpj_favorecido'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_pix: TcxGridDBColumn
          DataBinding.FieldName = 'cod_pix'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridPesquisaDBTableView1cod_gr: TcxGridDBColumn
          DataBinding.FieldName = 'cod_gr'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1dat_gr: TcxGridDBColumn
          DataBinding.FieldName = 'dat_gr'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridPesquisaDBTableView1cod_mei: TcxGridDBColumn
          DataBinding.FieldName = 'cod_mei'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1des_razao_mei: TcxGridDBColumn
          DataBinding.FieldName = 'des_razao_mei'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1nom_fantasia_mei: TcxGridDBColumn
          DataBinding.FieldName = 'nom_fantasia_mei'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1num_cnpj_mei: TcxGridDBColumn
          DataBinding.FieldName = 'num_cnpj_mei'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1dat_abertura_mei: TcxGridDBColumn
          DataBinding.FieldName = 'dat_abertura_mei'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1des_obs: TcxGridDBColumn
          DataBinding.FieldName = 'des_obs'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridPesquisaDBTableView1id_departamento: TcxGridDBColumn
          DataBinding.FieldName = 'id_departamento'
          HeaderAlignmentHorz = taCenter
          Width = 137
        end
        object gridPesquisaDBTableView1id_funcao: TcxGridDBColumn
          DataBinding.FieldName = 'id_funcao'
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
      end
      object gridPesquisaLevel1: TcxGridLevel
        GridView = gridPesquisaDBTableView1
      end
    end
    object cxButton4: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionEditar
      TabOrder = 7
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actExportar
      TabOrder = 4
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actAtualizar
      TabOrder = 5
      Visible = False
    end
    object textPesquisa: TcxButtonEdit
      Left = 10000
      Top = 10000
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 128
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnButtonClick = textPesquisaPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 1
      Visible = False
      Width = 863
    end
    object cpf: TcxDBMaskEdit
      Left = 134
      Top = 79
      Hint = 'CPF do funcion'#225'rio'
      Properties.EditMask = '0##\.###\.###\-##;1; '
      Style.HotTrack = False
      TabOrder = 9
      Width = 121
    end
    object id: TcxDBTextEdit
      Left = 43
      Top = 79
      Hint = 'ID do funcion'#225'rio'
      DataBinding.DataField = 'cod_cadastro'
      DataBinding.DataSource = dsEmploye
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 61
    end
    object sexo: TcxDBImageComboBox
      Left = 290
      Top = 79
      Hint = 'Sexo do funcion'#225'rio'
      DataBinding.DataField = 'dom_pessoa'
      DataBinding.DataSource = dsEmploye
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.Items = <
        item
          Description = 'Masculino'
          ImageIndex = 52
          Value = 'M'
        end
        item
          Description = 'Feminino'
          ImageIndex = 53
          Value = 'F'
        end
        item
          Description = 'Indefinido'
          ImageIndex = 54
          Value = 'I'
        end>
      Style.HotTrack = False
      TabOrder = 10
      Width = 94
    end
    object nome: TcxDBTextEdit
      Left = 422
      Top = 79
      Hint = 'Nome do funcion'#225'rio'
      DataBinding.DataField = 'nom_razao_social'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 11
      Width = 297
    end
    object alias: TcxDBTextEdit
      Left = 752
      Top = 79
      Hint = 'Alias do funcion'#225'rio'
      Style.HotTrack = False
      TabOrder = 12
      Width = 291
    end
    object rg: TcxDBTextEdit
      Left = 43
      Top = 106
      Hint = 'RG do funcion'#225'io'
      DataBinding.DataField = 'num_rg_ie'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 13
      Width = 137
    end
    object emissaoRG: TcxDBDateEdit
      Left = 246
      Top = 106
      Hint = 'Data de emiss'#227'o do RG do funcion'#225'rio'
      DataBinding.DataField = 'dat_emissao_rg'
      DataBinding.DataSource = dsEmploye
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 14
      Width = 114
    end
    object emissorRG: TcxDBTextEdit
      Left = 407
      Top = 106
      Hint = 'Emissor do RG do funcion'#225'rio'
      DataBinding.DataField = 'nom_emissor_rg'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 15
      Width = 140
    end
    object ufrg: TcxDBLookupComboBox
      Left = 588
      Top = 106
      Hint = 'UF do RG do funcion'#225'rio'
      DataBinding.DataField = 'uf_emissor_rg'
      DataBinding.DataSource = dsEmploye
      Properties.KeyFieldNames = 'UF_ESTADO'
      Properties.ListColumns = <
        item
          FieldName = 'UF_ESTADO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 16
      Width = 54
    end
    object nascimento: TcxDBDateEdit
      Left = 708
      Top = 106
      Hint = 'Data de nascimento do funcion'#225'rio'
      DataBinding.DataField = 'dat_nascimento'
      DataBinding.DataSource = dsEmploye
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 17
      Width = 114
    end
    object nacionalidade: TcxDBTextEdit
      Left = 899
      Top = 106
      Hint = 'Nacionalidade do funcion'#225'rio'
      DataBinding.DataField = 'des_nacionalidade'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 18
      Width = 144
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lgpHeader: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpHeader
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpHeader
      CaptionOptions.Text = 'Shape1'
      CaptionOptions.Visible = False
      Control = Shape1
      ControlOptions.OriginalHeight = 1
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lbgTabbed: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lgpFooter: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
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
    object lgpPesquisa: TdxLayoutGroup
      Parent = lbgTabbed
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object lgpParametros: TdxLayoutGroup
      Parent = lgpPesquisa
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgpParametros
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgpGRid: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object lgpActions: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgpActions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lgpGRid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridPesquisa
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lgpActions
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpGRid
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgpParametros
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar : '
      Control = textPesquisa
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lpgCadastro: TdxLayoutGroup
      Parent = lbgTabbed
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'CPF'
      Control = cpf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'ID'
      Control = id
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Sexo'
      Control = sexo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome'
      Control = nome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Alias'
      Control = alias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'RG'
      Control = rg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Emiss'#227'o RG'
      Control = emissaoRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Emissor'
      Control = emissorRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'UF RG'
      Control = ufrg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 45
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nascimento'
      Control = nascimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nacionalidade'
      Control = nacionalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object dsEmploye: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryFuncionarios
    Left = 656
    Top = 8
  end
  object aclFuncionarios: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 576
    Top = 8
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Novo funcion'#225'rio'
      ImageIndex = 97
    end
    object actionEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar funciom'#225'rio'
      ImageIndex = 95
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 84
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar dados do funcion'#225'rio'
      ImageIndex = 85
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
    end
    object actPesquisar: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
      OnExecute = actPesquisarExecute
    end
    object actSair: TAction
      Caption = '&Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actAtualizar: TAction
      Caption = 'Atuali&zar'
      Hint = 'Atualizar dados da grade'
      ImageIndex = 111
    end
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryEstados
    Left = 720
    Top = 8
  end
end
