object view_ExtraviosSinistrosMultas: Tview_ExtraviosSinistrosMultas
  Left = 0
  Top = 0
  Caption = 'Extravios, Sinistros e Multas'
  ClientHeight = 458
  ClientWidth = 835
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pageControlPesquisa: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 829
    Height = 398
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabResultado
    Properties.CustomButtons.Buttons = <>
    Properties.HideTabs = True
    OnChange = pageControlPesquisaChange
    ClientRectBottom = 398
    ClientRectRight = 829
    ClientRectTop = 0
    object tabResultado: TcxTabSheet
      Caption = 'Resultado'
      ImageIndex = 0
      object gridExtravios: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 36
        Width = 823
        Height = 359
        Align = alClient
        TabOrder = 0
        object gridExtraviosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = gridExtraviosDBTableView1NavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              ImageIndex = 62
            end
            item
              ImageIndex = 63
            end>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 5
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 8
          Navigator.Buttons.Next.ImageIndex = 7
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OnCellDblClick = gridExtraviosDBTableView1CellDblClick
          DataController.DataSource = dsExtravios
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_MULTA
            end
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_PRODUTO
            end
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_TOTAL
            end
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_VERBA
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_MULTA
            end
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_PRODUTO
            end
            item
              Format = ',0.00;- ,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_TOTAL
            end
            item
              Kind = skSum
              Column = gridExtraviosDBTableView1VAL_VERBA
              Sorted = True
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CopyCaptionsToClipboard = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.ColumnsQuickCustomizationShowCommands = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsSelection.CheckBoxPosition = cbpIndicator
          OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
          OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object gridExtraviosDBTableView1COD_EXTRAVIO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_EXTRAVIO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_TIPO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'EXTRAVIO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'SINISTRO'
                Value = 1
              end
              item
                Description = 'MULTA'
                Value = 2
              end>
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o/Raz'#227'o Recupera'#231#227'o'
            DataBinding.FieldName = 'DES_EXTRAVIO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 288
          end
          object gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn
            DataBinding.FieldName = 'DAT_EXTRAVIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn
            Caption = 'N'#186' Rastreio'
            DataBinding.FieldName = 'NUM_NOSSONUMERO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'DOM_RESTRICAO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'FINALIZADO'
                ImageIndex = 0
                Value = 'S'
              end
              item
                Description = 'PENDENTE'
                Value = 'N'
              end
              item
                Description = 'ESTORNADO'
                Value = 'E'
              end>
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn
            DataBinding.FieldName = 'VAL_PERCENTUAL'
            PropertiesClassName = 'TcxProgressBarProperties'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn
            DataBinding.FieldName = 'VAL_PRODUTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Visible = False
          end
          object gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn
            DataBinding.FieldName = 'VAL_MULTA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Visible = False
          end
          object gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn
            DataBinding.FieldName = 'VAL_VERBA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            Visible = False
          end
          object gridExtraviosDBTableView1cod_awb: TcxGridDBColumn
            Caption = 'Rastreio Correios'
            DataBinding.FieldName = 'cod_awb'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 138
          end
          object gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VAL_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object gridExtraviosDBTableView1des_produto: TcxGridDBColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'des_produto'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 294
          end
          object gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn
            Caption = 'Acarea'#231#227'o N'#176'.'
            DataBinding.FieldName = 'SEQ_ACAREACAO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
          object gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn
            Caption = 'Extrato N'#186'.'
            DataBinding.FieldName = 'NUM_EXTRATO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 133
          end
          object gridExtraviosDBTableView1COD_AGENTE: TcxGridDBColumn
            DataBinding.FieldName = 'COD_AGENTE'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object gridExtraviosDBTableView1NOM_AGENTE: TcxGridDBColumn
            Caption = 'Nome do Agente'
            DataBinding.FieldName = 'NOM_AGENTE'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 395
          end
          object gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ENTREGADOR'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 99
          end
          object gridExtraviosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn
            Caption = 'Nome do Entregador'
            DataBinding.FieldName = 'NOM_ENTREGADOR'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1COD_CADASTRO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_CADASTRO'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
          object gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_CNPJ'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
          end
          object gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn
            DataBinding.FieldName = 'DES_OBSERVACOES'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 81
          end
          object gridExtraviosDBTableView1cod_cliente: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cliente'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'cod_cliente'
            Properties.ListColumns = <
              item
                FieldName = 'nom_cliente'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsClientes
            HeaderAlignmentHorz = taCenter
            Width = 158
          end
        end
        object gridExtraviosLevel1: TcxGridLevel
          GridView = gridExtraviosDBTableView1
        end
      end
      object panelPesquisa: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 823
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Caption = 'panelPesquisa'
        ShowCaption = False
        TabOrder = 1
        DesignSize = (
          823
          27)
        object cxLabel1: TcxLabel
          Left = 2
          Top = 4
          Caption = 'Pesquisar: '
          Transparent = True
        end
        object pesquisar: TcxTextEdit
          Left = 65
          Top = 3
          Hint = 'Par'#226'metro a pesquisasr'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Width = 357
        end
        object cxButton1: TcxButton
          Left = 428
          Top = 1
          Width = 81
          Height = 25
          Cursor = crHandPoint
          Action = actionPesquisar
          Anchors = [akTop, akRight]
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000026744558745469746C650046696E643B426172733B5269
            62626F6E3B5374616E646172643B536561726368BB659C080000005B49444154
            785EB592C10900310804AFC16B630B4955E9CEE0C129C124FB303EC6C72A2388
            8F88186FEBF24372232F8843CE2E3F094004A81168B882F594B89D834940868F
            7D1384ED1C140BFC801FF50283BEB2734FA025415E3000FE3DA38A41B3014A00
            00000049454E44AE426082}
          TabOrder = 2
        end
        object cxLabel2: TcxLabel
          Left = 515
          Top = 4
          Anchors = [akTop, akRight]
          Caption = 'Campos:'
          Transparent = True
        end
        object comboBoxCampos: TcxComboBox
          Left = 567
          Top = 3
          Anchors = [akTop, akRight]
          Properties.Items.Strings = (
            'Todos'
            'N'#250'mero'
            'C'#243'digo do Agente'
            'Nome do Agente'
            'C'#243'digo do Entregador'
            'Nome do Entregador'
            'CPF / CNPJ'
            'C'#243'digo do Cadastro'
            'Nome do Cadastro'
            'N'#250'mero Remessa'
            'AWB'
            'Produto')
          TabOrder = 4
          Text = 'Todos'
          Width = 151
        end
        object checkBoxGrupo: TcxCheckBox
          Left = 724
          Top = 3
          Action = actionPainelGrupos
          Anchors = [akTop, akRight]
          TabOrder = 5
        end
      end
    end
    object tabFiltro: TcxTabSheet
      Caption = 'Filtro'
      ImageIndex = 1
      ExplicitWidth = 0
      ExplicitHeight = 0
      object panelFooterFiltro: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 349
        Width = 815
        Height = 38
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'panelFooterFiltro'
        ShowCaption = False
        TabOrder = 0
      end
      object filtroExtravios: TcxDBFilterControl
        Left = 0
        Top = 0
        Width = 821
        Height = 346
        Align = alClient
        DataSet = memTableExtravios
        Items = <
          item
            Caption = 'N'#186'. Extravio'
            FieldName = 'COD_EXTRAVIO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          end
          item
            Caption = 'C'#243'd. Agente'
            FieldName = 'COD_AGENTE'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'AWB'
            FieldName = 'cod_awb'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'C'#243'd. Cadastro'
            FieldName = 'COD_CADASTRO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'Tipo'
            FieldName = 'COD_TIPO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'EXTRAVIO'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'SINISTRO'
                Value = 1
              end
              item
                Description = 'MULTA'
                Value = 2
              end>
          end
          item
            Caption = 'Data'
            FieldName = 'DAT_EXTRAVIO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
          end
          item
            Caption = 'Descri'#231#227'o'
            FieldName = 'DES_EXTRAVIO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Produto'
            FieldName = 'des_produto'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Nome Cadastro'
            FieldName = 'DES_RAZAO_SOCIAL'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Status'
            FieldName = 'DOM_RESTRICAO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'FINALIZADO'
                ImageIndex = 0
                Value = 'S'
              end
              item
                Description = 'PENDENTE'
                Value = 'N'
              end
              item
                Description = 'ESTORNADO'
                Value = 'E'
              end>
          end
          item
            Caption = 'Nome Agente'
            FieldName = 'NOM_AGENTE'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Nome Entregador'
            FieldName = 'NOM_ENTREGADOR'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'CPF / CNPJ'
            FieldName = 'NUM_CNPJ'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Extrato N'#186'.'
            FieldName = 'NUM_EXTRATO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Remessa N'#186'.'
            FieldName = 'NUM_NOSSONUMERO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Acarea'#231#227'o N'#186'.'
            FieldName = 'SEQ_ACAREACAO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          end
          item
            Caption = 'Multa'
            FieldName = 'VAL_MULTA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
          end
          item
            Caption = 'Situa'#231#227'o'
            FieldName = 'des_situacao'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'QUITADO'
              'PENDENTE')
          end
          item
            Caption = 'Valor Produto'
            FieldName = 'VAL_PRODUTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
          end
          item
            Caption = 'Total Extravio'
            FieldName = 'VAL_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
          end
          item
            Caption = 'Verba Entregador'
            FieldName = 'VAL_VERBA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ' ,0.00;- ,0.00'
          end
          item
            Caption = 'C'#243'd. Entregador'
            FieldName = 'COD_ENTREGADOR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'Cliente'
            FieldName = 'cod_cliente'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'cod_cliente'
            Properties.ListColumns = <
              item
                FieldName = 'nom_cliente'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsClientes
          end>
        TabOrder = 1
        ExplicitTop = -3
      end
    end
  end
  object actionListExtravios: TActionList
    Images = Data_Sisgef.imageListOperation_32_32
    Left = 504
    object actionNovo: TAction
      Category = 'Extravios'
      Caption = '&Novo'
      Hint = 'Novo registro'
      ImageIndex = 0
      OnExecute = actionNovoExecute
    end
    object actionEditar: TAction
      Category = 'Extravios'
      Caption = '&Editar'
      Enabled = False
      Hint = 'Editar registro'
      ImageIndex = 9
      OnExecute = actionEditarExecute
    end
    object actionEstornar: TAction
      Category = 'Extravios'
      Caption = 'Es&tornar'
      Enabled = False
      Hint = 'Estornar registro'
      ImageIndex = 4
      OnExecute = actionEstornarExecute
    end
    object actionCancelar: TAction
      Category = 'Extravios'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancelar pesquisa'
      ImageIndex = 2
      OnExecute = actionCancelarExecute
    end
    object actionFiltro: TAction
      Category = 'Extravios'
      Caption = 'Fi&ltro'
      Hint = 'Filtrar registros'
      ImageIndex = 11
      OnExecute = actionFiltroExecute
    end
    object actionFinalizar: TAction
      Category = 'Extravios'
      Caption = 'Finali&zar'
      Enabled = False
      Hint = 'Finalizar registro selecionado'
      ImageIndex = 18
      OnExecute = actionFinalizarExecute
    end
    object actionExportar: TAction
      Category = 'Extravios'
      Caption = 'E&xportar'
      Enabled = False
      Hint = 'Exportar dados da grade'
      ImageIndex = 10
      OnExecute = actionExportarExecute
    end
    object actionFechar: TAction
      Category = 'Extravios'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 3
      OnExecute = actionFecharExecute
    end
    object actionImprimirDeclaracao: TAction
      Category = 'Imprimir'
      Caption = '&Declara'#231#227'o'
      Hint = 'Imprimir declara'#231#227'o'
    end
    object actionImprimirRecibo: TAction
      Category = 'Imprimir'
      Caption = '&Recibo'
      Hint = 'Imprimir recibo'
    end
    object actionImprimir: TAction
      Category = 'Extravios'
      Caption = 'Im&primir'
      Enabled = False
      Hint = 'Imprimir documentos'
      ImageIndex = 15
      OnExecute = actionImprimirExecute
    end
    object actionPesquisar: TAction
      Category = 'Pesquisar'
      Caption = '&Localizar'
      Hint = 'Localizar registros'
      OnExecute = actionPesquisarExecute
    end
    object actionPainelGrupos: TAction
      Category = 'Pesquisar'
      Caption = 'Painel de Grupo'
      Hint = 'Exibir ou ocultar o painel de grupos'
      OnExecute = actionPainelGruposExecute
    end
    object actionFiltrar: TAction
      Category = 'Filtro'
      Caption = 'Aplicar'
      Enabled = False
      Hint = 'Aplicar filtro'
      ImageIndex = 1
      OnExecute = actionFiltrarExecute
    end
    object actionCancelarFiltro: TAction
      Category = 'Filtro'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar filtro'
      ImageIndex = 19
      OnExecute = actionCancelarFiltroExecute
    end
    object actionLimparFiltro: TAction
      Category = 'Filtro'
      Caption = 'Limpar'
      Enabled = False
      Hint = 'Limpar filtro'
      ImageIndex = 20
      OnExecute = actionLimparFiltroExecute
    end
    object actionImportar: TAction
      Category = 'Extravios'
      Caption = 'Importar'
      Hint = 'Importar Planilha'
      ImageIndex = 16
      OnExecute = actionImportarExecute
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
    Left = 576
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      0)
    object barManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Opera'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 886
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
          ItemName = 'dxBarLargeButton3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end>
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actionNovo
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actionEditar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionEstornar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actionCancelar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Imprimir'
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C65005072696E743BC83632EA0000
        009249444154785EEDD5510A80200CC761AF67D0A5C24375A0D063FC5BD09E5A
        E85668C484DFE3D8870F1A000CAD09E08094122CA9003420C600E56144B8A91D
        E0000738605E565801C7AC0610A94C817B1100EEDC112540A620018C49002E4B
        007404A01900E0512A408786021C108E3E7D03B932A0A906281260A24A07C046
        4DD6CFA8F6F0FCF73BF61B180F50A6020CCD013BC1EEFE5A3EDD3C1A00000000
        49454E44AE426082}
      LargeImageIndex = 15
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Action = actionImprimirDeclaracao
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = actionImprimirRecibo
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionImprimir
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actionFiltro
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actionFinalizar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actionExportar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Action = actionFechar
      Align = iaRight
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Action = actionImportar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Action = actionFiltrar
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Action = actionCancelarFiltro
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Action = actionLimparFiltro
      Category = 0
      AutoGrayScale = False
    end
  end
  object memTableExtravios: TFDMemTable
    AfterOpen = memTableExtraviosAfterOpen
    AfterClose = memTableExtraviosAfterClose
    AfterScroll = memTableExtraviosAfterScroll
    FieldDefs = <>
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
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 632
    object memTableExtraviosCOD_EXTRAVIO: TIntegerField
      DisplayLabel = 'N'#186'.'
      FieldName = 'COD_EXTRAVIO'
      Required = True
    end
    object memTableExtraviosCOD_AGENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Agente'
      FieldName = 'COD_AGENTE'
    end
    object memTableExtraviosNOM_AGENTE: TStringField
      DisplayLabel = 'Nome Agente'
      FieldName = 'NOM_AGENTE'
      Size = 80
    end
    object memTableExtraviosCOD_ENTREGADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Entregador'
      FieldName = 'COD_ENTREGADOR'
    end
    object memTableExtraviosCOD_CADASTRO: TIntegerField
      DisplayLabel = 'C'#243'd. Cadastro'
      FieldName = 'COD_CADASTRO'
    end
    object memTableExtraviosNOM_ENTREGADOR: TStringField
      DisplayLabel = 'Nome Entregador'
      FieldName = 'NOM_ENTREGADOR'
      Size = 70
    end
    object memTableExtraviosNUM_CNPJ: TStringField
      DisplayLabel = 'CPF / CNPJ'
      FieldName = 'NUM_CNPJ'
    end
    object memTableExtraviosDES_RAZAO_SOCIAL: TStringField
      DisplayLabel = 'Nome Cadastro'
      FieldName = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableExtraviosDAT_EXTRAVIO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DAT_EXTRAVIO'
    end
    object memTableExtraviosDES_EXTRAVIO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DES_EXTRAVIO'
      Size = 150
    end
    object memTableExtraviosNUM_NOSSONUMERO: TStringField
      DisplayLabel = 'N'#186'. Remessa'
      FieldName = 'NUM_NOSSONUMERO'
    end
    object memTableExtraviosVAL_PRODUTO: TFloatField
      DisplayLabel = 'Valor Produto'
      FieldName = 'VAL_PRODUTO'
    end
    object memTableExtraviosVAL_MULTA: TFloatField
      DisplayLabel = 'Valor Multa'
      FieldName = 'VAL_MULTA'
    end
    object memTableExtraviosVAL_VERBA: TFloatField
      DisplayLabel = 'Verba Entregador'
      FieldName = 'VAL_VERBA'
    end
    object memTableExtraviosVAL_TOTAL: TFloatField
      DisplayLabel = 'Valor Extravio'
      FieldName = 'VAL_TOTAL'
    end
    object memTableExtraviosDOM_RESTRICAO: TStringField
      DisplayLabel = 'Status'
      FieldName = 'DOM_RESTRICAO'
      Size = 9
    end
    object memTableExtraviosDES_OBSERVACOES: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'DES_OBSERVACOES'
      BlobType = ftMemo
    end
    object memTableExtraviosSEQ_ACAREACAO: TIntegerField
      DisplayLabel = 'N'#186'. Acarea'#231#227'o'
      FieldName = 'SEQ_ACAREACAO'
    end
    object memTableExtraviosNUM_EXTRATO: TStringField
      DisplayLabel = 'N'#186'. Extrato'
      FieldName = 'NUM_EXTRATO'
      Size = 30
    end
    object memTableExtravioscod_awb: TStringField
      DisplayLabel = 'AWB'
      FieldName = 'cod_awb'
      Size = 70
    end
    object memTableExtraviosdes_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'des_produto'
      Size = 256
    end
    object memTableExtravioscod_cliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cod_cliente'
    end
    object memTableExtraviosCOD_TIPO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'COD_TIPO'
    end
    object memTableExtraviosVAL_PERCENTUAL: TSingleField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'VAL_PERCENTUAL'
    end
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = memTableExtravios
    OnStateChange = dsExtraviosStateChange
    Left = 688
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    OnStateChange = dsExtraviosStateChange
    Left = 736
  end
  object frxDeclaracao: TfrxReport
    Version = '6.9.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43152.700742719900000000
    ReportOptions.LastChange = 44622.719092719900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 767
    Top = 112
    Datasets = <>
    Variables = <
      item
        Name = ' Declara'#231#227'o'
        Value = Null
      end
      item
        Name = 'vAgente'
        Value = Null
      end
      item
        Name = 'vEntregador'
        Value = Null
      end
      item
        Name = 'vNN'
        Value = Null
      end
      item
        Name = 'vValor'
        Value = Null
      end
      item
        Name = 'vMulta'
        Value = Null
      end
      item
        Name = 'vVerba'
        Value = Null
      end
      item
        Name = 'vData'
        Value = Null
      end
      item
        Name = 'vImpressao'
        Value = Null
      end
      item
        Name = 'vCPF'
        Value = Null
      end
      item
        Name = 'vFantasia'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPictureStretched = False
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Declara'#231#227'o de Multa e/ou Extravio de Produto')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 219.212740000000000000
        Width = 151.181200000000000000
        Height = 170.078850000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          'Agente: '
          'Entregador: '
          ''
          'Remessa N'#186'.: '
          ''
          'Valor do Produto: '
          'Valor da Multa: '
          'Valor da Verba:  ')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 442.205010000000000000
        Width = 559.370440000000000000
        Height = 294.803340000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haBlock
        LineSpacing = 40.000000000000000000
        Memo.UTF8W = (
          
            '                              Declaro para os devidos fins que a' +
            ' REMESSA acima com seu(s) respectivo(s) valor(es) '#233' de minha int' +
            'eira responsabilidade ficando a Empresa desde j'#225' autorizada a de' +
            'scontar da minha Presta'#231#227'o de Contas a que tempo lhe convir. ')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 75.590600000000000000
        Top = 680.315400000000000000
        Width = 559.370440000000000000
        Height = 249.448980000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        HAlign = haBlock
        Memo.UTF8W = (
          '[vData]'
          ''
          ''
          ''
          ''
          ''
          '____________________________________________'
          '[vEntregador]'
          '[vCPF]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 1028.032160000000000000
        Width = 714.331170000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vImpressao]')
        ParentFont = False
      end
      object vAgente: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 215.433210000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vAgente]')
        ParentFont = False
      end
      object vEntregador: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 238.110390000000000000
        Width = 400.630180000000000000
        Height = 41.574830000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vCPF] - [vEntregador]')
        ParentFont = False
      end
      object vNN: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 283.464750000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vNN]')
        ParentFont = False
      end
      object vValor: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 317.480520000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vValor]')
        ParentFont = False
      end
      object vMulta: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 343.937230000000000000
        Width = 400.630180000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vMulta]')
        ParentFont = False
      end
      object vVerba: TfrxMemoView
        AllowVectorExport = True
        Left = 249.448980000000000000
        Top = 366.614410000000000000
        Width = 400.630180000000000000
        Height = 22.677180000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[vVerba]')
        ParentFont = False
      end
    end
  end
end
