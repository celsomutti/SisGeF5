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
            'RG ou Ins. Estadual'
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
  object dsEmployees: TDataSource
    AutoEdit = False
    DataSet = memTableEmployees
    OnStateChange = dsEmployeesStateChange
    Left = 688
  end
  object memTableEmployees: TFDQuery
    AfterClose = memTableEmployeesAfterClose
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_PesquisaFuncionariosV1')
    Left = 736
    object memTableEmployeesCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
      Origin = 'COD_CADASTRO'
      Required = True
    end
    object memTableEmployeesNUM_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_CNPJ'
      Origin = 'NUM_CNPJ'
    end
    object memTableEmployeesDES_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_RAZAO_SOCIAL'
      Origin = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableEmployeesNOM_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_FANTASIA'
      Origin = 'NOM_FANTASIA'
      Size = 80
    end
    object memTableEmployeesNUM_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_IE'
      Origin = 'NUM_IE'
    end
    object memTableEmployeesNUM_IEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_IEST'
      Origin = 'NUM_IEST'
    end
    object memTableEmployeesdes_funcao: TStringField
      FieldName = 'des_funcao'
      Origin = 'des_funcao'
      Size = 132
    end
    object memTableEmployeesNUM_CNH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_CNH'
      Origin = 'NUM_CNH'
      Size = 15
    end
    object memTableEmployeesNUM_REGISTRO_CNH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_REGISTRO_CNH'
      Origin = 'NUM_REGISTRO_CNH'
      Size = 15
    end
    object memTableEmployeesDES_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_STATUS'
      Origin = 'DES_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
  end
end
