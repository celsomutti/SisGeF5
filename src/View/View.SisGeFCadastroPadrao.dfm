object viewCadastroPadrao: TviewCadastroPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Padrao'
  ClientHeight = 446
  ClientWidth = 867
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 867
    Height = 446
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object btePesquisar: TcxButtonEdit
      Left = 92
      Top = 44
      Hint = 'PAr'#226'metro a ser pesquisado'
      Properties.Buttons = <
        item
          Action = actLimpar
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 0
      Width = 666
    end
    object cxButton1: TcxButton
      Left = 764
      Top = 44
      Width = 79
      Height = 25
      Action = actPesquisar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 782
      Top = 411
      Width = 75
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 6
    end
    object cxButton3: TcxButton
      Left = 24
      Top = 366
      Width = 75
      Height = 25
      Action = actNovo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
    end
    object gridPesquisa: TcxGrid
      Left = 24
      Top = 75
      Width = 819
      Height = 285
      TabOrder = 2
      object gridPesquisaDBTableView1: TcxGridDBTableView
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
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
      end
      object gridPesquisaLevel1: TcxGridLevel
        GridView = gridPesquisaDBTableView1
      end
    end
    object cxButton4: TcxButton
      Left = 105
      Top = 366
      Width = 75
      Height = 25
      Action = actEditar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
    end
    object cxButton5: TcxButton
      Left = 186
      Top = 366
      Width = 75
      Height = 25
      Action = actExportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 5
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpContainer: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lgpFooter: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcpTable: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgpPesquisa: TdxLayoutGroup
      Parent = lcpTable
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object lgpParametros: TdxLayoutGroup
      Parent = lgpPesquisa
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpParametros
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Procurar por '
      Control = btePesquisar
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpParametros
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgpContainerGrade: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lpgGrade: TdxLayoutGroup
      Parent = lgpContainerGrade
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object lpgButtonsGrade: TdxLayoutGroup
      Parent = lgpContainerGrade
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lpgButtonsGrade
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lpgGrade
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridPesquisa
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lpgButtonsGrade
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lpgButtonsGrade
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object aclCadastro: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 744
    Top = 6
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Novo cadastro'
      ImageIndex = 115
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar cadastro'
      ImageIndex = 95
    end
    object actCancelar: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o atual'
      ImageIndex = 84
    end
    object actExportar: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados'
      ImageIndex = 101
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar cadastro'
      ImageIndex = 85
    end
    object actPesquisar: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar cadastro'
      ImageIndex = 86
    end
    object actSair: TAction
      Caption = '&Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
    object actLimpar: TAction
      Caption = 'Limpar'
      Hint = 'Limpar par'#226'metro'
      ImageIndex = 84
      OnExecute = actLimparExecute
    end
  end
  object mtbCadastro: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 552
    Top = 8
    object mtbCadastrocod_cliente: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_cliente'
    end
    object mtbCadastrocod_empresa: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_empresa'
    end
    object mtbCadastrodes_razao_social: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'des_razao_social'
      Size = 70
    end
    object mtbCadastronom_fantasia: TStringField
      DisplayLabel = 'Alias'
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object mtbCadastrodes_tipo_doc: TStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'des_tipo_doc'
      Size = 4
    end
    object mtbCadastronum_cnpj: TStringField
      DisplayLabel = 'CPFCNPJ'
      FieldName = 'num_cnpj'
    end
    object mtbCadastrocod_cnae: TStringField
      DisplayLabel = 'CNAE'
      FieldName = 'cod_cnae'
    end
    object mtbCadastrocod_crt: TIntegerField
      DisplayLabel = 'CRT'
      FieldName = 'cod_crt'
    end
    object mtbCadastrocod_status: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'cod_status'
    end
    object mtbCadastrodes_observacao: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_observacao'
      BlobType = ftMemo
    end
    object mtbCadastrodat_cadastro: TDateTimeField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'dat_cadastro'
    end
  end
end
