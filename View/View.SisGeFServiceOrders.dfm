object view_SisGeFServiceOrders: Tview_SisGeFServiceOrders
  Left = 0
  Top = 0
  Caption = 'Ordens de Servi'#231'os'
  ClientHeight = 486
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 802
    Height = 486
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.dxLayoutCxLookAndFeel5
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Ordens de Servi'#231'o'
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
    object numeroOS: TcxButtonEdit
      Left = 59
      Top = 82
      Hint = 'N'#250'mero da OS'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionSearchOS
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 8
      Text = '0'
      Width = 73
    end
    object dataOS: TcxDateEdit
      Left = 170
      Top = 82
      Hint = 'Data da ordem de servi'#231'o'
      Style.HotTrack = False
      TabOrder = 9
      Width = 83
    end
    object tipoOS: TcxComboBox
      Left = 320
      Top = 82
      Hint = 'Tipo de ordem de servi'#231'o'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'CONSUMO'
        'PRESTA'#199#195'O')
      Style.HotTrack = False
      TabOrder = 10
      Text = 'PRESTA'#199#195'O'
      Width = 85
    end
    object cliente: TcxLookupComboBox
      Left = 64
      Top = 112
      Hint = 'Selecione o cliente'
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      Style.HotTrack = False
      TabOrder = 11
      Width = 341
    end
    object codigoMotorista: TcxButtonEdit
      Left = 22
      Top = 157
      Hint = 'C'#243'digo do motorista/terceiro'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actionSearchDriver
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 12
      Text = '0'
      Width = 93
    end
    object nomeMotorista: TcxTextEdit
      Left = 121
      Top = 160
      Hint = 'Nome do motorista/terceiro'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 13
      Width = 284
    end
    object placaVeiculo: TcxButtonEdit
      Left = 469
      Top = 82
      Hint = 'Placa do ve'#237'culo'
      Properties.Buttons = <
        item
          Action = actionSearchVeichle
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 14
      Width = 76
    end
    object descricaoVeiculo: TcxTextEdit
      Left = 551
      Top = 82
      Hint = 'Descri'#231#227'o do ve'#237'culo cadastrado'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 15
      Width = 229
    end
    object roteiro: TcxButtonEdit
      Left = 479
      Top = 112
      Hint = 'Roteiro'
      Properties.Buttons = <
        item
          Action = actionSearchRoadMap
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 16
      Width = 301
    end
    object kmInicial: TcxMaskEdit
      Left = 435
      Top = 157
      Hint = 'Od'#244'metro inicial'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 17
      Text = '0'
      Width = 88
    end
    object horaSaida: TcxTimeEdit
      Left = 529
      Top = 157
      Hint = 'Hora da sa'#237'da'
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 18
      Width = 70
    end
    object kmFinal: TcxMaskEdit
      Left = 605
      Top = 157
      Hint = 'Od'#244'metro final'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 19
      Text = '0'
      Width = 95
    end
    object horaRetorno: TcxTimeEdit
      Left = 706
      Top = 157
      Hint = 'Hora do retorno'
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 20
      Width = 74
    end
    object gridOS: TcxGrid
      Left = 22
      Top = 217
      Width = 758
      Height = 247
      TabOrder = 21
      object gridOSDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.ImageIndex = 89
        Navigator.Buttons.Delete.ImageIndex = 90
        Navigator.Buttons.Edit.ImageIndex = 95
        Navigator.Buttons.Post.ImageIndex = 85
        Navigator.Buttons.Cancel.ImageIndex = 84
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsService
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = gridOSDBTableView1val_total
          end
          item
            Format = ' ,0.000;- ,0.000'
            Kind = skSum
            Column = gridOSDBTableView1qtd_item
          end>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object gridOSDBTableView1num_item: TcxGridDBColumn
          DataBinding.FieldName = 'num_item'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridOSDBTableView1des_servico: TcxGridDBColumn
          DataBinding.FieldName = 'des_servico'
          HeaderAlignmentHorz = taCenter
          Width = 420
        end
        object gridOSDBTableView1qtd_item: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_item'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 3
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object gridOSDBTableView1val_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'val_unitario'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object gridOSDBTableView1val_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.00;- ,0.00'
          HeaderAlignmentHorz = taCenter
          Width = 135
        end
      end
      object gridOSLevel1: TcxGridLevel
        GridView = gridOSDBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 10
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionNewOS
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 91
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionEditOS
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton3: TcxButton
      Left = 172
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionLocateOS
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object cxButton4: TcxButton
      Left = 334
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionDeleteOS
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 5
    end
    object cxButton5: TcxButton
      Left = 415
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionSaveOS
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 6
    end
    object cxButton6: TcxButton
      Left = 717
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 7
    end
    object cxButton7: TcxButton
      Left = 253
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCancel
      Cancel = True
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 4
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
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Identifica'#231#227'o OS'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Viagem / Trasfer'#234'ncia'
      ButtonOptions.Buttons = <>
      ItemControlAreaAlignment = catNone
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Os N'#186'.'
      Control = numeroOS
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Data:'
      Control = dataOS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo de OS:'
      Control = tipoOS
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente:'
      Control = cliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Motorista/Terceiro:'
      CaptionOptions.Layout = clTop
      Control = codigoMotorista
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Nome:'
      CaptionOptions.Visible = False
      Control = nomeMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Placa:'
      Control = placaVeiculo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = descricaoVeiculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Roteiro:'
      Control = roteiro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'KM Inicial:'
      CaptionOptions.Layout = clTop
      Control = kmInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sa'#237'da:'
      CaptionOptions.Layout = clTop
      Control = horaSaida
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'KM Final:'
      CaptionOptions.Layout = clTop
      Control = kmFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Retorno:'
      CaptionOptions.Layout = clTop
      Control = horaRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 58
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Servi'#231'os'
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridOS
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object actionListOS: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 592
    Top = 8
    object actionSearchOS: TAction
      Category = 'Search'
      Caption = 'Pesquisar N'#250'mero'
      Hint = 'Pesquisar OS pelo n'#250'mero'
      ImageIndex = 86
      OnExecute = actionSearchOSExecute
    end
    object actionSearchDriver: TAction
      Category = 'Search'
      Caption = 'Pesquisar Motorista'
      Hint = 'Pesquisar por motorista ou terceiro'
      ImageIndex = 86
    end
    object actionSearchVeichle: TAction
      Category = 'Search'
      Caption = 'Pesquisar Ve'#237'culos'
      Hint = 'Pesquisar ve'#237'culos'
      ImageIndex = 86
    end
    object actionSearchRoadMap: TAction
      Category = 'Search'
      Caption = 'PEsquisar Roteiros'
      Hint = 'Pesquisar roteiros cadastrados'
      ImageIndex = 86
    end
    object actionNewOS: TAction
      Category = 'Service'
      Caption = '&Nova'
      Hint = 'Nova OS'
      ImageIndex = 97
      ShortCut = 113
    end
    object actionEditOS: TAction
      Category = 'Service'
      Caption = '&Editar'
      Hint = 'Editar OS'
      ImageIndex = 95
      ShortCut = 114
    end
    object actionDeleteOS: TAction
      Category = 'Service'
      Caption = 'E&xcluir'
      Hint = 'Excluir OS'
      ImageIndex = 116
      ShortCut = 16499
    end
    object actionCancel: TAction
      Category = 'Service'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 84
    end
    object actionLocateOS: TAction
      Category = 'Service'
      Caption = '&Localizar'
      Hint = 'Localizar OS'
      ImageIndex = 100
      ShortCut = 119
    end
    object actionSaveOS: TAction
      Category = 'Service'
      Caption = '&Gravar'
      Hint = 'Gravar OS'
      ImageIndex = 85
      ShortCut = 116
    end
    object actionCloseForm: TAction
      Category = 'Form'
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 552
    Top = 8
  end
  object memTableServices: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 632
    Top = 8
    object memTableServicesnum_item: TAutoIncField
      DisplayLabel = '#'
      FieldName = 'num_item'
    end
    object memTableServicesdes_servico: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'des_servico'
      Size = 256
    end
    object memTableServicesqtd_item: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'qtd_item'
    end
    object memTableServicesval_unitario: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'val_unitario'
    end
    object memTableServicesval_total: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Total'
      FieldName = 'val_total'
    end
  end
  object dsService: TDataSource
    DataSet = memTableServices
    Left = 664
    Top = 8
  end
end
