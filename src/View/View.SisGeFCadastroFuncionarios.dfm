object viewCadastroFuncionarios: TviewCadastroFuncionarios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 569
  ClientWidth = 913
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 913
    Height = 569
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
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
      Width = 876
      Height = 1
      Pen.Color = cl3DDkShadow
    end
    object cxButton1: TcxButton
      Left = 811
      Top = 587
      Width = 75
      Height = 25
      Action = actSair
      TabOrder = 50
    end
    object cxButton2: TcxButton
      Left = 783
      Top = 79
      Width = 89
      Height = 25
      Action = actPesquisar
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 24
      Top = 542
      Width = 75
      Height = 25
      Action = actNovo
      TabOrder = 6
    end
    object gridPesquisa: TcxGrid
      Left = 36
      Top = 128
      Width = 824
      Height = 365
      TabOrder = 3
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
      Left = 105
      Top = 542
      Width = 75
      Height = 25
      Action = actionEditar
      TabOrder = 7
    end
    object cxButton5: TcxButton
      Left = 36
      Top = 499
      Width = 75
      Height = 25
      Action = actExportar
      TabOrder = 4
    end
    object cxButton6: TcxButton
      Left = 117
      Top = 499
      Width = 75
      Height = 25
      Action = actAtualizar
      TabOrder = 5
    end
    object textPesquisa: TcxButtonEdit
      Left = 85
      Top = 79
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
      Width = 692
    end
    object cpf: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF do funcion'#225'rio'
      Properties.EditMask = '0##\.###\.###\-##;1; '
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object id: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do funcion'#225'rio'
      DataBinding.DataField = 'cod_cadastro'
      DataBinding.DataSource = dsEmploye
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 61
    end
    object sexo: TcxDBImageComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      Width = 94
    end
    object nome: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do funcion'#225'rio'
      DataBinding.DataField = 'nom_razao_social'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 211
    end
    object alias: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Alias do funcion'#225'rio'
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 209
    end
    object rg: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'RG do funcion'#225'io'
      DataBinding.DataField = 'num_rg_ie'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 110
    end
    object emissaoRG: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de emiss'#227'o do RG do funcion'#225'rio'
      DataBinding.DataField = 'dat_emissao_rg'
      DataBinding.DataSource = dsEmploye
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 84
    end
    object emissorRG: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Emissor do RG do funcion'#225'rio'
      DataBinding.DataField = 'nom_emissor_rg'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 108
    end
    object ufrg: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      Width = 39
    end
    object nascimento: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de nascimento do funcion'#225'rio'
      DataBinding.DataField = 'dat_nascimento'
      DataBinding.DataSource = dsEmploye
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 85
    end
    object nacionalidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nacionalidade do funcion'#225'rio'
      DataBinding.DataField = 'des_nacionalidade'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 106
    end
    object naturalidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Naturalidade do funcion'#225'rio'
      DataBinding.DataField = 'des_naturalidade'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 165
    end
    object ufNaturalidade: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF da naturalidade do funcion'#225'rio'
      DataBinding.DataField = 'uf_naturalidade'
      DataBinding.DataSource = dsEmploye
      Properties.KeyFieldNames = 'UF_ESTADO'
      Properties.ListColumns = <
        item
          FieldName = 'UF_ESTADO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 54
    end
    object nomePai: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do pai do funcion'#225'rio'
      DataBinding.DataField = 'nom_pai'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 164
    end
    object nomeMae: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da m'#227'e do funcion'#225'rio'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 165
    end
    object numeroCNH: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da CNH do funcion'#225'rio'
      DataBinding.DataField = 'num_cnh'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 85
    end
    object registroCNH: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do registro da CNH do funcion'#225'rio'
      DataBinding.DataField = 'num_registro_cnh'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
      Width = 83
    end
    object categoriaCNH: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Categoria da CNH do funcion'#225'rio'
      DataBinding.DataField = 'des_categoria_cnh'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
      Width = 40
    end
    object emissaoCNH: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data a emiss'#227'o da CNH do funcion'#225'rio'
      DataBinding.DataField = 'dat_emissao_cnh'
      DataBinding.DataSource = dsEmploye
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 87
    end
    object validadeCNH: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 101
    end
    object primeiraCNH: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da emiss'#227'o da primeira CNH do funcion'#225'io'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
      Width = 87
    end
    object ufCNH: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'uf_cnh'
      DataBinding.DataSource = dsEmploye
      Properties.KeyFieldNames = 'UF_ESTADO'
      Properties.ListColumns = <
        item
          FieldName = 'UF_ESTADO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Width = 45
    end
    object admissao: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de admiss'#227'o do funcion'#225'rio'
      DataBinding.DataField = 'dat_cadastro'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 30
      Visible = False
      Width = 113
    end
    object departamento: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Departamento do funcion'#225'rio'
      DataBinding.DataField = 'id_departamento'
      DataBinding.DataSource = dsEmploye
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'des_departamento'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsDepartamentos
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 134
    end
    object funcao: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Fun'#231#227'o do funcion'#225'rio'
      DataBinding.DataField = 'id_funcao'
      DataBinding.DataSource = dsEmploye
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 32
      Visible = False
      Width = 136
    end
    object status: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      Hint = 'Status do funcion'#225'rio'
      DataBinding.DataField = 'cod_status'
      DataBinding.DataSource = dsEmploye
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.Items = <
        item
          Description = 'ATIVO'
          ImageIndex = 83
          Value = 1
        end
        item
          Description = 'DEMITIDO'
          ImageIndex = 84
          Value = 2
        end
        item
          Description = 'AFASTADO'
          ImageIndex = 20
          Value = 3
        end>
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 78
    end
    object demissao: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da demiss'#227'o do funcion'#225'rio'
      DataBinding.DataField = 'dat_demissao'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 113
    end
    object cep: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CEP do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'num_cep'
      DataBinding.DataSource = dsEndereco
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Style.HotTrack = False
      TabOrder = 35
      Visible = False
      Width = 105
    end
    object logradouro: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'des_logradouro'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 36
      Visible = False
      Width = 251
    end
    object numero: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'num_logradouro'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Width = 115
    end
    object complemento: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Complemento do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'des_complemento'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Width = 160
    end
    object bairro: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Bairro do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'des_bairro'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 39
      Visible = False
      Width = 282
    end
    object cidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Cidade do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'nom_cidade'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 40
      Visible = False
      Width = 287
    end
    object ufEndereco: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF do endere'#231'o do funcion'#225'rio'
      DataBinding.DataField = 'uf_estado'
      DataBinding.DataSource = dsEndereco
      Properties.KeyFieldNames = 'UF_ESTADO'
      Properties.ListColumns = <
        item
          FieldName = 'UF_ESTADO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEstados
      Style.HotTrack = False
      TabOrder = 41
      Visible = False
      Width = 150
    end
    object referencia: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'des_referencia'
      DataBinding.DataSource = dsEndereco
      Style.HotTrack = False
      TabOrder = 42
      Visible = False
      Width = 763
    end
    object formaPagameneto: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Forma de pagamento do funcion'#225'rio'
      DataBinding.DataField = 'des_forma_pagamento'
      DataBinding.DataSource = dsEmploye
      Properties.Items.Strings = (
        'NENHUMA'
        'CR'#201'DITO EM CONTA'
        'EM ESP'#201'CIE'
        'PIX')
      Style.HotTrack = False
      TabOrder = 43
      Visible = False
      Width = 121
    end
    object tipoConta: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'Tipo de conta banc'#225'ria do funcin'#225'rio'
      DataBinding.DataField = 'des_tipo_conta'
      DataBinding.DataSource = dsEmploye
      Properties.Items.Strings = (
        'NENHUMA'
        'CONTA CORRENTE'
        'CONTA POUPAN'#199'A'
        'CONTA SAL'#193'RIO'
        'CONTA PJ')
      Style.HotTrack = False
      TabOrder = 44
      Visible = False
      Width = 121
    end
    object banco: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Banco da conta do funcion'#225'rio'
      DataBinding.DataField = 'cod_banco'
      DataBinding.DataSource = dsEmploye
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Width = 145
    end
    object agencia: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'cod_agencia'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 46
      Visible = False
      Width = 121
    end
    object conta: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da conta banc'#225'ria do funcion'#225'rio'
      DataBinding.DataField = 'num_conta'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 47
      Visible = False
      Width = 121
    end
    object chavePIX: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Chave PIX do funcion'#225'rio'
      DataBinding.DataField = 'cod_pix'
      DataBinding.DataSource = dsEmploye
      Style.HotTrack = False
      TabOrder = 48
      Visible = False
      Width = 713
    end
    object observacao: TcxDBMemo
      Left = 10000
      Top = 10000
      Hint = 'Observa'#231#245'es sobre o funcion'#225'rio'
      DataBinding.DataField = 'des_obs'
      DataBinding.DataSource = dsEmploye
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 49
      Visible = False
      Height = 89
      Width = 848
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
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
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
      ItemControlAreaAlignment = catNone
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
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Naturalidade'
      Control = naturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'UF Naturalidade'
      Control = ufNaturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome do pai'
      Control = nomePai
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome da m'#227'e'
      Control = nomeMae
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lpgCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'N'#186' CNH'
      Control = numeroCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Registro'
      Control = registroCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Categoria'
      Control = categoriaCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Emiss'#227'o'
      Control = emissaoCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Validade'
      Control = validadeCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = '1'#170' CNH'
      Control = primeiraCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'UF'
      Control = ufCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Admiss'#227'o'
      Control = admissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Departamento'
      Control = departamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Fun'#231#227'o'
      Control = funcao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Status'
      Control = status
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Demiss'#227'o'
      Control = demissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lpgEnderecoFinanceiro: TdxLayoutGroup
      Parent = lpgCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 5
    end
    object lpgAcoesCadastro: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 6
    end
    object lpgEndereco: TdxLayoutGroup
      Parent = lpgEnderecoFinanceiro
      CaptionOptions.Text = 'Endere'#231'o'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = lpgEndereco
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'CEP'
      Control = cep
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Logradouro'
      Control = logradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 198
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'N'#176
      Control = numero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Complemento'
      Control = complemento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lpgEndereco
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Bairro'
      Control = bairro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Cidade'
      Control = cidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'UF'
      Control = ufEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lpgEndereco
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Refer'#234'ncia'
      Control = referencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lpgFinanceiro: TdxLayoutGroup
      Parent = lpgEnderecoFinanceiro
      CaptionOptions.Text = 'Financeiro'
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Forma de Pagamento'
      Control = formaPagameneto
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Tipo de Conta'
      Control = tipoConta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Banco'
      Control = banco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Hint = 'N'#250'mero da ag'#234'ncia banc'#225'ria da conta do funcion'#225'rio'
      CaptionOptions.Text = 'Ag'#234'ncia'
      Control = agencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Conta'
      Control = conta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = lpgFinanceiro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Chave PIX'
      Control = chavePIX
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = lpgCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem52: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = observacao
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
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
      OnExecute = actNovoExecute
    end
    object actionEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar funciom'#225'rio'
      ImageIndex = 95
      OnExecute = actionEditarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 84
      OnExecute = actCancelarExecute
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar dados do funcion'#225'rio'
      ImageIndex = 85
      OnExecute = actGravarExecute
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
      OnExecute = actExportarExecute
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
      ImageIndex = 105
    end
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryEstados
    Left = 720
    Top = 8
  end
  object dsDepartamentos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryDepartamentos
    Left = 776
    Top = 8
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryFuncoesRH
    Left = 848
    Top = 8
  end
  object dsEndereco: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryFuncionariosEnderecos
    Left = 488
    Top = 8
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.queryBancos
    Left = 424
    Top = 8
  end
end
