object view_SisGeFVehiclesRegistrationDetail: Tview_SisGeFVehiclesRegistrationDetail
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 336
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 810
    Height = 336
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object pessoa: TcxImageComboBox
      Left = 78
      Top = 28
      Hint = 'Tipo de pessoa'
      EditValue = 'CPF'
      Properties.Items = <
        item
          Description = 'F'#237'sica'
          ImageIndex = 0
          Value = 'CPF'
        end
        item
          Description = 'Jur'#237'dica'
          Value = 'CNPJ'
        end>
      Style.HotTrack = False
      TabOrder = 0
      Width = 87
    end
    object cpf: TcxMaskEdit
      Left = 199
      Top = 28
      Hint = 'CPF ou CNPJ do propriet'#225'rio'
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '999\.999\.999\-99;1; '
      Style.HotTrack = False
      TabOrder = 1
      Text = '   .   .   -  '
      Width = 107
    end
    object nome: TcxTextEdit
      Left = 348
      Top = 28
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 2
      Width = 294
    end
    object nascimento: TcxDateEdit
      Left = 712
      Top = 28
      Hint = 'Data de nascimento do propriet'#225'rio'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 3
      Width = 76
    end
    object pai: TcxTextEdit
      Left = 78
      Top = 55
      Hint = 'Nome do pai do propriet'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 4
      Width = 180
    end
    object mae: TcxTextEdit
      Left = 293
      Top = 55
      Hint = 'Nome da m'#227'e do pripriet'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 5
      Width = 164
    end
    object rgie: TcxTextEdit
      Left = 503
      Top = 55
      Hint = 'Rg/IE do propriet'#225'rio'
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 6
      Width = 74
    end
    object ufrg: TcxComboBox
      Left = 622
      Top = 55
      Hint = 'UF emiss'#227'o RG'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 2
      Style.HotTrack = False
      TabOrder = 7
      Width = 37
    end
    object emissao: TcxDateEdit
      Left = 712
      Top = 55
      Hint = 'ata da emiss'#227'o do RG'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 8
      Width = 76
    end
    object cxButtonEdit1: TcxButtonEdit
      Left = 78
      Top = 112
      Hint = 'CEP do endere'#231'o'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.IgnoreMaskBlank = True
      Properties.EditMask = '99999\-999;1; '
      Style.HotTrack = False
      TabOrder = 9
      Text = '     -   '
      Width = 83
    end
    object endereco: TcxTextEdit
      Left = 241
      Top = 112
      Hint = 'Endere'#231'o do propriet'#225'rio'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 85
      Style.HotTrack = False
      TabOrder = 10
      Width = 319
    end
    object bairro: TcxTextEdit
      Left = 603
      Top = 112
      Hint = 'Nome do bairro'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 11
      Width = 185
    end
    object cidade: TcxTextEdit
      Left = 78
      Top = 139
      Hint = 'Cidade do endere'#231'o'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 12
      Width = 202
    end
    object ufendereco: TcxComboBox
      Left = 308
      Top = 139
      Hint = 'UD do endere'#231'o'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 2
      Style.HotTrack = False
      TabOrder = 13
      Width = 32
    end
    object descricao1: TcxTextEdit
      Left = 382
      Top = 139
      Hint = 'descri'#231#227'o do telefone 1'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 40
      Style.HotTrack = False
      TabOrder = 14
      Width = 94
    end
    object telefone1: TcxMaskEdit
      Left = 482
      Top = 139
      Hint = 'Telefone 1'
      Properties.EditMask = '!\(99\)9999-9999;1; '
      Style.HotTrack = False
      TabOrder = 15
      Text = '(  )    -    '
      Width = 90
    end
    object descricao2: TcxTextEdit
      Left = 614
      Top = 139
      Hint = 'Descri'#231#227'o do telefone 2'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 40
      Style.HotTrack = False
      TabOrder = 16
      Width = 83
    end
    object telefone2: TcxMaskEdit
      Left = 703
      Top = 139
      Hint = 'Telefone 2'
      Properties.EditMask = '!\(99\)9999-9999;1; '
      Style.HotTrack = False
      TabOrder = 17
      Text = '(  )    -    '
      Width = 85
    end
    object marca: TComboBox
      Left = 78
      Top = 196
      Width = 108
      Height = 21
      Hint = 'Marca do ve'#237'culo'
      MaxLength = 50
      TabOrder = 18
      Items.Strings = (
        'Agrale'
        'Alfa Romeo'
        'Audi'
        'BMW'
        'Caoa Chery'
        'Chevrolet'
        'Citro'#235'n'
        'FIAT'
        'Ford'
        'Honda'
        'Hyundai'
        'IVECO'
        'JAC'
        'Jeep'
        'Kia'
        'Land Rover'
        'Mercedes Benz'
        'Mitsubishi'
        'Nissan'
        'Opel'
        'Renault'
        'Suzuki'
        'Toyota'
        'Volkswagen'
        'Volvo'
        'Yamaha')
    end
    object modelo: TcxTextEdit
      Left = 235
      Top = 196
      Hint = 'Modelo do ve'#237'culo'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Style.HotTrack = False
      TabOrder = 19
      Width = 123
    end
    object placa: TcxTextEdit
      Left = 398
      Top = 196
      Hint = 'Placa do ve'#237'culo'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 7
      Style.HotTrack = False
      TabOrder = 20
      Width = 70
    end
    object cidadePlaca: TcxTextEdit
      Left = 593
      Top = 196
      Hint = 'Cidade da placa'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 70
      Style.HotTrack = False
      TabOrder = 22
      Width = 124
    end
    object ufplaca: TcxComboBox
      Left = 745
      Top = 196
      Hint = 'UF da placa'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 2
      Style.HotTrack = False
      TabOrder = 23
      Width = 43
    end
    object ano: TcxMaskEdit
      Left = 502
      Top = 196
      Hint = 'Ano de fabrica'#231#227'o'
      Properties.EditMask = '!9999;1; '
      Style.HotTrack = False
      TabOrder = 21
      Text = '    '
      Width = 43
    end
    object renavan: TcxTextEdit
      Left = 78
      Top = 223
      Hint = 'N'#250'mero do RENAVAN'
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 25
      Style.HotTrack = False
      TabOrder = 24
      Width = 109
    end
    object chassis: TcxTextEdit
      Left = 238
      Top = 223
      Hint = 'N'#250'mero do chassis'
      Properties.MaxLength = 50
      Style.HotTrack = False
      TabOrder = 25
      Width = 138
    end
    object tipo: TcxComboBox
      Left = 411
      Top = 223
      Hint = 'Tipo de ve'#237'culo'
      Properties.Items.Strings = (
        'Informe ...'
        'PASSEIO'
        'MOTO'
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
        'QUADRICICLO')
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 26
      Text = 'Informe ...'
      Width = 120
    end
    object cor: TcxTextEdit
      Left = 563
      Top = 223
      Hint = 'Cor predominante do ve'#237'culo'
      Properties.LookupItems.Strings = (
        'AMARELA'
        'AZUL'
        'BRANCA'
        'CINZA'
        'LARANJA'
        'LIL'#193'S'
        'MARROM'
        'OCRE'
        'PRETA'
        'ROSA'
        'ROXA'
        'VERDE'
        'VERMELHA')
      Properties.LookupItemsSorted = True
      Properties.MaxLength = 20
      Style.HotTrack = False
      TabOrder = 27
      Width = 93
    end
    object licenciamento: TcxMaskEdit
      Left = 738
      Top = 223
      Properties.EditMask = '!9999;1; '
      Style.HotTrack = False
      TabOrder = 28
      Text = '    '
      Width = 50
    end
    object rastreador: TcxCheckBox
      Left = 595
      Top = 250
      Hint = 'Ve'#237'culo possui rastreador'
      Caption = 'Rastreador'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 29
      Transparent = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 679
      Top = 250
      Hint = 'Ve'#237'culo ter'#225' verba de abastecimento'
      Caption = 'Abastecimemento'
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.HotTrack = False
      TabOrder = 30
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 644
      Top = 301
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionOK
      TabOrder = 33
    end
    object cxButton2: TcxButton
      Left = 725
      Top = 301
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCancel
      TabOrder = 34
    end
    object labelOperation: TcxLabel
      Left = 10
      Top = 305
      Caption = '-----'
      Style.HotTrack = False
      Transparent = True
    end
    object labelMessage: TcxLabel
      Left = 393
      Top = 305
      Caption = '-----'
      Style.HotTrack = False
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup2
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Pessoa:'
      Control = pessoa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'CPF:'
      Control = cpf
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome:'
      Control = nome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Dados do Propriet'#225'rio'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Nascimento:'
      Control = nascimento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pai:'
      Control = pai
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'M'#227'e:'
      Control = mae
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'RG/IE: '
      Control = rgie
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'UF RG:'
      Control = ufrg
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Emiss'#227'o:'
      Control = emissao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Endere'#231'o e Contato do Propriet'#225'rio'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'CEP:'
      Control = cxButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Endere'#231'o/N'#186'.:'
      Control = endereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 206
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Bairro:'
      Control = bairro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Cidade:'
      Control = cidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'UF:'
      Control = ufendereco
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tel. 1:'
      Control = descricao1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Control = telefone1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tel. 2:'
      Control = descricao2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxMaskEdit2'
      CaptionOptions.Visible = False
      Control = telefone2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dados do Ve'#237'culo'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Marca:'
      Control = marca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Modelo:'
      Control = modelo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Placa:'
      Control = placa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Cidade:'
      Control = cidadePlaca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'UF:'
      Control = ufplaca
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignVert = avClient
      CaptionOptions.Text = 'Ano:'
      Control = ano
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'RENAVAN:'
      Control = renavan
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Chassis:'
      Control = chassis
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Hint = 'Tipo de ve'#237'culo'
      CaptionOptions.Text = 'Tipo:'
      Control = tipo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Cor:'
      Control = cor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Licenciamento:'
      Control = licenciamento
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = rastreador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cxCheckBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelOperation
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = labelMessage
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListVeiculos: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 672
    object actionOK: TAction
      Caption = '&OK'
      Hint = 'Gravar os dados'
      ImageIndex = 83
    end
    object actionCancel: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 84
    end
  end
end
