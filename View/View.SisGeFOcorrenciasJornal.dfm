object view_SisGeFOcorrenciasJornal: Tview_SisGeFOcorrenciasJornal
  Left = 0
  Top = 0
  Caption = 'Ocorr'#234'ncias de Assinaturas'
  ClientHeight = 563
  ClientWidth = 1120
  Color = clBtnFace
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
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
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
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
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
        Navigator.Buttons.GotoBookmark.Enabled = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 96
        Navigator.Buttons.Filter.Visible = True
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = dsOcorrencias
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.DefaultStretch = fsClient
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.EditMode = emInplaceEditFormHideCurrentRow
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
        OptionsSelection.ClearPersistentSelectionOnOutsideClick = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        ConditionalFormatting = {
          010000000A000000310000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500450078007000
          720065007300730069006F006E008D0000000000000000000000FFFFFF7FFFFF
          FF7F0001FF0000000B00000007000000430061006C0069006200720069000008
          0000000020000000200000000020000000002000000000200000000020000700
          0000470045004E004500520041004C000000000000020000000000000000010C
          0000003D005B005300740061007400750073005D003D002D00320000000000}
        object grdOcorrenciasDBTableView1num_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_ocorrencia'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d'
          Properties.ReadOnly = True
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
          Properties.Alignment.Horz = taRightJustify
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
          Properties.Alignment.Horz = taRightJustify
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
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'EXCLUIDO'
              ImageIndex = 116
              Value = -2
            end
            item
              Description = 'ATIVO'
              ImageIndex = 83
              Value = 0
            end
            item
              Description = 'INATIVO'
              ImageIndex = 84
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          Width = 99
        end
        object grdOcorrenciasDBTableView1des_apuracao: TcxGridDBColumn
          DataBinding.FieldName = 'des_apuracao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1dom_processado: TcxGridDBColumn
          DataBinding.FieldName = 'dom_processado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssInactive
          Properties.ValueChecked = 'S'
          Properties.ValueGrayed = 'N'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object grdOcorrenciasDBTableView1qtd_ocorrencias: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_ocorrencias'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object grdOcorrenciasDBTableView1val_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'val_ocorrencia'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
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
          Properties.NullStyle = nssInactive
          Properties.ValueChecked = 'S'
          Properties.ValueGrayed = 'N'
          Properties.ValueUnchecked = 'N'
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
      Hint = 'Visualizar registros exclu'#237'dos'
      Caption = 'Visualizar Exclu'#237'dos'
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
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
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
    Top = 8
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
      OnExecute = actNovaOcorrenciaExecute
    end
    object actExportar: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'Exportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actExportarExecute
    end
    object actEditarOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = '&Editar'
      Hint = 'Editar ocorr'#234'ncia'
      ImageIndex = 95
      OnExecute = actEditarOcorrenciaExecute
    end
    object actExcluirOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'E&xcluir'
      Hint = 'Excluir ocorr'#234'ncia'
      ImageIndex = 84
      OnExecute = actExcluirOcorrenciaExecute
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
    DataSet = mtbOcorerncias
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
  object mtbOcorerncias: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 744
    Top = 40
    object mtbOcorernciasnum_ocorrencia: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'num_ocorrencia'
    end
    object mtbOcorernciasdat_ocorrencia: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_ocorrencia'
    end
    object mtbOcorernciascod_assinatura: TStringField
      DisplayLabel = 'C'#243'd. Assinatura'
      FieldName = 'cod_assinatura'
    end
    object mtbOcorernciasnom_assinante: TStringField
      DisplayLabel = 'Nome Assinante'
      FieldName = 'nom_assinante'
      Size = 70
    end
    object mtbOcorernciasdes_roteiro: TStringField
      DisplayLabel = 'Roteiro'
      FieldName = 'des_roteiro'
      Size = 30
    end
    object mtbOcorernciascod_entregador: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'cod_entregador'
    end
    object mtbOcorernciascod_produto: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'cod_produto'
      Size = 10
    end
    object mtbOcorernciascod_ocorrencia: TIntegerField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'cod_ocorrencia'
    end
    object mtbOcorernciasdom_reincidente: TStringField
      DisplayLabel = 'Reincidente'
      FieldName = 'dom_reincidente'
      Size = 1
    end
    object mtbOcorernciasdes_descricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_descricao'
      BlobType = ftMemo
    end
    object mtbOcorernciasdes_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'des_endereco'
      Size = 256
    end
    object mtbOcorernciasdes_retorno: TMemoField
      DisplayLabel = 'Retorno'
      FieldName = 'des_retorno'
      BlobType = ftMemo
    end
    object mtbOcorernciascod_resultado: TIntegerField
      DisplayLabel = 'Resultado'
      FieldName = 'cod_resultado'
    end
    object mtbOcorernciascod_origem: TIntegerField
      DisplayLabel = 'Origem'
      FieldName = 'cod_origem'
    end
    object mtbOcorernciasdes_obs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_obs'
      BlobType = ftMemo
    end
    object mtbOcorernciascod_status: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_status'
    end
    object mtbOcorernciasdes_apuracao: TMemoField
      DisplayLabel = 'Apura'#231#227'o'
      FieldName = 'des_apuracao'
      BlobType = ftMemo
    end
    object mtbOcorernciasdom_processado: TStringField
      DisplayLabel = 'Processado'
      FieldName = 'dom_processado'
      Size = 1
    end
    object mtbOcorernciasqtd_ocorrencias: TIntegerField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_ocorrencias'
    end
    object mtbOcorernciasval_ocorrencia: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'val_ocorrencia'
    end
    object mtbOcorernciasdat_desconto: TDateField
      DisplayLabel = 'Data Desconto'
      FieldName = 'dat_desconto'
    end
    object mtbOcorernciasdom_impressao: TStringField
      DisplayLabel = 'Impress'#227'o'
      FieldName = 'dom_impressao'
      Size = 1
    end
    object mtbOcorernciasdes_anexo: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'des_anexo'
      Size = 70
    end
    object mtbOcorernciasdes_log: TMemoField
      DisplayLabel = 'LOG'
      FieldName = 'des_log'
      BlobType = ftMemo
    end
  end
end
