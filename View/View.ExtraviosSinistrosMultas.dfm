object view_ExtraviosSinistrosMultas: Tview_ExtraviosSinistrosMultas
  Left = 0
  Top = 0
  Caption = 'Extravios, Sinistros e Multas'
  ClientHeight = 458
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object panelPesquisa: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 57
    Width = 829
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    Caption = 'panelPesquisa'
    ShowCaption = False
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 8
      Top = 4
      Caption = 'Pesquisar: '
    end
    object pesquisar: TcxTextEdit
      Left = 65
      Top = 3
      Hint = 'Par'#226'metro a pesquisasr'
      TabOrder = 1
      Width = 365
    end
    object cxButton1: TcxButton
      Left = 436
      Top = 1
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actionPesquisar
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
      Left = 523
      Top = 4
      Caption = 'Campos:'
    end
    object comboBoxCampos: TcxComboBox
      Left = 575
      Top = 3
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
      Left = 725
      Top = 3
      Action = actionPainelGrupos
      TabOrder = 5
    end
  end
  object gridExtravios: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 90
    Width = 829
    Height = 365
    Align = alClient
    TabOrder = 5
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
      DataController.DataSource = dsExtravios
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
        end
        item
          Kind = skSum
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
        Caption = 'N'#186'.'
        DataBinding.FieldName = 'COD_EXTRAVIO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'COD_TIPO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DES_EXTRAVIO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 288
      end
      object gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DAT_EXTRAVIO'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn
        Caption = 'N'#186' Remessa'
        DataBinding.FieldName = 'NUM_NOSSONUMERO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'DOM_RESTRICAO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'VAL_PERCENTUAL_PAGO'
        PropertiesClassName = 'TcxTextEditProperties'
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
      object gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'VAL_TOTAL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ' ,0.00;- ,0.00'
        HeaderAlignmentHorz = taCenter
        Width = 77
      end
      object gridExtraviosDBTableView1cod_awb: TcxGridDBColumn
        Caption = 'AWB'
        DataBinding.FieldName = 'cod_awb'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 138
      end
      object gridExtraviosDBTableView1des_produto: TcxGridDBColumn
        Caption = 'Produto'
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
        Caption = 'C'#243'd. Agente'
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
        Caption = 'C'#243'd. Entregador'
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
        Caption = 'C'#243'd. Cadastro'
        DataBinding.FieldName = 'COD_CADASTRO'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
      object gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn
        Caption = 'CPF / CNPJ'
        DataBinding.FieldName = 'NUM_CNPJ'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
        Caption = 'Nome Cadastro'
        DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn
        Caption = 'Observa'#231#245'es'
        DataBinding.FieldName = 'DES_OBSERVACOES'
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
    end
    object gridExtraviosLevel1: TcxGridLevel
      GridView = gridExtraviosDBTableView1
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
    end
    object actionEditar: TAction
      Category = 'Extravios'
      Caption = '&Editar'
      Enabled = False
      Hint = 'Editar registro'
      ImageIndex = 9
    end
    object actionEstornar: TAction
      Category = 'Extravios'
      Caption = 'Es&tornar'
      Enabled = False
      Hint = 'Estornar registro'
      ImageIndex = 4
    end
    object actionCancelar: TAction
      Category = 'Extravios'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancelar pesquisa'
      ImageIndex = 2
    end
    object actionFiltro: TAction
      Category = 'Extravios'
      Caption = 'Fi&ltro'
      Hint = 'Filtrar registros'
      ImageIndex = 11
    end
    object actionFinalizar: TAction
      Category = 'Extravios'
      Caption = 'Finali&zar'
      Enabled = False
      Hint = 'Finalizar registro selecionado'
      ImageIndex = 1
    end
    object actionExportar: TAction
      Category = 'Extravios'
      Caption = 'E&xportar'
      Enabled = False
      Hint = 'Exportar dados da grade'
      ImageIndex = 10
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
    end
    object actionPesquisar: TAction
      Category = 'Pesquisar'
      Caption = '&Pesquisar'
      Hint = 'Pesquisar registros'
      OnExecute = actionPesquisarExecute
    end
    object actionPainelGrupos: TAction
      Category = 'Pesquisar'
      Caption = 'Painel de Grupo'
      Hint = 'Exibir ou ocultar o painel de grupos'
      OnExecute = actionPainelGruposExecute
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
  end
  object memTableExtravios: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'COD_EXTRAVIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_AGENTE'
        DataType = ftInteger
      end
      item
        Name = 'NOM_AGENTE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'COD_ENTREGADOR'
        DataType = ftInteger
      end
      item
        Name = 'COD_CADASTRO'
        DataType = ftInteger
      end
      item
        Name = 'NOM_ENTREGADOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NUM_CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DES_RAZAO_SOCIAL'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'DAT_EXTRAVIO'
        DataType = ftDate
      end
      item
        Name = 'DES_EXTRAVIO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'NUM_NOSSONUMERO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VAL_PRODUTO'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'VAL_MULTA'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'VAL_VERBA'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'VAL_TOTAL'
        DataType = ftFloat
        Precision = 22
      end
      item
        Name = 'DOM_RESTRICAO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'COD_TIPO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DES_OBSERVACOES'
        DataType = ftMemo
      end
      item
        Name = 'VAL_PERCENTUAL_PAGO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'SEQ_ACAREACAO'
        DataType = ftInteger
      end
      item
        Name = 'NUM_EXTRATO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'cod_awb'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'des_produto'
        DataType = ftString
        Size = 256
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
    Left = 632
    Content = {
      414442530F006C33070C0000FF00010001FF02FF030400220000006D0065006D
      005400610062006C00650045007800740072006100760069006F00730005000A
      0000005400610062006C006500060000000000070000080032000000090000FF
      0AFF0B04001800000043004F0044005F0045005800540052004100560049004F
      0005001800000043004F0044005F0045005800540052004100560049004F000C
      00010000000E000D000F000110000111000112000113001800000043004F0044
      005F0045005800540052004100560049004F00FEFF0B04001400000043004F00
      44005F004100470045004E005400450005001400000043004F0044005F004100
      470045004E00540045000C00020000000E000D000F0001140001100001150001
      11000112000113001400000043004F0044005F004100470045004E0054004500
      FEFF0B0400140000004E004F004D005F004100470045004E0054004500050014
      0000004E004F004D005F004100470045004E00540045000C00030000000E0016
      001700500000000F00011400011000011500011100011200011300140000004E
      004F004D005F004100470045004E0054004500180050000000FEFF0B04001C00
      000043004F0044005F0045004E005400520045004700410044004F0052000500
      1C00000043004F0044005F0045004E005400520045004700410044004F005200
      0C00040000000E000D000F000114000110000115000111000112000113001C00
      000043004F0044005F0045004E005400520045004700410044004F005200FEFF
      0B04001800000043004F0044005F0043004100440041005300540052004F0005
      001800000043004F0044005F0043004100440041005300540052004F000C0005
      0000000E000D000F000114000110000115000111000112000113001800000043
      004F0044005F0043004100440041005300540052004F00FEFF0B04001C000000
      4E004F004D005F0045004E005400520045004700410044004F00520005001C00
      00004E004F004D005F0045004E005400520045004700410044004F0052000C00
      060000000E0016001700460000000F0001140001100001150001110001120001
      13001C0000004E004F004D005F0045004E005400520045004700410044004F00
      5200180046000000FEFF0B0400100000004E0055004D005F0043004E0050004A
      000500100000004E0055004D005F0043004E0050004A000C00070000000E0016
      001700140000000F00011400011000011500011100011200011300100000004E
      0055004D005F0043004E0050004A00180014000000FEFF0B0400200000004400
      450053005F00520041005A0041004F005F0053004F004300490041004C000500
      200000004400450053005F00520041005A0041004F005F0053004F0043004900
      41004C000C00080000000E0016001700460000000F0001140001100001150001
      1100011200011300200000004400450053005F00520041005A0041004F005F00
      53004F004300490041004C00180046000000FEFF0B0400180000004400410054
      005F0045005800540052004100560049004F000500180000004400410054005F
      0045005800540052004100560049004F000C00090000000E0019000F00011400
      011000011500011100011200011300180000004400410054005F004500580054
      0052004100560049004F00FEFF0B0400180000004400450053005F0045005800
      540052004100560049004F000500180000004400450053005F00450058005400
      52004100560049004F000C000A0000000E0016001700960000000F0001140001
      1000011500011100011200011300180000004400450053005F00450058005400
      52004100560049004F00180096000000FEFF0B04001E0000004E0055004D005F
      004E004F00530053004F004E0055004D00450052004F0005001E0000004E0055
      004D005F004E004F00530053004F004E0055004D00450052004F000C000B0000
      000E0016001700140000000F000114000110000115000111000112000113001E
      0000004E0055004D005F004E004F00530053004F004E0055004D00450052004F
      00180014000000FEFF0B040016000000560041004C005F00500052004F004400
      550054004F00050016000000560041004C005F00500052004F00440055005400
      4F000C000C0000000E001A001B00160000000F00011400011000011500011100
      01120001130016000000560041004C005F00500052004F004400550054004F00
      1C0016000000FEFF0B040012000000560041004C005F004D0055004C00540041
      00050012000000560041004C005F004D0055004C00540041000C000D0000000E
      001A001B00160000000F00011400011000011500011100011200011300120000
      00560041004C005F004D0055004C00540041001C0016000000FEFF0B04001200
      0000560041004C005F0056004500520042004100050012000000560041004C00
      5F00560045005200420041000C000E0000000E001A001B00160000000F000114
      0001100001150001110001120001130012000000560041004C005F0056004500
      5200420041001C0016000000FEFF0B040012000000560041004C005F0054004F
      00540041004C00050012000000560041004C005F0054004F00540041004C000C
      000F0000000E001A001B00160000000F00011400011000011500011100011200
      01130012000000560041004C005F0054004F00540041004C001C0016000000FE
      FF0B04001A00000044004F004D005F0052004500530054005200490043004100
      4F0005001A00000044004F004D005F0052004500530054005200490043004100
      4F000C00100000000E0016001700090000000F00011400011D00011000011500
      011E000111000112000113001A00000044004F004D005F005200450053005400
      52004900430041004F00180009000000FEFF0B04001000000043004F0044005F
      005400490050004F0005001000000043004F0044005F005400490050004F000C
      00110000000E0016001700080000000F00011400011D00011000011500011E00
      0111000112000113001000000043004F0044005F005400490050004F00180008
      000000FEFF0B04001E0000004400450053005F004F0042005300450052005600
      410043004F004500530005001E0000004400450053005F004F00420053004500
      52005600410043004F00450053000C00120000000E001F000F00011400012000
      0110000115000111000112000113001E0000004400450053005F004F00420053
      00450052005600410043004F0045005300FEFF0B040026000000560041004C00
      5F00500045005200430045004E005400550041004C005F005000410047004F00
      050026000000560041004C005F00500045005200430045004E00540055004100
      4C005F005000410047004F000C00130000000E00160017000C0000000F000114
      00011D00011000011500011E0001110001120001130026000000560041004C00
      5F00500045005200430045004E005400550041004C005F005000410047004F00
      18000C000000FEFF0B04001A0000005300450051005F00410043004100520045
      004100430041004F0005001A0000005300450051005F00410043004100520045
      004100430041004F000C00140000000E000D000F000114000110000115000111
      000112000113001A0000005300450051005F0041004300410052004500410043
      0041004F00FEFF0B0400160000004E0055004D005F0045005800540052004100
      54004F000500160000004E0055004D005F004500580054005200410054004F00
      0C00150000000E00160017001E0000000F000114000110000115000111000112
      00011300160000004E0055004D005F004500580054005200410054004F001800
      1E000000FEFF0B04000E00000063006F0064005F0061007700620005000E0000
      0063006F0064005F006100770062000C00160000000E0016001700460000000F
      000114000110000115000111000112000113000E00000063006F0064005F0061
      0077006200180046000000FEFF0B0400160000006400650073005F0070007200
      6F006400750074006F000500160000006400650073005F00700072006F006400
      750074006F000C00170000000E0016001700000100000F000114000110000115
      00011100011200011300160000006400650073005F00700072006F0064007500
      74006F00180000010000FEFEFF21FEFF22FEFF23FEFEFEFF24FEFF2526005E21
      0000FF27FEFEFE0E004D0061006E0061006700650072001E0055007000640061
      007400650073005200650067006900730074007200790012005400610062006C
      0065004C006900730074000A005400610062006C00650008004E0061006D0065
      00140053006F0075007200630065004E0061006D0065000A0054006100620049
      004400240045006E0066006F0072006300650043006F006E0073007400720061
      0069006E00740073001E004D0069006E0069006D0075006D0043006100700061
      006300690074007900180043006800650063006B004E006F0074004E0075006C
      006C00140043006F006C0075006D006E004C006900730074000C0043006F006C
      0075006D006E00100053006F007500720063006500490044000E006400740049
      006E007400330032001000440061007400610054007900700065001400530065
      006100720063006800610062006C0065000800420061007300650012004F0049
      006E0055007000640061007400650010004F0049006E00570068006500720065
      001A004F0072006900670069006E0043006F006C004E0061006D006500120041
      006C006C006F0077004E0075006C006C0014004F0041006C006C006F0077004E
      0075006C006C0018006400740041006E007300690053007400720069006E0067
      000800530069007A006500140053006F007500720063006500530069007A0065
      000C0064007400440061007400650010006400740044006F00750062006C0065
      00120050007200650063006900730069006F006E001E0053006F007500720063
      00650050007200650063006900730069006F006E00100052006500610064004F
      006E006C00790012004F0052006500610064004F006E006C0079000C00640074
      004D0065006D006F00100042006C006F00620044006100740061001C0043006F
      006E00730074007200610069006E0074004C0069007300740010005600690065
      0077004C006900730074000E0052006F0077004C006900730074001800520065
      006C006100740069006F006E004C006900730074001C00550070006400610074
      00650073004A006F00750072006E0061006C001200530061007600650050006F
      0069006E0074000E004300680061006E00670065007300}
    object memTableExtraviosCOD_EXTRAVIO: TIntegerField
      FieldName = 'COD_EXTRAVIO'
      Required = True
    end
    object memTableExtraviosCOD_AGENTE: TIntegerField
      FieldName = 'COD_AGENTE'
    end
    object memTableExtraviosNOM_AGENTE: TStringField
      FieldName = 'NOM_AGENTE'
      Size = 80
    end
    object memTableExtraviosCOD_ENTREGADOR: TIntegerField
      FieldName = 'COD_ENTREGADOR'
    end
    object memTableExtraviosCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
    end
    object memTableExtraviosNOM_ENTREGADOR: TStringField
      FieldName = 'NOM_ENTREGADOR'
      Size = 70
    end
    object memTableExtraviosNUM_CNPJ: TStringField
      FieldName = 'NUM_CNPJ'
    end
    object memTableExtraviosDES_RAZAO_SOCIAL: TStringField
      FieldName = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableExtraviosDAT_EXTRAVIO: TDateField
      FieldName = 'DAT_EXTRAVIO'
    end
    object memTableExtraviosDES_EXTRAVIO: TStringField
      FieldName = 'DES_EXTRAVIO'
      Size = 150
    end
    object memTableExtraviosNUM_NOSSONUMERO: TStringField
      FieldName = 'NUM_NOSSONUMERO'
    end
    object memTableExtraviosVAL_PRODUTO: TFloatField
      FieldName = 'VAL_PRODUTO'
    end
    object memTableExtraviosVAL_MULTA: TFloatField
      FieldName = 'VAL_MULTA'
    end
    object memTableExtraviosVAL_VERBA: TFloatField
      FieldName = 'VAL_VERBA'
    end
    object memTableExtraviosVAL_TOTAL: TFloatField
      FieldName = 'VAL_TOTAL'
    end
    object memTableExtraviosDOM_RESTRICAO: TStringField
      FieldName = 'DOM_RESTRICAO'
      ReadOnly = True
      Size = 9
    end
    object memTableExtraviosCOD_TIPO: TStringField
      FieldName = 'COD_TIPO'
      ReadOnly = True
      Size = 8
    end
    object memTableExtraviosDES_OBSERVACOES: TMemoField
      FieldName = 'DES_OBSERVACOES'
      BlobType = ftMemo
    end
    object memTableExtraviosVAL_PERCENTUAL_PAGO: TStringField
      FieldName = 'VAL_PERCENTUAL_PAGO'
      ReadOnly = True
      Size = 12
    end
    object memTableExtraviosSEQ_ACAREACAO: TIntegerField
      FieldName = 'SEQ_ACAREACAO'
    end
    object memTableExtraviosNUM_EXTRATO: TStringField
      FieldName = 'NUM_EXTRATO'
      Size = 30
    end
    object memTableExtravioscod_awb: TStringField
      FieldName = 'cod_awb'
      Size = 70
    end
    object memTableExtraviosdes_produto: TStringField
      FieldName = 'des_produto'
      Size = 256
    end
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = memTableExtravios
    Left = 688
  end
end
