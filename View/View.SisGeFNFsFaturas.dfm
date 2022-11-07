object view_SisGeFNFsFaturas: Tview_SisGeFNFsFaturas
  Left = 0
  Top = 0
  Caption = 'Notas Fiscais de Servi'#231'os e Faturas'
  ClientHeight = 534
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 848
    Height = 534
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object tipoData: TcxComboBox
      Left = 82
      Top = 12
      Hint = 'Selecione o par'#226'metro'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Data de Vencimento'
        'Data de Envio')
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Selecione ...'
      Width = 121
    end
    object dataInicial: TcxDateEdit
      Left = 271
      Top = 12
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 1
      Width = 80
    end
    object dataFinal: TcxDateEdit
      Left = 417
      Top = 12
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 2
      Width = 80
    end
    object cxButton1: TcxButton
      Left = 756
      Top = 10
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Action = actionSearchPeriod
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 10
      Top = 41
      Width = 828
      Height = 452
      BevelOuter = bvNone
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 4
      DesignSize = (
        828
        452)
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 828
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object cxButton2: TcxButton
          Left = 0
          Top = 0
          Width = 33
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Expandir'
          OptionsImage.ImageIndex = 106
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 0
        end
        object cxButton3: TcxButton
          Left = 33
          Top = 0
          Width = 33
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Retrair'
          OptionsImage.ImageIndex = 107
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 1
        end
        object cxButton4: TcxButton
          Left = 66
          Top = 0
          Width = 33
          Height = 25
          Cursor = crHandPoint
          Align = alLeft
          Caption = 'Grupo'
          OptionsImage.ImageIndex = 110
          OptionsImage.Images = Data_Sisgef.iml_16_16
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          TabOrder = 2
        end
      end
      object gridFaturas: TcxGrid
        Left = 0
        Top = 25
        Width = 828
        Height = 393
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        object gridFaturasDBTableView1: TcxGridDBTableView
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
          Navigator.Buttons.Filter.ImageIndex = 96
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = ds
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsSelection.CheckBoxVisibility = [cbvDataRow]
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object gridFaturasDBTableView1id_fatura: TcxGridDBColumn
            DataBinding.FieldName = 'id_fatura'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
            Properties.ReadOnly = True
            Width = 34
          end
          object gridFaturasDBTableView1dom_aceite: TcxGridDBColumn
            DataBinding.FieldName = 'dom_aceite'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            Width = 62
          end
          object gridFaturasDBTableView1dat_vencimento: TcxGridDBColumn
            DataBinding.FieldName = 'dat_vencimento'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentHorz = taCenter
            Width = 96
          end
          object gridFaturasDBTableView1cod_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'cod_cadastro'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.IgnoreMaskBlank = True
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '\d\d\d\d\d\d'
            Properties.ReadOnly = True
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1num_cnpj: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1nom_cadastro: TcxGridDBColumn
            DataBinding.FieldName = 'nom_cadastro'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1nom_favorecido: TcxGridDBColumn
            DataBinding.FieldName = 'nom_favorecido'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1num_cpf_cnpj_favorecido: TcxGridDBColumn
            DataBinding.FieldName = 'num_cpf_cnpj_favorecido'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1nom_razao_mei: TcxGridDBColumn
            DataBinding.FieldName = 'nom_razao_mei'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1num_cnpj_mei: TcxGridDBColumn
            DataBinding.FieldName = 'num_cnpj_mei'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
          end
          object gridFaturasDBTableView1dat_envio: TcxGridDBColumn
            DataBinding.FieldName = 'dat_envio'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Properties.SaveTime = False
            Properties.ShowTime = False
            HeaderAlignmentHorz = taCenter
            Width = 84
          end
          object gridFaturasDBTableView1nom_arquivo: TcxGridDBColumn
            DataBinding.FieldName = 'nom_arquivo'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridFaturasDBTableView1des_localizacao_arquivo: TcxGridDBColumn
            DataBinding.FieldName = 'des_localizacao_arquivo'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridFaturasDBTableView1dom_credito: TcxGridDBColumn
            DataBinding.FieldName = 'dom_credito'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            Width = 89
          end
        end
        object gridFaturasLevel1: TcxGridLevel
          GridView = gridFaturasDBTableView1
        end
      end
      object cxButton7: TcxButton
        Left = 103
        Top = 424
        Width = 94
        Height = 25
        Cursor = crHandPoint
        Action = actionSave
        Anchors = [akLeft, akBottom]
        TabOrder = 3
      end
      object cxButton5: TcxButton
        Left = 203
        Top = 424
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Action = actionCancel
        Anchors = [akLeft, akBottom]
        TabOrder = 4
      end
      object cxButton8: TcxButton
        Left = 304
        Top = 424
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Action = actionExportGrid
        Anchors = [akLeft, akBottom]
        TabOrder = 5
      end
      object cxButton9: TcxButton
        Left = 405
        Top = 424
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Action = actionDownload
        Anchors = [akLeft, akBottom]
        TabOrder = 6
      end
      object cxButton10: TcxButton
        Left = 2
        Top = 424
        Width = 95
        Height = 25
        Cursor = crHandPoint
        Action = actionAccept
        Anchors = [akLeft, akBottom]
        TabOrder = 2
      end
    end
    object cxButton6: TcxButton
      Left = 763
      Top = 499
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 6
    end
    object labelAviso: TcxLabel
      Left = 10
      Top = 500
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Procurar por: '
      Control = tipoData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      Control = dataInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Final: '
      Control = dataFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = Panel1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelAviso
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 8
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object memTableFaturas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 560
    Top = 16
    object memTableFaturasid_fatura: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_fatura'
    end
    object memTableFaturascod_cadastro: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_cadastro'
    end
    object memTableFaturasCPFCNPJCadastro: TStringField
      DisplayLabel = 'CPf / CNPJ Cadastro'
      FieldName = 'num_cnpj'
    end
    object memTableFaturasnom_cadastro: TStringField
      DisplayLabel = 'Nome Cadastro'
      FieldName = 'nom_cadastro'
      Size = 70
    end
    object memTableFaturasnom_favorecido: TStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'nom_favorecido'
      Size = 70
    end
    object memTableFaturasnum_cpf_cnpj_favorecido: TStringField
      DisplayLabel = 'CPF / CNPJ Favorecido'
      FieldName = 'num_cpf_cnpj_favorecido'
    end
    object memTableFaturasnom_razao_mei: TStringField
      DisplayLabel = 'Raz'#227'o Social MEI'
      FieldName = 'nom_razao_mei'
      Size = 70
    end
    object memTableFaturasnum_cnpj_mei: TStringField
      DisplayLabel = 'CNPJ MEI'
      FieldName = 'num_cnpj_mei'
    end
    object memTableFaturasdat_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dat_vencimento'
    end
    object memTableFaturasdat_envio: TDateField
      DisplayLabel = 'Data Envio'
      FieldName = 'dat_envio'
    end
    object memTableFaturasnom_arquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'nom_arquivo'
      Size = 150
    end
    object memTableFaturasdes_localizacao_arquivo: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'des_localizacao_arquivo'
      Size = 150
    end
    object memTableFaturasdom_aceite: TBooleanField
      DisplayLabel = 'Aceite'
      FieldName = 'dom_aceite'
    end
    object memTableFaturasdom_credito: TBooleanField
      DisplayLabel = 'Creditado'
      FieldName = 'dom_credito'
    end
  end
  object ds: TDataSource
    DataSet = memTableFaturas
    Left = 648
    Top = 16
  end
  object actionList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 712
    Top = 8
    object actionSearchPeriod: TAction
      Caption = '&Pesquisar'
      Hint = 'Pesquisar per'#237'odo'
      ImageIndex = 86
      OnExecute = actionSearchPeriodExecute
    end
    object actionExpandGridGroup: TAction
      Caption = 'Expandir'
      Hint = 'Expandir grupos no grid'
      ImageIndex = 106
      OnExecute = actionExpandGridGroupExecute
    end
    object actionCollapseGroup: TAction
      Caption = 'Retrair'
      Hint = 'Retrair grupos no grid'
      ImageIndex = 107
      OnExecute = actionCollapseGroupExecute
    end
    object actionGroupPanelView: TAction
      Caption = 'Grupos'
      Hint = 'Exibir / Ocultar painel de grupos no grid'
      ImageIndex = 110
      OnExecute = actionGroupPanelViewExecute
    end
    object actionSave: TAction
      Caption = '&Gravar'
      Hint = 'Gravar no banco de dados'
      ImageIndex = 85
      OnExecute = actionSaveExecute
    end
    object actionCancel: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar Opera'#231#227'o'
      ImageIndex = 84
      OnExecute = actionCancelExecute
    end
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do grid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fchar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionDownload: TAction
      Caption = 'Do&wnload'
      Hint = 'Download do documento'
      ImageIndex = 119
      OnExecute = actionDownloadExecute
    end
    object actionAccept: TAction
      Caption = '&Aceitar'
      Hint = 'Aceitar a fatura'
      ImageIndex = 83
      OnExecute = actionAcceptExecute
    end
  end
  object SaveDialog: TSaveDialog
    Filter = '*.*|Todos'
    Title = 'Salvar arquivo'
    Left = 608
    Top = 8
  end
end
