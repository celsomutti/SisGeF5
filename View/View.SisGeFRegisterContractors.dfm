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
      Top = 26
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
      Top = 26
      Hint = 'Par'#226'metro'
      Style.HotTrack = False
      TabOrder = 1
      Width = 373
    end
    object cxButton1: TcxButton
      Left = 750
      Top = 25
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Action = actionLocateRecord
      OptionsImage.ImageIndex = 100
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 24
      Top = 55
      Width = 882
      Height = 384
      BevelOuter = bvNone
      TabOrder = 5
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
        Height = 359
        Align = alClient
        TabOrder = 1
        ExplicitTop = 31
        object viewCadastro: TcxGridDBTableView
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
          object viewCadastrodata_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'data_validade_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object viewCadastrodat_gv: TcxGridDBColumn
            DataBinding.FieldName = 'dat_gv'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object viewCadastronum_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastronum_registro_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'num_registro_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewCadastrodes_categoria_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'des_categoria_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object viewDocumentos: TcxGridDBTableView
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
          DataController.DataSource = dsDocuments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          ConditionalFormatting = {
            050000000A0000002D0000005400640078005300700072006500610064005300
            680065006500740043006F006E0064006900740069006F006E0061006C004600
            6F0072006D0061007400740069006E006700520075006C006500430065006C00
            6C004900730091000000060000000000000006000000FFFFFF7F000100000020
            0B00000007000000430061006C00690062007200690000000000000020000000
            2000000000200000000020000000002000000000200007000000470045004E00
            4500520041004C000000000000020000000000000000010B0000003D00330030
            002F00310032002F003100380039003900010000003D00010000002D00000054
            00640078005300700072006500610064005300680065006500740043006F006E
            0064006900740069006F006E0061006C0046006F0072006D0061007400740069
            006E006700520075006C006500430065006C006C004900730087000000060000
            000000000006000000FFFFFF7F0001000000200B00000007000000430061006C
            006900620072006900000100FFFF000000000020000000002000000000200000
            00002000000000200007000000470045004E004500520041004C000000000000
            02000000000000000001060000003D004E004F00570028002900010000003D00
            050000002D000000540064007800530070007200650061006400530068006500
            6500740043006F006E0064006900740069006F006E0061006C0046006F007200
            6D0061007400740069006E006700520075006C006500430065006C006C004900
            73007D000000090000000000000009000000FFFFFF7F0001000000200B000000
            07000000430061006C0069006200720069000000000000002000000020000000
            00200000000020000000002000000000200007000000470045004E0045005200
            41004C00000000000002000000000000000001010000003D00010000003D0001
            0000002D00000054006400780053007000720065006100640053006800650065
            00740043006F006E0064006900740069006F006E0061006C0046006F0072006D
            0061007400740069006E006700520075006C006500430065006C006C00490073
            008D000000090000000000000009000000FFFFFF7F0001000000200B00000007
            000000430061006C006900620072006900000000FFFFFF000000002000000000
            200000000020000000002000000000200007000000470045004E004500520041
            004C00000000000002000000000000000001020000003D003000080000003D00
            4E004F005700280029002D003100010000002D00000054006400780053007000
            72006500610064005300680065006500740043006F006E006400690074006900
            6F006E0061006C0046006F0072006D0061007400740069006E00670052007500
            6C006500430065006C006C00490073008F000000090000000000000009000000
            FFFFFF7F0001000000200B00000007000000430061006C006900620072006900
            000100FFFF000000000020000000002000000000200000000020000000002000
            07000000470045004E004500520041004C000000000000020000000000000000
            010A0000003D004E004F005700280029002D00330036003600010000003D0005
            000000}
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
          DataController.DataSource = dsGR
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          ConditionalFormatting = {
            020000000A0000002D0000005400640078005300700072006500610064005300
            680065006500740043006F006E0064006900740069006F006E0061006C004600
            6F0072006D0061007400740069006E006700520075006C006500430065006C00
            6C004900730087000000010000000000000001000000FFFFFF7F000100000020
            0B00000007000000430061006C006900620072006900000300FFFF0000000000
            2000000000200000000020000000002000000000200007000000470045004E00
            4500520041004C00000000000002000000000000000001060000003D004E004F
            00570028002900010000003D00050000002D0000005400640078005300700072
            006500610064005300680065006500740043006F006E0064006900740069006F
            006E0061006C0046006F0072006D0061007400740069006E006700520075006C
            006500430065006C006C00490073008F0000000A000000000000000A000000FF
            FFFF7F0001000000200B00000007000000430061006C00690062007200690000
            0100FFFF00000000002000000000200000000020000000002000000000200007
            000000470045004E004500520041004C00000000000002000000000000000001
            0A0000003D004E004F005700280029002D00330036003600010000003D000500
            0000}
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
      Left = 645
      Top = 26
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
      Height = 384
      Color = clWhite
      DataSet = queryRegister
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
      TabOrder = 6
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
      TabOrder = 7
      Visible = False
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 130
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveFilterParam
      OptionsImage.ImageIndex = 118
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 8
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 138
      Height = 25
      Cursor = crHandPoint
      Action = actionLoadFilterParam
      OptionsImage.ImageIndex = 117
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 9
      Visible = False
    end
    object cxButton8: TcxButton
      Left = 831
      Top = 24
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClearSearch
      OptionsImage.ImageIndex = 120
      OptionsImage.Images = Data_Sisgef.iml_16_16
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
    object dxLayoutGroup1: TdxLayoutGroup
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
      ItemIndex = 4
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
      ControlOptions.OriginalHeight = 23
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
      ControlOptions.OriginalWidth = 130
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
      ControlOptions.OriginalWidth = 138
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
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
      OnExecute = actionLocateRecordExecute
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
      OnExecute = actionExpandGridExecute
    end
    object actionRetractGrid: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grid'
      OnExecute = actionRetractGridExecute
    end
    object actionGroupPanel: TAction
      Caption = 'Painel de Grupo'
      Hint = 'Exibir o painel de grupos'
      OnExecute = actionGroupPanelExecute
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
      Caption = 'Salvar Par'#226'metros'
      Hint = 'Salvar os par'#226'metros do filtro'
    end
    object actionLoadFilterParam: TAction
      Caption = 'Carregar Pr'#226'metros'
      Hint = 'Carregar par'#226'metros de filtro'
    end
    object actionClearSearch: TAction
      Caption = 'Li&mpar'
      Hint = 'Limpar a tela de pesquisa'
      OnExecute = actionClearSearchExecute
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
    object memTableRecordsdata_validade_cnh: TDateField
      DisplayLabel = 'Validade CNH'
      FieldName = 'data_validade_cnh'
    end
    object memTableRecordsdat_gv: TDateField
      DisplayLabel = 'Vencimento GR'
      FieldName = 'dat_gv'
    end
    object memTableRecordsnum_cnh: TStringField
      DisplayLabel = 'N'#186'. CNH'
      FieldName = 'num_cnh'
    end
    object memTableRecordsnum_registro_cnh: TStringField
      DisplayLabel = 'Registro CNH'
      FieldName = 'num_registro_cnh'
    end
    object memTableRecordsdes_categoria_cnh: TStringField
      DisplayLabel = 'Categoria CNH'
      FieldName = 'des_categoria_cnh'
      Size = 5
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
    object memTableDocumentsnum_renavan: TStringField
      DisplayLabel = 'N'#186'; RENAVAN'
      FieldName = 'num_renavan'
      Size = 25
    end
    object memTableDocumentsano_exercicio_clrv: TIntegerField
      DisplayLabel = 'Exerc'#237'cio CLRV'
      FieldName = 'ano_exercicio_clrv'
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
    object memTableGRano_exercicio_clrv: TIntegerField
      DisplayLabel = 'Exerc'#237'cio CLRV'
      FieldName = 'ano_exercicio_clrv'
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
  object queryRegister: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_register_contracted')
    Left = 264
    Top = 185
    object queryRegistercod_cadastro: TIntegerField
      FieldName = 'cod_cadastro'
      Origin = 'cod_cadastro'
      Required = True
    end
    object queryRegisterdes_razao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_razao_social'
      Origin = 'des_razao_social'
      Size = 70
    end
    object queryRegisternom_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_fantasia'
      Origin = 'nom_fantasia'
      Size = 80
    end
    object queryRegisternum_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cnpj'
      Origin = 'num_cnpj'
    end
    object queryRegisternum_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_ie'
      Origin = 'num_ie'
    end
    object queryRegisternom_favorecido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_favorecido'
      Origin = 'nom_favorecido'
      Size = 70
    end
    object queryRegisternum_cpf_cnpj_favorecido: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cpf_cnpj_favorecido'
      Origin = 'num_cpf_cnpj_favorecido'
    end
    object queryRegisternom_razao_mei: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_razao_mei'
      Origin = 'nom_razao_mei'
      Size = 70
    end
    object queryRegisternom_fantasia_mei: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_fantasia_mei'
      Origin = 'nom_fantasia_mei'
      Size = 70
    end
    object queryRegisternum_cnpj_mei: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cnpj_mei'
      Origin = 'num_cnpj_mei'
    end
    object queryRegisterdes_placa: TStringField
      FieldName = 'des_placa'
      Origin = 'des_placa'
      Size = 7
    end
    object queryRegisterdes_modelo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_modelo'
      Origin = 'des_modelo'
      Size = 50
    end
    object queryRegisternum_renavan: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_renavan'
      Origin = 'num_renavan'
      Size = 25
    end
    object queryRegisterano_exercicio_clrv: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ano_exercicio_clrv'
      Origin = 'ano_exercicio_clrv'
      ProviderFlags = []
      ReadOnly = True
      Precision = 21
      Size = 0
    end
    object queryRegisterdes_forma_pagamento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_forma_pagamento'
      Origin = 'des_forma_pagamento'
      Size = 30
    end
    object queryRegisterdes_tipo_conta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_tipo_conta'
      Origin = 'des_tipo_conta'
    end
    object queryRegistercod_banco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_banco'
      Origin = 'cod_banco'
      Size = 4
    end
    object queryRegisternom_banco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_banco'
      Origin = 'nom_banco'
      Size = 50
    end
    object queryRegistercod_agencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_agencia'
      Origin = 'cod_agencia'
      Size = 10
    end
    object queryRegisternum_conta: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_conta'
      Origin = 'num_conta'
    end
    object queryRegisternum_cnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cnh'
      Origin = 'num_cnh'
      Size = 15
    end
    object queryRegisternum_registro_cnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_registro_cnh'
      Origin = 'num_registro_cnh'
      Size = 15
    end
    object queryRegisterdes_categoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_categoria'
      Origin = 'des_categoria'
      Size = 2
    end
    object queryRegisterdat_validade_cnh: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dat_validade_cnh'
      Origin = 'dat_validade_cnh'
    end
    object queryRegistercod_cnh: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cnh'
      Origin = 'cod_cnh'
    end
    object queryRegisterdat_gv: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dat_gv'
      Origin = 'dat_gv'
    end
    object queryRegistercod_status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_status'
      Origin = 'cod_status'
    end
  end
end
