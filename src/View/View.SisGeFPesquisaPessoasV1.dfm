object view_SisGeFPesquisaPessoas: Tview_SisGeFPesquisaPessoas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Pessoas'
  ClientHeight = 499
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001001800680300001600000028000000100000002000
    0000010018000000000040030000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000105A8C080808000000000000000000000000000000000000000000000000
    000000000000000000000000000000105A8C0094B5105A8C0808080000000000
    00000000000000000000000000000000000000000000000000000000105A8C00
    94B5105A8C0808080000000000000000000000000000008C8C8C4A4A4A080808
    0808084A4A4A313131105A8C0094B5105A8C0808080000000000000000000000
    000000006B6B6B313131736B4A736B4A736B4A5A5A5A313131183942105A8C08
    08080000000000000000000000000000008C8C8C3131319C8C639C8C639C8C63
    9C8C63736B4A736B4A3131312121210000000000000000000000000000000000
    004A4A4A9C8C63D6C6A5CEBD84B5A57BB5A57B9C8C63736B4A5A5A5A4A4A4A00
    0000000000000000000000000000000000080808D6C6A5EFE7B5EFE7B5D6C6A5
    CEBD84B5A57B9C8C63736B4A0808080000000000000000000000000000000000
    00080808D6C6A5EFE7B5EFE7B5EFE7B5D6C6A5B5A57B9C8C63736B4A08080800
    00000000000000000000000000000000004A4A4AB5A57BEFE7B5EFE7B5EFE7B5
    EFE7B5CEBD849C8C63736B4A4A4A4A0000000000000000000000000000000000
    008C8C8C4A4A4AD6C6A5EFE7B5EFE7B5EFE7B5D6C6A59C8C633131318C8C8C00
    00000000000000000000000000000000000000006B6B6B4A4A4AB5A57BD6C6A5
    D6C6A59C8C633131316B6B6B0000000000000000000000000000000000000000
    000000000000008C8C8C4A4A4A0808080808084A4A4A8C8C8C00000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFF70000FFE30000FFC10000FF830000E0070000C00F0000801F0000801F
    0000801F0000801F0000801F0000801F0000C03F0000E07F0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object layoutControlGrid: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 770
    Height = 499
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object gridPesquisa: TcxGrid
      Left = 12
      Top = 96
      Width = 746
      Height = 359
      TabOrder = 5
      OnEnter = gridPesquisaEnter
      object gridPesquisaDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.NextPage.Visible = False
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
        OnCellDblClick = gridPesquisaDBTableView1CellDblClick
        DataController.DataSource = dsPesquisa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsBehavior.CopyPreviewToClipboard = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvGroupRow]
        OptionsView.Indicator = True
        object gridPesquisaDBTableView1COD_CADASTRO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'COD_CADASTRO'
        end
        object gridPesquisaDBTableView1NUM_CNPJ: TcxGridDBColumn
          Caption = 'CPf / CNPJ'
          DataBinding.FieldName = 'NUM_CNPJ'
        end
        object gridPesquisaDBTableView1DES_RAZAO_SOCIAL: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'DES_RAZAO_SOCIAL'
        end
        object gridPesquisaDBTableView1NOM_FANTASIA: TcxGridDBColumn
          Caption = 'Alias'
          DataBinding.FieldName = 'NOM_FANTASIA'
        end
        object gridPesquisaDBTableView1NUM_IE: TcxGridDBColumn
          Caption = 'RG / IE'
          DataBinding.FieldName = 'NUM_IE'
        end
        object gridPesquisaDBTableView1NUM_IEST: TcxGridDBColumn
          Caption = 'Ins. Est. Subs./PIS'
          DataBinding.FieldName = 'NUM_IEST'
        end
        object gridPesquisaDBTableView1des_funcao: TcxGridDBColumn
          Caption = 'Fun'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          Width = 344
        end
        object gridPesquisaDBTableView1NUM_CNH: TcxGridDBColumn
          Caption = 'N'#186'. CNH'
          DataBinding.FieldName = 'NUM_CNH'
        end
        object gridPesquisaDBTableView1NUM_REGISTRO_CNH: TcxGridDBColumn
          Caption = 'Registro CNH'
          DataBinding.FieldName = 'NUM_REGISTRO_CNH'
        end
        object gridPesquisaDBTableView1DES_STATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'DES_STATUS'
          Width = 73
        end
      end
      object gridPesquisaLevel1: TcxGridLevel
        GridView = gridPesquisaDBTableView1
      end
    end
    object buttonExpandir: TcxButton
      Left = 12
      Top = 64
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandirGrid
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      TabStop = False
    end
    object buttonRetrair: TcxButton
      Left = 103
      Top = 64
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = actionRetrairGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      TabStop = False
    end
    object checkBoxBarraGrupos: TcxCheckBox
      Left = 645
      Top = 66
      TabStop = False
      Caption = 'Painel de Grupos'
      Properties.OnChange = checkBoxBarraGruposPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object buttonEditTextoPesquisar: TcxButtonEdit
      Left = 12
      Top = 33
      Hint = 'Digite o texto a ser pesquisado'
      Properties.Buttons = <
        item
          Action = actionLimpar
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnChange = buttonEditTextoPesquisarPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      OnEnter = buttonEditTextoPesquisarEnter
      Width = 571
    end
    object buttonFechar: TcxButton
      Left = 673
      Top = 462
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      TabOrder = 9
    end
    object buttonOK: TcxButton
      Left = 577
      Top = 462
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionOK
      TabOrder = 8
    end
    object buttonLocalizar: TcxButton
      Left = 473
      Top = 462
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Action = actionPesquisar
      Default = True
      TabOrder = 7
    end
    object buttonExportar: TcxButton
      Left = 12
      Top = 462
      Width = 101
      Height = 25
      Cursor = crHandPoint
      Action = actionExportar
      TabOrder = 6
    end
    object comboBoxOutrosCampos: TcxComboBox
      Left = 590
      Top = 33
      Hint = 'Outros campos para pesquisa'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'Pesquisa Instant'#226'nea'
        'RG ou Ins. Estadual'
        'PIS'
        'N'#250'mero CNH'
        'Registro CNH')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Pesquisa Instant'#226'nea'
      Width = 168
    end
    object layoutControlGridGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemGrid: TdxLayoutItem
      Parent = layoutControlGridGroup_Root
      AlignVert = avClient
      CaptionOptions.Text = 'Entregadores'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gridPesquisa
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemExpandir: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExpandir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemRetrair: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonRetrair
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemBarraGrupos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = checkBoxBarraGrupos
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemtextoPesquisa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Texto a Pesquisar:'
      CaptionOptions.Layout = clTop
      Control = buttonEditTextoPesquisar
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 412
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemFechar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonFechar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemOK: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonOK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGridGroup_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object layoutItemLocalizar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonLocalizar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemExportar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExportar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGridGroup_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutItemTipoPesquisa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Outros Campos:'
      CaptionOptions.Layout = clTop
      Control = comboBoxOutrosCampos
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGridGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
  end
  object actionListPesquisa: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 360
    Top = 65528
    object actionExpandirGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Expandir'
      Hint = 'Expandir os detalhes do Grid'
      ImageIndex = 62
      OnExecute = actionExpandirGridExecute
    end
    object actionRetrairGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Retrair'
      Hint = 'Retrair detalhes do Grid'
      ImageIndex = 63
      OnExecute = actionRetrairGridExecute
    end
    object actionPesquisar: TAction
      Category = 'Op'#231#245'es'
      AutoCheck = True
      Caption = 'Localizar'
      Hint = 'Realizar pesquisa'
      ImageIndex = 12
      OnExecute = actionPesquisarExecute
    end
    object actionLimpar: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Limpar'
      Enabled = False
      Hint = 'Limpar o campo de texto a pesquisar'
      ImageIndex = 9
      OnExecute = actionLimparExecute
    end
    object actionExportar: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Exportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 11
      ShortCut = 49240
    end
    object actionFechar: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionOK: TAction
      Category = 'Op'#231#245'es'
      Caption = 'OK'
      Hint = 'Selecionar o registro'
      ImageIndex = 1
      OnExecute = actionOKExecute
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = fdPesquisa
    OnStateChange = dsPesquisaStateChange
    Left = 320
    Top = 65528
  end
  object fdPesquisa: TFDQuery
    Connection = Data_Sisgef.FDConnectionMySQL
    SQL.Strings = (
      'select * from view_PesquisaFuncionariosV1')
    Left = 256
    object fdPesquisaCOD_CADASTRO: TIntegerField
      FieldName = 'COD_CADASTRO'
      Origin = 'COD_CADASTRO'
      Required = True
    end
    object fdPesquisaNUM_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_CNPJ'
      Origin = 'NUM_CNPJ'
    end
    object fdPesquisaDES_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_RAZAO_SOCIAL'
      Origin = 'DES_RAZAO_SOCIAL'
      Size = 70
    end
    object fdPesquisaNOM_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOM_FANTASIA'
      Origin = 'NOM_FANTASIA'
      Size = 80
    end
    object fdPesquisaNUM_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_IE'
      Origin = 'NUM_IE'
    end
    object fdPesquisaNUM_IEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_IEST'
      Origin = 'NUM_IEST'
    end
    object fdPesquisades_funcao: TStringField
      FieldName = 'des_funcao'
      Origin = 'des_funcao'
      Size = 132
    end
    object fdPesquisaNUM_CNH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_CNH'
      Origin = 'NUM_CNH'
      Size = 15
    end
    object fdPesquisaNUM_REGISTRO_CNH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_REGISTRO_CNH'
      Origin = 'NUM_REGISTRO_CNH'
      Size = 15
    end
    object fdPesquisaDES_STATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DES_STATUS'
      Origin = 'DES_STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
  end
end
