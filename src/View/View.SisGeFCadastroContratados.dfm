object viewSisGeFCadastroContratados: TviewSisGeFCadastroContratados
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de Contratados'
  ClientHeight = 488
  ClientWidth = 924
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
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 54
    Width = 924
    Height = 434
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    ExplicitWidth = 930
    ExplicitHeight = 463
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
        'Registro CNH')
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
      Width = 367
    end
    object cxButton1: TcxButton
      Left = 744
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
      Width = 876
      Height = 355
      BevelOuter = bvNone
      TabOrder = 5
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 876
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 882
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
        Width = 876
        Height = 330
        Align = alClient
        TabOrder = 1
        LookAndFeel.NativeStyle = True
        LookAndFeel.SkinName = 'UserSkin'
        ExplicitWidth = 882
        ExplicitHeight = 359
        object viewCadastro: TcxGridDBTableView
          OnDblClick = viewCadastroDblClick
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
          object viewCadastroid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
          end
          object viewCadastronom_base: TcxGridDBColumn
            Caption = 'Base'
            DataBinding.FieldName = 'nom_base'
            Visible = False
            GroupIndex = 0
          end
          object viewCadastrocod_erp_contratados: TcxGridDBColumn
            Caption = 'C'#243'd. ERP'
            DataBinding.FieldName = 'cod_erp_contratados'
            Visible = False
          end
          object viewCadastroid_categoria: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'id_categoria'
          end
          object viewCadastrodes_funcao: TcxGridDBColumn
            Caption = 'Fun'#231#227'o'
            DataBinding.FieldName = 'des_funcao'
            Width = 109
          end
          object viewCadastrocod_pessoa: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'cod_pessoa'
          end
          object viewCadastrodes_tipo_doc: TcxGridDBColumn
            Caption = 'Tipo DOC'
            DataBinding.FieldName = 'des_tipo_doc'
          end
          object viewCadastronom_razao_social: TcxGridDBColumn
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'nom_razao_social'
          end
          object viewCadastronom_fantasia_alias: TcxGridDBColumn
            Caption = 'Alias /Nome Fantasia'
            DataBinding.FieldName = 'nom_fantasia_alias'
          end
          object viewCadastronum_cpf_cnpj: TcxGridDBColumn
            Caption = 'CPF / CNPJ'
            DataBinding.FieldName = 'num_cpf_cnpj'
          end
          object viewCadastronum_rg_ie: TcxGridDBColumn
            Caption = 'RG / Ins. Est.'
            DataBinding.FieldName = 'num_rg_ie'
          end
          object viewCadastronum_im: TcxGridDBColumn
            Caption = 'Ins. Municipal'
            DataBinding.FieldName = 'num_im'
          end
          object viewCadastrodat_emissao_rg: TcxGridDBColumn
            Caption = 'Emiss'#227'o RG'
            DataBinding.FieldName = 'dat_emissao_rg'
            Visible = False
          end
          object viewCadastronom_emissor_rg: TcxGridDBColumn
            Caption = 'Emissor RG'
            DataBinding.FieldName = 'nom_emissor_rg'
            Visible = False
          end
          object viewCadastrouf_emissor_rg: TcxGridDBColumn
            Caption = 'UF RG'
            DataBinding.FieldName = 'uf_emissor_rg'
            Visible = False
          end
          object viewCadastrodat_nascimento: TcxGridDBColumn
            Caption = 'Nascimento'
            DataBinding.FieldName = 'dat_nascimento'
            Visible = False
          end
          object viewCadastrodes_nacionalidade: TcxGridDBColumn
            Caption = 'Nacionalidade'
            DataBinding.FieldName = 'des_nacionalidade'
            Visible = False
          end
          object viewCadastrodes_naturalidade: TcxGridDBColumn
            Caption = 'Naturalidade'
            DataBinding.FieldName = 'des_naturalidade'
            Visible = False
          end
          object viewCadastrouf_naturalidade: TcxGridDBColumn
            Caption = 'UF Naturalidade'
            DataBinding.FieldName = 'uf_naturalidade'
            Visible = False
          end
          object viewCadastronom_pai: TcxGridDBColumn
            Caption = 'Nomr Pai'
            DataBinding.FieldName = 'nom_pai'
            Visible = False
          end
          object viewCadastronom_mae: TcxGridDBColumn
            Caption = 'Nome M'#227'e'
            DataBinding.FieldName = 'nom_mae'
            Visible = False
          end
          object viewCadastrocod_crt: TcxGridDBColumn
            Caption = 'CRT'
            DataBinding.FieldName = 'cod_crt'
            Visible = False
          end
          object viewCadastronum_cnh: TcxGridDBColumn
            Caption = 'N'#186' CNH'
            DataBinding.FieldName = 'num_cnh'
            Visible = False
          end
          object viewCadastronum_registro_cnh: TcxGridDBColumn
            Caption = 'Registro CNH'
            DataBinding.FieldName = 'num_registro_cnh'
            Visible = False
          end
          object viewCadastrodes_categoria_cnh: TcxGridDBColumn
            Caption = 'Cateoria CNH'
            DataBinding.FieldName = 'des_categoria_cnh'
            Visible = False
          end
          object viewCadastrodat_validade_cnh: TcxGridDBColumn
            Caption = 'Validade CNH'
            DataBinding.FieldName = 'dat_validade_cnh'
            Visible = False
          end
          object viewCadastrodat_emissao_cnh: TcxGridDBColumn
            Caption = 'Emiss'#227'o CNH'
            DataBinding.FieldName = 'dat_emissao_cnh'
            Visible = False
          end
          object viewCadastrouf_cnh: TcxGridDBColumn
            Caption = 'UF CNH'
            DataBinding.FieldName = 'uf_cnh'
            Visible = False
          end
          object viewCadastrodat_primeira_cnh: TcxGridDBColumn
            Caption = 'Primeira CNH'
            DataBinding.FieldName = 'dat_primeira_cnh'
            Visible = False
          end
          object viewCadastrocod_status: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'cod_status'
          end
          object viewCadastrodat_cadastro: TcxGridDBColumn
            Caption = 'Data Cadastro'
            DataBinding.FieldName = 'dat_cadastro'
            Visible = False
          end
          object viewCadastrodes_obs: TcxGridDBColumn
            Caption = 'Observa'#231#245'es'
            DataBinding.FieldName = 'des_obs'
            Visible = False
          end
        end
        object viewDocumentos: TcxGridDBTableView
          OnDblClick = viewDocumentosDblClick
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
            6C004900730091000000010000000000000001000000FFFFFF7F000100000020
            0B00000007000000430061006C00690062007200690000000000000020000000
            2000000000200000000020000000002000000000200007000000470045004E00
            4500520041004C000000000000020000000000000000010B0000003D00330030
            002F00310032002F003100380039003900010000003D00010000002D00000054
            00640078005300700072006500610064005300680065006500740043006F006E
            0064006900740069006F006E0061006C0046006F0072006D0061007400740069
            006E006700520075006C006500430065006C006C004900730087000000010000
            000000000001000000FFFFFF7F0001000000200B00000007000000430061006C
            006900620072006900000100FFFF000000000020000000002000000000200000
            00002000000000200007000000470045004E004500520041004C000000000000
            02000000000000000001060000003D004E004F00570028002900010000003D00
            050000002D000000540064007800530070007200650061006400530068006500
            6500740043006F006E0064006900740069006F006E0061006C0046006F007200
            6D0061007400740069006E006700520075006C006500430065006C006C004900
            73007D000000020000000000000002000000FFFFFF7F0001000000200B000000
            07000000430061006C0069006200720069000000000000002000000020000000
            00200000000020000000002000000000200007000000470045004E0045005200
            41004C00000000000002000000000000000001010000003D00010000003D0001
            0000002D00000054006400780053007000720065006100640053006800650065
            00740043006F006E0064006900740069006F006E0061006C0046006F0072006D
            0061007400740069006E006700520075006C006500430065006C006C00490073
            008D000000020000000000000002000000FFFFFF7F0001000000200B00000007
            000000430061006C006900620072006900000000FFFFFF000000002000000000
            200000000020000000002000000000200007000000470045004E004500520041
            004C00000000000002000000000000000001020000003D003000080000003D00
            4E004F005700280029002D003100010000002D00000054006400780053007000
            72006500610064005300680065006500740043006F006E006400690074006900
            6F006E0061006C0046006F0072006D0061007400740069006E00670052007500
            6C006500430065006C006C00490073008F000000020000000000000002000000
            FFFFFF7F0001000000200B00000007000000430061006C006900620072006900
            000100FFFF000000000020000000002000000000200000000020000000002000
            07000000470045004E004500520041004C000000000000020000000000000000
            010A0000003D004E004F005700280029002D00330036003600010000003D0005
            000000}
          object viewDocumentoscod_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cadastro'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdat_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_validade_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 133
          end
          object viewDocumentosano_exercicio_clrv: TcxGridDBColumn
            DataBinding.FieldName = 'ano_exercicio_clrv'
            HeaderAlignmentHorz = taCenter
            Width = 91
          end
          object viewDocumentosnum_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdes_razao_social: TcxGridDBColumn
            DataBinding.FieldName = 'des_razao_social'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentoscod_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador'
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object viewDocumentosnom_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'nom_entregador'
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
          object viewDocumentoscod_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosdes_placa: TcxGridDBColumn
            DataBinding.FieldName = 'des_placa'
            HeaderAlignmentHorz = taCenter
            Width = 87
          end
          object viewDocumentosnum_renavan: TcxGridDBColumn
            DataBinding.FieldName = 'num_renavan'
            HeaderAlignmentHorz = taCenter
          end
          object viewDocumentosnom_base: TcxGridDBColumn
            DataBinding.FieldName = 'nom_base'
            Visible = False
            GroupIndex = 0
          end
        end
        object viewGR: TcxGridDBTableView
          OnDblClick = viewGRDblClick
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
            006500430065006C006C00490073008F000000030000000000000003000000FF
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
          object viewGRdat_validade_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'dat_validade_cnh'
            HeaderAlignmentHorz = taCenter
            Width = 106
          end
          object viewGRano_exercicio_clrv: TcxGridDBColumn
            DataBinding.FieldName = 'ano_exercicio_clrv'
            HeaderAlignmentHorz = taCenter
            Width = 103
          end
          object viewGRnum_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdes_razao_social: TcxGridDBColumn
            DataBinding.FieldName = 'des_razao_social'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRcod_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object viewGRnom_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'nom_entregador'
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
          object viewGRcod_cnh: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cnh'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRdes_placa: TcxGridDBColumn
            DataBinding.FieldName = 'des_placa'
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object viewGRnum_renavan: TcxGridDBColumn
            DataBinding.FieldName = 'num_renavan'
            HeaderAlignmentHorz = taCenter
          end
          object viewGRnom_base: TcxGridDBColumn
            DataBinding.FieldName = 'nom_base'
            Visible = False
            GroupIndex = 0
          end
        end
        object gridCadastroLevel1: TcxGridLevel
          GridView = viewCadastro
        end
      end
    end
    object statusRegistro: TcxCheckBox
      Left = 639
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
      Width = 876
      Height = 355
      Color = clWhite
      Items = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'id'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
        end
        item
          Caption = 'Nome / Raz'#227'o Social'
          FieldName = 'nom_razao_social'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'Alias / Nome Fantasia'
          FieldName = 'nom_fantaasia_alias'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.MaxLength = 70
        end
        item
          Caption = 'CPF / CNPJ Cadastro'
          FieldName = 'num_cpf_cnpj'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExprEx
          Properties.EditMask = '[\d./-]+'
          Properties.MaxLength = 0
        end
        item
          Caption = 'RG / Ins. Estadual'
          FieldName = 'num_rg_ie'
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
          Caption = 'Ins. Municipal'
          FieldName = 'num_im'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
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
      Left = 825
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
      OnExecute = actionNewRegisterExecute
    end
    object actionEditRegister: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      OnExecute = actionEditRegisterExecute
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
      Visible = False
      OnExecute = actionDocumentsToExpireExecute
    end
    object actionRiskManagement: TAction
      Caption = '&GR'
      Hint = 'Lista de gerenciamento de risco'
      Visible = False
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
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_erp_contratados'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'id_categoria'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_pessoa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_tipo_doc'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'nom_razao_social'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_fantasia_alias'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_cpf_cnpj'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_rg_ie'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_im'
        DataType = ftString
        Size = 30
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
        DataType = ftString
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
        DataType = ftString
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
        Name = 'cod_crt'
        DataType = ftInteger
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
        DataType = ftString
        Size = 2
      end
      item
        Name = 'dat_primeira_cnh'
        DataType = ftDate
      end
      item
        Name = 'cod_status'
        DataType = ftInteger
      end
      item
        Name = 'dat_cadastro'
        DataType = ftDateTime
      end
      item
        Name = 'des_obs'
        DataType = ftMemo
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
    Left = 232
    Top = 230
    Content = {
      414442530F009258760F0000FF00010001FF02FF0304001E0000006D0065006D
      005400610062006C0065005200650063006F0072006400730005000A00000054
      00610062006C006500060000000000070000080032000000090000FF0AFF0B04
      000400000069006400050004000000690064000C00010000000E000D000F0001
      10000111000112000113000400000069006400FEFF0B04002600000063006F00
      64005F006500720070005F0063006F006E007400720061007400610064006F00
      730005002600000063006F0064005F006500720070005F0063006F006E007400
      720061007400610064006F0073000C00020000000E0014001500320000000F00
      0116000110000117000111000112000113002600000063006F0064005F006500
      720070005F0063006F006E007400720061007400610064006F00730018003200
      0000FEFF0B040018000000690064005F00630061007400650067006F00720069
      006100050018000000690064005F00630061007400650067006F007200690061
      000C00030000000E000D000F0001100001110001120001130018000000690064
      005F00630061007400650067006F00720069006100FEFF0B0400140000006300
      6F0064005F0070006500730073006F00610005001400000063006F0064005F00
      70006500730073006F0061000C00040000000E000D000F000110000111000112
      000113001400000063006F0064005F0070006500730073006F006100FEFF0B04
      00180000006400650073005F007400690070006F005F0064006F006300050018
      0000006400650073005F007400690070006F005F0064006F0063000C00050000
      000E0014001500040000000F0001160001100001170001110001120001130018
      0000006400650073005F007400690070006F005F0064006F0063001800040000
      00FEFF0B0400200000006E006F006D005F00720061007A0061006F005F007300
      6F006300690061006C000500200000006E006F006D005F00720061007A006100
      6F005F0073006F006300690061006C000C00060000000E001400150046000000
      0F00011600011000011700011100011200011300200000006E006F006D005F00
      720061007A0061006F005F0073006F006300690061006C00180046000000FEFF
      0B0400240000006E006F006D005F00660061006E00740061007300690061005F
      0061006C006900610073000500240000006E006F006D005F00660061006E0074
      0061007300690061005F0061006C006900610073000C00070000000E00140015
      00460000000F00011600011000011700011100011200011300240000006E006F
      006D005F00660061006E00740061007300690061005F0061006C006900610073
      00180046000000FEFF0B0400180000006E0075006D005F006300700066005F00
      63006E0070006A000500180000006E0075006D005F006300700066005F006300
      6E0070006A000C00080000000E0014001500140000000F000116000110000117
      00011100011200011300180000006E0075006D005F006300700066005F006300
      6E0070006A00180014000000FEFF0B0400120000006E0075006D005F00720067
      005F00690065000500120000006E0075006D005F00720067005F00690065000C
      00090000000E0014001500140000000F00011600011000011700011100011200
      011300120000006E0075006D005F00720067005F0069006500180014000000FE
      FF0B04000C0000006E0075006D005F0069006D0005000C0000006E0075006D00
      5F0069006D000C000A0000000E00140015001E0000000F000116000110000117
      000111000112000113000C0000006E0075006D005F0069006D0018001E000000
      FEFF0B04001C0000006400610074005F0065006D0069007300730061006F005F
      007200670005001C0000006400610074005F0065006D0069007300730061006F
      005F00720067000C000B0000000E0019000F0001160001100001170001110001
      12000113001C0000006400610074005F0065006D0069007300730061006F005F
      0072006700FEFF0B04001C0000006E006F006D005F0065006D00690073007300
      6F0072005F007200670005001C0000006E006F006D005F0065006D0069007300
      73006F0072005F00720067000C000C0000000E0014001500140000000F000116
      000110000117000111000112000113001C0000006E006F006D005F0065006D00
      6900730073006F0072005F0072006700180014000000FEFF0B04001A00000075
      0066005F0065006D006900730073006F0072005F007200670005001A00000075
      0066005F0065006D006900730073006F0072005F00720067000C000D0000000E
      0014001500020000000F000116000110000117000111000112000113001A0000
      00750066005F0065006D006900730073006F0072005F00720067001800020000
      00FEFF0B04001C0000006400610074005F006E0061007300630069006D006500
      6E0074006F0005001C0000006400610074005F006E0061007300630069006D00
      65006E0074006F000C000E0000000E001A000F00011600011000011700011100
      0112000113001C0000006400610074005F006E0061007300630069006D006500
      6E0074006F00FEFF0B0400220000006400650073005F006E006100630069006F
      006E0061006C00690064006100640065000500220000006400650073005F006E
      006100630069006F006E0061006C00690064006100640065000C000F0000000E
      0014001500460000000F00011600011000011700011100011200011300220000
      006400650073005F006E006100630069006F006E0061006C0069006400610064
      006500180046000000FEFF0B0400200000006400650073005F006E0061007400
      7500720061006C00690064006100640065000500200000006400650073005F00
      6E00610074007500720061006C00690064006100640065000C00100000000E00
      14001500460000000F0001160001100001170001110001120001130020000000
      6400650073005F006E00610074007500720061006C0069006400610064006500
      180046000000FEFF0B04001E000000750066005F006E00610074007500720061
      006C006900640061006400650005001E000000750066005F006E006100740075
      00720061006C00690064006100640065000C00110000000E0014001500020000
      000F000116000110000117000111000112000113001E000000750066005F006E
      00610074007500720061006C0069006400610064006500180002000000FEFF0B
      04000E0000006E006F006D005F0070006100690005000E0000006E006F006D00
      5F007000610069000C00120000000E0014001500460000000F00011600011000
      0117000111000112000113000E0000006E006F006D005F007000610069001800
      46000000FEFF0B04000E0000006E006F006D005F006D006100650005000E0000
      006E006F006D005F006D00610065000C00130000000E0014001500460000000F
      000116000110000117000111000112000113000E0000006E006F006D005F006D
      0061006500180046000000FEFF0B04000E00000063006F0064005F0063007200
      740005000E00000063006F0064005F006300720074000C00140000000E000D00
      0F000116000110000117000111000112000113000E00000063006F0064005F00
      630072007400FEFF0B04000E0000006E0075006D005F0063006E00680005000E
      0000006E0075006D005F0063006E0068000C00150000000E00140015000F0000
      000F000116000110000117000111000112000113000E0000006E0075006D005F
      0063006E00680018000F000000FEFF0B0400200000006E0075006D005F007200
      6500670069007300740072006F005F0063006E0068000500200000006E007500
      6D005F0072006500670069007300740072006F005F0063006E0068000C001600
      00000E00140015000F0000000F00011600011000011700011100011200011300
      200000006E0075006D005F0072006500670069007300740072006F005F006300
      6E00680018000F000000FEFF0B0400220000006400650073005F006300610074
      00650067006F007200690061005F0063006E0068000500220000006400650073
      005F00630061007400650067006F007200690061005F0063006E0068000C0017
      0000000E0014001500020000000F000116000110000117000111000112000113
      00220000006400650073005F00630061007400650067006F007200690061005F
      0063006E006800180002000000FEFF0B0400200000006400610074005F007600
      61006C00690064006100640065005F0063006E00680005002000000064006100
      74005F00760061006C00690064006100640065005F0063006E0068000C001800
      00000E001A000F00011600011000011700011100011200011300200000006400
      610074005F00760061006C00690064006100640065005F0063006E006800FEFF
      0B04001E0000006400610074005F0065006D0069007300730061006F005F0063
      006E00680005001E0000006400610074005F0065006D0069007300730061006F
      005F0063006E0068000C00190000000E001A000F000116000110000117000111
      000112000113001E0000006400610074005F0065006D0069007300730061006F
      005F0063006E006800FEFF0B04000C000000750066005F0063006E0068000500
      0C000000750066005F0063006E0068000C001A0000000E001400150002000000
      0F000116000110000117000111000112000113000C000000750066005F006300
      6E006800180002000000FEFF0B0400200000006400610074005F007000720069
      006D0065006900720061005F0063006E0068000500200000006400610074005F
      007000720069006D0065006900720061005F0063006E0068000C001B0000000E
      001A000F00011600011000011700011100011200011300200000006400610074
      005F007000720069006D0065006900720061005F0063006E006800FEFF0B0400
      1400000063006F0064005F007300740061007400750073000500140000006300
      6F0064005F007300740061007400750073000C001C0000000E000D000F000116
      000110000117000111000112000113001400000063006F0064005F0073007400
      6100740075007300FEFF0B0400180000006400610074005F0063006100640061
      007300740072006F000500180000006400610074005F00630061006400610073
      00740072006F000C001D0000000E0019000F0001160001100001170001110001
      1200011300180000006400610074005F0063006100640061007300740072006F
      00FEFF0B04000E0000006400650073005F006F006200730005000E0000006400
      650073005F006F00620073000C001E0000000E001B000F00011600011C000110
      000117000111000112000113000E0000006400650073005F006F0062007300FE
      FEFF1DFEFF1EFEFF1FFEFEFEFF20FEFF21FF22FEFEFE0E004D0061006E006100
      6700650072001E00550070006400610074006500730052006500670069007300
      74007200790012005400610062006C0065004C006900730074000A0054006100
      62006C00650008004E0061006D006500140053006F0075007200630065004E00
      61006D0065000A0054006100620049004400240045006E0066006F0072006300
      650043006F006E00730074007200610069006E00740073001E004D0069006E00
      69006D0075006D00430061007000610063006900740079001800430068006500
      63006B004E006F0074004E0075006C006C00140043006F006C0075006D006E00
      4C006900730074000C0043006F006C0075006D006E00100053006F0075007200
      63006500490044000E006400740049006E007400330032001000440061007400
      610054007900700065001400530065006100720063006800610062006C006500
      0800420061007300650012004F0049006E005500700064006100740065001000
      4F0049006E00570068006500720065001A004F0072006900670069006E004300
      6F006C004E0061006D00650018006400740041006E0073006900530074007200
      69006E0067000800530069007A006500120041006C006C006F0077004E007500
      6C006C0014004F0041006C006C006F0077004E0075006C006C00140053006F00
      7500720063006500530069007A00650014006400740044006100740065005400
      69006D0065000C006400740044006100740065000C00640074004D0065006D00
      6F00100042006C006F00620044006100740061001C0043006F006E0073007400
      7200610069006E0074004C00690073007400100056006900650077004C006900
      730074000E0052006F0077004C006900730074001800520065006C0061007400
      69006F006E004C006900730074001C0055007000640061007400650073004A00
      6F00750072006E0061006C000E004300680061006E00670065007300}
    object memTableRecordsid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object memTableRecordscod_erp_contratados: TStringField
      FieldName = 'cod_erp_contratados'
      Size = 50
    end
    object memTableRecordsid_categoria: TIntegerField
      FieldName = 'id_categoria'
      Required = True
    end
    object memTableRecordscod_pessoa: TIntegerField
      FieldName = 'cod_pessoa'
      Required = True
    end
    object memTableRecordsdes_tipo_doc: TStringField
      FieldName = 'des_tipo_doc'
      Size = 4
    end
    object memTableRecordsnom_razao_social: TStringField
      FieldName = 'nom_razao_social'
      Size = 70
    end
    object memTableRecordsnom_fantasia_alias: TStringField
      FieldName = 'nom_fantasia_alias'
      Size = 70
    end
    object memTableRecordsnum_cpf_cnpj: TStringField
      FieldName = 'num_cpf_cnpj'
    end
    object memTableRecordsnum_rg_ie: TStringField
      FieldName = 'num_rg_ie'
    end
    object memTableRecordsnum_im: TStringField
      FieldName = 'num_im'
      Size = 30
    end
    object memTableRecordsdat_emissao_rg: TDateTimeField
      FieldName = 'dat_emissao_rg'
    end
    object memTableRecordsnom_emissor_rg: TStringField
      FieldName = 'nom_emissor_rg'
    end
    object memTableRecordsuf_emissor_rg: TStringField
      FieldName = 'uf_emissor_rg'
      FixedChar = True
      Size = 2
    end
    object memTableRecordsdat_nascimento: TDateField
      FieldName = 'dat_nascimento'
    end
    object memTableRecordsdes_nacionalidade: TStringField
      FieldName = 'des_nacionalidade'
      Size = 70
    end
    object memTableRecordsdes_naturalidade: TStringField
      FieldName = 'des_naturalidade'
      Size = 70
    end
    object memTableRecordsuf_naturalidade: TStringField
      FieldName = 'uf_naturalidade'
      FixedChar = True
      Size = 2
    end
    object memTableRecordsnom_pai: TStringField
      FieldName = 'nom_pai'
      Size = 70
    end
    object memTableRecordsnom_mae: TStringField
      FieldName = 'nom_mae'
      Size = 70
    end
    object memTableRecordscod_crt: TIntegerField
      FieldName = 'cod_crt'
    end
    object memTableRecordsnum_cnh: TStringField
      FieldName = 'num_cnh'
      Size = 15
    end
    object memTableRecordsnum_registro_cnh: TStringField
      FieldName = 'num_registro_cnh'
      Size = 15
    end
    object memTableRecordsdes_categoria_cnh: TStringField
      FieldName = 'des_categoria_cnh'
      Size = 2
    end
    object memTableRecordsdat_validade_cnh: TDateField
      FieldName = 'dat_validade_cnh'
    end
    object memTableRecordsdat_emissao_cnh: TDateField
      FieldName = 'dat_emissao_cnh'
    end
    object memTableRecordsuf_cnh: TStringField
      FieldName = 'uf_cnh'
      FixedChar = True
      Size = 2
    end
    object memTableRecordsdat_primeira_cnh: TDateField
      FieldName = 'dat_primeira_cnh'
    end
    object memTableRecordscod_status: TIntegerField
      FieldName = 'cod_status'
    end
    object memTableRecordsdat_cadastro: TDateTimeField
      FieldName = 'dat_cadastro'
    end
    object memTableRecordsdes_obs: TMemoField
      FieldName = 'des_obs'
      BlobType = ftMemo
    end
    object memTableRecordsnom_base: TStringField
      FieldKind = fkCalculated
      FieldName = 'nom_base'
      Size = 70
      Calculated = True
    end
    object memTableRecordsdes_funcao: TStringField
      FieldKind = fkCalculated
      FieldName = 'des_funcao'
      Size = 70
      Calculated = True
    end
  end
  object dsRecords: TDataSource
    AutoEdit = False
    DataSet = memTableRecords
    Enabled = False
    Left = 304
    Top = 230
  end
  object memTableGR: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_gr'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'dat_consulta'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'dat_validade'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'nom_empresa'
        Attributes = [faRequired]
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_consulta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cod_seguranca_cnh'
        DataType = ftString
        Size = 30
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
    Left = 232
    Top = 334
    Content = {
      414442530F009258D0030000FF00010001FF02FF030400140000006D0065006D
      005400610062006C0065004700520005000A0000005400610062006C00650006
      0000000000070000080032000000090000FF0AFF0B04000A000000690064005F
      006700720005000A000000690064005F00670072000C00010000000E000D000F
      00011000011100011200011300FFFFFFFF1400FFFFFFFF150001160001170001
      18000119000A000000690064005F0067007200FEFF0B04001C00000069006400
      5F0063006F006E007400720061007400610064006F00730005001C0000006900
      64005F0063006F006E007400720061007400610064006F0073000C0002000000
      0E000D000F00011200011A000117000119001C000000690064005F0063006F00
      6E007400720061007400610064006F007300FEFF0B0400180000006400610074
      005F0063006F006E00730075006C00740061000500180000006400610074005F
      0063006F006E00730075006C00740061000C00030000000E001B000F00011200
      011A00011700011900180000006400610074005F0063006F006E00730075006C
      0074006100FEFF0B0400180000006400610074005F00760061006C0069006400
      6100640065000500180000006400610074005F00760061006C00690064006100
      640065000C00040000000E001B000F00011200011A0001170001190018000000
      6400610074005F00760061006C0069006400610064006500FEFF0B0400160000
      006E006F006D005F0065006D00700072006500730061000500160000006E006F
      006D005F0065006D00700072006500730061000C00050000000E001C001D0046
      0000000F00011200011A00011700011900160000006E006F006D005F0065006D
      00700072006500730061001E0046000000FEFF0B04001800000063006F006400
      5F0063006F006E00730075006C007400610005001800000063006F0064005F00
      63006F006E00730075006C00740061000C00060000000E001C001D0014000000
      0F00011000011200011500011A000117000119001800000063006F0064005F00
      63006F006E00730075006C00740061001E0014000000FEFF0B04002200000063
      006F0064005F007300650067007500720061006E00630061005F0063006E0068
      0005002200000063006F0064005F007300650067007500720061006E00630061
      005F0063006E0068000C00070000000E001C001D001E0000000F000110000112
      00011500011A000117000119002200000063006F0064005F0073006500670075
      00720061006E00630061005F0063006E0068001E001E000000FEFEFF1FFEFF20
      FEFF21FEFEFEFF22FEFF23FF24FEFEFE0E004D0061006E006100670065007200
      1E00550070006400610074006500730052006500670069007300740072007900
      12005400610062006C0065004C006900730074000A005400610062006C006500
      08004E0061006D006500140053006F0075007200630065004E0061006D006500
      0A0054006100620049004400240045006E0066006F0072006300650043006F00
      6E00730074007200610069006E00740073001E004D0069006E0069006D007500
      6D0043006100700061006300690074007900180043006800650063006B004E00
      6F0074004E0075006C006C00140043006F006C0075006D006E004C0069007300
      74000C0043006F006C0075006D006E00100053006F0075007200630065004900
      44000E006400740049006E007400330032001000440061007400610054007900
      700065001400530065006100720063006800610062006C006500120041006C00
      6C006F0077004E0075006C006C000E004100750074006F0049006E0063000800
      420061007300650022004100750074006F0049006E006300720065006D006500
      6E007400530065006500640022004100750074006F0049006E00630072006500
      6D0065006E007400530074006500700014004F0041006C006C006F0077004E00
      75006C006C0012004F0052006500610064004F006E006C00790010004F004900
      6E005700680065007200650020004F004100660074006500720049006E007300
      4300680061006E006700650064001A004F0072006900670069006E0043006F00
      6C004E0061006D00650012004F0049006E005500700064006100740065000C00
      64007400440061007400650018006400740041006E0073006900530074007200
      69006E0067000800530069007A006500140053006F0075007200630065005300
      69007A0065001C0043006F006E00730074007200610069006E0074004C006900
      73007400100056006900650077004C006900730074000E0052006F0077004C00
      6900730074001800520065006C006100740069006F006E004C00690073007400
      1C0055007000640061007400650073004A006F00750072006E0061006C000E00
      4300680061006E00670065007300}
    object memTableGRid_gr: TFDAutoIncField
      FieldName = 'id_gr'
      ReadOnly = True
    end
    object memTableGRid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableGRdat_consulta: TDateField
      FieldName = 'dat_consulta'
      Required = True
    end
    object memTableGRdat_validade: TDateField
      FieldName = 'dat_validade'
      Required = True
    end
    object memTableGRnom_empresa: TStringField
      FieldName = 'nom_empresa'
      Required = True
      Size = 70
    end
    object memTableGRcod_consulta: TStringField
      FieldName = 'cod_consulta'
    end
    object memTableGRcod_seguranca_cnh: TStringField
      FieldName = 'cod_seguranca_cnh'
      Size = 30
    end
  end
  object dsGR: TDataSource
    AutoEdit = False
    DataSet = memTableGR
    Left = 304
    Top = 334
  end
  object memTableEnderecos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_endereco'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'num_cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'des_logradouro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_logradouro'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'des_complemento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'des_bairro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_cidade'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'uf_estado'
        Attributes = [faFixed]
        DataType = ftFixedChar
        Size = 2
      end
      item
        Name = 'des_referencia'
        DataType = ftString
        Size = 132
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
    Left = 232
    Top = 277
    Content = {
      414442530F009258E9050000FF00010001FF02FF030400220000006D0065006D
      005400610062006C00650045006E00640065007200650063006F00730005000A
      0000005400610062006C006500060000000000070000080032000000090000FF
      0AFF0B040016000000690064005F0065006E00640065007200650063006F0005
      0016000000690064005F0065006E00640065007200650063006F000C00010000
      000E000D000F0001100001110001120001130016000000690064005F0065006E
      00640065007200650063006F00FEFF0B04001C000000690064005F0063006F00
      6E007400720061007400610064006F00730005001C000000690064005F006300
      6F006E007400720061007400610064006F0073000C00020000000E000D000F00
      0110000111000112000113001C000000690064005F0063006F006E0074007200
      61007400610064006F007300FEFF0B0400100000006400650073005F00740069
      0070006F000500100000006400650073005F007400690070006F000C00030000
      000E0014001500140000000F0001160001100001170001110001120001130010
      0000006400650073005F007400690070006F00180014000000FEFF0B04000E00
      00006E0075006D005F0063006500700005000E0000006E0075006D005F006300
      650070000C00040000000E0014001500090000000F0001160001100001170001
      11000112000113000E0000006E0075006D005F00630065007000180009000000
      FEFF0B04001C0000006400650073005F006C006F0067007200610064006F0075
      0072006F0005001C0000006400650073005F006C006F0067007200610064006F
      00750072006F000C00050000000E0014001500460000000F0001160001100001
      17000111000112000113001C0000006400650073005F006C006F006700720061
      0064006F00750072006F00180046000000FEFF0B04001C0000006E0075006D00
      5F006C006F0067007200610064006F00750072006F0005001C0000006E007500
      6D005F006C006F0067007200610064006F00750072006F000C00060000000E00
      140015000B0000000F000116000110000117000111000112000113001C000000
      6E0075006D005F006C006F0067007200610064006F00750072006F0018000B00
      0000FEFF0B04001E0000006400650073005F0063006F006D0070006C0065006D
      0065006E0074006F0005001E0000006400650073005F0063006F006D0070006C
      0065006D0065006E0074006F000C00070000000E0014001500320000000F0001
      16000110000117000111000112000113001E0000006400650073005F0063006F
      006D0070006C0065006D0065006E0074006F00180032000000FEFF0B04001400
      00006400650073005F00620061006900720072006F0005001400000064006500
      73005F00620061006900720072006F000C00080000000E001400150046000000
      0F00011600011000011700011100011200011300140000006400650073005F00
      620061006900720072006F00180046000000FEFF0B0400140000006E006F006D
      005F006300690064006100640065000500140000006E006F006D005F00630069
      0064006100640065000C00090000000E0014001500460000000F000116000110
      00011700011100011200011300140000006E006F006D005F0063006900640061
      0064006500180046000000FEFF0B040012000000750066005F00650073007400
      610064006F00050012000000750066005F00650073007400610064006F000C00
      0A0000000E0014001500020000000F0001160001190001100001170001110001
      120001130012000000750066005F00650073007400610064006F001800020000
      00FEFF0B04001C0000006400650073005F007200650066006500720065006E00
      63006900610005001C0000006400650073005F00720065006600650072006500
      6E006300690061000C000B0000000E0014001500840000000F00011600011000
      0117000111000112000113001C0000006400650073005F007200650066006500
      720065006E00630069006100180084000000FEFEFF1AFEFF1BFEFF1CFEFEFEFF
      1DFEFF1EFF1FFEFEFE0E004D0061006E0061006700650072001E005500700064
      0061007400650073005200650067006900730074007200790012005400610062
      006C0065004C006900730074000A005400610062006C00650008004E0061006D
      006500140053006F0075007200630065004E0061006D0065000A005400610062
      0049004400240045006E0066006F0072006300650043006F006E007300740072
      00610069006E00740073001E004D0069006E0069006D0075006D004300610070
      0061006300690074007900180043006800650063006B004E006F0074004E0075
      006C006C00140043006F006C0075006D006E004C006900730074000C0043006F
      006C0075006D006E00100053006F007500720063006500490044000E00640074
      0049006E00740033003200100044006100740061005400790070006500140053
      0065006100720063006800610062006C0065000800420061007300650012004F
      0049006E0055007000640061007400650010004F0049006E0057006800650072
      0065001A004F0072006900670069006E0043006F006C004E0061006D00650018
      006400740041006E007300690053007400720069006E0067000800530069007A
      006500120041006C006C006F0077004E0075006C006C0014004F0041006C006C
      006F0077004E0075006C006C00140053006F007500720063006500530069007A
      0065001000460069007800650064004C0065006E001C0043006F006E00730074
      007200610069006E0074004C00690073007400100056006900650077004C0069
      00730074000E0052006F0077004C006900730074001800520065006C00610074
      0069006F006E004C006900730074001C0055007000640061007400650073004A
      006F00750072006E0061006C000E004300680061006E00670065007300}
    object memTableEnderecosid_endereco: TIntegerField
      FieldName = 'id_endereco'
      Required = True
    end
    object memTableEnderecosid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableEnderecosdes_tipo: TStringField
      FieldName = 'des_tipo'
    end
    object memTableEnderecosnum_cep: TStringField
      FieldName = 'num_cep'
      Size = 9
    end
    object memTableEnderecosdes_logradouro: TStringField
      FieldName = 'des_logradouro'
      Size = 70
    end
    object memTableEnderecosnum_logradouro: TStringField
      FieldName = 'num_logradouro'
      Size = 11
    end
    object memTableEnderecosdes_complemento: TStringField
      FieldName = 'des_complemento'
      Size = 50
    end
    object memTableEnderecosdes_bairro: TStringField
      FieldName = 'des_bairro'
      Size = 70
    end
    object memTableEnderecosnom_cidade: TStringField
      FieldName = 'nom_cidade'
      Size = 70
    end
    object memTableEnderecosuf_estado: TStringField
      FieldName = 'uf_estado'
      FixedChar = True
      Size = 2
    end
    object memTableEnderecosdes_referencia: TStringField
      FieldName = 'des_referencia'
      Size = 132
    end
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    DataSet = memTableEnderecos
    Enabled = False
    Left = 304
    Top = 278
  end
  object memTableContatos: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'seq_contato'
        DataType = ftAutoInc
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'des_contato'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'num_telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'des_email'
        DataType = ftString
        Size = 128
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
    Left = 232
    Top = 389
    Content = {
      414442530F009258F0020000FF00010001FF02FF030400200000006D0065006D
      005400610062006C00650043006F006E007400610074006F00730005000A0000
      005400610062006C006500060000000000070000080032000000090000FF0AFF
      0B0400160000007300650071005F0063006F006E007400610074006F00050016
      0000007300650071005F0063006F006E007400610074006F000C00010000000E
      000D000F00011000011100011200011300FFFFFFFF1400FFFFFFFF1500011600
      011700011800011900160000007300650071005F0063006F006E007400610074
      006F00FEFF0B04001C000000690064005F0063006F006E007400720061007400
      610064006F00730005001C000000690064005F0063006F006E00740072006100
      7400610064006F0073000C00020000000E000D000F0001120001160001170001
      19001C000000690064005F0063006F006E007400720061007400610064006F00
      7300FEFF0B0400160000006400650073005F0063006F006E007400610074006F
      000500160000006400650073005F0063006F006E007400610074006F000C0003
      0000000E001A001B001E0000000F000110000112000115000116000117000119
      00160000006400650073005F0063006F006E007400610074006F001C001E0000
      00FEFF0B0400180000006E0075006D005F00740065006C00650066006F006E00
      65000500180000006E0075006D005F00740065006C00650066006F006E006500
      0C00040000000E001A001B000F0000000F000110000112000115000116000117
      00011900180000006E0075006D005F00740065006C00650066006F006E006500
      1C000F000000FEFF0B0400120000006400650073005F0065006D00610069006C
      000500120000006400650073005F0065006D00610069006C000C00050000000E
      001A001B00800000000F00011000011200011500011600011700011900120000
      006400650073005F0065006D00610069006C001C0080000000FEFEFF1DFEFF1E
      FEFF1FFEFEFEFF20FEFF21FF22FEFEFE0E004D0061006E006100670065007200
      1E00550070006400610074006500730052006500670069007300740072007900
      12005400610062006C0065004C006900730074000A005400610062006C006500
      08004E0061006D006500140053006F0075007200630065004E0061006D006500
      0A0054006100620049004400240045006E0066006F0072006300650043006F00
      6E00730074007200610069006E00740073001E004D0069006E0069006D007500
      6D0043006100700061006300690074007900180043006800650063006B004E00
      6F0074004E0075006C006C00140043006F006C0075006D006E004C0069007300
      74000C0043006F006C0075006D006E00100053006F0075007200630065004900
      44000E006400740049006E007400330032001000440061007400610054007900
      700065001400530065006100720063006800610062006C006500120041006C00
      6C006F0077004E0075006C006C000E004100750074006F0049006E0063000800
      420061007300650022004100750074006F0049006E006300720065006D006500
      6E007400530065006500640022004100750074006F0049006E00630072006500
      6D0065006E007400530074006500700014004F0041006C006C006F0077004E00
      75006C006C0012004F0049006E0055007000640061007400650010004F004900
      6E005700680065007200650020004F004100660074006500720049006E007300
      4300680061006E006700650064001A004F0072006900670069006E0043006F00
      6C004E0061006D00650018006400740041006E00730069005300740072006900
      6E0067000800530069007A006500140053006F00750072006300650053006900
      7A0065001C0043006F006E00730074007200610069006E0074004C0069007300
      7400100056006900650077004C006900730074000E0052006F0077004C006900
      730074001800520065006C006100740069006F006E004C006900730074001C00
      55007000640061007400650073004A006F00750072006E0061006C000E004300
      680061006E00670065007300}
    object memTableContatosseq_contato: TFDAutoIncField
      FieldName = 'seq_contato'
      ProviderFlags = [pfInUpdate, pfInWhere]
      IdentityInsert = True
    end
    object memTableContatosid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableContatosdes_contato: TStringField
      FieldName = 'des_contato'
      Size = 30
    end
    object memTableContatosnum_telefone: TStringField
      FieldName = 'num_telefone'
      Size = 15
    end
    object memTableContatosdes_email: TStringField
      FieldName = 'des_email'
      Size = 128
    end
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = memTableGR
    Left = 296
    Top = 390
  end
  object memTableCNAE: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_cnae'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_tipo_cnae'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_cnae'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'des_cnae'
        Attributes = [faRequired]
        DataType = ftString
        Size = 132
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
    Left = 400
    Top = 237
    Content = {
      414442530F00925888020000FF00010001FF02FF030400180000006D0065006D
      005400610062006C00650043004E004100450005000A0000005400610062006C
      006500060000000000070000080032000000090000FF0AFF0B04000E00000069
      0064005F0063006E006100650005000E000000690064005F0063006E00610065
      000C00010000000E000D000F000110000111000112000113000E000000690064
      005F0063006E0061006500FEFF0B04001C000000690064005F0063006F006E00
      7400720061007400610064006F00730005001C000000690064005F0063006F00
      6E007400720061007400610064006F0073000C00020000000E000D000F000110
      000111000112000113001C000000690064005F0063006F006E00740072006100
      7400610064006F007300FEFF0B04001A00000063006F0064005F007400690070
      006F005F0063006E006100650005001A00000063006F0064005F007400690070
      006F005F0063006E00610065000C00030000000E000D000F0001100001110001
      12000113001A00000063006F0064005F007400690070006F005F0063006E0061
      006500FEFF0B04001000000063006F0064005F0063006E006100650005001000
      000063006F0064005F0063006E00610065000C00040000000E00140015001400
      00000F000110000111000112000113001000000063006F0064005F0063006E00
      61006500160014000000FEFF0B0400100000006400650073005F0063006E0061
      0065000500100000006400650073005F0063006E00610065000C00050000000E
      0014001500840000000F00011000011100011200011300100000006400650073
      005F0063006E0061006500160084000000FEFEFF17FEFF18FEFF19FEFEFEFF1A
      FEFF1BFF1CFEFEFE0E004D0061006E0061006700650072001E00550070006400
      6100740065007300520065006700690073007400720079001200540061006200
      6C0065004C006900730074000A005400610062006C00650008004E0061006D00
      6500140053006F0075007200630065004E0061006D0065000A00540061006200
      49004400240045006E0066006F0072006300650043006F006E00730074007200
      610069006E00740073001E004D0069006E0069006D0075006D00430061007000
      61006300690074007900180043006800650063006B004E006F0074004E007500
      6C006C00140043006F006C0075006D006E004C006900730074000C0043006F00
      6C0075006D006E00100053006F007500720063006500490044000E0064007400
      49006E0074003300320010004400610074006100540079007000650014005300
      65006100720063006800610062006C0065000800420061007300650012004F00
      49006E0055007000640061007400650010004F0049006E005700680065007200
      65001A004F0072006900670069006E0043006F006C004E0061006D0065001800
      6400740041006E007300690053007400720069006E0067000800530069007A00
      6500140053006F007500720063006500530069007A0065001C0043006F006E00
      730074007200610069006E0074004C0069007300740010005600690065007700
      4C006900730074000E0052006F0077004C006900730074001800520065006C00
      6100740069006F006E004C006900730074001C00550070006400610074006500
      73004A006F00750072006E0061006C000E004300680061006E00670065007300}
    object memTableCNAEid_cnae: TIntegerField
      FieldName = 'id_cnae'
      Required = True
    end
    object memTableCNAEid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableCNAEcod_tipo_cnae: TIntegerField
      FieldName = 'cod_tipo_cnae'
      Required = True
    end
    object memTableCNAEcod_cnae: TStringField
      FieldName = 'cod_cnae'
      Required = True
    end
    object memTableCNAEdes_cnae: TStringField
      FieldName = 'des_cnae'
      Required = True
      Size = 132
    end
  end
  object memTableFinanceiro: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_financeiro'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_banco'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'cod_agencia'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'num_conta'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'chave_pix'
        DataType = ftString
        Size = 125
      end
      item
        Name = 'des_forma_pagamento'
        DataType = ftString
        Size = 20
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
    Left = 400
    Top = 293
    Content = {
      414442530F009258FE030000FF00010001FF02FF030400240000006D0065006D
      005400610062006C006500460069006E0061006E0063006500690072006F0005
      000A0000005400610062006C0065000600000000000700000800320000000900
      00FF0AFF0B04001A000000690064005F00660069006E0061006E006300650069
      0072006F0005001A000000690064005F00660069006E0061006E006300650069
      0072006F000C00010000000E000D000F00011000011100011200011300FFFFFF
      FF1400FFFFFFFF15000116000117000118000119001A000000690064005F0066
      0069006E0061006E0063006500690072006F00FEFF0B04001C00000069006400
      5F0063006F006E007400720061007400610064006F00730005001C0000006900
      64005F0063006F006E007400720061007400610064006F0073000C0002000000
      0E000D000F00011200011A000117000119001C000000690064005F0063006F00
      6E007400720061007400610064006F007300FEFF0B04001200000063006F0064
      005F00620061006E0063006F0005001200000063006F0064005F00620061006E
      0063006F000C00030000000E001B001C00040000000F00011200011A00011700
      0119001200000063006F0064005F00620061006E0063006F001D0004000000FE
      FF0B04001600000063006F0064005F006100670065006E006300690061000500
      1600000063006F0064005F006100670065006E006300690061000C0004000000
      0E001B001C000A0000000F00011200011A000117000119001600000063006F00
      64005F006100670065006E006300690061001D000A000000FEFF0B0400120000
      006E0075006D005F0063006F006E00740061000500120000006E0075006D005F
      0063006F006E00740061000C00050000000E001B001C00140000000F00011200
      011A00011700011900120000006E0075006D005F0063006F006E00740061001D
      0014000000FEFF0B040012000000630068006100760065005F00700069007800
      050012000000630068006100760065005F007000690078000C00060000000E00
      1B001C007D0000000F00011000011200011500011A0001170001190012000000
      630068006100760065005F007000690078001D007D000000FEFF0B0400260000
      006400650073005F0066006F0072006D0061005F0070006100670061006D0065
      006E0074006F000500260000006400650073005F0066006F0072006D0061005F
      0070006100670061006D0065006E0074006F000C00070000000E001B001C0014
      0000000F00011000011200011500011A00011700011900260000006400650073
      005F0066006F0072006D0061005F0070006100670061006D0065006E0074006F
      001D0014000000FEFEFF1EFEFF1FFEFF20FEFEFEFF21FEFF22FF23FEFEFE0E00
      4D0061006E0061006700650072001E0055007000640061007400650073005200
      650067006900730074007200790012005400610062006C0065004C0069007300
      74000A005400610062006C00650008004E0061006D006500140053006F007500
      7200630065004E0061006D0065000A0054006100620049004400240045006E00
      66006F0072006300650043006F006E00730074007200610069006E0074007300
      1E004D0069006E0069006D0075006D0043006100700061006300690074007900
      180043006800650063006B004E006F0074004E0075006C006C00140043006F00
      6C0075006D006E004C006900730074000C0043006F006C0075006D006E001000
      53006F007500720063006500490044000E006400740049006E00740033003200
      1000440061007400610054007900700065001400530065006100720063006800
      610062006C006500120041006C006C006F0077004E0075006C006C000E004100
      750074006F0049006E0063000800420061007300650022004100750074006F00
      49006E006300720065006D0065006E0074005300650065006400220041007500
      74006F0049006E006300720065006D0065006E00740053007400650070001400
      4F0041006C006C006F0077004E0075006C006C0012004F005200650061006400
      4F006E006C00790010004F0049006E005700680065007200650020004F004100
      660074006500720049006E0073004300680061006E006700650064001A004F00
      72006900670069006E0043006F006C004E0061006D00650012004F0049006E00
      55007000640061007400650018006400740041006E0073006900530074007200
      69006E0067000800530069007A006500140053006F0075007200630065005300
      69007A0065001C0043006F006E00730074007200610069006E0074004C006900
      73007400100056006900650077004C006900730074000E0052006F0077004C00
      6900730074001800520065006C006100740069006F006E004C00690073007400
      1C0055007000640061007400650073004A006F00750072006E0061006C000E00
      4300680061006E00670065007300}
    object memTableFinanceiroid_financeiro: TFDAutoIncField
      FieldName = 'id_financeiro'
      ReadOnly = True
    end
    object memTableFinanceiroid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableFinanceirocod_banco: TStringField
      FieldName = 'cod_banco'
      Required = True
      Size = 4
    end
    object memTableFinanceirocod_agencia: TStringField
      FieldName = 'cod_agencia'
      Required = True
      Size = 10
    end
    object memTableFinanceironum_conta: TStringField
      FieldName = 'num_conta'
      Required = True
    end
    object memTableFinanceirochave_pix: TStringField
      FieldName = 'chave_pix'
      Size = 125
    end
    object memTableFinanceirodes_forma_pagamento: TStringField
      FieldName = 'des_forma_pagamento'
    end
  end
  object memTableRepresentantes: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_representante'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nom_representante'
        Attributes = [faRequired]
        DataType = ftString
        Size = 71
      end
      item
        Name = 'cpf_representante'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
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
    Left = 400
    Top = 341
    Content = {
      414442530F009258DD020000FF00010001FF02FF0304002C0000006D0065006D
      005400610062006C00650052006500700072006500730065006E00740061006E
      0074006500730005000A0000005400610062006C006500060000000000070000
      080032000000090000FF0AFF0B040020000000690064005F0072006500700072
      006500730065006E00740061006E0074006500050020000000690064005F0072
      006500700072006500730065006E00740061006E00740065000C00010000000E
      000D000F00011000011100011200011300FFFFFFFF1400FFFFFFFF1500011600
      01170001180001190020000000690064005F0072006500700072006500730065
      006E00740061006E0074006500FEFF0B04001C000000690064005F0063006F00
      6E007400720061007400610064006F00730005001C000000690064005F006300
      6F006E007400720061007400610064006F0073000C00020000000E000D000F00
      011200011A000117000119001C000000690064005F0063006F006E0074007200
      61007400610064006F007300FEFF0B0400220000006E006F006D005F00720065
      00700072006500730065006E00740061006E00740065000500220000006E006F
      006D005F0072006500700072006500730065006E00740061006E00740065000C
      00030000000E001B001C00470000000F00011200011A00011700011900220000
      006E006F006D005F0072006500700072006500730065006E00740061006E0074
      0065001D0047000000FEFF0B0400220000006300700066005F00720065007000
      72006500730065006E00740061006E0074006500050022000000630070006600
      5F0072006500700072006500730065006E00740061006E00740065000C000400
      00000E001B001C00140000000F00011200011A00011700011900220000006300
      700066005F0072006500700072006500730065006E00740061006E0074006500
      1D0014000000FEFEFF1EFEFF1FFEFF20FEFEFEFF21FEFF22FF23FEFEFE0E004D
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
      0062006C006500120041006C006C006F0077004E0075006C006C000E00410075
      0074006F0049006E0063000800420061007300650022004100750074006F0049
      006E006300720065006D0065006E007400530065006500640022004100750074
      006F0049006E006300720065006D0065006E007400530074006500700014004F
      0041006C006C006F0077004E0075006C006C0012004F0052006500610064004F
      006E006C00790010004F0049006E005700680065007200650020004F00410066
      0074006500720049006E0073004300680061006E006700650064001A004F0072
      006900670069006E0043006F006C004E0061006D00650012004F0049006E0055
      007000640061007400650018006400740041006E007300690053007400720069
      006E0067000800530069007A006500140053006F007500720063006500530069
      007A0065001C0043006F006E00730074007200610069006E0074004C00690073
      007400100056006900650077004C006900730074000E0052006F0077004C0069
      00730074001800520065006C006100740069006F006E004C006900730074001C
      0055007000640061007400650073004A006F00750072006E0061006C000E0043
      00680061006E00670065007300}
    object memTableRepresentantesid_representante: TFDAutoIncField
      FieldName = 'id_representante'
      ReadOnly = True
    end
    object memTableRepresentantesid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableRepresentantesnom_representante: TStringField
      FieldName = 'nom_representante'
      Required = True
      Size = 71
    end
    object memTableRepresentantescpf_representante: TStringField
      FieldName = 'cpf_representante'
      Required = True
    end
  end
  object memTableRH: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_rh'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'id_contratados'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'val_salario'
        DataType = ftSingle
        Precision = 12
      end
      item
        Name = 'dat_admissao'
        DataType = ftDate
      end
      item
        Name = 'dat_demissao'
        DataType = ftDate
      end
      item
        Name = 'id_departaento'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'id_funcao'
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
    Left = 400
    Top = 397
    Content = {
      414442530F009258A2030000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C006500310005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B04000A000000690064
      005F007200680005000A000000690064005F00720068000C00010000000E000D
      000F00011000011100011200011300FFFFFFFF1400FFFFFFFF15000116000117
      000118000119000A000000690064005F0072006800FEFF0B04001C0000006900
      64005F0063006F006E007400720061007400610064006F00730005001C000000
      690064005F0063006F006E007400720061007400610064006F0073000C000200
      00000E000D000F00011200011A000117000119001C000000690064005F006300
      6F006E007400720061007400610064006F007300FEFF0B040016000000760061
      006C005F00730061006C006100720069006F00050016000000760061006C005F
      00730061006C006100720069006F000C00030000000E001B001C000C0000000F
      00011000011200011500011A0001170001190016000000760061006C005F0073
      0061006C006100720069006F001D000C000000FEFF0B04001800000064006100
      74005F00610064006D0069007300730061006F00050018000000640061007400
      5F00610064006D0069007300730061006F000C00040000000E001E000F000110
      00011200011500011A00011700011900180000006400610074005F0061006400
      6D0069007300730061006F00FEFF0B0400180000006400610074005F00640065
      006D0069007300730061006F000500180000006400610074005F00640065006D
      0069007300730061006F000C00050000000E001E000F00011000011200011500
      011A00011700011900180000006400610074005F00640065006D006900730073
      0061006F00FEFF0B04001C000000690064005F00640065007000610072007400
      610065006E0074006F0005001C000000690064005F0064006500700061007200
      7400610065006E0074006F000C00060000000E000D000F00011200011A000117
      000119001C000000690064005F00640065007000610072007400610065006E00
      74006F00FEFF0B040012000000690064005F00660075006E00630061006F0005
      0012000000690064005F00660075006E00630061006F000C00070000000E000D
      000F00011000011200011500011A0001170001190012000000690064005F0066
      0075006E00630061006F00FEFEFF1FFEFF20FEFF21FEFEFEFF22FEFF23FF24FE
      FEFE0E004D0061006E0061006700650072001E00550070006400610074006500
      73005200650067006900730074007200790012005400610062006C0065004C00
      6900730074000A005400610062006C00650008004E0061006D00650014005300
      6F0075007200630065004E0061006D0065000A00540061006200490044002400
      45006E0066006F0072006300650043006F006E00730074007200610069006E00
      740073001E004D0069006E0069006D0075006D00430061007000610063006900
      74007900180043006800650063006B004E006F0074004E0075006C006C001400
      43006F006C0075006D006E004C006900730074000C0043006F006C0075006D00
      6E00100053006F007500720063006500490044000E006400740049006E007400
      3300320010004400610074006100540079007000650014005300650061007200
      63006800610062006C006500120041006C006C006F0077004E0075006C006C00
      0E004100750074006F0049006E00630008004200610073006500220041007500
      74006F0049006E006300720065006D0065006E00740053006500650064002200
      4100750074006F0049006E006300720065006D0065006E007400530074006500
      700014004F0041006C006C006F0077004E0075006C006C0012004F0052006500
      610064004F006E006C00790010004F0049006E00570068006500720065002000
      4F004100660074006500720049006E0073004300680061006E00670065006400
      1A004F0072006900670069006E0043006F006C004E0061006D00650012004F00
      49006E00550070006400610074006500100064007400530069006E0067006C00
      6500120050007200650063006900730069006F006E001E0053006F0075007200
      6300650050007200650063006900730069006F006E000C006400740044006100
      740065001C0043006F006E00730074007200610069006E0074004C0069007300
      7400100056006900650077004C006900730074000E0052006F0077004C006900
      730074001800520065006C006100740069006F006E004C006900730074001C00
      55007000640061007400650073004A006F00750072006E0061006C000E004300
      680061006E00670065007300}
    object memTableRHid_rh: TFDAutoIncField
      FieldName = 'id_rh'
      ReadOnly = True
    end
    object memTableRHid_contratados: TIntegerField
      FieldName = 'id_contratados'
      Required = True
    end
    object memTableRHval_salario: TSingleField
      FieldName = 'val_salario'
    end
    object memTableRHdat_admissao: TDateField
      FieldName = 'dat_admissao'
    end
    object memTableRHdat_demissao: TDateField
      FieldName = 'dat_demissao'
    end
    object memTableRHid_departaento: TIntegerField
      FieldName = 'id_departaento'
      Required = True
    end
    object memTableRHid_funcao: TIntegerField
      FieldName = 'id_funcao'
    end
  end
  object dsCNAE: TDataSource
    AutoEdit = False
    DataSet = memTableCNAE
    Left = 472
    Top = 237
  end
  object dsFinanceiro: TDataSource
    AutoEdit = False
    DataSet = memTableFinanceiro
    Left = 472
    Top = 293
  end
  object dsRepresentantes: TDataSource
    AutoEdit = False
    DataSet = memTableRepresentantes
    Left = 472
    Top = 341
  end
  object dsRH: TDataSource
    AutoEdit = False
    DataSet = memTableRH
    Left = 472
    Top = 389
  end
end
