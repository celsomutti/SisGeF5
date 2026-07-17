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
      Left = 10000
      Top = 10000
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
      Visible = False
      Width = 593
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 107
      Height = 25
      Action = actionSearchRecords
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
      Visible = False
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
      TabOrder = 20
    end
    object grid: TcxGrid
      Left = 10000
      Top = 10000
      Width = 960
      Height = 513
      TabOrder = 9
      Visible = False
      object gridDBTableView1: TcxGridDBTableView
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
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionNewRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Visible = False
    end
    object cxButton4: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionEditRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 25
      Action = actionGroupPanel
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 25
      Action = actionExpandGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 7
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 25
      Action = actionRetractGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 8
      Visible = False
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Visible = False
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Visible = False
      Width = 145
    end
    object cxButton9: TcxButton
      Left = 24
      Top = 637
      Width = 77
      Height = 25
      Action = actionReturnGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 19
    end
    object dbId: TcxDBTextEdit
      Left = 74
      Top = 44
      Hint = 'Id do candidato'
      DataBinding.DataField = 'COD_CANDIDATO'
      DataBinding.DataSource = dsCandidatos
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 77
    end
    object dbCategoria: TcxDBLookupComboBox
      Left = 209
      Top = 44
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
      Width = 118
    end
    object dbNome: TcxDBTextEdit
      Left = 365
      Top = 44
      Hint = 'Nome do candidato'
      DataBinding.DataField = 'NOM_CANDIDATO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Width = 619
    end
    object dbEmail: TcxDBTextEdit
      Left = 74
      Top = 71
      Hint = 'E-mail do candidato'
      DataBinding.DataField = 'DES_EMAIL'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecLowerCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 566
    end
    object dbTelefone: TcxDBMaskEdit
      Left = 693
      Top = 71
      Hint = 'Telefone do candidato'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Width = 123
    end
    object dbCelular: TcxDBMaskEdit
      Left = 860
      Top = 71
      Hint = 'CElular do candidato'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)0000-0000;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 124
    end
    object dbLogradouro: TcxDBTextEdit
      Left = 74
      Top = 110
      Hint = 'Logradouro do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_ENDERECO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Width = 508
    end
    object dbNumero: TcxDBTextEdit
      Left = 609
      Top = 110
      Hint = 'N'#250'mero do logradouro do endere'#231'o do candidato'
      DataBinding.DataField = 'NUM_ENDERECO'
      DataBinding.DataSource = dsCandidatos
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Width = 95
    end
    object dbComplemento: TcxDBTextEdit
      Left = 780
      Top = 110
      Hint = 'Complemento do endere'#231'o do candidato'
      DataBinding.DataField = 'DES_COMPLEMENTO'
      DataBinding.DataSource = dsCandidatos
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 204
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
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
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
      ItemIndex = 3
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
      Control = cxLookupComboBox1
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
      Index = 4
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
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Hint = 'N'#250'mero do logradouro do endere'#231'o do candidato'
      CaptionOptions.Text = 'N'#186'.'
      Control = dbNumero
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Complemento'
      Control = dbComplemento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 204
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 888
    Top = 160
    object actionNewRegister: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
      ImageIndex = 97
    end
    object actionEditRegister: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      ImageIndex = 95
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
      Enabled = False
      Hint = 'Limpar a tela de pesquisa'
      ImageIndex = 84
      OnExecute = actionClearSearchExecute
    end
    object actionSaveRegister: TAction
      Caption = '&Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 85
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
    end
    object actionDocuments: TAction
      Caption = 'Documentos'
      Hint = 'Documentos anexados'
      ImageIndex = 99
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
    Left = 832
    Top = 160
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbCategoriasRHProv
    Left = 832
    Top = 216
  end
end
