object view_SisGeFVehiclesRegistration: Tview_SisGeFVehiclesRegistration
  Left = 0
  Top = 0
  Caption = 'Cadastro de Ve'#237'culos'
  ClientHeight = 454
  ClientWidth = 769
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 54
    Width = 769
    Height = 400
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object parametro: TcxTextEdit
      Left = 61
      Top = 10
      Style.HotTrack = False
      TabOrder = 0
      Width = 301
    end
    object campos: TcxComboBox
      Left = 411
      Top = 10
      Properties.Items.Strings = (
        'Pesquisa instant'#226'nea'
        'C'#243'digo'
        'CPF/CNPJ'
        'Propriet'#225'rio'
        'Placa'
        'Chassis'
        'RENAVAN')
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Pesquisa instant'#226'nea'
      Width = 348
    end
    object gridVeiculos: TcxGrid
      Left = 10
      Top = 37
      Width = 749
      Height = 353
      TabOrder = 2
      object gridVeiculosDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 62
          end
          item
            ImageIndex = 63
          end
          item
            ImageIndex = 72
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Prior.Visible = True
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
        DataController.DataSource = dsVeiculos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvColumnHeader]
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
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
          Width = 85
        end
      end
      object gridVeiculosLevel1: TcxGridLevel
        GridView = gridVeiculosDBTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar'
      Control = parametro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 184
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Campos'
      Control = campos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
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
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridVeiculos
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object memTableListaVeiculos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 568
    Top = 8
    object memTableListaVeiculosCOD_VEICULO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_VEICULO'
    end
    object memTableListaVeiculosNUM_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'NUM_CNPJ'
    end
    object memTableListaVeiculosNOM_PROPRIETARIO: TStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'NOM_PROPRIETARIO'
      Size = 70
    end
    object memTableListaVeiculosNUM_RG: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'NUM_RG'
    end
    object memTableListaVeiculosCOD_ENTREGADOR: TIntegerField
      DisplayLabel = 'Cadastro'
      FieldName = 'COD_ENTREGADOR'
    end
    object memTableListaVeiculosDES_RAZAO_SOCIAL: TStringField
      DisplayLabel = 'Nome Cadastro'
      FieldName = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object memTableListaVeiculosDES_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'DES_MARCA'
      Size = 50
    end
    object memTableListaVeiculosDES_MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'DES_MODELO'
      Size = 50
    end
    object memTableListaVeiculosDES_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'DES_PLACA'
      Size = 7
    end
    object memTableListaVeiculosDES_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'DES_TIPO'
    end
    object memTableListaVeiculosNUM_CHASSIS: TStringField
      DisplayLabel = 'N'#186'. Chassis'
      FieldName = 'NUM_CHASSIS'
      Size = 50
    end
    object memTableListaVeiculosDES_ANO: TStringField
      DisplayLabel = 'Ano'
      FieldName = 'DES_ANO'
      Size = 4
    end
    object memTableListaVeiculosDES_COR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'DES_COR'
    end
    object memTableListaVeiculosNUM_RENAVAN: TStringField
      DisplayLabel = 'RENAVAN'
      FieldName = 'NUM_RENAVAN'
      Size = 25
    end
    object memTableListaVeiculosANO_EXERCICIO_CLRV: TStringField
      DisplayLabel = 'Licenciamento'
      FieldName = 'ANO_EXERCICIO_CLRV'
      Size = 4
    end
  end
  object actionListVeiculos: TActionList
    Left = 664
    Top = 8
    object actionNew: TAction
      Category = 'Register'
      Caption = '&Novo'
      Hint = 'Novo registro'
    end
    object actionSearch: TAction
      Category = 'Register'
      Caption = '&Localizar'
      Hint = 'Localizar registro'
      OnExecute = actionSearchExecute
    end
    object actionEdit: TAction
      Category = 'Register'
      Caption = '&Editar'
      Hint = 'Editar registro'
    end
    object actionCancel: TAction
      Category = 'Register'
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      OnExecute = actionCancelExecute
    end
    object actionSave: TAction
      Category = 'Register'
      Caption = '&Gravar'
      Hint = 'Gravar registro'
    end
    object actionClose: TAction
      Category = 'Register'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      OnExecute = actionCloseExecute
    end
    object actionExpand: TAction
      Category = 'Grid'
      Caption = 'Expandir'
      Hint = 'Expandir grid'
    end
    object actionRetract: TAction
      Category = 'Grid'
      Caption = 'Retrair'
      Hint = 'Retrair grid'
    end
    object actionGroupPanel: TAction
      Category = 'Grid'
      Caption = 'Painel de Grupo'
      Hint = 'Mostrar ou ocultar painel de grupo'
    end
    object actionExport: TAction
      Category = 'Register'
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
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
    Left = 480
    Top = 8
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      0)
    object barManagerBar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Register'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 797
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
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = True
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
      Action = actionNew
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actionSearch
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionEdit
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 9
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actionCancel
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 2
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actionSave
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 13
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actionClose
      Align = iaRight
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 3
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionExport
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 10
    end
  end
  object dsVeiculos: TDataSource
    AutoEdit = False
    DataSet = memTableListaVeiculos
    Left = 400
    Top = 6
  end
end
