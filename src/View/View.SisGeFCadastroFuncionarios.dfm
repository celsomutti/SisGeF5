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
      Top = 44
      Width = 75
      Height = 25
      Action = actionNewRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 105
      Top = 44
      Width = 75
      Height = 25
      Action = actionEditRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 186
      Top = 44
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
      TabOrder = 59
    end
    object parametroPesquisa: TcxButtonEdit
      Left = 330
      Top = 44
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
      Top = 44
      Width = 88
      Height = 25
      Action = actionSearchRecords
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton6: TcxButton
      Left = 24
      Top = 75
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
      Top = 75
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
      Top = 75
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
      Top = 105
      Width = 960
      Height = 558
      TabOrder = 8
      object gridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFuncionarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridDBTableView1id_funcionario: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1nom_funcionario: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nom_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1asnom_alias: TcxGridDBColumn
          Caption = 'Alias'
          DataBinding.FieldName = 'nom_alias'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Width = 271
        end
        object gridDBTableView1cod_tipo_pessoa: TcxGridDBColumn
          Caption = 'Pessoa'
          DataBinding.FieldName = 'cod_tipo_pessoa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          VisibleForCustomization = False
        end
        object gridDBTableView1num_cpf: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'num_cpf'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1num_rg: TcxGridDBColumn
          Caption = 'RG'
          DataBinding.FieldName = 'num_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
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
        end
        object gridDBTableView1nom_emissor_rg: TcxGridDBColumn
          Caption = 'Emissor RG'
          DataBinding.FieldName = 'nom_emissor_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1uf_emissor_rg: TcxGridDBColumn
          Caption = 'UF Emissor'
          DataBinding.FieldName = 'uf_emissor_rg'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
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
        end
        object gridDBTableView1des_nacionalidade: TcxGridDBColumn
          Caption = 'Nacionalidade'
          DataBinding.FieldName = 'des_nacionalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1des_naturalidade: TcxGridDBColumn
          Caption = 'Naturalidade'
          DataBinding.FieldName = 'des_naturalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1uf_naturalidade: TcxGridDBColumn
          Caption = 'UF Naturalidade'
          DataBinding.FieldName = 'uf_naturalidade'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Width = 83
        end
        object gridDBTableView1nom_pai: TcxGridDBColumn
          Caption = 'Nome do Pai'
          DataBinding.FieldName = 'nom_pai'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1nom_mae: TcxGridDBColumn
          Caption = 'Nome da M'#227'e'
          DataBinding.FieldName = 'nom_mae'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1num_cnh: TcxGridDBColumn
          Caption = 'N'#186' CNH'
          DataBinding.FieldName = 'num_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 114
        end
        object gridDBTableView1num_registro_cnh: TcxGridDBColumn
          Caption = 'Registro CNH'
          DataBinding.FieldName = 'num_registro_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 97
        end
        object gridDBTableView1des_categoria_cnh: TcxGridDBColumn
          Caption = 'Categoria CNH'
          DataBinding.FieldName = 'des_categoria_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
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
        end
        object gridDBTableView1uf_cnh: TcxGridDBColumn
          Caption = 'UF CNH'
          DataBinding.FieldName = 'uf_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
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
        end
        object gridDBTableView1cod_seguranca_cnh: TcxGridDBColumn
          Caption = 'C'#243'd. Seg. CNH'
          DataBinding.FieldName = 'cod_seguranca_cnh'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
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
          Width = 127
        end
        object gridDBTableView1des_obs: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'des_obs'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.MemoScrollBars = ssVertical
          Properties.ReadOnly = True
          Width = 80
        end
        object gridDBTableView1id_departamento: TcxGridDBColumn
          Caption = 'ID Departamento'
          DataBinding.FieldName = 'id_departamento'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
          Width = 89
        end
        object gridDBTableView1des_departamento: TcxGridDBColumn
          Caption = 'Departamento'
          DataBinding.FieldName = 'des_departamento'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 203
        end
        object gridDBTableView1id_funcao: TcxGridDBColumn
          Caption = 'ID Fun'#231#227'o'
          DataBinding.FieldName = 'id_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Visible = False
        end
        object gridDBTableView1des_funcao: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
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
        end
        object gridDBTableView1val_remuneracao: TcxGridDBColumn
          Caption = 'Remunera'#231#227'o'
          DataBinding.FieldName = 'val_remuneracao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.ReadOnly = True
          Width = 112
        end
        object gridDBTableView1dat_demissao: TcxGridDBColumn
          Caption = 'Demiss'#227'o'
          DataBinding.FieldName = 'dat_demissao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Visible = False
        end
        object gridDBTableView1createdAt: TcxGridDBColumn
          Caption = 'Criado em '
          DataBinding.FieldName = 'createdAt'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.ShowToday = False
          Visible = False
        end
        object gridDBTableView1updatedAt: TcxGridDBColumn
          Caption = #218'ltima Atualiza'#231#227'o em'
          DataBinding.FieldName = 'updatedAt'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.ShowToday = False
          Visible = False
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
      Width = 714
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
      Width = 101
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
      Width = 77
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
      Width = 461
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
      Width = 344
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
      Width = 344
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
      TabOrder = 53
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
      TabOrder = 54
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
      TabOrder = 55
      Visible = False
      Height = 68
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
      TabOrder = 56
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
      TabOrder = 57
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
      TabOrder = 58
      Visible = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
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
      Index = 1
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
      Index = 1
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
      ControlOptions.OriginalWidth = 101
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
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'Logradouro'
      Control = logradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup13
      CaptionOptions.Text = 'N'#186'.'
      Control = numeroLogradouro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup13
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 13
    end
    object dxLayoutItem55: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Admiss'#227'o'
      Control = admissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem56: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'Remunera'#231#227'o'
      Control = remuneracao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem57: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahRight
      CaptionOptions.Text = 'Situa'#231#227'o'
      Control = situacao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 131
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem58: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahRight
      CaptionOptions.Text = 'Demiss'#227'o'
      Control = demissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 3
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
      ControlOptions.OriginalHeight = 68
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
      Index = 15
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
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 680
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
    end
    object actionRetractGrid: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grid'
      ImageIndex = 107
    end
    object actionGroupPanel: TAction
      Caption = 'Painel de Grupo'
      Hint = 'Exibir o painel de grupos'
      ImageIndex = 110
    end
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
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
    end
    object actionClearSearch: TAction
      Caption = 'Li&mpar'
      Hint = 'Limpar a tela de pesquisa'
      ImageIndex = 84
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
      Caption = '&Documentos'
      Hint = 'Documentos anexados'
      ImageIndex = 99
    end
    object actSearchDepartment: TAction
      Caption = 'Procurar Departamento'
      Hint = 'Procurar departamento'
      ImageIndex = 86
    end
    object actSearchFunction: TAction
      Caption = 'Procurar Fun'#231#227'o'
      Hint = 'Procurar fun'#231#227'o'
      ImageIndex = 86
    end
  end
  object dsFuncionarios: TDataSource
    AutoEdit = False
    Left = 632
  end
end
