object viewCadastroBases: TviewCadastroBases
  Left = 0
  Top = 0
  Caption = 'Cadastro de Bases'
  ClientHeight = 561
  ClientWidth = 784
  Color = clWindow
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
    Width = 784
    Height = 561
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 528
    ExplicitTop = 144
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cxButton1: TcxButton
      Left = 687
      Top = 526
      Width = 87
      Height = 25
      Action = actExit
      TabOrder = 5
    end
    object gridBases: TcxGrid
      Left = 24
      Top = 92
      Width = 736
      Height = 383
      TabOrder = 1
      object gridBasesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsBases
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridBasesDBTableView1cod_agente: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_agente'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object gridBasesDBTableView1des_razao_social: TcxGridDBColumn
          Caption = 'Raz'#227'o Social / Nome'
          DataBinding.FieldName = 'des_razao_social'
          HeaderAlignmentHorz = taCenter
          Width = 262
        end
        object gridBasesDBTableView1nom_fantasia: TcxGridDBColumn
          Caption = 'Nome Fantasia / Alias'
          DataBinding.FieldName = 'nom_fantasia'
          HeaderAlignmentHorz = taCenter
          Width = 201
        end
        object gridBasesDBTableView1des_tipo_doc: TcxGridDBColumn
          Caption = 'Tipo Doc.'
          DataBinding.FieldName = 'des_tipo_doc'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_cnpj: TcxGridDBColumn
          Caption = 'CNPJ / CPF'
          DataBinding.FieldName = 'num_cnpj'
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_ie: TcxGridDBColumn
          Caption = 'Ins. Est. / RG'
          DataBinding.FieldName = 'num_ie'
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_iest: TcxGridDBColumn
          Caption = 'Ins. Est. Sub. Trib.'
          DataBinding.FieldName = 'num_iest'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_im: TcxGridDBColumn
          Caption = 'Ins. Municipal'
          DataBinding.FieldName = 'num_im'
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_cnae: TcxGridDBColumn
          Caption = 'CNAE Principal'
          DataBinding.FieldName = 'cod_cnae'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 143
        end
        object gridBasesDBTableView1cod_crt: TcxGridDBColumn
          Caption = 'CRT'
          DataBinding.FieldName = 'cod_crt'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_cnh: TcxGridDBColumn
          Caption = 'N'#186'. CNH'
          DataBinding.FieldName = 'num_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridBasesDBTableView1des_categoria_cnh: TcxGridDBColumn
          Caption = 'Cat. CNH'
          DataBinding.FieldName = 'des_categoria_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridBasesDBTableView1dat_validade_cnh: TcxGridDBColumn
          Caption = 'Val. CNH'
          DataBinding.FieldName = 'dat_validade_cnh'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridBasesDBTableView1des_pagina: TcxGridDBColumn
          Caption = 'URL Site'
          DataBinding.FieldName = 'des_pagina'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridBasesDBTableView1cod_status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'cod_status'
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1des_observacao: TcxGridDBColumn
          Caption = 'Observa'#231#245'es'
          DataBinding.FieldName = 'des_observacao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object gridBasesDBTableView1dat_cadastro: TcxGridDBColumn
          Caption = 'Data Cadastro'
          DataBinding.FieldName = 'dat_cadastro'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridBasesDBTableView1dat_alteracao: TcxGridDBColumn
          Caption = 'Data Atualiza'#231#227'o'
          DataBinding.FieldName = 'dat_alteracao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1val_verba: TcxGridDBColumn
          Caption = 'Verba Fixa'
          DataBinding.FieldName = 'val_verba'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1des_forma_pagamento: TcxGridDBColumn
          Caption = 'Forma Pgto.'
          DataBinding.FieldName = 'des_forma_pagamento'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1des_tipo_conta: TcxGridDBColumn
          Caption = 'Tipo Conta'
          DataBinding.FieldName = 'des_tipo_conta'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_banco: TcxGridDBColumn
          Caption = 'Banco'
          DataBinding.FieldName = 'cod_banco'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_agencia: TcxGridDBColumn
          Caption = 'C'#243'd. Ag'#234'ncia'
          DataBinding.FieldName = 'cod_agencia'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_conta: TcxGridDBColumn
          Caption = 'N'#186' Conta'
          DataBinding.FieldName = 'num_conta'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1nom_favorecido: TcxGridDBColumn
          Caption = 'Favorecido'
          DataBinding.FieldName = 'nom_favorecido'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn
          Caption = 'Doc. Favorecido'
          DataBinding.FieldName = 'num_cpf_cnpj_favorecido'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_centro_custo: TcxGridDBColumn
          Caption = 'C. Custo'
          DataBinding.FieldName = 'cod_centro_custo'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_grupo: TcxGridDBColumn
          Caption = 'Grupo'
          DataBinding.FieldName = 'cod_grupo'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1des_chave: TcxGridDBColumn
          Caption = 'Chave PIX'
          DataBinding.FieldName = 'des_chave'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridBasesDBTableView1cod_tabela: TcxGridDBColumn
          Caption = 'Tabela'
          DataBinding.FieldName = 'cod_tabela'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridBasesLevel1: TcxGridLevel
        GridView = gridBasesDBTableView1
      end
    end
    object betSearch: TcxButtonEdit
      Left = 89
      Top = 44
      Properties.Buttons = <
        item
          Action = actSearch
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 671
    end
    object cxButton2: TcxButton
      Left = 24
      Top = 481
      Width = 80
      Height = 25
      Action = actNew
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 110
      Top = 481
      Width = 80
      Height = 25
      Action = actEdit
      TabOrder = 3
    end
    object cxButton4: TcxButton
      Left = 196
      Top = 481
      Width = 80
      Height = 25
      Action = actExport
      TabOrder = 4
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
    object lgpGrade: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpOptions: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpOptions
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpGrade
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Lista de bases'
      CaptionOptions.Layout = clTop
      Control = gridBases
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpGrade
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Procurar por'
      Control = betSearch
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpGrade
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgpContainer
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object aclBases: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 488
    Top = 232
    object actExit: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela de cadastro'
      ImageIndex = 98
      OnExecute = actExitExecute
    end
    object actSearch: TAction
      Caption = 'Pesquisar'
      ImageIndex = 86
    end
    object actNew: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
      ImageIndex = 115
    end
    object actEdit: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      ImageIndex = 95
    end
    object actExport: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
    end
  end
  object dsBases: TDataSource
    AutoEdit = False
    DataSet = mtbBases
    Left = 432
    Top = 232
  end
  object mtbBases: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cod_agente'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_razao_social'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_fantasia'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'des_tipo_doc'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'num_cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_ie'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_iest'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_im'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_cnae'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'cod_crt'
        DataType = ftInteger
      end
      item
        Name = 'num_cnh'
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
        Name = 'des_pagina'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'des_observacao'
        DataType = ftMemo
      end
      item
        Name = 'dat_cadastro'
        DataType = ftDate
      end
      item
        Name = 'dat_alteracao'
        DataType = ftDateTime
      end
      item
        Name = 'val_verba'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'des_tipo_conta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_banco'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'cod_agencia'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'num_conta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nom_favorecido'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_cpf_cnpj_favorecido'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'des_forma_pagamento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cod_centro_custo'
        DataType = ftInteger
      end
      item
        Name = 'cod_grupo'
        DataType = ftInteger
      end
      item
        Name = 'des_chave'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_tabela'
        DataType = ftInteger
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
    Left = 384
    Top = 232
    Content = {
      414442530F00E94E260F0000FF00010001FF02FF030400100000006D00740062
      004200610073006500730005000A0000005400610062006C0065000600000000
      00070000080032000000090000FF0AFF0B04001400000063006F0064005F0061
      00670065006E007400650005001400000063006F0064005F006100670065006E
      00740065000C00010000000E000D000F00011000011100011200011300140000
      0063006F0064005F006100670065006E0074006500FEFF0B0400200000006400
      650073005F00720061007A0061006F005F0073006F006300690061006C000500
      200000006400650073005F00720061007A0061006F005F0073006F0063006900
      61006C000C00020000000E0014001500460000000F0001160001100001170001
      1100011200011300200000006400650073005F00720061007A0061006F005F00
      73006F006300690061006C00180046000000FEFF0B0400180000006E006F006D
      005F00660061006E00740061007300690061000500180000006E006F006D005F
      00660061006E00740061007300690061000C00030000000E0014001500500000
      000F00011600011000011700011100011200011300180000006E006F006D005F
      00660061006E0074006100730069006100180050000000FEFF0B040018000000
      6400650073005F007400690070006F005F0064006F0063000500180000006400
      650073005F007400690070006F005F0064006F0063000C00040000000E001400
      1500040000000F00011600011000011700011100011200011300180000006400
      650073005F007400690070006F005F0064006F006300180004000000FEFF0B04
      00100000006E0075006D005F0063006E0070006A000500100000006E0075006D
      005F0063006E0070006A000C00050000000E0014001500140000000F00011600
      011000011700011100011200011300100000006E0075006D005F0063006E0070
      006A00180014000000FEFF0B04000C0000006E0075006D005F00690065000500
      0C0000006E0075006D005F00690065000C00060000000E001400150014000000
      0F000116000110000117000111000112000113000C0000006E0075006D005F00
      69006500180014000000FEFF0B0400100000006E0075006D005F006900650073
      0074000500100000006E0075006D005F0069006500730074000C00070000000E
      0014001500140000000F00011600011000011700011100011200011300100000
      006E0075006D005F006900650073007400180014000000FEFF0B04000C000000
      6E0075006D005F0069006D0005000C0000006E0075006D005F0069006D000C00
      080000000E0014001500140000000F0001160001100001170001110001120001
      13000C0000006E0075006D005F0069006D00180014000000FEFF0B0400100000
      0063006F0064005F0063006E006100650005001000000063006F0064005F0063
      006E00610065000C00090000000E00140015000A0000000F0001160001100001
      17000111000112000113001000000063006F0064005F0063006E006100650018
      000A000000FEFF0B04000E00000063006F0064005F0063007200740005000E00
      000063006F0064005F006300720074000C000A0000000E000D000F0001160001
      10000117000111000112000113000E00000063006F0064005F00630072007400
      FEFF0B04000E0000006E0075006D005F0063006E00680005000E0000006E0075
      006D005F0063006E0068000C000B0000000E00140015000F0000000F00011600
      0110000117000111000112000113000E0000006E0075006D005F0063006E0068
      0018000F000000FEFF0B0400220000006400650073005F006300610074006500
      67006F007200690061005F0063006E0068000500220000006400650073005F00
      630061007400650067006F007200690061005F0063006E0068000C000C000000
      0E0014001500020000000F000116000110000117000111000112000113002200
      00006400650073005F00630061007400650067006F007200690061005F006300
      6E006800180002000000FEFF0B0400200000006400610074005F00760061006C
      00690064006100640065005F0063006E0068000500200000006400610074005F
      00760061006C00690064006100640065005F0063006E0068000C000D0000000E
      0019000F00011600011000011700011100011200011300200000006400610074
      005F00760061006C00690064006100640065005F0063006E006800FEFF0B0400
      140000006400650073005F0070006100670069006E0061000500140000006400
      650073005F0070006100670069006E0061000C000E0000000E00140015006400
      00000F0001160001100001170001110001120001130014000000640065007300
      5F0070006100670069006E006100180064000000FEFF0B04001400000063006F
      0064005F0073007400610074007500730005001400000063006F0064005F0073
      00740061007400750073000C000F0000000E000D000F00011600011000011700
      0111000112000113001400000063006F0064005F007300740061007400750073
      00FEFF0B04001C0000006400650073005F006F00620073006500720076006100
      630061006F0005001C0000006400650073005F006F0062007300650072007600
      6100630061006F000C00100000000E001A000F00011600011B00011000011700
      0111000112000113001C0000006400650073005F006F00620073006500720076
      006100630061006F00FEFF0B0400180000006400610074005F00630061006400
      61007300740072006F000500180000006400610074005F006300610064006100
      7300740072006F000C00110000000E0019000F00011600011000011700011100
      011200011300180000006400610074005F006300610064006100730074007200
      6F00FEFF0B04001A0000006400610074005F0061006C00740065007200610063
      0061006F0005001A0000006400610074005F0061006C00740065007200610063
      0061006F000C00120000000E001C000F00011600011000011700011100011200
      0113001A0000006400610074005F0061006C007400650072006100630061006F
      00FEFF0B040012000000760061006C005F007600650072006200610005001200
      0000760061006C005F00760065007200620061000C00130000000E001D001E00
      160000000F000116000110000117000111000112000113001200000076006100
      6C005F00760065007200620061001F0016000000FEFF0B04001C000000640065
      0073005F007400690070006F005F0063006F006E007400610005001C00000064
      00650073005F007400690070006F005F0063006F006E00740061000C00140000
      000E0014001500140000000F000116000110000117000111000112000113001C
      0000006400650073005F007400690070006F005F0063006F006E007400610018
      0014000000FEFF0B04001200000063006F0064005F00620061006E0063006F00
      05001200000063006F0064005F00620061006E0063006F000C00150000000E00
      14001500040000000F0001160001100001170001110001120001130012000000
      63006F0064005F00620061006E0063006F00180004000000FEFF0B0400160000
      0063006F0064005F006100670065006E0063006900610005001600000063006F
      0064005F006100670065006E006300690061000C00160000000E00140015000A
      0000000F000116000110000117000111000112000113001600000063006F0064
      005F006100670065006E0063006900610018000A000000FEFF0B040012000000
      6E0075006D005F0063006F006E00740061000500120000006E0075006D005F00
      63006F006E00740061000C00170000000E0014001500140000000F0001160001
      1000011700011100011200011300120000006E0075006D005F0063006F006E00
      74006100180014000000FEFF0B04001C0000006E006F006D005F006600610076
      006F00720065006300690064006F0005001C0000006E006F006D005F00660061
      0076006F00720065006300690064006F000C00180000000E0014001500460000
      000F000116000110000117000111000112000113001C0000006E006F006D005F
      006600610076006F00720065006300690064006F00180046000000FEFF0B0400
      2E0000006E0075006D005F006300700066005F0063006E0070006A005F006600
      610076006F00720065006300690064006F0005002E0000006E0075006D005F00
      6300700066005F0063006E0070006A005F006600610076006F00720065006300
      690064006F000C00190000000E0014001500140000000F000116000110000117
      000111000112000113002E0000006E0075006D005F006300700066005F006300
      6E0070006A005F006600610076006F00720065006300690064006F0018001400
      0000FEFF0B0400260000006400650073005F0066006F0072006D0061005F0070
      006100670061006D0065006E0074006F000500260000006400650073005F0066
      006F0072006D0061005F0070006100670061006D0065006E0074006F000C001A
      0000000E00140015001E0000000F000116000110000117000111000112000113
      00260000006400650073005F0066006F0072006D0061005F0070006100670061
      006D0065006E0074006F0018001E000000FEFF0B04002000000063006F006400
      5F00630065006E00740072006F005F0063007500730074006F00050020000000
      63006F0064005F00630065006E00740072006F005F0063007500730074006F00
      0C001B0000000E000D000F000116000110000117000111000112000113002000
      000063006F0064005F00630065006E00740072006F005F006300750073007400
      6F00FEFF0B04001200000063006F0064005F0067007200750070006F00050012
      00000063006F0064005F0067007200750070006F000C001C0000000E000D000F
      000116000110000117000111000112000113001200000063006F0064005F0067
      007200750070006F00FEFF0B0400120000006400650073005F00630068006100
      760065000500120000006400650073005F00630068006100760065000C001D00
      00000E0014001500460000000F00011600011000011700011100011200011300
      120000006400650073005F0063006800610076006500180046000000FEFF0B04
      001400000063006F0064005F0074006100620065006C00610005001400000063
      006F0064005F0074006100620065006C0061000C001E0000000E000D000F0001
      16000110000117000111000112000113001400000063006F0064005F00740061
      00620065006C006100FEFEFF20FEFF21FEFF22FEFEFEFF23FEFF2425000E0000
      00FF26FEFEFE0E004D0061006E0061006700650072001E005500700064006100
      7400650073005200650067006900730074007200790012005400610062006C00
      65004C006900730074000A005400610062006C00650008004E0061006D006500
      140053006F0075007200630065004E0061006D0065000A005400610062004900
      4400240045006E0066006F0072006300650043006F006E007300740072006100
      69006E00740073001E004D0069006E0069006D0075006D004300610070006100
      6300690074007900180043006800650063006B004E006F0074004E0075006C00
      6C00140043006F006C0075006D006E004C006900730074000C0043006F006C00
      75006D006E00100053006F007500720063006500490044000E00640074004900
      6E00740033003200100044006100740061005400790070006500140053006500
      6100720063006800610062006C0065000800420061007300650012004F004900
      6E0055007000640061007400650010004F0049006E0057006800650072006500
      1A004F0072006900670069006E0043006F006C004E0061006D00650018006400
      740041006E007300690053007400720069006E0067000800530069007A006500
      120041006C006C006F0077004E0075006C006C0014004F0041006C006C006F00
      77004E0075006C006C00140053006F007500720063006500530069007A006500
      0C006400740044006100740065000C00640074004D0065006D006F0010004200
      6C006F0062004400610074006100140064007400440061007400650054006900
      6D00650010006400740044006F00750062006C00650012005000720065006300
      6900730069006F006E001E0053006F0075007200630065005000720065006300
      6900730069006F006E001C0043006F006E00730074007200610069006E007400
      4C00690073007400100056006900650077004C006900730074000E0052006F00
      77004C006900730074001800520065006C006100740069006F006E004C006900
      730074001C0055007000640061007400650073004A006F00750072006E006100
      6C001200530061007600650050006F0069006E0074000E004300680061006E00
      670065007300}
    object mtbBasescod_agente: TIntegerField
      FieldName = 'cod_agente'
      Required = True
    end
    object mtbBasesdes_razao_social: TStringField
      FieldName = 'des_razao_social'
      Size = 70
    end
    object mtbBasesnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 80
    end
    object mtbBasesdes_tipo_doc: TStringField
      FieldName = 'des_tipo_doc'
      Size = 4
    end
    object mtbBasesnum_cnpj: TStringField
      FieldName = 'num_cnpj'
    end
    object mtbBasesnum_ie: TStringField
      FieldName = 'num_ie'
    end
    object mtbBasesnum_iest: TStringField
      FieldName = 'num_iest'
    end
    object mtbBasesnum_im: TStringField
      FieldName = 'num_im'
    end
    object mtbBasescod_cnae: TStringField
      FieldName = 'cod_cnae'
      Size = 10
    end
    object mtbBasescod_crt: TIntegerField
      FieldName = 'cod_crt'
    end
    object mtbBasesnum_cnh: TStringField
      FieldName = 'num_cnh'
      Size = 15
    end
    object mtbBasesdes_categoria_cnh: TStringField
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object mtbBasesdat_validade_cnh: TDateField
      FieldName = 'dat_validade_cnh'
    end
    object mtbBasesdes_pagina: TStringField
      FieldName = 'des_pagina'
      Size = 100
    end
    object mtbBasescod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object mtbBasesdes_observacao: TMemoField
      FieldName = 'des_observacao'
      BlobType = ftMemo
    end
    object mtbBasesdat_cadastro: TDateField
      FieldName = 'dat_cadastro'
    end
    object mtbBasesdat_alteracao: TDateTimeField
      FieldName = 'dat_alteracao'
    end
    object mtbBasesval_verba: TFloatField
      FieldName = 'val_verba'
    end
    object mtbBasesdes_tipo_conta: TStringField
      FieldName = 'des_tipo_conta'
    end
    object mtbBasescod_banco: TStringField
      FieldName = 'cod_banco'
      Size = 4
    end
    object mtbBasescod_agencia: TStringField
      FieldName = 'cod_agencia'
      Size = 10
    end
    object mtbBasesnum_conta: TStringField
      FieldName = 'num_conta'
    end
    object mtbBasesnom_favorecido: TStringField
      FieldName = 'nom_favorecido'
      Size = 70
    end
    object mtbBasesnum_cpf_cnpj_favorecido: TStringField
      FieldName = 'num_cpf_cnpj_favorecido'
    end
    object mtbBasesdes_forma_pagamento: TStringField
      FieldName = 'des_forma_pagamento'
      Size = 30
    end
    object mtbBasescod_centro_custo: TIntegerField
      FieldName = 'cod_centro_custo'
    end
    object mtbBasescod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object mtbBasesdes_chave: TStringField
      FieldName = 'des_chave'
      Size = 70
    end
    object mtbBasescod_tabela: TIntegerField
      FieldName = 'cod_tabela'
    end
  end
end
