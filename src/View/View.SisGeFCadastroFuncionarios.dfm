object viewCadastroFunctionarios: TviewCadastroFunctionarios
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
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
    Width = 1008
    Height = 729
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object cxButton1: TcxButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Action = actionNewRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 105
      Top = 24
      Width = 75
      Height = 25
      Action = actionEditRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 186
      Top = 24
      Width = 75
      Height = 25
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 923
      Top = 694
      Width = 75
      Height = 25
      Action = actionCloseForm
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 64
    end
    object parametroPesquisa: TcxButtonEdit
      Left = 330
      Top = 24
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
      Width = 560
    end
    object cxButton5: TcxButton
      Left = 896
      Top = 24
      Width = 88
      Height = 25
      Action = actionSearchRecords
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton6: TcxButton
      Left = 24
      Top = 67
      Width = 24
      Height = 24
      Action = actionGroupPanel
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton7: TcxButton
      Left = 54
      Top = 67
      Width = 24
      Height = 24
      Action = actionExpandGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object cxButton8: TcxButton
      Left = 84
      Top = 67
      Width = 24
      Height = 24
      Action = actionRetractGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 7
    end
    object grid: TcxGrid
      Left = 24
      Top = 97
      Width = 960
      Height = 554
      TabOrder = 8
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
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsFuncionarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object gridDBTableView1id_funcionario: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1nom_funcionario: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nom_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1asnom_alias: TcxGridDBColumn
          Caption = 'Alias'
          DataBinding.FieldName = 'nom_alias'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 271
        end
        object gridDBTableView1cod_tipo_pessoa: TcxGridDBColumn
          Caption = 'Pessoa'
          DataBinding.FieldName = 'cod_tipo_pessoa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridDBTableView1num_cpf: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'num_cpf'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1num_rg: TcxGridDBColumn
          Caption = 'RG'
          DataBinding.FieldName = 'num_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1dat_emissao_rg: TcxGridDBColumn
          Caption = 'Emiss'#227'o RG'
          DataBinding.FieldName = 'dat_emissao_rg'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1nom_emissor_rg: TcxGridDBColumn
          Caption = 'Emissor RG'
          DataBinding.FieldName = 'nom_emissor_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1uf_emissor_rg: TcxGridDBColumn
          Caption = 'UF Emissor'
          DataBinding.FieldName = 'uf_emissor_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object gridDBTableView1dat_nascimento: TcxGridDBColumn
          Caption = 'Nascimento'
          DataBinding.FieldName = 'dat_nascimento'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_nacionalidade: TcxGridDBColumn
          Caption = 'Nacionalidade'
          DataBinding.FieldName = 'des_nacionalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_naturalidade: TcxGridDBColumn
          Caption = 'Naturalidade'
          DataBinding.FieldName = 'des_naturalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1uf_naturalidade: TcxGridDBColumn
          Caption = 'UF Naturalidade'
          DataBinding.FieldName = 'uf_naturalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object gridDBTableView1nom_pai: TcxGridDBColumn
          Caption = 'Nome do Pai'
          DataBinding.FieldName = 'nom_pai'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1nom_mae: TcxGridDBColumn
          Caption = 'Nome da M'#227'e'
          DataBinding.FieldName = 'nom_mae'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1num_cnh: TcxGridDBColumn
          Caption = 'N'#186' CNH'
          DataBinding.FieldName = 'num_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 114
        end
        object gridDBTableView1num_registro_cnh: TcxGridDBColumn
          Caption = 'Registro CNH'
          DataBinding.FieldName = 'num_registro_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridDBTableView1des_categoria_cnh: TcxGridDBColumn
          Caption = 'Categoria CNH'
          DataBinding.FieldName = 'des_categoria_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridDBTableView1dat_validade_cnh: TcxGridDBColumn
          Caption = 'Validade CNH'
          DataBinding.FieldName = 'dat_validade_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1dat_emissao_cnh: TcxGridDBColumn
          Caption = 'Emiss'#227'o CNH'
          DataBinding.FieldName = 'dat_emissao_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1uf_cnh: TcxGridDBColumn
          Caption = 'UF CNH'
          DataBinding.FieldName = 'uf_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 43
        end
        object gridDBTableView1dat_primeira_cnh: TcxGridDBColumn
          Caption = 'Primeira CNH'
          DataBinding.FieldName = 'dat_primeira_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1cod_seguranca_cnh: TcxGridDBColumn
          Caption = 'C'#243'd. Seg. CNH'
          DataBinding.FieldName = 'cod_seguranca_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1cod_status: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'cod_status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'DEMITIDO'
              ImageIndex = 84
              Value = 0
            end
            item
              Description = 'ATIVO'
              ImageIndex = 83
              Value = 1
            end
            item
              Description = 'LICEN'#199'A/AFASTADO'
              ImageIndex = 84
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object gridDBTableView1des_obs: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'des_obs'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Properties.MemoScrollBars = ssVertical
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object gridDBTableView1id_departamento: TcxGridDBColumn
          Caption = 'ID Departamento'
          DataBinding.FieldName = 'id_departamento'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object gridDBTableView1des_departamento: TcxGridDBColumn
          Caption = 'Departamento'
          DataBinding.FieldName = 'des_departamento'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 203
        end
        object gridDBTableView1id_funcao: TcxGridDBColumn
          Caption = 'ID Fun'#231#227'o'
          DataBinding.FieldName = 'id_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1des_funcao: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 195
        end
        object gridDBTableView1dat_admissao: TcxGridDBColumn
          Caption = 'Admiss'#227'o'
          DataBinding.FieldName = 'dat_admissao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1val_remuneracao: TcxGridDBColumn
          Caption = 'Remunera'#231#227'o'
          DataBinding.FieldName = 'val_remuneracao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object gridDBTableView1dat_demissao: TcxGridDBColumn
          Caption = 'Demiss'#227'o'
          DataBinding.FieldName = 'dat_demissao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1createdAt: TcxGridDBColumn
          Caption = 'Criado em '
          DataBinding.FieldName = 'createdAt'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridDBTableView1updatedAt: TcxGridDBColumn
          Caption = #218'ltima Atualiza'#231#227'o em'
          DataBinding.FieldName = 'updatedAt'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.ShowToday = False
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridLevel1: TcxGridLevel
        GridView = gridDBTableView1
      end
    end
    object id: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'ID do Funcion'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Text = '0'
      Visible = False
      Width = 61
    end
    object nome: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 684
    end
    object cpf: TcxMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'CPF do funcion'#225'rio'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '000\.000\.000\-00;0; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Text = '           '
      Visible = False
      Width = 131
    end
    object RG: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'RG do funcion'#225'rio'
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Visible = False
      Width = 122
    end
    object emissaoRG: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de emiss'#227'o do RG'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 28
      Visible = False
      Width = 104
    end
    object emissorRG: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Org'#227'o emissor do RG'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 29
      Visible = False
      Width = 138
    end
    object nascimento: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de nascimento'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 12
      Visible = False
      Width = 84
    end
    object nacionalidade: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nacionalidade do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.LookupItems.Strings = (
        'BRASILEIRA')
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Visible = False
      Width = 286
    end
    object naturalidade: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Naturalidade do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 317
    end
    object ufNaturalidade: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF da naturalidade do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Visible = False
      Width = 40
    end
    object ufEmissorRG: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF Emissor RG'
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 30
      Visible = False
      Width = 40
    end
    object nomePai: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nom do pai do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Visible = False
      Width = 448
    end
    object nomeMae: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome da m'#227'e do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Visible = False
      Width = 462
    end
    object CEP: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'CEP do endere'#231'o do funcion'#225'rio'
      Properties.Buttons = <
        item
          Action = actionSearchCEP
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '00000\-999;0; '
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 18
      Text = '        '
      Visible = False
      Width = 90
    end
    object logradouro: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Logradouro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 448
    end
    object numeroLogradouro: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do logradouro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 11
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 59
    end
    object complementoEndereco: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Complemento do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Visible = False
      Width = 170
    end
    object bairroEndereco: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Bairro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Width = 405
    end
    object cidadeEndereco: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Cidade do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Visible = False
      Width = 414
    end
    object ufEndereco: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF do endere'#231'o do funcion'#225'rio'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 24
      Visible = False
      Width = 40
    end
    object telefone: TcxMaskEdit
      Left = 10000
      Top = 10000
      Hint = 'Telefone do funcion'#225'rio'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '!\(99\)00000-0000;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Text = '(  )     -    '
      Visible = False
      Width = 102
    end
    object email: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'E-Mail do funcion'#225'rio'
      Properties.CharCase = ecLowerCase
      Properties.MaxLength = 128
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Visible = False
      Width = 772
    end
    object ctps: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'CTPS do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 31
      Visible = False
      Width = 143
    end
    object serieCtps: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'S'#233'rie da CTPS do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 32
      Visible = False
      Width = 105
    end
    object ufCtps: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 33
      Visible = False
      Width = 40
    end
    object numeroCNH: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da c'#233'dula da CNH do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 34
      Visible = False
      Width = 88
    end
    object registroCNH: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'nmero do registro da CNH do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 15
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 35
      Visible = False
      Width = 117
    end
    object categoriaCNH: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Categoria da CNH do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 36
      Visible = False
      Width = 40
    end
    object ufCNH: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'UF da CNH do funcion'#225'rio'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 37
      Visible = False
      Width = 40
    end
    object codigoSeguranca: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo de seguran'#231'a da CNH do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 30
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 38
      Visible = False
      Width = 90
    end
    object primeiraCNH: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data da primeira CNH do funcion'#225'rio'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 39
      Visible = False
      Width = 82
    end
    object emissaoCNH: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Emiss'#227'o da CNH do funcion'#225'rio'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 40
      Visible = False
      Width = 82
    end
    object validadeCNH: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Validade da CNH do funcin'#225'rios'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 41
      Visible = False
      Width = 82
    end
    object pis: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do PIS do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 42
      Visible = False
      Width = 150
    end
    object reservista: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da Reservista do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 43
      Visible = False
      Width = 158
    end
    object titulo: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero do T'#237'tulo Eleitoral do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 44
      Visible = False
      Width = 152
    end
    object zona: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Zona Eleitoral do funcion'#225'rios'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 45
      Visible = False
      Width = 152
    end
    object secao: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Se'#231#227'o Eleitoral do fiuncion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 46
      Visible = False
      Width = 153
    end
    object departamento: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do Departamento do funcion'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actSearchDepartment
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = departamentoPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 47
      Text = '0'
      Visible = False
      Width = 70
    end
    object descricaoDepartamento: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Descri'#231#227'o do departamento do funcion'#225'rio'
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 48
      Visible = False
      Width = 123
    end
    object funcao: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo da Fun'#231#227'o do funcion'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actSearchFunction
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = funcaoPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 49
      Text = '0'
      Visible = False
      Width = 70
    end
    object descricaoFuncao: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Descri'#231#227'o da Fun'#231#227'o do funcion'#225'rio'
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 50
      Visible = False
      Width = 122
    end
    object admissao: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de Admiss'#227'o do funcion'#225'rio'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 51
      Visible = False
      Width = 82
    end
    object remuneracao: TcxCurrencyEdit
      Left = 10000
      Top = 10000
      Hint = 'Sal'#225'rio base do funcion'#225'rio'
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 52
      Visible = False
      Width = 90
    end
    object situacao: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Situa'#231#227'o do funcion'#225'rio'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'DEMITIDO'
        'ATIVO'
        'LICEN'#199'A/AFASTAMENTO')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 60
      Visible = False
      Width = 131
    end
    object demissao: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data de Demiss'#227'o do funcion'#225'rio'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 53
      Visible = False
      Width = 82
    end
    object observacoes: TcxMemo
      Left = 10000
      Top = 10000
      Hint = 'Observa'#231#245'es sobre o funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 59
      Visible = False
      Height = 52
      Width = 960
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionReturnGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 61
      Visible = False
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 116
      Height = 25
      Action = actionDocuments
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 62
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionSaveRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 63
      Visible = False
    end
    object banco: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do banco da conta do funcion'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actSearchBank
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d'
      Properties.OnValidate = bancoPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 54
      Text = '0'
      Visible = False
      Width = 67
    end
    object descricaoBanco: TcxTextEdit
      Left = 10000
      Top = 10000
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 55
      Visible = False
      Width = 133
    end
    object conta: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'N'#250'mero da conta corrente do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 57
      Visible = False
      Width = 121
    end
    object agencia: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.MaxLength = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 56
      Visible = False
      Width = 72
    end
    object pix: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Chave PIX  do funcion'#225'rio'
      Properties.MaxLength = 125
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 58
      Visible = False
      Width = 411
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lgpContainer: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar'
      Control = parametroPesquisa
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup7
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
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 15
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignVert = avCenter
      CaptionOptions.Hint = 'ID do Funcion'#225'rio'
      CaptionOptions.Text = 'ID'
      Control = id
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nome'
      Control = nome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'CPF'
      Control = cpf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'RG'
      Control = RG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Emiss'#227'o RG'
      Control = emissaoRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Emissor RG'
      Control = emissorRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Nascimento'
      Control = nascimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nacionalidade'
      Control = nacionalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Naturalidade'
      Control = naturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'UF'
      Control = ufNaturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignVert = avClient
      CaptionOptions.Text = 'UF'
      Control = ufEmissorRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'Pai'
      Control = nomePai
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      CaptionOptions.Text = 'M'#227'e'
      Control = nomeMae
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Endere'#231'o / Contato'
      CaptionOptions.Visible = True
      Padding.Bottom = 10
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavTop]
      Index = 3
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Hint = 'CEP do endere'#231'o do funcion'#225'rio'
      CaptionOptions.Text = 'CEP'
      Control = CEP
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Logradouro'
      Control = logradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignVert = avClient
      CaptionOptions.Text = 'N'#186'.'
      Control = numeroLogradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignVert = avClient
      CaptionOptions.Text = 'Complemento'
      Control = complementoEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bairro'
      Control = bairroEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cidade'
      Control = cidadeEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'UF'
      Control = ufEndereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Documentos'
      CaptionOptions.Visible = True
      Offsets.Bottom = 10
      Offsets.Top = 10
      Index = 7
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup15
      CaptionOptions.Text = 'Telefone'
      Control = telefone
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      CaptionOptions.Text = 'E-Mail'
      Control = email
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      CaptionOptions.Text = 'CTPS'
      Control = ctps
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      CaptionOptions.Text = 'S'#233'rie'
      Control = serieCtps
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup16
      CaptionOptions.Text = 'UF'
      Control = ufCtps
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      CaptionOptions.Text = 'CNH'
      Control = numeroCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      CaptionOptions.Text = 'Registro'
      Control = registroCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Cat.'
      Control = categoriaCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'UF'
      Control = ufCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      CaptionOptions.Text = 'Seg.'
      Control = codigoSeguranca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Primeira CNH'
      Control = primeiraCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Emiss'#227'o'
      Control = emissaoCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Validade'
      Control = validadeCNH
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'PIS'
      Control = pis
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Reservista'
      Control = reservista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'T'#237'tulo'
      Control = titulo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Zona'
      Control = zona
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Se'#231#227'o'
      Control = secao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSeparatorItem4: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Recursos Humanos'
      CaptionOptions.Visible = True
      Offsets.Bottom = 10
      Offsets.Top = 10
      Index = 11
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 6
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 12
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Departamento'
      Control = departamento
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem52: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Visible = False
      Control = descricaoDepartamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem53: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Fun'#231#227'o'
      Control = funcao
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem54: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'Descri'#231#227'o'
      CaptionOptions.Visible = False
      Control = descricaoFuncao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 13
    end
    object dxLayoutItem55: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Admiss'#227'o'
      Control = admissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem56: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Remunera'#231#227'o'
      Control = remuneracao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem57: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Situa'#231#227'o'
      Control = situacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem58: TdxLayoutItem
      Parent = dxLayoutGroup19
      CaptionOptions.Text = 'Demiss'#227'o'
      Control = demissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 14
    end
    object dxLayoutItem59: TdxLayoutItem
      Parent = dxLayoutGroup21
      CaptionOptions.Text = 'Observa'#231#245'es'
      CaptionOptions.Layout = clTop
      Control = observacoes
      ControlOptions.OriginalHeight = 52
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 16
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem61: TdxLayoutItem
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem62: TdxLayoutItem
      Parent = dxLayoutGroup22
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Banco'
      Control = banco
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem60: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Nome Banco'
      CaptionOptions.Visible = False
      Control = descricaoBanco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem63: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Conta'
      Control = conta
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem64: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignVert = avClient
      CaptionOptions.Text = 'Ag'#234'ncia'
      Control = agencia
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 15
    end
    object dxLayoutItem65: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'PIX'
      Control = pix
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSeparatorItem5: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutSeparatorItem6: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 680
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
    object actSearchDepartment: TAction
      Caption = 'Procurar Departamento'
      Hint = 'Procurar departamento'
      ImageIndex = 86
      OnExecute = actSearchDepartmentExecute
    end
    object actSearchFunction: TAction
      Caption = 'Procurar Fun'#231#227'o'
      Hint = 'Procurar fun'#231#227'o'
      ImageIndex = 86
      OnExecute = actSearchFunctionExecute
    end
    object actSearchBank: TAction
      Caption = 'Pesquisa Banco'
      Hint = 'Pesquisa o banco'
      ImageIndex = 86
      OnExecute = actSearchBankExecute
    end
  end
  object dsFuncionarios: TDataSource
    AutoEdit = False
    DataSet = mtbPesquisa
    Left = 632
  end
  object mtbPesquisa: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_funcionario'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nom_funcionario'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_alias'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_tipo_pessoa'
        DataType = ftInteger
      end
      item
        Name = 'num_cpf'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dat_emissao_rg'
        DataType = ftDateTime
      end
      item
        Name = 'nom_emissor_rg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'uf_emissor_rg'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'dat_nascimento'
        DataType = ftDate
      end
      item
        Name = 'des_nacionalidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'des_naturalidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'uf_naturalidade'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'nom_pai'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_mae'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_cnh'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'num_registro_cnh'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'des_categoria_cnh'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'dat_validade_cnh'
        DataType = ftDate
      end
      item
        Name = 'dat_emissao_cnh'
        DataType = ftDate
      end
      item
        Name = 'uf_cnh'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'dat_primeira_cnh'
        DataType = ftDate
      end
      item
        Name = 'cod_seguranca_cnh'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'des_obs'
        DataType = ftMemo
      end
      item
        Name = 'id_departamento'
        DataType = ftInteger
      end
      item
        Name = 'des_departamento'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'id_funcao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_funcao'
        DataType = ftString
        Size = 132
      end
      item
        Name = 'dat_admissao'
        DataType = ftDateTime
      end
      item
        Name = 'val_remuneracao'
        DataType = ftSingle
        Precision = 12
      end
      item
        Name = 'dat_demissao'
        DataType = ftDate
      end
      item
        Name = 'createdAt'
        DataType = ftDateTime
      end
      item
        Name = 'updatedAt'
        DataType = ftDateTime
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
    Left = 744
    Content = {
      414442530F007D2A9D110000FF00010001FF02FF030400160000006D00740062
      005000650073007100750069007300610005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B04001C000000690064
      005F00660075006E00630069006F006E006100720069006F0005001C00000069
      0064005F00660075006E00630069006F006E006100720069006F000C00010000
      000E000D000F000110000111000112000113001C000000690064005F00660075
      006E00630069006F006E006100720069006F00FEFF0B04001E0000006E006F00
      6D005F00660075006E00630069006F006E006100720069006F0005001E000000
      6E006F006D005F00660075006E00630069006F006E006100720069006F000C00
      020000000E0014001500460000000F0001160001100001170001110001120001
      13001E0000006E006F006D005F00660075006E00630069006F006E0061007200
      69006F00180046000000FEFF0B0400120000006E006F006D005F0061006C0069
      00610073000500120000006E006F006D005F0061006C006900610073000C0003
      0000000E0014001500460000000F000116000110000117000111000112000113
      00120000006E006F006D005F0061006C00690061007300180046000000FEFF0B
      04001E00000063006F0064005F007400690070006F005F007000650073007300
      6F00610005001E00000063006F0064005F007400690070006F005F0070006500
      730073006F0061000C00040000000E000D000F00011600011000011700011100
      0112000113001E00000063006F0064005F007400690070006F005F0070006500
      730073006F006100FEFF0B04000E0000006E0075006D005F0063007000660005
      000E0000006E0075006D005F006300700066000C00050000000E001400150014
      0000000F000116000110000117000111000112000113000E0000006E0075006D
      005F00630070006600180014000000FEFF0B04000C0000006E0075006D005F00
      7200670005000C0000006E0075006D005F00720067000C00060000000E001400
      1500140000000F000116000110000117000111000112000113000C0000006E00
      75006D005F0072006700180014000000FEFF0B04001C0000006400610074005F
      0065006D0069007300730061006F005F007200670005001C0000006400610074
      005F0065006D0069007300730061006F005F00720067000C00070000000E0019
      000F000116000110000117000111000112000113001C0000006400610074005F
      0065006D0069007300730061006F005F0072006700FEFF0B04001C0000006E00
      6F006D005F0065006D006900730073006F0072005F007200670005001C000000
      6E006F006D005F0065006D006900730073006F0072005F00720067000C000800
      00000E0014001500140000000F00011600011000011700011100011200011300
      1C0000006E006F006D005F0065006D006900730073006F0072005F0072006700
      180014000000FEFF0B04001A000000750066005F0065006D006900730073006F
      0072005F007200670005001A000000750066005F0065006D006900730073006F
      0072005F00720067000C00090000000E0014001500020000000F00011600011A
      000110000117000111000112000113001A000000750066005F0065006D006900
      730073006F0072005F0072006700180002000000FEFF0B04001C000000640061
      0074005F006E0061007300630069006D0065006E0074006F0005001C00000064
      00610074005F006E0061007300630069006D0065006E0074006F000C000A0000
      000E001B000F000116000110000117000111000112000113001C000000640061
      0074005F006E0061007300630069006D0065006E0074006F00FEFF0B04002200
      00006400650073005F006E006100630069006F006E0061006C00690064006100
      640065000500220000006400650073005F006E006100630069006F006E006100
      6C00690064006100640065000C000B0000000E0014001500460000000F000116
      00011000011700011100011200011300220000006400650073005F006E006100
      630069006F006E0061006C0069006400610064006500180046000000FEFF0B04
      00200000006400650073005F006E00610074007500720061006C006900640061
      00640065000500200000006400650073005F006E00610074007500720061006C
      00690064006100640065000C000C0000000E0014001500460000000F00011600
      011000011700011100011200011300200000006400650073005F006E00610074
      007500720061006C0069006400610064006500180046000000FEFF0B04001E00
      0000750066005F006E00610074007500720061006C0069006400610064006500
      05001E000000750066005F006E00610074007500720061006C00690064006100
      640065000C000D0000000E0014001500020000000F00011600011A0001100001
      17000111000112000113001E000000750066005F006E00610074007500720061
      006C0069006400610064006500180002000000FEFF0B04000E0000006E006F00
      6D005F0070006100690005000E0000006E006F006D005F007000610069000C00
      0E0000000E0014001500460000000F0001160001100001170001110001120001
      13000E0000006E006F006D005F00700061006900180046000000FEFF0B04000E
      0000006E006F006D005F006D006100650005000E0000006E006F006D005F006D
      00610065000C000F0000000E0014001500460000000F00011600011000011700
      0111000112000113000E0000006E006F006D005F006D00610065001800460000
      00FEFF0B04000E0000006E0075006D005F0063006E00680005000E0000006E00
      75006D005F0063006E0068000C00100000000E00140015000F0000000F000116
      000110000117000111000112000113000E0000006E0075006D005F0063006E00
      680018000F000000FEFF0B0400200000006E0075006D005F0072006500670069
      007300740072006F005F0063006E0068000500200000006E0075006D005F0072
      006500670069007300740072006F005F0063006E0068000C00110000000E0014
      0015000F0000000F00011600011000011700011100011200011300200000006E
      0075006D005F0072006500670069007300740072006F005F0063006E00680018
      000F000000FEFF0B0400220000006400650073005F0063006100740065006700
      6F007200690061005F0063006E0068000500220000006400650073005F006300
      61007400650067006F007200690061005F0063006E0068000C00120000000E00
      14001500020000000F0001160001100001170001110001120001130022000000
      6400650073005F00630061007400650067006F007200690061005F0063006E00
      6800180002000000FEFF0B0400200000006400610074005F00760061006C0069
      0064006100640065005F0063006E0068000500200000006400610074005F0076
      0061006C00690064006100640065005F0063006E0068000C00130000000E001B
      000F00011600011000011700011100011200011300200000006400610074005F
      00760061006C00690064006100640065005F0063006E006800FEFF0B04001E00
      00006400610074005F0065006D0069007300730061006F005F0063006E006800
      05001E0000006400610074005F0065006D0069007300730061006F005F006300
      6E0068000C00140000000E001B000F0001160001100001170001110001120001
      13001E0000006400610074005F0065006D0069007300730061006F005F006300
      6E006800FEFF0B04000C000000750066005F0063006E00680005000C00000075
      0066005F0063006E0068000C00150000000E0014001500020000000F00011600
      011A000110000117000111000112000113000C000000750066005F0063006E00
      6800180002000000FEFF0B0400200000006400610074005F007000720069006D
      0065006900720061005F0063006E0068000500200000006400610074005F0070
      00720069006D0065006900720061005F0063006E0068000C00160000000E001B
      000F00011600011000011700011100011200011300200000006400610074005F
      007000720069006D0065006900720061005F0063006E006800FEFF0B04002200
      000063006F0064005F007300650067007500720061006E00630061005F006300
      6E00680005002200000063006F0064005F007300650067007500720061006E00
      630061005F0063006E0068000C00170000000E00140015001E0000000F000116
      000110000117000111000112000113002200000063006F0064005F0073006500
      67007500720061006E00630061005F0063006E00680018001E000000FEFF0B04
      001400000063006F0064005F0073007400610074007500730005001400000063
      006F0064005F007300740061007400750073000C00180000000E000D000F0001
      16000110000117000111000112000113001400000063006F0064005F00730074
      006100740075007300FEFF0B04000E0000006400650073005F006F0062007300
      05000E0000006400650073005F006F00620073000C00190000000E001C000F00
      011600011D000110000117000111000112000113000E0000006400650073005F
      006F0062007300FEFF0B04001E000000690064005F0064006500700061007200
      740061006D0065006E0074006F0005001E000000690064005F00640065007000
      61007200740061006D0065006E0074006F000C001A0000000E000D000F000116
      000110000117000111000112000113001E000000690064005F00640065007000
      61007200740061006D0065006E0074006F00FEFF0B0400200000006400650073
      005F0064006500700061007200740061006D0065006E0074006F000500200000
      006400650073005F0064006500700061007200740061006D0065006E0074006F
      000C001B0000000E0014001500500000000F0001160001100001170001110001
      1200011300200000006400650073005F0064006500700061007200740061006D
      0065006E0074006F00180050000000FEFF0B040012000000690064005F006600
      75006E00630061006F00050012000000690064005F00660075006E0063006100
      6F000C001C0000000E000D000F00011000011100011200011300120000006900
      64005F00660075006E00630061006F00FEFF0B0400140000006400650073005F
      00660075006E00630061006F000500140000006400650073005F00660075006E
      00630061006F000C001D0000000E0014001500840000000F0001160001100001
      1700011100011200011300140000006400650073005F00660075006E00630061
      006F00180084000000FEFF0B0400180000006400610074005F00610064006D00
      69007300730061006F000500180000006400610074005F00610064006D006900
      7300730061006F000C001E0000000E0019000F00011600011000011700011100
      011200011300180000006400610074005F00610064006D006900730073006100
      6F00FEFF0B04001E000000760061006C005F00720065006D0075006E00650072
      006100630061006F0005001E000000760061006C005F00720065006D0075006E
      00650072006100630061006F000C001F0000000E001E001F000C0000000F0001
      16000110000117000111000112000113001E000000760061006C005F00720065
      006D0075006E00650072006100630061006F0020000C000000FEFF0B04001800
      00006400610074005F00640065006D0069007300730061006F00050018000000
      6400610074005F00640065006D0069007300730061006F000C00200000000E00
      1B000F0001160001100001170001110001120001130018000000640061007400
      5F00640065006D0069007300730061006F00FEFF0B0400120000006300720065
      0061007400650064004100740005001200000063007200650061007400650064
      00410074000C00210000000E0019000F00011600011000011700011100011200
      01130012000000630072006500610074006500640041007400FEFF0B04001200
      0000750070006400610074006500640041007400050012000000750070006400
      6100740065006400410074000C00220000000E0019000F000116000110000117
      0001110001120001130012000000750070006400610074006500640041007400
      FEFEFF21FEFF22FEFF23FEFEFEFF24FEFF25260001000000FF27FEFEFE0E004D
      0061006E0061006700650072001E005500700064006100740065007300520065
      0067006900730074007200790012005400610062006C0065004C006900730074
      000A005400610062006C00650008004E0061006D006500140053006F00750072
      00630065004E0061006D0065000A0054006100620049004400240045006E0066
      006F0072006300650043006F006E00730074007200610069006E00740073001E
      004D0069006E0069006D0075006D004300610070006100630069007400790018
      0043006800650063006B004E006F0074004E0075006C006C00140043006F006C
      0075006D006E004C006900730074000C0043006F006C0075006D006E00100053
      006F007500720063006500490044000E006400740049006E0074003300320010
      0044006100740061005400790070006500140053006500610072006300680061
      0062006C0065000800420061007300650012004F0049006E0055007000640061
      007400650010004F0049006E00570068006500720065001A004F007200690067
      0069006E0043006F006C004E0061006D00650018006400740041006E00730069
      0053007400720069006E0067000800530069007A006500120041006C006C006F
      0077004E0075006C006C0014004F0041006C006C006F0077004E0075006C006C
      00140053006F007500720063006500530069007A006500140064007400440061
      0074006500540069006D0065001000460069007800650064004C0065006E000C
      006400740044006100740065000C00640074004D0065006D006F00100042006C
      006F0062004400610074006100100064007400530069006E0067006C00650012
      0050007200650063006900730069006F006E001E0053006F0075007200630065
      0050007200650063006900730069006F006E001C0043006F006E007300740072
      00610069006E0074004C00690073007400100056006900650077004C00690073
      0074000E0052006F0077004C006900730074001800520065006C006100740069
      006F006E004C006900730074001C0055007000640061007400650073004A006F
      00750072006E0061006C001200530061007600650050006F0069006E0074000E
      004300680061006E00670065007300}
    object mtbPesquisaid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Required = True
    end
    object mtbPesquisanom_funcionario: TStringField
      FieldName = 'nom_funcionario'
      Size = 70
    end
    object mtbPesquisanom_alias: TStringField
      FieldName = 'nom_alias'
      Size = 70
    end
    object mtbPesquisacod_tipo_pessoa: TIntegerField
      FieldName = 'cod_tipo_pessoa'
    end
    object mtbPesquisanum_cpf: TStringField
      FieldName = 'num_cpf'
    end
    object mtbPesquisanum_rg: TStringField
      FieldName = 'num_rg'
    end
    object mtbPesquisadat_emissao_rg: TDateTimeField
      FieldName = 'dat_emissao_rg'
    end
    object mtbPesquisanom_emissor_rg: TStringField
      FieldName = 'nom_emissor_rg'
    end
    object mtbPesquisauf_emissor_rg: TStringField
      FieldName = 'uf_emissor_rg'
      FixedChar = True
      Size = 2
    end
    object mtbPesquisadat_nascimento: TDateField
      FieldName = 'dat_nascimento'
    end
    object mtbPesquisades_nacionalidade: TStringField
      FieldName = 'des_nacionalidade'
      Size = 70
    end
    object mtbPesquisades_naturalidade: TStringField
      FieldName = 'des_naturalidade'
      Size = 70
    end
    object mtbPesquisauf_naturalidade: TStringField
      FieldName = 'uf_naturalidade'
      FixedChar = True
      Size = 2
    end
    object mtbPesquisanom_pai: TStringField
      FieldName = 'nom_pai'
      Size = 70
    end
    object mtbPesquisanom_mae: TStringField
      FieldName = 'nom_mae'
      Size = 70
    end
    object mtbPesquisanum_cnh: TStringField
      FieldName = 'num_cnh'
      Size = 15
    end
    object mtbPesquisanum_registro_cnh: TStringField
      FieldName = 'num_registro_cnh'
      Size = 15
    end
    object mtbPesquisades_categoria_cnh: TStringField
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object mtbPesquisadat_validade_cnh: TDateField
      FieldName = 'dat_validade_cnh'
    end
    object mtbPesquisadat_emissao_cnh: TDateField
      FieldName = 'dat_emissao_cnh'
    end
    object mtbPesquisauf_cnh: TStringField
      FieldName = 'uf_cnh'
      FixedChar = True
      Size = 2
    end
    object mtbPesquisadat_primeira_cnh: TDateField
      FieldName = 'dat_primeira_cnh'
    end
    object mtbPesquisacod_seguranca_cnh: TStringField
      FieldName = 'cod_seguranca_cnh'
      Size = 30
    end
    object mtbPesquisacod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object mtbPesquisades_obs: TMemoField
      FieldName = 'des_obs'
      BlobType = ftMemo
    end
    object mtbPesquisaid_departamento: TIntegerField
      FieldName = 'id_departamento'
    end
    object mtbPesquisades_departamento: TStringField
      FieldName = 'des_departamento'
      Size = 80
    end
    object mtbPesquisaid_funcao: TIntegerField
      FieldName = 'id_funcao'
      Required = True
    end
    object mtbPesquisades_funcao: TStringField
      FieldName = 'des_funcao'
      Size = 132
    end
    object mtbPesquisadat_admissao: TDateTimeField
      FieldName = 'dat_admissao'
    end
    object mtbPesquisaval_remuneracao: TSingleField
      FieldName = 'val_remuneracao'
    end
    object mtbPesquisadat_demissao: TDateField
      FieldName = 'dat_demissao'
    end
    object mtbPesquisacreatedAt: TDateTimeField
      FieldName = 'createdAt'
    end
    object mtbPesquisaupdatedAt: TDateTimeField
      FieldName = 'updatedAt'
    end
  end
end
