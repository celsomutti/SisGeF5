object view_SisGeFCreditWorksheet: Tview_SisGeFCreditWorksheet
  Left = 0
  Top = 0
  Caption = 'Planilha de Cr'#233'dito'
  ClientHeight = 487
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 892
    Height = 487
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Planilha de Cr'#233'dito'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gridCreditWorkssheet: TcxGrid
      Left = 10
      Top = 98
      Width = 872
      Height = 339
      TabOrder = 8
      object gridCreditWorkssheetDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCreditWorksheet
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ' ,0.00; - ,0.00'
            Kind = skSum
            Column = gridCreditWorkssheetDBTableView1val_total
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = gridCreditWorkssheetDBTableView1val_total
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvColumnHeader]
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.HeaderAutoHeight = True
        object gridCreditWorkssheetDBTableView1id_registro: TcxGridDBColumn
          DataBinding.FieldName = 'id_registro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridCreditWorkssheetDBTableView1cod_tipo_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo_extrato'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'EXPRESSAS'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'PER'#211'DICOS'
              Value = 2
            end
            item
              Description = 'SERVI'#199'OS'
              Value = 3
            end>
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object gridCreditWorkssheetDBTableView1cod_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cadastro'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
          HeaderAlignmentHorz = taCenter
          Width = 39
        end
        object gridCreditWorkssheetDBTableView1nom_cadastro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_cadastro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 139
        end
        object gridCreditWorkssheetDBTableView1cod_banco: TcxGridDBColumn
          DataBinding.FieldName = 'cod_banco'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 34
        end
        object gridCreditWorkssheetDBTableView1nom_banco: TcxGridDBColumn
          DataBinding.FieldName = 'nom_banco'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 76
        end
        object gridCreditWorkssheetDBTableView1des_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_conta'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object gridCreditWorkssheetDBTableView1num_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_agencia'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object gridCreditWorkssheetDBTableView1num_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object gridCreditWorkssheetDBTableView1nom_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'nom_favorecido'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 129
        end
        object gridCreditWorkssheetDBTableView1num_cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'num_cpf_cnpj'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object gridCreditWorkssheetDBTableView1val_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridCreditWorkssheetDBTableView1des_unique_key: TcxGridDBColumn
          DataBinding.FieldName = 'des_unique_key'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCreditWorkssheetDBTableView1dat_credito: TcxGridDBColumn
          DataBinding.FieldName = 'dat_credito'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCreditWorkssheetDBTableView1num_extrato: TcxGridDBColumn
          DataBinding.FieldName = 'num_extrato'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCreditWorkssheetDBTableView1cod_forma_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'cod_forma_pagamento'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
        object gridCreditWorkssheetDBTableView1des_forma_pagamento: TcxGridDBColumn
          Caption = 'Forma de Pagamento'
          DataBinding.FieldName = 'des_forma_pagamento'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object gridCreditWorkssheetDBTableView1cod_modalidade_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'cod_modalidade_pagamento'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object gridCreditWorkssheetDBTableView1dom_bloqueio: TcxGridDBColumn
          DataBinding.FieldName = 'dom_bloqueio'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object gridCreditWorkssheetLevel1: TcxGridLevel
        GridView = gridCreditWorkssheetDBTableView1
      end
    end
    object tipoExtrato: TcxComboBox
      Left = 93
      Top = 38
      Hint = 'Selecione o tipo de extrato'
      Properties.Items.Strings = (
        'TODOS'
        'EXPRESSAS'
        'PER'#211'DICOS'
        'SERVI'#199'OS')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'TODOS'
      Width = 121
    end
    object dataCredito: TcxButtonEdit
      Left = 305
      Top = 36
      Hint = 'Data do cr'#233'dito'
      Properties.Buttons = <
        item
          Action = actionShowCalendar
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.EditMask = '!99/99/0099;1; '
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Text = '  /  /    '
      Width = 100
    end
    object planilhaSalva: TcxCheckBox
      Left = 411
      Top = 36
      Hint = 'Marque para resgatar planolha salva'
      Caption = 'Planilha salva'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
    end
    object cxButton1: TcxButton
      Left = 804
      Top = 36
      Width = 78
      Height = 25
      Cursor = crHandPoint
      Action = actionProcess
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
    end
    object cxButton2: TcxButton
      Left = 10
      Top = 67
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExpandGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton3: TcxButton
      Left = 91
      Top = 67
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCollapseGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object cxButton4: TcxButton
      Left = 172
      Top = 67
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionPanelGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 7
    end
    object cxButton5: TcxButton
      Left = 564
      Top = 447
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveWorksheet
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 11
    end
    object cxButton6: TcxButton
      Left = 726
      Top = 447
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 13
    end
    object cxButton7: TcxButton
      Left = 807
      Top = 447
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 14
    end
    object labelInfo: TcxLabel
      Left = 47
      Top = 451
      Style.HotTrack = False
      Transparent = True
    end
    object cxButton8: TcxButton
      Left = 645
      Top = 443
      Width = 75
      Height = 34
      Cursor = crHandPoint
      Action = actionBIMER
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 12
    end
    object activityIndicator: TdxActivityIndicator
      Left = 10
      Top = 443
      Width = 31
      Height = 34
      PropertiesClassName = 'TdxActivityIndicatorCircularDotsProperties'
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 4
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
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridCreditWorkssheet
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de Extrato:'
      Control = tipoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Data de Cr'#233'dito:'
      Control = dataCredito
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = planilhaSalva
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = labelInfo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 7
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avCenter
      CaptionOptions.Text = 'dxActivityIndicator1'
      CaptionOptions.Visible = False
      Control = activityIndicator
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 31
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dsCreditWorksheet: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableCreditWorksheet
    Left = 712
    Top = 8
  end
  object actionListCrwditWorksheet: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 624
    Top = 8
    object actionShowCalendar: TAction
      Category = 'Form'
      Caption = 'Calend'#225'rio'
      Hint = 'Exibir calend'#225'rio'
      ImageIndex = 112
      OnExecute = actionShowCalendarExecute
    end
    object actionProcess: TAction
      Category = 'Filter'
      Caption = '&Processar'
      Hint = 'Processar ou resgatar planilha de cr'#233'dito salva'
      ImageIndex = 109
      OnExecute = actionProcessExecute
    end
    object actionExpandGrid: TAction
      Category = 'Form'
      Caption = '&Expandir'
      Hint = 'Expandir grupos da grade'
      ImageIndex = 106
      OnExecute = actionExpandGridExecute
    end
    object actionCollapseGrid: TAction
      Category = 'Form'
      Caption = '&Ocultar'
      Hint = 'Ocultar dados dos grupos da grade'
      ImageIndex = 107
      OnExecute = actionCollapseGridExecute
    end
    object actionPanelGrid: TAction
      Category = 'Form'
      Caption = 'P&ainel'
      Hint = 'Exibir painel de grupos'
      ImageIndex = 110
      OnExecute = actionPanelGridExecute
    end
    object actionSaveWorksheet: TAction
      Category = 'Filter'
      Caption = '&Gravar'
      Hint = 'Gravar a planilha no banco de dados'
      ImageIndex = 85
    end
    object actionExportGrid: TAction
      Category = 'Form'
      Caption = 'E&xportar'
      Hint = 'Exportar dados da grade'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseForm: TAction
      Category = 'Form'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
    object actionBIMER: TAction
      Category = 'Filter'
      Caption = '&BIMER'
      Hint = 'Gera planilha para o BIMER'
      ImageIndex = 113
    end
  end
  object timer: TTimer
    Enabled = False
    OnTimer = timerTimer
    Left = 792
    Top = 16
  end
end
