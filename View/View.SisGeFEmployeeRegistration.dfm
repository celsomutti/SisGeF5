object view_SisGeFEmployeeRegistration: Tview_SisGeFEmployeeRegistration
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
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
    ClientRectBottom = 394
    ClientRectLeft = 4
    ClientRectRight = 825
    ClientRectTop = 4
    object tabResultado: TcxTabSheet
      Caption = 'Resultado'
      ImageIndex = 0
      object gridEmployees: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 36
        Width = 815
        Height = 351
        Align = alClient
        TabOrder = 0
        object gridEmployeesDBTableView1: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = gridVeiculosDBTableView1NavigatorButtonsButtonClick
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
          OnCellDblClick = gridEmployeesDBTableView1CellDblClick
          DataController.DataSource = dsEmployees
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
          object gridEmployeesDBTableView1COD_CADASTRO: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'COD_CADASTRO'
            HeaderAlignmentHorz = taCenter
          end
          object gridEmployeesDBTableView1NUM_CNPJ: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'NUM_CNPJ'
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object gridEmployeesDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
            Caption = 'Nome Completo'
            DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
            HeaderAlignmentHorz = taCenter
            Width = 239
          end
          object gridEmployeesDBTableView1NOM_FANTASIA: TcxGridDBColumn
            Caption = 'Nome Curto'
            DataBinding.FieldName = 'NOM_FANTASIA'
            HeaderAlignmentHorz = taCenter
            Width = 160
          end
          object gridEmployeesDBTableView1NUM_IE: TcxGridDBColumn
            Caption = 'RG'
            DataBinding.FieldName = 'NUM_IE'
            HeaderAlignmentHorz = taCenter
          end
          object gridEmployeesDBTableView1NUM_IEST: TcxGridDBColumn
            Caption = 'PIS'
            DataBinding.FieldName = 'NUM_IEST'
            HeaderAlignmentHorz = taCenter
          end
          object gridEmployeesDBTableView1des_funcao: TcxGridDBColumn
            Caption = 'Fun'#231#227'o'
            DataBinding.FieldName = 'des_funcao'
            HeaderAlignmentHorz = taCenter
            Width = 229
          end
          object gridEmployeesDBTableView1NUM_CNH: TcxGridDBColumn
            Caption = 'N'#186'. CNH'
            DataBinding.FieldName = 'NUM_CNH'
            HeaderAlignmentHorz = taCenter
          end
          object gridEmployeesDBTableView1NUM_REGISTRO_CNH: TcxGridDBColumn
            Caption = 'Registro CNH'
            DataBinding.FieldName = 'NUM_REGISTRO_CNH'
            HeaderAlignmentHorz = taCenter
          end
          object gridEmployeesDBTableView1DES_STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'DES_STATUS'
            HeaderAlignmentHorz = taCenter
            Width = 58
          end
        end
        object gridEmployeesLevel1: TcxGridLevel
          GridView = gridEmployeesDBTableView1
        end
      end
      object panelPesquisa: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 815
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Caption = 'panelPesquisa'
        ShowCaption = False
        TabOrder = 1
        DesignSize = (
          815
          27)
        object cxLabel1: TcxLabel
          Left = 2
          Top = 5
          Caption = 'Pesquisar: '
          Transparent = True
        end
        object pesquisar: TcxTextEdit
          Left = 65
          Top = 3
          Hint = 'Par'#226'metro a pesquisasr'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          Width = 349
        end
        object cxButton1: TcxButton
          Left = 420
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
          Left = 507
          Top = 5
          Anchors = [akTop, akRight]
          Caption = 'Campos:'
          Transparent = True
        end
        object comboBoxCampos: TcxComboBox
          Left = 559
          Top = 4
          Anchors = [akTop, akRight]
          Properties.Items.Strings = (
            'Pesquisa Instant'#226'nea'
            'RG'
            'PIS'
            'N'#250'mero CNH'
            'Registro CNH')
          TabOrder = 4
          Text = 'Pesquisa Instant'#226'nea'
          Width = 151
        end
        object checkBoxGrupo: TcxCheckBox
          Left = 716
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
      object filtroVeiculos: TcxDBFilterControl
        Left = 0
        Top = 0
        Width = 821
        Height = 346
        Align = alClient
        DataSet = memTableEmployees
        Items = <
          item
            Caption = 'C'#243'digo'
            FieldName = 'cod_cadastro'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'CPF'
            FieldName = 'NUM_CNPJ'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Nome Completo'
            FieldName = 'DES_RAZAO_SOCIAL'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Nome Curto'
            FieldName = 'NOM_FANTASIA'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Fun'#231#227'o'
            FieldName = 'des_funcao'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'RG'
            FieldName = 'NUM_IE'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'PIS'
            FieldName = 'NUM_IEST'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'N'#186'. CNH'
            FieldName = 'NUM_CNPJ'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Registro CNH'
            FieldName = 'NUM_REGISTRO_CNH'
            PropertiesClassName = 'TcxTextEditProperties'
          end>
        TabOrder = 1
      end
    end
  end
  object actionListVeiculos: TActionList
    Images = Data_Sisgef.imageListOperation_32_32
    Left = 504
    object actionNovo: TAction
      Category = 'Veiculos'
      Caption = '&Novo'
      Hint = 'Novo registro'
      ImageIndex = 0
      OnExecute = actionNovoExecute
    end
    object actionEditar: TAction
      Category = 'Veiculos'
      Caption = '&Editar'
      Enabled = False
      Hint = 'Editar registro'
      ImageIndex = 9
      OnExecute = actionEditarExecute
    end
    object actionCancelar: TAction
      Category = 'Pesquisar'
      Caption = '&Cancelar'
      Enabled = False
      Hint = 'Cancelar pesquisa'
      ImageIndex = 2
      OnExecute = actionCancelarExecute
    end
    object actionFiltro: TAction
      Category = 'Filtro'
      Caption = '&Filtro'
      Hint = 'Filtrar registros'
      ImageIndex = 11
      OnExecute = actionFiltroExecute
    end
    object actionExportar: TAction
      Category = 'Veiculos'
      Caption = 'E&xportar'
      Enabled = False
      Hint = 'Exportar dados da grade'
      ImageIndex = 10
      OnExecute = actionExportarExecute
    end
    object actionFechar: TAction
      Category = 'Veiculos'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 3
      OnExecute = actionFecharExecute
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
      Hint = 'Aplicar filtro'
      ImageIndex = 1
      Visible = False
      OnExecute = actionFiltrarExecute
    end
    object actionCancelarFiltro: TAction
      Category = 'Filtro'
      Caption = 'Cancelar'
      Hint = 'Cancelar filtro'
      ImageIndex = 19
      Visible = False
      OnExecute = actionCancelarFiltroExecute
    end
    object actionLimparFiltro: TAction
      Category = 'Filtro'
      Caption = 'Limpar'
      Hint = 'Limpar filtro'
      ImageIndex = 20
      Visible = False
      OnExecute = actionLimparFiltroExecute
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
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
      Caption = 'Es&tornar'
      Category = 0
      Enabled = False
      Hint = 'Estornar registro'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 4
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
      Caption = '&Declara'#231#227'o'
      Category = 0
      Hint = 'Imprimir declara'#231#227'o'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = '&Recibo'
      Category = 0
      Hint = 'Imprimir recibo'
      Visible = ivAlways
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
      Caption = 'Im&primir'
      Category = 0
      Enabled = False
      Hint = 'Imprimir documentos'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 15
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actionFiltro
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'Finali&zar'
      Category = 0
      Enabled = False
      Hint = 'Finalizar registro selecionado'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 18
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
      Caption = 'Importar'
      Category = 0
      Hint = 'Importar Planilha'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 16
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
  object dsEmployees: TDataSource
    AutoEdit = False
    DataSet = memTableEmployees
    OnStateChange = dsEmployeesStateChange
    Left = 688
  end
  object memTableEmployees: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'COD_CADASTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DOM_FUNCIONARIO'
        DataType = ftString
        Size = 1
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
        Name = 'NOM_FANTASIA'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUM_IE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_IEST'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'des_funcao'
        DataType = ftString
        Size = 132
      end
      item
        Name = 'NUM_CNH'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NUM_REGISTRO_CNH'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DES_STATUS'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 7
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
    Left = 743
    Top = 5
    Content = {
      414442530F005D67D4050000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C006500310005000A0000005400610062006C0065
      00060000000000070000080032000000090000FF0AFF0B04001800000043004F
      0044005F0043004100440041005300540052004F0005001800000043004F0044
      005F0043004100440041005300540052004F000C00010000000E000D000F0001
      10000111000112000113001800000043004F0044005F00430041004400410053
      00540052004F00FEFF0B04001E00000044004F004D005F00460055004E004300
      49004F004E004100520049004F0005001E00000044004F004D005F0046005500
      4E00430049004F004E004100520049004F000C00020000000E00140015000100
      00000F000116000110000117000111000112000113001E00000044004F004D00
      5F00460055004E00430049004F004E004100520049004F00180001000000FEFF
      0B0400100000004E0055004D005F0043004E0050004A000500100000004E0055
      004D005F0043004E0050004A000C00030000000E0014001500140000000F0001
      1600011000011700011100011200011300100000004E0055004D005F0043004E
      0050004A00180014000000FEFF0B0400200000004400450053005F0052004100
      5A0041004F005F0053004F004300490041004C00050020000000440045005300
      5F00520041005A0041004F005F0053004F004300490041004C000C0004000000
      0E0014001500460000000F000116000110000117000111000112000113002000
      00004400450053005F00520041005A0041004F005F0053004F00430049004100
      4C00180046000000FEFF0B0400180000004E004F004D005F00460041004E0054
      0041005300490041000500180000004E004F004D005F00460041004E00540041
      005300490041000C00050000000E0014001500500000000F0001160001100001
      1700011100011200011300180000004E004F004D005F00460041004E00540041
      00530049004100180050000000FEFF0B04000C0000004E0055004D005F004900
      450005000C0000004E0055004D005F00490045000C00060000000E0014001500
      140000000F000116000110000117000111000112000113000C0000004E005500
      4D005F0049004500180014000000FEFF0B0400100000004E0055004D005F0049
      004500530054000500100000004E0055004D005F0049004500530054000C0007
      0000000E0014001500140000000F000116000110000117000111000112000113
      00100000004E0055004D005F004900450053005400180014000000FEFF0B0400
      140000006400650073005F00660075006E00630061006F000500140000006400
      650073005F00660075006E00630061006F000C00080000000E00140015008400
      00000F0001160001100001170001110001120001130014000000640065007300
      5F00660075006E00630061006F00180084000000FEFF0B04000E0000004E0055
      004D005F0043004E00480005000E0000004E0055004D005F0043004E0048000C
      00090000000E00140015000F0000000F00011600011000011700011100011200
      0113000E0000004E0055004D005F0043004E00480018000F000000FEFF0B0400
      200000004E0055004D005F0052004500470049005300540052004F005F004300
      4E0048000500200000004E0055004D005F005200450047004900530054005200
      4F005F0043004E0048000C000A0000000E00140015000F0000000F0001160001
      1000011700011100011200011300200000004E0055004D005F00520045004700
      49005300540052004F005F0043004E00480018000F000000FEFF0B0400140000
      004400450053005F005300540041005400550053000500140000004400450053
      005F005300540041005400550053000C000B0000000E0014001500070000000F
      00011600011900011000011700011A0001110001120001130014000000440045
      0053005F00530054004100540055005300180007000000FEFEFF1BFEFF1CFEFF
      1DFEFEFEFF1EFEFF1F2000F3000000FF21FEFEFE0E004D0061006E0061006700
      650072001E005500700064006100740065007300520065006700690073007400
      7200790012005400610062006C0065004C006900730074000A00540061006200
      6C00650008004E0061006D006500140053006F0075007200630065004E006100
      6D0065000A0054006100620049004400240045006E0066006F00720063006500
      43006F006E00730074007200610069006E00740073001E004D0069006E006900
      6D0075006D004300610070006100630069007400790018004300680065006300
      6B004E006F0074004E0075006C006C00140043006F006C0075006D006E004C00
      6900730074000C0043006F006C0075006D006E00100053006F00750072006300
      6500490044000E006400740049006E0074003300320010004400610074006100
      54007900700065001400530065006100720063006800610062006C0065000800
      420061007300650012004F0049006E0055007000640061007400650010004F00
      49006E00570068006500720065001A004F0072006900670069006E0043006F00
      6C004E0061006D00650018006400740041006E00730069005300740072006900
      6E0067000800530069007A006500120041006C006C006F0077004E0075006C00
      6C0014004F0041006C006C006F0077004E0075006C006C00140053006F007500
      720063006500530069007A006500100052006500610064004F006E006C007900
      12004F0052006500610064004F006E006C0079001C0043006F006E0073007400
      7200610069006E0074004C00690073007400100056006900650077004C006900
      730074000E0052006F0077004C006900730074001800520065006C0061007400
      69006F006E004C006900730074001C0055007000640061007400650073004A00
      6F00750072006E0061006C001200530061007600650050006F0069006E007400
      0E004300680061006E00670065007300}
    object memTableEmployeesCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
      Required = True
    end
    object memTableEmployeesDOM_FUNCIONARIO: TStringField
      FieldName = 'DOM_FUNCIONARIO'
      Size = 1
    end
    object memTableEmployeesNUM_CNPJ: TStringField
      FieldName = 'NUM_CNPJ'
    end
    object memTableEmployeesDES_RAZAO_SOCIAL: TStringField
      FieldName = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableEmployeesNOM_FANTASIA: TStringField
      FieldName = 'NOM_FANTASIA'
      Size = 80
    end
    object memTableEmployeesNUM_IE: TStringField
      FieldName = 'NUM_IE'
    end
    object memTableEmployeesNUM_IEST: TStringField
      FieldName = 'NUM_IEST'
    end
    object memTableEmployeesdes_funcao: TStringField
      FieldName = 'des_funcao'
      Size = 132
    end
    object memTableEmployeesNUM_CNH: TStringField
      FieldName = 'NUM_CNH'
      Size = 15
    end
    object memTableEmployeesNUM_REGISTRO_CNH: TStringField
      FieldName = 'NUM_REGISTRO_CNH'
      Size = 15
    end
    object memTableEmployeesDES_STATUS: TStringField
      FieldName = 'DES_STATUS'
      ReadOnly = True
      Size = 7
    end
  end
end
