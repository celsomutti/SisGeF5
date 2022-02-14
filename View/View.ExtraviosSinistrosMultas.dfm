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
    TabOrder = 3
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
    object cxComboBox1: TcxComboBox
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
      Caption = 'Painel de Grupos'
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
    ExplicitLeft = -2
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
          Column = gridExtraviosDBTableView1VAL_VERBA
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_TOTAL
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_PRODUTO
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_MULTA
        end
        item
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_VERBA
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_TOTAL
        end
        item
          Format = ',0.00;- ,0.00'
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_PRODUTO
        end
        item
          Kind = skSum
          Column = gridExtraviosDBTableView1VAL_MULTA
          Sorted = True
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsCustomize.ColumnsQuickCustomization = True
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
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DAT_EXTRAVIO: TcxGridDBColumn
        DataBinding.FieldName = 'DAT_EXTRAVIO'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1NUM_NOSSONUMERO: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_NOSSONUMERO'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1DES_EXTRAVIO: TcxGridDBColumn
        DataBinding.FieldName = 'DES_EXTRAVIO'
        HeaderAlignmentHorz = taCenter
        Width = 189
      end
      object gridExtraviosDBTableView1DOM_RESTRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'DOM_RESTRICAO'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1COD_TIPO: TcxGridDBColumn
        DataBinding.FieldName = 'COD_TIPO'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1VAL_PERCENTUAL_PAGO: TcxGridDBColumn
        DataBinding.FieldName = 'VAL_PERCENTUAL_PAGO'
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1des_produto: TcxGridDBColumn
        DataBinding.FieldName = 'des_produto'
        HeaderAlignmentHorz = taCenter
        Width = 288
      end
      object gridExtraviosDBTableView1cod_awb: TcxGridDBColumn
        DataBinding.FieldName = 'cod_awb'
        HeaderAlignmentHorz = taCenter
        Width = 163
      end
      object gridExtraviosDBTableView1COD_AGENTE: TcxGridDBColumn
        DataBinding.FieldName = 'COD_AGENTE'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object gridExtraviosDBTableView1NOM_AGENTE: TcxGridDBColumn
        DataBinding.FieldName = 'NOM_AGENTE'
        HeaderAlignmentHorz = taCenter
        Width = 273
      end
      object gridExtraviosDBTableView1COD_ENTREGADOR: TcxGridDBColumn
        DataBinding.FieldName = 'COD_ENTREGADOR'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object gridExtraviosDBTableView1NOM_ENTREGADOR: TcxGridDBColumn
        DataBinding.FieldName = 'NOM_ENTREGADOR'
        HeaderAlignmentHorz = taCenter
        Width = 270
      end
      object gridExtraviosDBTableView1COD_CADASTRO: TcxGridDBColumn
        DataBinding.FieldName = 'COD_CADASTRO'
        HeaderAlignmentHorz = taCenter
        Width = 88
      end
      object gridExtraviosDBTableView1NUM_CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_CNPJ'
        HeaderAlignmentHorz = taCenter
        Width = 148
      end
      object gridExtraviosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
        DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
        HeaderAlignmentHorz = taCenter
        Width = 288
      end
      object gridExtraviosDBTableView1VAL_PRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'VAL_PRODUTO'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1VAL_MULTA: TcxGridDBColumn
        DataBinding.FieldName = 'VAL_MULTA'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1VAL_VERBA: TcxGridDBColumn
        DataBinding.FieldName = 'VAL_VERBA'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1VAL_TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'VAL_TOTAL'
        HeaderAlignmentHorz = taCenter
        Width = 86
      end
      object gridExtraviosDBTableView1DES_OBSERVACOES: TcxGridDBColumn
        DataBinding.FieldName = 'DES_OBSERVACOES'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object gridExtraviosDBTableView1SEQ_ACAREACAO: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ_ACAREACAO'
        HeaderAlignmentHorz = taCenter
        Width = 88
      end
      object gridExtraviosDBTableView1NUM_EXTRATO: TcxGridDBColumn
        DataBinding.FieldName = 'NUM_EXTRATO'
        HeaderAlignmentHorz = taCenter
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
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 632
    object memTableExtraviosCOD_EXTRAVIO: TIntegerField
      DisplayLabel = 'ID'
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
      DisplayLabel = 'Valor Verba'
      FieldName = 'VAL_VERBA'
    end
    object memTableExtraviosVAL_TOTAL: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'VAL_TOTAL'
    end
    object memTableExtraviosDOM_RESTRICAO: TStringField
      DisplayLabel = 'Status'
      FieldName = 'DOM_RESTRICAO'
      ReadOnly = True
      Size = 9
    end
    object memTableExtraviosCOD_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'COD_TIPO'
      ReadOnly = True
      Size = 8
    end
    object memTableExtraviosDES_OBSERVACOES: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'DES_OBSERVACOES'
      BlobType = ftMemo
    end
    object memTableExtraviosVAL_PERCENTUAL_PAGO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'VAL_PERCENTUAL_PAGO'
      ReadOnly = True
      Size = 12
    end
    object memTableExtraviosSEQ_ACAREACAO: TIntegerField
      DisplayLabel = 'N'#186'. Acarea'#231#227'o'
      FieldName = 'SEQ_ACAREACAO'
    end
    object memTableExtraviosNUM_EXTRATO: TStringField
      DisplayLabel = 'N'#250'mero Extrato'
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
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = memTableExtravios
    Left = 688
  end
end
