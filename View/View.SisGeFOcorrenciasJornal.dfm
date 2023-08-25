object viewSisGeFOcorrenciasJornal: TviewSisGeFOcorrenciasJornal
  Left = 0
  Top = 0
  Caption = 'Ocorr'#234'ncias de Assinaturas'
  ClientHeight = 563
  ClientWidth = 1080
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
    Width = 1080
    Height = 563
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 128
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cboCamposPesquisa: TcxComboBox
      Left = 92
      Top = 30
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
      Left = 321
      Top = 30
      Hint = 'Data inicial'
      Style.HotTrack = False
      TabOrder = 1
      Width = 80
    end
    object datFinal: TcxDateEdit
      Left = 460
      Top = 30
      Hint = 'Data final'
      Style.HotTrack = False
      TabOrder = 2
      Width = 85
    end
    object mskCampo: TcxMaskEdit
      Left = 589
      Top = 30
      Style.HotTrack = False
      TabOrder = 3
      Width = 226
    end
    object btnPesquisar: TcxButton
      Left = 902
      Top = 28
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 4
    end
    object btnSair: TcxButton
      Left = 983
      Top = 28
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actSair
      TabOrder = 5
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 89
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actNovaOcorrencia
      TabOrder = 6
    end
    object cxButton2: TcxButton
      Left = 111
      Top = 89
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Action = actExportar
      TabOrder = 7
    end
    object grdOcorrencias: TcxGrid
      Left = 34
      Top = 138
      Width = 1012
      Height = 355
      TabOrder = 8
      object grdOcorrenciasDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOcorrencias
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grdOcorrenciasDBTableView1num_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_ocorrencia'
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 78
        end
        object grdOcorrenciasDBTableView1dat_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'dat_ocorrencia'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object grdOcorrenciasDBTableView1cod_assinatura: TcxGridDBColumn
          DataBinding.FieldName = 'cod_assinatura'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1nom_assinante: TcxGridDBColumn
          DataBinding.FieldName = 'nom_assinante'
          HeaderAlignmentHorz = taCenter
          Width = 255
        end
        object grdOcorrenciasDBTableView1des_roteiro: TcxGridDBColumn
          DataBinding.FieldName = 'des_roteiro'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1cod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1cod_produto: TcxGridDBColumn
          DataBinding.FieldName = 'cod_produto'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1cod_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'cod_ocorrencia'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1dom_reincidente: TcxGridDBColumn
          DataBinding.FieldName = 'dom_reincidente'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_descricao: TcxGridDBColumn
          DataBinding.FieldName = 'des_descricao'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1des_endereco: TcxGridDBColumn
          DataBinding.FieldName = 'des_endereco'
          HeaderAlignmentHorz = taCenter
          Width = 332
        end
        object grdOcorrenciasDBTableView1des_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'des_retorno'
          HeaderAlignmentHorz = taCenter
          Width = 213
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
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object grdOcorrenciasDBTableView1qtd_ocorrencias: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_ocorrencias'
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1val_ocorrencia: TcxGridDBColumn
          DataBinding.FieldName = 'val_ocorrencia'
          HeaderAlignmentHorz = taCenter
          Width = 74
        end
        object grdOcorrenciasDBTableView1dat_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'dat_desconto'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object grdOcorrenciasDBTableView1dom_impressao: TcxGridDBColumn
          DataBinding.FieldName = 'dom_impressao'
          HeaderAlignmentHorz = taCenter
          Width = 59
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
    object lytMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lytFiltro: TdxLayoutGroup
      Parent = lytMainGroup_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
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
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
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
      Parent = lytBotoesFormulario
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnSair
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytBody: TdxLayoutGroup
      Parent = lytMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Corpo'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object lytFooter: TdxLayoutGroup
      Parent = lytMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Rodap'#233
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lytBotoesEdicao: TdxLayoutGroup
      Parent = lytBody
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bot'#245'es Edi'#231#227'o'
      ButtonOptions.Buttons = <>
      Hidden = True
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
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lytBotalExportar: TdxLayoutItem
      Parent = lytBotoesEdicao
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lytGrid: TdxLayoutGroup
      Parent = lytBody
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grid'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
  end
  object aclOcorrenciasJornal: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 984
    Top = 64
    object actPesquisar: TAction
      Category = 'Formul'#225'rio'
      Caption = '&Pesquisar'
      Hint = 'Pesquisar ocorr'#234'ncias'
      ImageIndex = 86
    end
    object actSair: TAction
      Category = 'Formul'#225'rio'
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
    end
    object actNovaOcorrencia: TAction
      Category = 'Edi'#231#227'o'
      Caption = '&Novo'
      Hint = 'Nova Ocorr'#234'ncia'
      ImageIndex = 89
    end
    object actExportar: TAction
      Category = 'Edi'#231#227'o'
      Caption = 'Exportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
    end
  end
  object mtbOcorerncias: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 776
    Top = 72
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
  object dsOcorrencias: TDataSource
    AutoEdit = False
    DataSet = mtbOcorerncias
    Left = 832
    Top = 72
  end
end
