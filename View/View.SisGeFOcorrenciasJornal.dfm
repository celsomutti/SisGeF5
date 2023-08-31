object view_SisGeFOcorrenciasJornal: Tview_SisGeFOcorrenciasJornal
  Left = 0
  Top = 0
  Caption = 'Ocorr'#234'ncias de Assinaturas'
  ClientHeight = 563
  ClientWidth = 1120
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lytMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1120
    Height = 563
    Align = alClient
    TabOrder = 0
    object cboCamposPesquisa: TcxComboBox
      Left = 80
      Top = 12
      Hint = 'Selecione o campo de pesquisa'
      Properties.Items.Strings = (
        'Selecione ...'
        'N'#250'mero Ocorr'#234'ncia'
        'Data'
        'C'#243'digo Assinatura'
        'Nome Assinante')
      Properties.OnChange = cboCamposPesquisaPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Selecione ...'
      Width = 165
    end
    object datInicial: TcxDateEdit
      Left = 309
      Top = 12
      Hint = 'Data inicial'
      Style.HotTrack = False
      TabOrder = 1
      Width = 80
    end
    object datFinal: TcxDateEdit
      Left = 448
      Top = 12
      Hint = 'Data final'
      Style.HotTrack = False
      TabOrder = 2
      Width = 85
    end
    object mskCampo: TcxMaskEdit
      Left = 577
      Top = 12
      Style.HotTrack = False
      TabOrder = 3
      Width = 226
    end
    object btnPesquisar: TcxButton
      Left = 1035
      Top = 10
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 5
    end
    object btnSair: TcxButton
      Left = 1035
      Top = 528
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actSair
      TabOrder = 12
    end
    object btnIncluir: TcxButton
      Left = 10
      Top = 41
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actNovaOcorrencia
      TabOrder = 6
    end
    object btnExportar: TcxButton
      Left = 261
      Top = 41
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Action = actExportar
      TabOrder = 9
    end
    object grdOcorrencias: TcxGrid
      Left = 10
      Top = 72
      Width = 1100
      Height = 450
      TabOrder = 11
      object grdOcorrenciasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOcorrencias
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object grdOcorrenciasDBTableView1num_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_ocorrencia'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 78
        end
        object grdOcorrenciasDBTableView1dat_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'dat_ocorrencia'
          PropertiesClassName = 'TcxDateEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object grdOcorrenciasDBTableView1cod_assinatura: TcxGridDBColumn
          DataBinding.FieldName = 'cod_assinatura'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1nom_assinante: TcxGridDBColumn
          DataBinding.FieldName = 'nom_assinante'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 255
        end
        object grdOcorrenciasDBTableView1des_roteiro: TcxGridDBColumn
          DataBinding.FieldName = 'des_roteiro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1cod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.ListColumns = <>
          HeaderAlignmentHorz = taCenter
          Width = 190
        end
        object grdOcorrenciasDBTableView1cod_produto: TcxGridDBColumn
          DataBinding.FieldName = 'cod_produto'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_produto'
          Properties.ListColumns = <
            item
              FieldName = 'des_produto'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsProdutos
          HeaderAlignmentHorz = taCenter
          Width = 162
        end
        object grdOcorrenciasDBTableView1cod_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'cod_ocorrencia'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cod_tipo_ocorrencia'
          Properties.ListColumns = <
            item
              FieldName = 'des_tipo_ocorrencia'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTiposOcorrencias
          HeaderAlignmentHorz = taCenter
          Width = 137
        end
        object grdOcorrenciasDBTableView1dom_reincidente: TcxGridDBColumn
          DataBinding.FieldName = 'dom_reincidente'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_descricao: TcxGridDBColumn
          DataBinding.FieldName = 'des_descricao'
          PropertiesClassName = 'TcxMemoProperties'
          HeaderAlignmentHorz = taCenter
          Width = 198
        end
        object grdOcorrenciasDBTableView1des_endereco: TcxGridDBColumn
          DataBinding.FieldName = 'des_endereco'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 332
        end
        object grdOcorrenciasDBTableView1des_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'des_retorno'
          PropertiesClassName = 'TcxMemoProperties'
          HeaderAlignmentHorz = taCenter
          Width = 154
        end
        object grdOcorrenciasDBTableView1cod_resultado: TcxGridDBColumn
          DataBinding.FieldName = 'cod_resultado'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1cod_origem: TcxGridDBColumn
          DataBinding.FieldName = 'cod_origem'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_obs: TcxGridDBColumn
          DataBinding.FieldName = 'des_obs'
          PropertiesClassName = 'TcxMemoProperties'
          HeaderAlignmentHorz = taCenter
          Width = 144
        end
        object grdOcorrenciasDBTableView1cod_status: TcxGridDBColumn
          DataBinding.FieldName = 'cod_status'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_apuracao: TcxGridDBColumn
          DataBinding.FieldName = 'des_apuracao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1dom_processado: TcxGridDBColumn
          DataBinding.FieldName = 'dom_processado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object grdOcorrenciasDBTableView1qtd_ocorrencias: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_ocorrencias'
          PropertiesClassName = 'TcxSpinEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object grdOcorrenciasDBTableView1val_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'val_ocorrencia'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 93
        end
        object grdOcorrenciasDBTableView1dat_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'dat_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1dom_impressao: TcxGridDBColumn
          DataBinding.FieldName = 'dom_impressao'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object grdOcorrenciasDBTableView1des_anexo: TcxGridDBColumn
          DataBinding.FieldName = 'des_anexo'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_log: TcxGridDBColumn
          DataBinding.FieldName = 'des_log'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object grdOcorrenciasLevel1: TcxGridLevel
        GridView = grdOcorrenciasDBTableView1
      end
    end
    object chkExcluídos: TcxCheckBox
      Left = 809
      Top = 12
      Action = actVisualizarExcluidos
      Style.HotTrack = False
      TabOrder = 4
    end
    object btnEditar: TcxButton
      Left = 99
      Top = 41
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actEditarOcorrencia
      TabOrder = 7
    end
    object btnExcluir: TcxButton
      Left = 180
      Top = 41
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actExcluirOcorrencia
      TabOrder = 8
    end
    object btnLimpar: TcxButton
      Left = 349
      Top = 41
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actLimparGrid
      TabOrder = 10
    end
    object lytMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object lytFiltro: TdxLayoutGroup
      Parent = lytMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lytCamposPesquisa: TdxLayoutItem
      Parent = lytFiltro
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Pesquisar por'
      Control = cboCamposPesquisa
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 165
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytDatas: TdxLayoutGroup
      Parent = lytFiltro
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Datas'
      Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lytDataInicial: TdxLayoutItem
      Parent = lytDatas
      CaptionOptions.Text = 'Data Inicial'
      Control = datInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytDataFinal: TdxLayoutItem
      Parent = lytDatas
      CaptionOptions.Text = 'Data Final'
      Control = datFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytOutrosCampos: TdxLayoutGroup
      Parent = lytFiltro
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lytCampo: TdxLayoutItem
      Parent = lytOutrosCampos
      CaptionOptions.Text = 'Campo'
      Control = mskCampo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 226
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytBotoesFormulario: TdxLayoutGroup
      Parent = lytFiltro
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'Bot'#245'es'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lytBotaoPesquisa: TdxLayoutItem
      Parent = lytBotoesFormulario
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnPesquisar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytBotalSair: TdxLayoutItem
      Parent = lytFooter
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnSair
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytBody: TdxLayoutGroup
      Parent = lytMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Corpo'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lytFooter: TdxLayoutGroup
      Parent = lytMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Rodap'#233
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lytBotoesEdicao: TdxLayoutGroup
      Parent = lytBody
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bot'#245'es Edi'#231#227'o'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lytBotaoNovo: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnIncluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytBotalExportar: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnExportar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lytGrid: TdxLayoutGroup
      Parent = lytBody
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grid'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object lytGridOcorrencias: TdxLayoutItem
      Parent = lytGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Ocorr'#234'ncias'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdOcorrencias
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytCheckExcluidos: TdxLayoutItem
      Parent = lytFiltro
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkExcluídos
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lytBotaoEditar: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btnEditar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytBotaoExcluir: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lytBotaoLimpar: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnLimpar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object aclOcorrenciasJornal: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 984
    Top = 16
    object actPesquisar: TAction
      Category = 'Formul'#225'rio'
      Caption = '&Pesquisar'
      Hint = 'Pesquisar ocorr'#234'ncias'
      ImageIndex = 86
      OnExecute = actPesquisarExecute
    end
    object actSair: TAction
      Category = 'Formul'#225'rio'
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actNovaOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = '&Novo'
      Hint = 'Nova Ocorr'#234'ncia'
      ImageIndex = 97
    end
    object actExportar: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'Exportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actVisualizarExcluidos: TAction
      Category = 'Formul'#225'rio'
      Caption = 'Visualizar Exclu'#237'dos'
      Hint = 'Visualizar registros exclu'#237'dos'
      ImageIndex = 114
      Visible = False
    end
    object actEditarOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = '&Editar'
      Hint = 'Editar ocorr'#234'ncia'
      ImageIndex = 95
    end
    object actExcluirOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'E&xcluir'
      Hint = 'Excluir ocorr'#234'ncia'
      ImageIndex = 84
    end
    object actLimparGrid: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'Li&mpar'
      Hint = 'Limpar dados do grid'
      ImageIndex = 115
      OnExecute = actLimparGridExecute
    end
  end
  object dsOcorrencias: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbOcorerncias
    Left = 696
    Top = 40
  end
  object mtbProdutos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 488
    Top = 40
    object mtbProdutoscod_produto: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_produto'
      Size = 10
    end
    object mtbProdutosdes_produto: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_produto'
      Size = 70
    end
  end
  object mtbTiposOcorrencias: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 592
    Top = 40
    object mtbTiposOcorrenciascod_tipo_ocorrencia: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_tipo_ocorrencia'
    end
    object mtbTiposOcorrenciasdes_tipo_ocorrencia: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_tipo_ocorrencia'
      Size = 70
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = mtbProdutos
    Left = 528
    Top = 40
  end
  object dsTiposOcorrencias: TDataSource
    AutoEdit = False
    DataSet = mtbTiposOcorrencias
    Left = 632
    Top = 40
  end
end
