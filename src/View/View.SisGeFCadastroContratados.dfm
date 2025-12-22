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
      Properties.OnChange = camposPesquisaPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Todos'
      Width = 134
    end
    object parametroPesquisa: TcxTextEdit
      Left = 266
      Top = 26
      Hint = 'Par'#226'metro'
      Enabled = False
      Properties.OnChange = parametroPesquisaPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 367
    end
    object cxButton1: TcxButton
      Left = 825
      Top = 25
      Width = 75
      Height = 23
      Cursor = crHandPoint
      Action = actionLocateRecord
      OptionsImage.ImageIndex = 100
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 4
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
            Caption = 'ID'
            DataBinding.FieldName = 'id'
          end
          object viewCadastronum_cpf_cnpj: TcxGridDBColumn
            Caption = 'CPF/ CNPJ'
            DataBinding.FieldName = 'num_cpf_cnpj'
          end
          object viewCadastrocod_erp_contratados: TcxGridDBColumn
            Caption = 'C'#243'd.ERP'
            DataBinding.FieldName = 'cod_erp_contratados'
            Visible = False
          end
          object viewCadastroid_categoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            Width = 95
          end
          object viewCadastrocod_pessoa: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
            Visible = False
          end
          object viewCadastrodes_tipo_doc: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo DOC'
            Width = 94
          end
          object viewCadastronom_razao_social: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'nom_razao_social'
            Width = 235
          end
          object viewCadastronom_fantasia_alias: TcxGridDBColumn
            Caption = 'Alias'
            DataBinding.FieldName = 'nom_fantasia_alias'
            Width = 198
          end
          object viewCadastronum_rg_ie: TcxGridDBColumn
            Caption = 'RG / Ins.Est.'
            DataBinding.FieldName = 'num_rg_ie'
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
            Width = 63
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
            DataBinding.FieldName = 'Naturalidade'
            Visible = False
          end
          object viewCadastrouf_naturalidade: TcxGridDBColumn
            Caption = 'UF Nat.'
            DataBinding.FieldName = 'uf_naturalidade'
            Visible = False
          end
          object viewCadastronom_pai: TcxGridDBColumn
            Caption = 'Nome do Pai'
            DataBinding.FieldName = 'nom_pai'
            Visible = False
          end
          object viewCadastronom_mae: TcxGridDBColumn
            Caption = 'Nome da M'#227'e'
            DataBinding.FieldName = 'nom_mae'
            Visible = False
          end
          object viewCadastrocod_crt: TcxGridDBColumn
            Caption = 'CRT'
            DataBinding.FieldName = 'cod_crt'
            Visible = False
          end
          object viewCadastronum_cnh: TcxGridDBColumn
            Caption = 'N'#250'mero CNH'
            DataBinding.FieldName = 'num_cnh'
            Visible = False
          end
          object viewCadastronum_registro_cnh: TcxGridDBColumn
            Caption = 'Registro CNH'
            DataBinding.FieldName = 'num_registro_cnh'
            Visible = False
          end
          object viewCadastrodes_categoria_cnh: TcxGridDBColumn
            Caption = 'Categoria CNH'
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
      Left = 720
      Top = 26
      Hint = 'PEsquisar somenter por registros ativos'
      Caption = 'Somente Ativos'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 3
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
      Left = 639
      Top = 24
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClearSearch
      OptionsImage.ImageIndex = 120
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 2
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
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
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
      Enabled = False
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
      Index = 4
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
      Index = 3
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
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
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
      Enabled = False
      Hint = 'Limpar a tela de pesquisa'
      OnExecute = actionClearSearchExecute
    end
    object actionDeleteRegister: TAction
      Caption = 'Excl&uir'
      Hint = 'Excluir contratado'
      OnExecute = actionDeleteRegisterExecute
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
          Visible = True
          ItemName = 'dxBarLargeButton11'
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
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actionDeleteRegister
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 4
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
        Attributes = [faFixed]
        DataType = ftFixedChar
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
      414442530F00C6361E0F0000FF00010001FF02FF0304001E0000006D0065006D
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
      FF0B04001C0000006400610074005F0065006D0069007300730061006F005F00
      7200670005001C0000006400610074005F0065006D0069007300730061006F00
      5F00720067000C000A0000000E0019000F000116000110000117000111000112
      000113001C0000006400610074005F0065006D0069007300730061006F005F00
      72006700FEFF0B04001C0000006E006F006D005F0065006D006900730073006F
      0072005F007200670005001C0000006E006F006D005F0065006D006900730073
      006F0072005F00720067000C000B0000000E0014001500140000000F00011600
      0110000117000111000112000113001C0000006E006F006D005F0065006D0069
      00730073006F0072005F0072006700180014000000FEFF0B04001A0000007500
      66005F0065006D006900730073006F0072005F007200670005001A0000007500
      66005F0065006D006900730073006F0072005F00720067000C000C0000000E00
      14001500020000000F00011600011A000110000117000111000112000113001A
      000000750066005F0065006D006900730073006F0072005F0072006700180002
      000000FEFF0B04001C0000006400610074005F006E0061007300630069006D00
      65006E0074006F0005001C0000006400610074005F006E006100730063006900
      6D0065006E0074006F000C000D0000000E001B000F0001160001100001170001
      11000112000113001C0000006400610074005F006E0061007300630069006D00
      65006E0074006F00FEFF0B0400220000006400650073005F006E006100630069
      006F006E0061006C00690064006100640065000500220000006400650073005F
      006E006100630069006F006E0061006C00690064006100640065000C000E0000
      000E0014001500460000000F0001160001100001170001110001120001130022
      0000006400650073005F006E006100630069006F006E0061006C006900640061
      0064006500180046000000FEFF0B0400200000006400650073005F006E006100
      74007500720061006C0069006400610064006500050020000000640065007300
      5F006E00610074007500720061006C00690064006100640065000C000F000000
      0E0014001500460000000F000116000110000117000111000112000113002000
      00006400650073005F006E00610074007500720061006C006900640061006400
      6500180046000000FEFF0B04001E000000750066005F006E0061007400750072
      0061006C006900640061006400650005001E000000750066005F006E00610074
      007500720061006C00690064006100640065000C00100000000E001400150002
      0000000F00011600011A000110000117000111000112000113001E0000007500
      66005F006E00610074007500720061006C006900640061006400650018000200
      0000FEFF0B04000E0000006E006F006D005F0070006100690005000E0000006E
      006F006D005F007000610069000C00110000000E0014001500460000000F0001
      16000110000117000111000112000113000E0000006E006F006D005F00700061
      006900180046000000FEFF0B04000E0000006E006F006D005F006D0061006500
      05000E0000006E006F006D005F006D00610065000C00120000000E0014001500
      460000000F000116000110000117000111000112000113000E0000006E006F00
      6D005F006D0061006500180046000000FEFF0B04000E00000063006F0064005F
      0063007200740005000E00000063006F0064005F006300720074000C00130000
      000E000D000F000116000110000117000111000112000113000E00000063006F
      0064005F00630072007400FEFF0B04000E0000006E0075006D005F0063006E00
      680005000E0000006E0075006D005F0063006E0068000C00140000000E001400
      15000F0000000F000116000110000117000111000112000113000E0000006E00
      75006D005F0063006E00680018000F000000FEFF0B0400200000006E0075006D
      005F0072006500670069007300740072006F005F0063006E0068000500200000
      006E0075006D005F0072006500670069007300740072006F005F0063006E0068
      000C00150000000E00140015000F0000000F0001160001100001170001110001
      1200011300200000006E0075006D005F0072006500670069007300740072006F
      005F0063006E00680018000F000000FEFF0B0400220000006400650073005F00
      630061007400650067006F007200690061005F0063006E006800050022000000
      6400650073005F00630061007400650067006F007200690061005F0063006E00
      68000C00160000000E0014001500020000000F00011600011000011700011100
      011200011300220000006400650073005F00630061007400650067006F007200
      690061005F0063006E006800180002000000FEFF0B0400200000006400610074
      005F00760061006C00690064006100640065005F0063006E0068000500200000
      006400610074005F00760061006C00690064006100640065005F0063006E0068
      000C00170000000E001B000F0001160001100001170001110001120001130020
      0000006400610074005F00760061006C00690064006100640065005F0063006E
      006800FEFF0B04001E0000006400610074005F0065006D006900730073006100
      6F005F0063006E00680005001E0000006400610074005F0065006D0069007300
      730061006F005F0063006E0068000C00180000000E001B000F00011600011000
      0117000111000112000113001E0000006400610074005F0065006D0069007300
      730061006F005F0063006E006800FEFF0B04000C000000750066005F0063006E
      00680005000C000000750066005F0063006E0068000C00190000000E00140015
      00020000000F00011600011A000110000117000111000112000113000C000000
      750066005F0063006E006800180002000000FEFF0B0400200000006400610074
      005F007000720069006D0065006900720061005F0063006E0068000500200000
      006400610074005F007000720069006D0065006900720061005F0063006E0068
      000C001A0000000E001B000F0001160001100001170001110001120001130020
      0000006400610074005F007000720069006D0065006900720061005F0063006E
      006800FEFF0B04001400000063006F0064005F00730074006100740075007300
      05001400000063006F0064005F007300740061007400750073000C001B000000
      0E000D000F000116000110000117000111000112000113001400000063006F00
      64005F00730074006100740075007300FEFF0B0400180000006400610074005F
      0063006100640061007300740072006F000500180000006400610074005F0063
      006100640061007300740072006F000C001C0000000E0019000F000116000110
      00011700011100011200011300180000006400610074005F0063006100640061
      007300740072006F00FEFF0B04000E0000006400650073005F006F0062007300
      05000E0000006400650073005F006F00620073000C001D0000000E001C000F00
      011600011D000110000117000111000112000113000E0000006400650073005F
      006F0062007300FEFEFF1EFEFF1FFEFF20FEFEFEFF21FEFF22FF23FEFEFE0E00
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
      610062006C0065000800420061007300650012004F0049006E00550070006400
      61007400650010004F0049006E00570068006500720065001A004F0072006900
      670069006E0043006F006C004E0061006D00650018006400740041006E007300
      690053007400720069006E0067000800530069007A006500120041006C006C00
      6F0077004E0075006C006C0014004F0041006C006C006F0077004E0075006C00
      6C00140053006F007500720063006500530069007A0065001400640074004400
      610074006500540069006D0065001000460069007800650064004C0065006E00
      0C006400740044006100740065000C00640074004D0065006D006F0010004200
      6C006F00620044006100740061001C0043006F006E0073007400720061006900
      6E0074004C00690073007400100056006900650077004C006900730074000E00
      52006F0077004C006900730074001800520065006C006100740069006F006E00
      4C006900730074001C0055007000640061007400650073004A006F0075007200
      6E0061006C000E004300680061006E00670065007300}
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
  end
  object dsRecords: TDataSource
    AutoEdit = False
    DataSet = memTableRecords
    Left = 304
    Top = 230
  end
end
