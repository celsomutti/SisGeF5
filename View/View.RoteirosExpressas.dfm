object view_RoteirosExpressas: Tview_RoteirosExpressas
  Left = 0
  Top = 0
  Hint = 'Pesquisar roteiros de cliente'
  Caption = 'Roteiros de Expressas'
  ClientHeight = 435
  ClientWidth = 908
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 908
    Height = 435
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Roteiros de Expressas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cboCliente: TcxComboBox
      Left = 10
      Top = 56
      ParentFont = False
      Properties.Items.Strings = (
        'Selecione ...'
        'TRANSFOLHA'
        'CARRIERS'
        'SPLOG BRASIL'
        'DIRECT')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 726
    end
    object cxButton1: TcxButton
      Left = 742
      Top = 52
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisarRoteiros
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 823
      Top = 52
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actImportarRoteiros
      TabOrder = 3
    end
    object grdRoteiros: TcxGrid
      Left = 10
      Top = 101
      Width = 888
      Height = 248
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object tvRoteiros: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvRoteirosNavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            ImageIndex = 11
          end>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 5
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 8
        Navigator.Buttons.Next.ImageIndex = 7
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 6
        Navigator.Buttons.Insert.ImageIndex = 3
        Navigator.Buttons.Delete.ImageIndex = 4
        Navigator.Buttons.Edit.ImageIndex = 10
        Navigator.Buttons.Post.ImageIndex = 13
        Navigator.Buttons.Cancel.ImageIndex = 2
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnGrouping = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvRoteirosid_roteiro: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_roteiro'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 44
        end
        object tvRoteiroscod_ccep5: TcxGridDBColumn
          Caption = 'CCEP 5'
          DataBinding.FieldName = 'cod_ccep5'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object tvRoteirosdes_roteiro: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'des_roteiro'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          HeaderAlignmentHorz = taCenter
          Width = 238
        end
        object tvRoteirosnum_cep_inicial: TcxGridDBColumn
          Caption = 'CEP Inicial'
          DataBinding.FieldName = 'num_cep_inicial'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 92
        end
        object tvRoteirosnum_cep_final: TcxGridDBColumn
          Caption = 'CEP Final'
          DataBinding.FieldName = 'num_cep_final'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object tvRoteirosdes_prazo: TcxGridDBColumn
          Caption = 'Prazo'
          DataBinding.FieldName = 'des_prazo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object tvRoteirosdom_zona: TcxGridDBColumn
          Caption = 'Zona'
          DataBinding.FieldName = 'dom_zona'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'N'#195'O FAZ'
              ImageIndex = 9
              Value = 'N'
            end
            item
              Description = 'URBANO'
              ImageIndex = 1
              Value = 'U'
            end
            item
              Description = 'INTERMUNICIPAL'
              ImageIndex = 1
              Value = 'I'
            end
            item
              Description = 'URBANO/INTERMUNICIPAL'
              ImageIndex = 1
              Value = 'A'
            end>
          HeaderAlignmentHorz = taCenter
          Width = 150
        end
        object tvRoteirosdes_sigla: TcxGridDBColumn
          Caption = 'Tipo'
          DataBinding.FieldName = 'cod_tipo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'N'#195'O FAZ'
              ImageIndex = 1
              Value = 0
            end
            item
              Description = 'SOMENE LEVE'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'SOMENE PESADO'
              ImageIndex = 1
              Value = 2
            end
            item
              Description = 'MISTA (LEVE E PESADO)'
              ImageIndex = 1
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
          Width = 177
        end
        object tvRoteirosdes_logradouro: TcxGridDBColumn
          Caption = 'Logradouro'
          DataBinding.FieldName = 'des_logradouro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvRoteirosdes_bairro: TcxGridDBColumn
          Caption = 'Bairro'
          DataBinding.FieldName = 'des_bairro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvRoteiroscod_cliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'cod_cliente'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'TRANSFOLHA'
              ImageIndex = 7
              Value = 1
            end
            item
              Description = 'CARRIERS'
              ImageIndex = 7
              Value = 2
            end
            item
              Description = 'SPLOG BRASIL'
              ImageIndex = 7
              Value = 3
            end
            item
              Description = 'DIRECT'
              ImageIndex = 7
              Value = 4
            end>
          HeaderAlignmentHorz = taCenter
          Width = 149
        end
        object tvRoteiroscod_leve: TcxGridDBColumn
          DataBinding.FieldName = 'cod_leve'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0.;- ,0.'
          HeaderAlignmentHorz = taCenter
        end
        object tvRoteiroscod_pesado: TcxGridDBColumn
          DataBinding.FieldName = 'cod_pesado'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0.;- ,0.'
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvRoteiros: TcxGridLevel
        GridView = tvRoteiros
      end
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 400
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravarRoteiros
      TabOrder = 6
    end
    object cxButton4: TcxButton
      Left = 91
      Top = 400
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      TabOrder = 7
    end
    object cxButton5: TcxButton
      Left = 823
      Top = 400
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 9
    end
    object pbProcesso: TcxProgressBar
      Left = 10
      Top = 373
      TabOrder = 5
      Width = 888
    end
    object lblAviso: TcxLabel
      Left = 172
      Top = 408
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 495
      AnchorY = 417
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = cboCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Roteiros'
      CaptionOptions.Layout = clTop
      Control = grdRoteiros
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lyiProgresso: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Progresso'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = pbProcesso
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = lblAviso
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object aclRoteirosExpressas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 840
    Top = 8
    object actPesquisarRoteiros: TAction
      Category = 'Roteiros Expressas'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar roteiros de cliente'
      ImageIndex = 14
      OnExecute = actPesquisarRoteirosExecute
    end
    object actImportarRoteiros: TAction
      Category = 'Roteiros Expressas'
      Caption = 'Importar'
      Hint = 'Importar planilha paa banco de dados'
      ImageIndex = 33
      OnExecute = actImportarRoteirosExecute
    end
    object actGravarRoteiros: TAction
      Category = 'Roteiros Expressas'
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Gravar altera'#231#245'es no banco de dados'
      ImageIndex = 13
      OnExecute = actGravarRoteirosExecute
    end
    object actCancelar: TAction
      Category = 'Roteiros Expressas'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actFechar: TAction
      Category = 'Roteiros Expressas'
      Caption = 'Fechar'
      Hint = 'Fechar janela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbRoteirosExpressas
    Left = 712
    Top = 8
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo csv|*.csv'
    Title = 'Abrir planilha'
    Left = 776
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 664
    Top = 8
  end
end
