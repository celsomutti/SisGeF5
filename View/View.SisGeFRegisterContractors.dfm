object view_SisGeFRegisterContractors: Tview_SisGeFRegisterContractors
  Left = 0
  Top = 0
  Caption = 'Cadastro de Contratados'
  ClientHeight = 517
  ClientWidth = 930
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 54
    Width = 930
    Height = 463
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object camposPesquisa: TcxComboBox
      Left = 71
      Top = 46
      Hint = 'Pesquisar por estes campos'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Todos'
        'C'#243'digo'
        'CPF / CNPJ'
        'RG / IE'
        'Nome / Raz'#227'o Social'
        'Alias / Nome Fantasia'
        'N'#176' CNH'
        'Registro CNH'
        'Raz'#227'o Social MEI'
        'Nome Fantasia MEI'
        'CNPJ MEI'
        'Nome Favorecido'
        'CPF / CNPJ Favorecido'
        'RENAVAN'
        'Placa do Ve'#237'culo')
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Todos'
      Width = 134
    end
    object parametroPesquisa: TcxTextEdit
      Left = 266
      Top = 46
      Hint = 'Par'#226'metro'
      Style.HotTrack = False
      TabOrder = 1
      Width = 454
    end
    object cxButton1: TcxButton
      Left = 831
      Top = 44
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionLocateRecord
      OptionsImage.ImageIndex = 100
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 24
      Top = 75
      Width = 882
      Height = 364
      BevelOuter = bvNone
      TabOrder = 4
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 33
          Top = 0
          Width = 25
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Action = actionRetractGrid
          OptionsImage.ImageIndex = 107
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 0
        end
        object cxButton3: TcxButton
          Left = 0
          Top = 0
          Width = 33
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Action = actionExpandGrid
          OptionsImage.ImageIndex = 106
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 1
        end
        object cxButton4: TcxButton
          Left = 58
          Top = 0
          Width = 25
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Action = actionGroupPanel
          OptionsImage.ImageIndex = 110
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 2
        end
      end
      object gridCadastro: TcxGrid
        Left = 0
        Top = 25
        Width = 882
        Height = 339
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 120
        ExplicitTop = 17
        object viewCadastro: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRecords
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CheckBoxPosition = cbpIndicator
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object viewCadastrocod_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cadastro'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastronum_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastrodes_razao_social: TcxGridDBColumn
            DataBinding.FieldName = 'des_razao_social'
            HeaderAlignmentHorz = taCenter
            Width = 297
          end
          object viewCadastronom_fantasia: TcxGridDBColumn
            DataBinding.FieldName = 'nom_fantasia'
            HeaderAlignmentHorz = taCenter
            Width = 298
          end
          object viewCadastronum_ie: TcxGridDBColumn
            DataBinding.FieldName = 'num_ie'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastronom_favorecido: TcxGridDBColumn
            DataBinding.FieldName = 'nom_favorecido'
            HeaderAlignmentHorz = taCenter
            Width = 288
          end
          object viewCadastronum_cpf_cnpj_favorecido: TcxGridDBColumn
            DataBinding.FieldName = 'num_cpf_cnpj_favorecido'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastronom_razao_mei: TcxGridDBColumn
            DataBinding.FieldName = 'nom_razao_mei'
            HeaderAlignmentHorz = taCenter
            Width = 341
          end
          object viewCadastronom_fantasia_mei: TcxGridDBColumn
            DataBinding.FieldName = 'nom_fantasia_mei'
            HeaderAlignmentHorz = taCenter
            Width = 368
          end
          object viewCadastronum_cnpj_mei: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj_mei'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastrodes_placa: TcxGridDBColumn
            DataBinding.FieldName = 'des_placa'
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object viewCadastrodes_modelo: TcxGridDBColumn
            DataBinding.FieldName = 'des_modelo'
            HeaderAlignmentHorz = taCenter
            Width = 247
          end
          object viewCadastronum_renavan: TcxGridDBColumn
            DataBinding.FieldName = 'num_renavan'
            HeaderAlignmentHorz = taCenter
            Width = 119
          end
          object viewCadastrodes_forma_pagamento: TcxGridDBColumn
            DataBinding.FieldName = 'des_forma_pagamento'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastrodes_tipo_conta: TcxGridDBColumn
            DataBinding.FieldName = 'des_tipo_conta'
            HeaderAlignmentHorz = taCenter
            Width = 191
          end
          object viewCadastrocod_banco: TcxGridDBColumn
            DataBinding.FieldName = 'cod_banco'
            HeaderAlignmentHorz = taCenter
            Width = 116
          end
          object viewCadastronom_banco: TcxGridDBColumn
            DataBinding.FieldName = 'nom_banco'
            HeaderAlignmentHorz = taCenter
            Width = 236
          end
          object viewCadastrocod_agencia: TcxGridDBColumn
            DataBinding.FieldName = 'cod_agencia'
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object viewCadastronom_conta: TcxGridDBColumn
            DataBinding.FieldName = 'nom_conta'
            HeaderAlignmentHorz = taCenter
          end
        end
        object viewDocumentos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsDocuments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object viewDocumentoscod_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cadastro'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosnum_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdes_razao_social: TcxGridDBColumn
            DataBinding.FieldName = 'des_razao_social'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosnum_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosnum_registro_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_registro_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdes_categoria_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'des_categoria_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 98
          end
          object viewDocumentosdat_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_validade_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 133
          end
          object viewDocumentoscod_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdes_placa: TcxGridDBColumn
            DataBinding.FieldName = 'des_placa'
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object viewDocumentosano_exercicio_clrv: TcxGridDBColumn
            DataBinding.FieldName = 'ano_exercicio_clrv'
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object viewDocumentosnum_renavan: TcxGridDBColumn
            DataBinding.FieldName = 'num_renavan'
            HeaderAlignmentHorz = taCenter
          end
        end
        object viewGR: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsGR
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object viewGRcod_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cadastro'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdat_gv: TcxGridDBColumn
            DataBinding.FieldName = 'dat_gv'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object viewGRnum_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdes_razao_social: TcxGridDBColumn
            DataBinding.FieldName = 'des_razao_social'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRnum_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRnum_registro_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_registro_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdes_categoria_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'des_categoria_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 109
          end
          object viewGRdat_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_validade_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 106
          end
          object viewGRcod_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdes_placa: TcxGridDBColumn
            DataBinding.FieldName = 'des_placa'
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object viewGRano_exercicio_clrv: TcxGridDBColumn
            DataBinding.FieldName = 'ano_exercicio_clrv'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object viewGRnum_renavan: TcxGridDBColumn
            DataBinding.FieldName = 'num_renavan'
            HeaderAlignmentHorz = taCenter
          end
        end
        object gridCadastroLevel1: TcxGridLevel
          GridView = viewCadastro
        end
      end
    end
    object statusRegistro: TcxCheckBox
      Left = 726
      Top = 46
      Hint = 'PEsquisar somenter por registros ativos'
      Caption = 'Somente Ativos'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 2
    end
    object filterControl: TcxDBFilterControl
      Left = 10000
      Top = 10000
      Width = 882
      Height = 364
      Items = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'cod_cadastro'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
        end
        item
          Caption = 'Nome / Raz'#227'o Social'
          FieldName = 'des_razao_social'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'Alias / Nome Fantasia'
          FieldName = 'nom_fantaasia'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'CPF / CNPJ Cadastro'
          FieldName = 'num_cnpj'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d./-]+'
          Properties.MaxLength = 0
        end
        item
          Caption = 'RG / Ins. Estadual'
          FieldName = 'num_ie'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d.]+'
        end
        item
          Caption = 'N'#186'. CNH'
          FieldName = 'num_cnh'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
        end
        item
          Caption = 'Registro BNH'
          FieldName = 'num_registro_cnh'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
        end
        item
          Caption = 'Validade CNH'
          FieldName = 'dat_validade_cnh'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
        end
        item
          Caption = 'C'#243'd. Seg. CNH'
          FieldName = 'cod_cnh'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
        end
        item
          Caption = 'Raz'#227'p Social MEI'
          FieldName = 'nom_razao_mei'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'Nome Fantasia MEI'
          FieldName = 'nom_fantasia_mei'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'CNPJ MEI'
          FieldName = 'num_cnpj_mei'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d./-]+'
        end
        item
          Caption = 'Nome do Pai'
          FieldName = 'nom_pai'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'Nome da M'#227'e'
          FieldName = 'nom_mae'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'Nome Favorecido'
          FieldName = 'nom_favorecido'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'CPF / CNPJ Favorecido'
          FieldName = 'num_cpf_cnpj_favorecido'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d./-]+'
        end
        item
          Caption = 'PLaca Ve'#237'culo'
          FieldName = 'des_placa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 7
        end
        item
          Caption = 'Tipo de Ve'#237'culo'
          FieldName = 'des_tipo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 20
        end
        item
          Caption = 'N'#186'. RENAVAN'
          FieldName = 'num_renvan'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d]+'
          Properties.MaxLength = 0
        end>
      FilterOptions.DateTimeFormat = 'yyyy-mm-dd'
      LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 5
      Visible = False
    end
    object cxButton5: TcxButton
      Left = 10000
      Top = 10000
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actionReturnGrid
      OptionsImage.ImageIndex = 108
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 6
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveFilterParam
      OptionsImage.ImageIndex = 118
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 7
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Action = actionLoadFilterParam
      OptionsImage.ImageIndex = 117
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 8
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Locate / Grid'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Set Filter'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Campos:'
      Control = camposPesquisa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar:'
      Control = parametroPesquisa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 363
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = Panel1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Somente'
      CaptionOptions.Visible = False
      Control = statusRegistro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBFilterControl1'
      CaptionOptions.Visible = False
      Control = filterControl
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 106
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionList: TActionList
    Left = 664
    Top = 16
    object actionNewRegister: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
    end
    object actionEditRegister: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
    end
    object actionSetFilter: TAction
      Caption = '&Filtro'
      Hint = 'Definir filtro'
      OnExecute = actionSetFilterExecute
    end
    object actionApplyFilter: TAction
      Caption = '&Aplicar'
      Hint = 'Aplicar filtro'
      OnExecute = actionApplyFilterExecute
    end
    object actionCancelFilter: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar filtro'
      OnExecute = actionCancelFilterExecute
    end
    object actionLocateRecord: TAction
      Caption = '&Localizar'
      Hint = 'Localizar cadastro'
    end
    object actionDocumentsToExpire: TAction
      Caption = '&Documentos'
      Hint = 'Lista de documentos a vencer'
      OnExecute = actionDocumentsToExpireExecute
    end
    object actionRiskManagement: TAction
      Caption = '&GR'
      Hint = 'Lista de gerenciamento de risco'
      OnExecute = actionRiskManagementExecute
    end
    object actionLocation: TAction
      Caption = 'Loca'#231#227'o'
      Hint = 'Loca'#231#227'o dos contratados'
    end
    object actionCloseForm: TAction
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ShortCut = 32883
      OnExecute = actionCloseFormExecute
    end
    object actionExpandGrid: TAction
      Caption = 'Expandir'
      Hint = 'Expandir grid'
    end
    object actionRetractGrid: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grid'
    end
    object actionGroupPanel: TAction
      Caption = 'Painel de Grupo'
      Hint = 'Exibir o painel de grupos'
    end
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      OnExecute = actionExportGridExecute
    end
    object actionSearchRecords: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisa do cadastro'
      OnExecute = actionSearchRecordsExecute
    end
    object actionReturnGrid: TAction
      Caption = '&Voltar'
      Hint = 'Voltar para o grid'
      OnExecute = actionReturnGridExecute
    end
    object actionSaveFilterParam: TAction
      Caption = 'Salvar Filtro'
      Hint = 'Salvar os par'#226'metros do filtro'
    end
    object actionLoadFilterParam: TAction
      Caption = 'Carregar Filtro'
      Hint = 'Carregar par'#226'metros de filtro'
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 744
    Top = 16
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      0)
    object barManagerBar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Main'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 958
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actionNewRegister
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actionEditRegister
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 9
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionSetFilter
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 11
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actionApplyFilter
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 24
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actionCancelFilter
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 19
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actionCloseForm
      Align = iaRight
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 3
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionExportGrid
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 10
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actionDocumentsToExpire
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 22
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actionRiskManagement
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 21
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actionSearchRecords
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 12
    end
  end
  object memTableRecords: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 230
    object memTableRecordscod_cadastro: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cadastro'
    end
    object memTableRecordsnum_cnpj: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'num_cnpj'
    end
    object memTableRecordsdes_razao_social: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'des_razao_social'
      Size = 70
    end
    object memTableRecordsnom_fantasia: TStringField
      DisplayLabel = 'Alias / Nome Fantasia'
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object memTableRecordsnum_ie: TStringField
      DisplayLabel = 'RG / IE'
      FieldName = 'num_ie'
    end
    object memTableRecordsnom_favorecido: TStringField
      DisplayLabel = 'Nome Favorecido'
      FieldName = 'nom_favorecido'
      Size = 70
    end
    object memTableRecordsnum_cpf_cnpj_favorecido: TStringField
      DisplayLabel = 'CPF / CNPJ Favorecido'
      FieldName = 'num_cpf_cnpj_favorecido'
    end
    object memTableRecordsnom_razao_mei: TStringField
      DisplayLabel = 'Raz'#227'o Social MEI'
      FieldName = 'nom_razao_mei'
      Size = 70
    end
    object memTableRecordsnom_fantasia_mei: TStringField
      DisplayLabel = 'Nome Fantasia MEI'
      FieldName = 'nom_fantasia_mei'
      Size = 70
    end
    object memTableRecordsnum_cnpj_mei: TStringField
      DisplayLabel = 'CNPJ MEI'
      FieldName = 'num_cnpj_mei'
    end
    object memTableRecordsdes_placa: TStringField
      DisplayLabel = 'Placa Ve'#237'culo'
      FieldName = 'des_placa'
      Size = 7
    end
    object memTableRecordsdes_modelo: TStringField
      DisplayLabel = 'Modelo Ve'#237'culo'
      FieldName = 'des_modelo'
      Size = 50
    end
    object memTableRecordsnum_renavan: TStringField
      DisplayLabel = 'N'#186'. RENAVAN'
      FieldName = 'num_renavan'
      Size = 25
    end
    object memTableRecordsdes_forma_pagamento: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'des_forma_pagamento'
      Size = 30
    end
    object memTableRecordsdes_tipo_conta: TStringField
      DisplayLabel = 'Tipo de Conta Banc'#225'ria'
      FieldName = 'des_tipo_conta'
    end
    object memTableRecordscod_banco: TStringField
      DisplayLabel = 'C'#243'digo do Banco'
      FieldName = 'cod_banco'
      Size = 4
    end
    object memTableRecordsnom_banco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'nom_banco'
      Size = 70
    end
    object memTableRecordscod_agencia: TStringField
      DisplayLabel = 'N'#186'. Ag'#234'ncia'
      FieldName = 'cod_agencia'
      Size = 10
    end
    object memTableRecordsnom_conta: TStringField
      DisplayLabel = 'N'#186'. Conta'
      FieldName = 'nom_conta'
    end
  end
  object dsRecords: TDataSource
    AutoEdit = False
    DataSet = memTableRecords
    Left = 304
    Top = 230
  end
  object memTableDocuments: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 278
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cadastro'
    end
    object StringField1: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'num_cnpj'
    end
    object StringField2: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'des_razao_social'
      Size = 70
    end
    object memTableDocumentsnum_cnh: TStringField
      DisplayLabel = 'N'#186' CNH'
      FieldName = 'num_cnh'
      Size = 15
    end
    object memTableDocumentsnum_registro_cnh: TStringField
      DisplayLabel = 'Registro CNH'
      FieldName = 'num_registro_cnh'
      Size = 15
    end
    object memTableDocumentsdes_categoria_cnh: TStringField
      DisplayLabel = 'Categoria CNH'
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object memTableDocumentsdat_validade_cnh: TDateField
      DisplayLabel = 'Validade CNH'
      FieldName = 'dat_validade_cnh'
    end
    object memTableDocumentscod_cnh: TStringField
      DisplayLabel = 'C'#243'd. Seg. CNH'
      FieldName = 'cod_cnh'
    end
    object memTableDocumentsdes_placa: TStringField
      DisplayLabel = 'Placa Ve'#237'culo'
      FieldName = 'des_placa'
      Size = 7
    end
    object memTableDocumentsano_exercicio_clrv: TStringField
      DisplayLabel = 'Exerc'#237'cio CLRV'
      FieldName = 'ano_exercicio_clrv'
      Size = 4
    end
    object memTableDocumentsnum_renavan: TStringField
      DisplayLabel = 'N'#186'; RENAVAN'
      FieldName = 'num_renavan'
      Size = 25
    end
  end
  object dsDocuments: TDataSource
    AutoEdit = False
    DataSet = memTableDocuments
    Left = 304
    Top = 278
  end
  object memTableGR: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 334
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cadastro'
    end
    object memTableGRdat_gv: TDateField
      DisplayLabel = 'Validade GR'
      FieldName = 'dat_gv'
    end
    object StringField3: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'num_cnpj'
    end
    object StringField4: TStringField
      DisplayLabel = 'Nome / Raz'#227'o Social'
      FieldName = 'des_razao_social'
      Size = 70
    end
    object StringField5: TStringField
      DisplayLabel = 'N'#186' CNH'
      FieldName = 'num_cnh'
      Size = 15
    end
    object StringField6: TStringField
      DisplayLabel = 'Registro CNH'
      FieldName = 'num_registro_cnh'
      Size = 15
    end
    object StringField7: TStringField
      DisplayLabel = 'Categoria CNH'
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object DateField1: TDateField
      DisplayLabel = 'Validade CNH'
      FieldName = 'dat_validade_cnh'
    end
    object StringField8: TStringField
      DisplayLabel = 'C'#243'd. Seg. CNH'
      FieldName = 'cod_cnh'
    end
    object StringField9: TStringField
      DisplayLabel = 'Placa Ve'#237'culo'
      FieldName = 'des_placa'
      Size = 7
    end
    object StringField10: TStringField
      DisplayLabel = 'Exerc'#237'cio CLRV'
      FieldName = 'ano_exercicio_clrv'
      Size = 4
    end
    object StringField11: TStringField
      DisplayLabel = 'N'#186'; RENAVAN'
      FieldName = 'num_renavan'
      Size = 25
    end
  end
  object dsGR: TDataSource
    AutoEdit = False
    DataSet = memTableGR
    Left = 304
    Top = 334
  end
end
