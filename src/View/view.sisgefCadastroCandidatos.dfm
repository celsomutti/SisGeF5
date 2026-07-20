object viewCadastroCandidatos: TviewCadastroCandidatos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Candidatos'
  ClientHeight = 729
  ClientWidth = 1008
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
  object lcRoot: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 729
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object parametro: TcxButtonEdit
      Left = 75
      Top = 55
      Hint = 'Par'#226'metro de pesquisa'
      Properties.Buttons = <
        item
          Action = actionClearSearch
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 593
    end
    object cxButton1: TcxButton
      Left = 877
      Top = 55
      Width = 107
      Height = 25
      Action = actionSearchRecords
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
    end
    object cxButton2: TcxButton
      Left = 907
      Top = 694
      Width = 91
      Height = 25
      Action = actionCloseForm
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 41
    end
    object grid: TcxGrid
      Left = 24
      Top = 129
      Width = 960
      Height = 533
      TabOrder = 9
      object gridDBTableView1: TcxGridDBTableView
        OnDblClick = gridDBTableView1DblClick
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
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsCandidatos
        DataController.KeyFieldNames = 'COD_CANDIDATO'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object gridDBTableView1COD_CANDIDATO: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'COD_CANDIDATO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1id_categoria: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'id_categoria'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_categoria'
          Properties.ListColumns = <
            item
              FieldName = 'des_categoria'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsCategorias
          Width = 93
        end
        object gridDBTableView1NOM_CANDIDATO: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'NOM_CANDIDATO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 195
        end
        object gridDBTableView1DES_EMAIL: TcxGridDBColumn
          Caption = 'E-Mail'
          DataBinding.FieldName = 'DES_EMAIL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 281
        end
        object gridDBTableView1DES_ENDERECO: TcxGridDBColumn
          Caption = 'Endere'#231'o'
          DataBinding.FieldName = 'DES_ENDERECO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1NUM_ENDERECO: TcxGridDBColumn
          Caption = 'N'#250'mero'
          DataBinding.FieldName = 'NUM_ENDERECO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DES_COMPLEMENTO: TcxGridDBColumn
          Caption = 'Complemento'
          DataBinding.FieldName = 'DES_COMPLEMENTO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DES_BAIRRO: TcxGridDBColumn
          Caption = 'Bairro'
          DataBinding.FieldName = 'DES_BAIRRO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DES_CIDADE: TcxGridDBColumn
          Caption = 'Cidade'
          DataBinding.FieldName = 'DES_CIDADE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DES_UF: TcxGridDBColumn
          Caption = 'UF'
          DataBinding.FieldName = 'DES_UF'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1NUM_TELEFONE: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'NUM_TELEFONE'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(99\)#0000-0000;1; '
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1NUM_CELULAR: TcxGridDBColumn
          Caption = 'Celular'
          DataBinding.FieldName = 'NUM_CELULAR'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.EditMask = '!\(99\)#0000-0000;1; '
          Properties.ReadOnly = True
        end
        object gridDBTableView1DOM_EXPERIENCIA: TcxGridDBColumn
          Caption = 'Experi'#234'ncia'
          DataBinding.FieldName = 'DOM_EXPERIENCIA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
        end
        object gridDBTableView1DES_EXPERIENCIA: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'DES_EXPERIENCIA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
        end
        object gridDBTableView1DES_REGIOES: TcxGridDBColumn
          Caption = 'Regi'#245'es'
          DataBinding.FieldName = 'DES_REGIOES'
          PropertiesClassName = 'TcxMemoProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DOM_ANTECEDENTES: TcxGridDBColumn
          Caption = 'Antecedentes'
          DataBinding.FieldName = 'DOM_ANTECEDENTES'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 82
        end
        object gridDBTableView1DOM_RESTRICOES: TcxGridDBColumn
          Caption = 'Restri'#231#245'es'
          DataBinding.FieldName = 'DOM_RESTRICOES'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 68
        end
        object gridDBTableView1DAT_VALIDADE_CNH: TcxGridDBColumn
          Caption = 'Validade CNH'
          DataBinding.FieldName = 'DAT_VALIDADE_CNH'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Width = 82
        end
        object gridDBTableView1DES_CATEGORIA_CNH: TcxGridDBColumn
          Caption = 'Categoria CNH'
          DataBinding.FieldName = 'DES_CATEGORIA_CNH'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 77
        end
        object gridDBTableView1DOM_VEICULO_PROPRIO: TcxGridDBColumn
          Caption = 'Ve'#237'culo'
          DataBinding.FieldName = 'DOM_VEICULO_PROPRIO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 51
        end
        object gridDBTableView1DES_ANO_VEICULO: TcxGridDBColumn
          Caption = 'Ano Ve'#237'culo'
          DataBinding.FieldName = 'DES_ANO_VEICULO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 73
        end
        object gridDBTableView1DES_TIPO_VEICULO: TcxGridDBColumn
          Caption = 'Tipo Ve'#237'culo'
          DataBinding.FieldName = 'DES_TIPO_VEICULO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1DES_MODELO_VEICULO: TcxGridDBColumn
          Caption = 'Modelo Ve'#237'culo'
          DataBinding.FieldName = 'DES_MODELO_VEICULO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1DES_TIPO_COMBUSTIVEL: TcxGridDBColumn
          Caption = 'Combustivel'
          DataBinding.FieldName = 'DES_TIPO_COMBUSTIVEL'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1DOM_LICENCIAMENTO_IPVA: TcxGridDBColumn
          Caption = 'Licenciamento'
          DataBinding.FieldName = 'DOM_LICENCIAMENTO_IPVA'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 73
        end
        object gridDBTableView1DOM_RASTREADO: TcxGridDBColumn
          Caption = 'Rastreamento'
          DataBinding.FieldName = 'DOM_RASTREADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Visible = False
        end
        object gridDBTableView1DOM_DISPONIBILIDADE: TcxGridDBColumn
          Caption = 'Disponibilidade'
          DataBinding.FieldName = 'DOM_DISPONIBILIDADE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          Width = 76
        end
        object gridDBTableView1createdAt: TcxGridDBColumn
          Caption = 'Criado em '
          DataBinding.FieldName = 'createdAt'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1updatedAt: TcxGridDBColumn
          Caption = 'Atualizado em'
          DataBinding.FieldName = 'updatedAt'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
      end
      object gridLevel1: TcxGridLevel
        GridView = gridDBTableView1
      end
    end
    object cxButton3: TcxButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Action = actionNewRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
    end
    object cxButton4: TcxButton
      Left = 105
      Top = 24
      Width = 75
      Height = 25
      Action = actionEditRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object cxButton5: TcxButton
      Left = 24
      Top = 98
      Width = 21
      Height = 25
      Action = actionGroupPanel
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
    end
    object cxButton6: TcxButton
      Left = 51
      Top = 98
      Width = 21
      Height = 25
      Action = actionExpandGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
    end
    object cxButton7: TcxButton
      Left = 78
      Top = 98
      Width = 21
      Height = 25
      Action = actionRetractGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
    end
    object cxButton8: TcxButton
      Left = 186
      Top = 24
      Width = 75
      Height = 25
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
    end
    object lcbCategorias: TcxLookupComboBox
      Left = 726
      Top = 55
      Properties.KeyFieldNames = 'id_categoria'
      Properties.ListColumns = <
        item
          FieldName = 'des_categoria'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCategorias
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 145
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 77
      Height = 25
      Action = actionReturnGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 38
      Visible = False
    end
    object dbId: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Id do candidato'
      DataBinding.DataField = 'COD_CANDIDATO'
      DataBinding.DataSource = dsCandidatos
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 77
    end
    object dbCategoria: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      Hint = 'Categoria do candidato'
      DataBinding.DataField = 'id_categoria'
      DataBinding.DataSource = dsCandidatos
      Properties.KeyFieldNames = 'id_categoria'
      Properties.ListColumns = <
        item
          FieldName = 'des_categoria'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsCategorias
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Visible = False
      Width = 118
    end
    object dbNome: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do candidato'
      DataBinding.DataField = 'NOM_CANDIDATO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Visible = False
      Width = 600
    end
    object dbEmail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'E-mail do candidato'
      DataBinding.DataField = 'DES_EMAIL'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecLowerCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 547
    end
    object dbTelefone: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'Telefone do candidato'
      DataBinding.DataField = 'NUM_TELEFONE'
      DataBinding.DataSource = dsCandidatos
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 123
    end
    object dbCelular: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CElular do candidato'
      DataBinding.DataField = 'NUM_CELULAR'
      DataBinding.DataSource = dsCandidatos
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)90000-0000;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Visible = False
      Width = 124
    end
    object dbLogradouro: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Logradouro do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_ENDERECO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 382
    end
    object dbNumero: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do logradouro do endere'#231'o do candidato'
      DataBinding.DataField = 'NUM_ENDERECO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Visible = False
      Width = 89
    end
    object dbComplemento: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Complemento do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_COMPLEMENTO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 173
    end
    object dbBairro: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Bairro do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_BAIRRO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 271
    end
    object dbCidade: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Cidade do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_CIDADE'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 485
    end
    object dbEstado: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'DES_UF'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
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
      TabOrder = 22
      Visible = False
      Width = 67
    end
    object dbCEP: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CEP do endere'#231'o do candidato'
      DataBinding.DataField = 'NUM_CEP'
      DataBinding.DataSource = dsCandidatos
      Properties.Buttons = <
        item
          Action = actionSearchCEP
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '00000\-999;0; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 16
      Visible = False
      Width = 88
    end
    object dbExperiencia: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Selecione se o candidato possui experi'#234'ncia no cargo pretendido'
      Caption = 'Possui Experi'#234'ncia'
      DataBinding.DataField = 'DOM_EXPERIENCIA'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
    end
    object dbAntecedentes: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'Selecione se o candidato possui antecedentes'
      Caption = 'Antecedentes'
      DataBinding.DataField = 'DOM_ANTECEDENTES'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Visible = False
    end
    object dbRestricoes: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'candidato possui restri'#231#245'es'
      Caption = 'Restri'#231#245'es'
      DataBinding.DataField = 'DOM_RESTRICOES'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Visible = False
    end
    object dbVeiculo: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'candidato possui ve'#237'culo pr'#243'prio'
      Caption = 'Ve'#237'culo Pr'#243'prio'
      DataBinding.DataField = 'DOM_VEICULO_PROPRIO'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
    end
    object dbRestreamento: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 've'#237'culo do candidato possui rastreamento'
      Caption = 'Ratreamento'
      DataBinding.DataField = 'DOM_RASTREADO'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
    end
    object dbLicenciamento: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 've'#237'culo do candidato est'#225' licenciado'
      Caption = 'Licenciado'
      DataBinding.DataField = 'DOM_LICENCIAMENTO_IPVA'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Visible = False
    end
    object dbDisponibilidade: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Hint = 'candidato possui disponibilidade'
      Caption = 'Disponibilidade'
      DataBinding.DataField = 'DOM_DISPONIBILIDADE'
      DataBinding.DataSource = dsCandidatos
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
    end
    object dbValidadeCNH: TcxDBDateEdit
      Left = 10000
      Top = 10000
      Hint = 'data de validade da CNH do candidato'
      DataBinding.DataField = 'DAT_VALIDADE_CNH'
      DataBinding.DataSource = dsCandidatos
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 30
      Visible = False
      Width = 91
    end
    object dbCategoriaCNH: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'categoria da CNH do candidato'
      DataBinding.DataField = 'DES_CATEGORIA_CNH'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 56
    end
    object sbTipoVeiculo: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'selecione o tipo de ve'#237'culo do candidado'
      DataBinding.DataField = 'DES_TIPO_VEICULO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        ''
        'PASSEIO'
        'MOTOCICLETA'
        'BICICLETA'
        'TRUCK ABERTO'
        'TRUCK BA'#218
        'TRUCK SIDER'
        'TOCO ABERTO'
        'TOCO BA'#218
        'TOCO SIDER'
        '3/4 ABERTO'
        '3/4 BA'#218
        '3/4 SIDER'
        'FURG'#195'O/VAN'
        'UTILIT'#193'RIO'
        'TRICICLO'
        'QUADRICICLO'
        '')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 32
      Visible = False
      Width = 121
    end
    object dbModelo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'modelo do veiculo do candidato'
      DataBinding.DataField = 'DES_MODELO_VEICULO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 33
      Visible = False
      Width = 140
    end
    object dbAno: TcxDBTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ano de fabrica'#231#227'o do ve'#237'culo do candidato'
      DataBinding.DataField = 'DES_ANO_VEICULO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 59
    end
    object dbCombustivel: TcxDBComboBox
      Left = 10000
      Top = 10000
      Hint = 'tipo de combust'#237'vel do ve'#237'culo do candidato'
      DataBinding.DataField = 'DES_TIPO_COMBUSTIVEL'
      DataBinding.DataSource = dsCandidatos
      Properties.Items.Strings = (
        ''
        'GASOLINA'
        'ETANOL'
        'FLEX (GASOLINA/ETANOL)'
        'DIESEL'
        'GNV FLEX'
        'GNV GASOLINA'
        'GNV ETANOL'
        'ELETRICO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 35
      Visible = False
      Width = 155
    end
    object dbRegioes: TcxDBMemo
      Left = 10000
      Top = 10000
      Hint = 'Regi'#245'es que o candidado conhece'
      DataBinding.DataField = 'DES_REGIOES'
      DataBinding.DataSource = dsCandidatos
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 37
      Visible = False
      Height = 169
      Width = 477
    end
    object dbObservacoes: TcxDBMemo
      Left = 10000
      Top = 10000
      Hint = 'Observa'#231#245's sobre o candidato'
      DataBinding.DataField = 'DES_EXPERIENCIA'
      DataBinding.DataSource = dsCandidatos
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 36
      Visible = False
      Height = 169
      Width = 477
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 110
      Height = 25
      Action = actionDocuments
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 39
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 82
      Height = 25
      Action = actionSaveRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 40
      Visible = False
    end
    object lrgRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpFooter: TdxLayoutGroup
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgpContainer: TdxLayoutGroup
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Container'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object lgpPesquisa: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      ItemIndex = 10
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Hint = 'Par'#226'metro de pesquisa'
      CaptionOptions.Text = 'Pesquisar'
      Control = parametro
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grid
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lgpPesquisa
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Categoria'
      Control = lcbCategorias
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'ID'
      Control = dbId
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Categoria'
      Control = dbCategoria
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      Control = dbNome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 626
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'E-Mail'
      Control = dbEmail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 348
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Telefone'
      Control = dbTelefone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 123
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Celular'
      Control = dbCelular
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lgpCadastro
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'Endere'#231'o'
      Control = dbLogradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Hint = 'N'#250'mero do logradouro do endere'#231'o do candidato'
      CaptionOptions.Text = 'N'#186'.'
      Control = dbNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Complemento'
      Control = dbComplemento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = lgpCadastro
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Bairro'
      Control = dbBairro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Cidade'
      Control = dbCidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 395
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'UF'
      Control = dbEstado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Hint = 'CEP do endere'#231'o do candidato'
      CaptionOptions.Text = 'CEP'
      Control = dbCEP
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 5
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbExperiencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbAntecedentes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbRestricoes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbVeiculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbRestreamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox1'
      CaptionOptions.Visible = False
      Control = dbLicenciamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDBCheckBox2'
      CaptionOptions.Visible = False
      Control = dbDisponibilidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 7
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = lgpCadastro
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Validade CNH'
      Control = dbValidadeCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Categoria'
      Control = dbCategoriaCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Tipo Ve'#237'culo'
      Control = sbTipoVeiculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'Modelo'
      Control = dbModelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'Ano'
      Control = dbAno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'Combust'#237'vel'
      Control = dbCombustivel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
      Parent = lgpCadastro
      CaptionOptions.Text = 'Separator'
      Index = 9
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = lgpCadastro
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup15
      CaptionOptions.Text = 'Regi'#245'es'
      CaptionOptions.Layout = clTop
      Control = dbRegioes
      ControlOptions.OriginalHeight = 169
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = dbObservacoes
      ControlOptions.OriginalHeight = 169
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 896
    Top = 24
    object actionNewRegister: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
      ImageIndex = 97
      OnExecute = actionNewRegisterExecute
    end
    object actionEditRegister: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      ImageIndex = 95
      OnExecute = actionEditRegisterExecute
    end
    object actionCloseForm: TAction
      Caption = 'Fec&har'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionExpandGrid: TAction
      Caption = 'Expandir'
      Hint = 'Expandir grid'
      ImageIndex = 106
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grid'
      ImageIndex = 107
      OnExecute = actionRetractGridExecute
    end
    object actionGroupPanel: TAction
      Caption = 'Painel de Grupo'
      Hint = 'Exibir o painel de grupos'
      ImageIndex = 110
      OnExecute = actionGroupPanelExecute
    end
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionSearchRecords: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisa do cadastro'
      ImageIndex = 86
      OnExecute = actionSearchRecordsExecute
    end
    object actionReturnGrid: TAction
      Caption = '&Voltar'
      Hint = 'Voltar para o grid'
      ImageIndex = 64
      OnExecute = actionReturnGridExecute
    end
    object actionClearSearch: TAction
      Caption = 'Li&mpar'
      Hint = 'Limpar a tela de pesquisa'
      ImageIndex = 84
      OnExecute = actionClearSearchExecute
    end
    object actionSaveRegister: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 85
      OnExecute = actionSaveRegisterExecute
    end
    object actionSearchDoc: TAction
      Caption = 'Consulta CNPJ'
      Hint = 'Consultar CNPJ'
      ImageIndex = 81
    end
    object actionSearchCEP: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisa o CEP do endere'#231'o'
      ImageIndex = 82
      OnExecute = actionSearchCEPExecute
    end
    object actionDocuments: TAction
      Caption = '&Documentos'
      Hint = 'Documentos anexados'
      ImageIndex = 99
      OnExecute = actionDocumentsExecute
    end
    object actSearchCategory: TAction
      Caption = 'Procurar Categoria'
      Hint = 'Procurar categoria'
      ImageIndex = 86
    end
    object actSearchFunction: TAction
      Caption = 'Procurar Fun'#231#227'o'
      Hint = 'Procurar fun'#231#227'o'
      ImageIndex = 86
    end
  end
  object dsCandidatos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.qryCandidatos
    Left = 848
    Top = 24
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbCategoriasRHProv
    Left = 800
    Top = 24
  end
  object dsEstados: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbEstadosProv
    Left = 760
    Top = 24
  end
end
