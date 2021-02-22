object view_PesquisaEntregadoresExpressas: Tview_PesquisaEntregadoresExpressas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entregadores Expressas'
  ClientHeight = 465
  ClientWidth = 716
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
    Width = 716
    Height = 465
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object gridPesquisa: TcxGrid
      Left = 12
      Top = 64
      Width = 692
      Height = 357
      TabOrder = 4
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
        OptionsCustomize.ColumnsQuickCustomization = True
        object gridPesquisaDBTableView1id_entregador: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_entregador'
          Width = 47
        end
        object gridPesquisaDBTableView1cod_entregador: TcxGridDBColumn
          Caption = 'C'#243'd. Entregador'
          DataBinding.FieldName = 'cod_entregador'
          Width = 106
        end
        object gridPesquisaDBTableView1nom_entregador: TcxGridDBColumn
          Caption = 'Nome Entregador'
          DataBinding.FieldName = 'nom_entregador'
          Width = 236
        end
        object gridPesquisaDBTableView1des_chave: TcxGridDBColumn
          Caption = 'Chave ERP'
          DataBinding.FieldName = 'des_chave'
          Width = 176
        end
        object gridPesquisaDBTableView1cod_agente: TcxGridDBColumn
          Caption = 'C'#243'd. Base'
          DataBinding.FieldName = 'cod_agente'
        end
        object gridPesquisaDBTableView1nom_base: TcxGridDBColumn
          Caption = 'Nome Base'
          DataBinding.FieldName = 'nom_base'
          Width = 287
        end
        object gridPesquisaDBTableView1cod_cadastro: TcxGridDBColumn
          Caption = 'C'#243'd. Pessoa'
          DataBinding.FieldName = 'cod_cadastro'
          Width = 104
        end
        object gridPesquisaDBTableView1nom_cadastro: TcxGridDBColumn
          Caption = 'Nome Pessoa'
          DataBinding.FieldName = 'nom_cadastro'
        end
      end
      object gridPesquisaLevel1: TcxGridLevel
        GridView = gridPesquisaDBTableView1
      end
    end
    object buttonExpandir: TcxButton
      Left = 405
      Top = 32
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandirGrid
      ParentShowHint = False
      ShowHint = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      TabStop = False
    end
    object buttonRetrair: TcxButton
      Left = 496
      Top = 32
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = actionRetrairGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      TabStop = False
    end
    object checkBoxBarraGrupos: TcxCheckBox
      Left = 591
      Top = 34
      TabStop = False
      Caption = 'Painel de Grupos'
      Properties.OnChange = checkBoxBarraGruposPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
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
      Properties.OnValidate = buttonEditTextoPesquisarPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      OnEnter = buttonEditTextoPesquisarEnter
      Width = 386
    end
    object buttonFechar: TcxButton
      Left = 619
      Top = 428
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Action = actionFechar
      TabOrder = 8
    end
    object buttonOK: TcxButton
      Left = 523
      Top = 428
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Action = actionOK
      TabOrder = 7
    end
    object buttonLocalizar: TcxButton
      Left = 419
      Top = 428
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Action = actionPesquisar
      TabOrder = 6
    end
    object buttonExportar: TcxButton
      Left = 12
      Top = 428
      Width = 101
      Height = 25
      Cursor = crHandPoint
      Action = actionExportar
      TabOrder = 5
    end
    object layoutControlGridGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
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
      Index = 1
    end
    object layoutItemExpandir: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExpandir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemRetrair: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonRetrair
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGridGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemBarraGrupos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = checkBoxBarraGrupos
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemtextoPesquisa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Texto a Pesquisar:'
      CaptionOptions.Layout = clTop
      Control = buttonEditTextoPesquisar
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 412
      ControlOptions.ShowBorder = False
      Index = 2
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
      Index = 2
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
  end
  object actionListPesquisa: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 544
    object actionExpandirGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Expandir'
      Hint = 'Expandir os detalhes do Grid'
      ImageIndex = 38
      OnExecute = actionExpandirGridExecute
    end
    object actionRetrairGrid: TAction
      Category = 'Op'#231#245'es'
      Caption = 'Retrair'
      Hint = 'Retrair detalhes do Grid'
      ImageIndex = 37
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
  object fdPesquisa: TFDQuery
    AfterClose = fdPesquisaAfterClose
    FilterOptions = [foCaseInsensitive]
    Connection = Data_Sisgef.FDConnectionMySQL
    FetchOptions.AssignedValues = [evMode, evRowsetSize]
    FetchOptions.Mode = fmAll
    SQL.Strings = (
      'select * from view_EntregadoresExpressaBases')
    Left = 392
    object fdPesquisaid_entregador: TFDAutoIncField
      FieldName = 'id_entregador'
      Origin = 'id_entregador'
      ReadOnly = True
    end
    object fdPesquisacod_agente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_agente'
      Origin = 'cod_agente'
    end
    object fdPesquisanom_base: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_base'
      Origin = 'nom_base'
      Size = 80
    end
    object fdPesquisacod_entregador: TIntegerField
      FieldName = 'cod_entregador'
      Origin = 'cod_entregador'
      Required = True
    end
    object fdPesquisanom_entregador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_entregador'
      Origin = 'nom_entregador'
      Size = 70
    end
    object fdPesquisades_chave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'des_chave'
      Origin = 'des_chave'
      Size = 70
    end
    object fdPesquisacod_cadastro: TIntegerField
      FieldName = 'cod_cadastro'
      Origin = 'cod_cadastro'
      Required = True
    end
    object fdPesquisanom_cadastro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nom_cadastro'
      Origin = 'nom_cadastro'
      Size = 70
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = fdPesquisa
    OnStateChange = dsPesquisaStateChange
    Left = 440
  end
end
