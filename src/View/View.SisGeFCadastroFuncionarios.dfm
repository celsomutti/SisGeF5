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
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionNewRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Visible = False
    end
    object cxButton2: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionEditRegister
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Visible = False
    end
    object cxButton3: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      Visible = False
    end
    object cxButton4: TcxButton
      Left = 923
      Top = 694
      Width = 75
      Height = 25
      Action = actionCloseForm
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 30
    end
    object parametroPesquisa: TcxButtonEdit
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
      Width = 560
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 88
      Height = 25
      Action = actionSearchRecords
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 24
      Height = 24
      Action = actionGroupPanel
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 24
      Height = 24
      Action = actionExpandGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
      Visible = False
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 24
      Height = 24
      Action = actionRetractGrid
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 7
      Visible = False
    end
    object grid: TcxGrid
      Left = 10000
      Top = 10000
      Width = 960
      Height = 538
      TabOrder = 8
      Visible = False
      object gridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFuncionarios
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object gridDBTableView1Column1: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
        end
        object gridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nom_funcionario'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 243
        end
        object gridDBTableView1Column3: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'num_cpf'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 119
        end
        object gridDBTableView1Column4: TcxGridDBColumn
          Caption = 'RG'
          DataBinding.FieldName = 'num_rg'
          Width = 114
        end
        object gridDBTableView1Column5: TcxGridDBColumn
          Caption = 'Departamento'
          DataBinding.FieldName = 'des_departamento'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 166
        end
        object gridDBTableView1Column6: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          Width = 94
        end
        object gridDBTableView1Column7: TcxGridDBColumn
          Caption = 'Admiss'#227'o'
          DataBinding.FieldName = 'dat_admissao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Width = 88
        end
        object gridDBTableView1Column8: TcxGridDBColumn
          Caption = 'Demiss'#227'o'
          DataBinding.FieldName = 'dat_demissao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.ShowToday = False
          Width = 112
        end
        object gridDBTableView1Column9: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'cod_status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'Ativo'
              ImageIndex = 83
              Value = 1
            end
            item
              Description = 'Demitido'
              ImageIndex = 84
              Value = 0
            end
            item
              Description = 'Afastatamento/Licen'#231'a'
              ImageIndex = 116
              Value = 2
            end>
          Width = 127
        end
      end
      object gridLevel1: TcxGridLevel
        GridView = gridDBTableView1
      end
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actionReturnGrid
      TabOrder = 9
      Visible = False
    end
    object id: TcxTextEdit
      Left = 40
      Top = 44
      Hint = 'ID do Funcion'#225'rio'
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Text = '0'
      Width = 61
    end
    object nome: TcxTextEdit
      Left = 139
      Top = 44
      Hint = 'Nome do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Width = 434
    end
    object cpf: TcxMaskEdit
      Left = 603
      Top = 44
      Hint = 'CPF do funcion'#225'rio'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '000\.000\.000\-00;0; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Text = '           '
      Width = 101
    end
    object RG: TcxTextEdit
      Left = 729
      Top = 44
      Hint = 'RG do funcion'#225'rio'
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 13
      Width = 105
    end
    object emissaoRG: TcxDateEdit
      Left = 900
      Top = 44
      Hint = 'Data de emiss'#227'o do RG'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 14
      Width = 84
    end
    object emissorRG: TcxTextEdit
      Left = 82
      Top = 71
      Hint = 'Org'#227'o emissor do RG'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 20
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 15
      Width = 114
    end
    object cxDateEdit1: TcxDateEdit
      Left = 326
      Top = 71
      Hint = 'Data de nascimento'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.ShowToday = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 84
    end
    object nacionalidade: TcxTextEdit
      Left = 487
      Top = 71
      Hint = 'Nacionalidade do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.LookupItems.Strings = (
        'BRASILEIRA')
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Width = 169
    end
    object naturalidade: TcxTextEdit
      Left = 728
      Top = 71
      Hint = 'Naturalidade do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 19
      Width = 192
    end
    object ufNaturalidade: TcxComboBox
      Left = 944
      Top = 71
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
      TabOrder = 20
      Width = 40
    end
    object ufEmissorRG: TcxComboBox
      Left = 220
      Top = 71
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
      TabOrder = 16
      Width = 40
    end
    object nomePai: TcxTextEdit
      Left = 43
      Top = 98
      Hint = 'Nom do pai do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 21
      Width = 448
    end
    object nomeMae: TcxTextEdit
      Left = 522
      Top = 98
      Hint = 'Nome da m'#227'e do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Width = 462
    end
    object CEP: TcxButtonEdit
      Left = 48
      Top = 137
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
      TabOrder = 23
      Text = '        '
      Width = 77
    end
    object logradouro: TcxTextEdit
      Left = 191
      Top = 137
      Hint = 'Logradouro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Width = 461
    end
    object numeroLogradouro: TcxTextEdit
      Left = 679
      Top = 137
      Hint = 'N'#250'mero do logradouro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 11
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 25
      Width = 59
    end
    object complementoEndereco: TcxTextEdit
      Left = 814
      Top = 137
      Hint = 'Complemento do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Width = 170
    end
    object bairroEndereco: TcxTextEdit
      Left = 57
      Top = 167
      Hint = 'Bairro do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 27
      Width = 405
    end
    object cidadeEndereco: TcxTextEdit
      Left = 506
      Top = 167
      Hint = 'Cidade do endere'#231'o do funcion'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Width = 414
    end
    object ufEndereco: TcxComboBox
      Left = 944
      Top = 167
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
      TabOrder = 29
      Width = 40
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
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
      ItemIndex = 1
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
      Parent = dxLayoutGroup1
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
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 7
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
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
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'RG'
      Control = RG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'Emiss'#227'o RG'
      Control = emissaoRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'Emissor RG'
      Control = emissorRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 0
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
      Control = cxDateEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Nacionalidade'
      Control = nacionalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      CaptionOptions.Text = 'Naturalidade'
      Control = naturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'UF'
      Control = ufNaturalidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignVert = avClient
      CaptionOptions.Text = 'UF'
      Control = ufEmissorRG
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 1
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
      CaptionOptions.Text = 'Separator'
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
      CaptionOptions.Text = 'Separator'
      Index = 6
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 7
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
  object dsFuncionarios: TDataSource
    AutoEdit = False
    Left = 632
  end
end
