object view_SisGeFVehicleRegistration: Tview_SisGeFVehicleRegistration
  Left = 0
  Top = 0
  Caption = 'Cadastro de Ve'#237'culos'
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
      object gridVeiculos: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 36
        Width = 815
        Height = 351
        Align = alClient
        TabOrder = 0
        object gridVeiculosDBTableView1: TcxGridDBTableView
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
          OnCellDblClick = gridVeiculosDBTableView1CellDblClick
          DataController.DataSource = dsVeiculos
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
          object gridVeiculosDBTableView1COD_VEICULO: TcxGridDBColumn
            DataBinding.FieldName = 'COD_VEICULO'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1NUM_CNPJ: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_CNPJ'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1NOM_PROPRIETARIO: TcxGridDBColumn
            DataBinding.FieldName = 'NOM_PROPRIETARIO'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1NUM_RG: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_RG'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1COD_ENTREGADOR: TcxGridDBColumn
            DataBinding.FieldName = 'COD_ENTREGADOR'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1DES_MARCA: TcxGridDBColumn
            DataBinding.FieldName = 'DES_MARCA'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1DES_MODELO: TcxGridDBColumn
            DataBinding.FieldName = 'DES_MODELO'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1DES_PLACA: TcxGridDBColumn
            DataBinding.FieldName = 'DES_PLACA'
            HeaderAlignmentHorz = taCenter
            Width = 59
          end
          object gridVeiculosDBTableView1DES_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'DES_TIPO'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1NUM_CHASSIS: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_CHASSIS'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1DES_ANO: TcxGridDBColumn
            DataBinding.FieldName = 'DES_ANO'
            HeaderAlignmentHorz = taCenter
            Width = 42
          end
          object gridVeiculosDBTableView1DES_COR: TcxGridDBColumn
            DataBinding.FieldName = 'DES_COR'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1NUM_RENAVAN: TcxGridDBColumn
            DataBinding.FieldName = 'NUM_RENAVAN'
            HeaderAlignmentHorz = taCenter
          end
          object gridVeiculosDBTableView1ANO_EXERCICIO_CLRV: TcxGridDBColumn
            DataBinding.FieldName = 'ANO_EXERCICIO_CLRV'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
        end
        object gridVeiculosLevel1: TcxGridLevel
          GridView = gridVeiculosDBTableView1
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
            'Todos'
            'C'#243'digo do Ve'#237'culo'
            'CPF/CNPJ Propriet'#225'rio'
            'Nome Propriet'#225'rio'
            'RG / IE Propriet'#225'rio'
            'C'#243'digo do Cadastro'
            'Nome do Cadastro'
            'Placa'
            'RENAVAN')
          TabOrder = 4
          Text = 'Todos'
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
      ExplicitLeft = 0
      ExplicitTop = 0
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
      object filtroVeiculos: TcxDBFilterControl
        Left = 0
        Top = 0
        Width = 821
        Height = 346
        Align = alClient
        DataSet = memTableVeiculos
        Items = <
          item
            Caption = 'C'#243'digo'
            FieldName = 'COD_VEICULO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'CPF / CNPJ Propriet'#225'rio'
            FieldName = 'NUM_CNPJ'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Nome Propriet'#225'rio'
            FieldName = 'NOM_PROPRIETARIO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'RG / Ins. Estadual'
            FieldName = 'NUM_RG'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Cadastro'
            FieldName = 'COD_ENTREGADOR'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
          end
          item
            Caption = 'Nome Cadastro'
            FieldName = 'DES_RAZAO_SOCIAL'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Marca'
            FieldName = 'DES_MARCA'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Modelo'
            FieldName = 'DES_MODELO'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Placa'
            FieldName = 'DES_PLACA'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Tipo'
            FieldName = 'DES_TIPO'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
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
          end
          item
            Caption = 'Chassis'
            FieldName = 'NUM_CHASSIS'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Ano'
            FieldName = 'DES_ANO'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d'
          end
          item
            Caption = 'Cor'
            FieldName = 'DES_COR'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.LookupItems.Strings = (
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
          end
          item
            Caption = 'RENAVAN'
            FieldName = 'NUM_RENAVAN'
            PropertiesClassName = 'TcxTextEditProperties'
          end
          item
            Caption = 'Licenciamento'
            FieldName = 'ANO_EXERCICIO_CLRV'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d'
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
      Caption = 'Fi&ltro'
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
  object memTableVeiculos: TFDMemTable
    AfterClose = memTableVeiculosAfterClose
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
    object memTableVeiculosCOD_VEICULO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_VEICULO'
    end
    object memTableVeiculosNUM_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'NUM_CNPJ'
    end
    object memTableVeiculosNOM_PROPRIETARIO: TStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'NOM_PROPRIETARIO'
      Size = 70
    end
    object memTableVeiculosNUM_RG: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'NUM_RG'
    end
    object memTableVeiculosCOD_ENTREGADOR: TIntegerField
      DisplayLabel = 'Cadastro'
      FieldName = 'COD_ENTREGADOR'
    end
    object memTableVeiculosDES_RAZAO_SOCIAL: TStringField
      DisplayLabel = 'Nome Cadastro'
      FieldName = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableVeiculosDES_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'DES_MARCA'
      Size = 50
    end
    object memTableVeiculosDES_MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'DES_MODELO'
      Size = 50
    end
    object memTableVeiculosDES_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'DES_PLACA'
      Size = 7
    end
    object memTableVeiculosDES_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DES_TIPO'
    end
    object memTableVeiculosNUM_CHASSIS: TStringField
      DisplayLabel = 'Chassis'
      FieldName = 'NUM_CHASSIS'
      Size = 50
    end
    object memTableVeiculosDES_ANO: TStringField
      DisplayLabel = 'Ano'
      FieldName = 'DES_ANO'
      Size = 4
    end
    object memTableVeiculosDES_COR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'DES_COR'
    end
    object memTableVeiculosNUM_RENAVAN: TStringField
      DisplayLabel = 'RENAVAN'
      FieldName = 'NUM_RENAVAN'
      Size = 25
    end
    object memTableVeiculosANO_EXERCICIO_CLRV: TStringField
      DisplayLabel = 'Licenciamento'
      FieldName = 'ANO_EXERCICIO_CLRV'
      Size = 4
    end
  end
  object dsVeiculos: TDataSource
    AutoEdit = False
    DataSet = memTableVeiculos
    OnStateChange = dsVeiculosStateChange
    Left = 688
  end
  object frxDeclaracao: TfrxReport
    Version = '6.6.11'
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
