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
  ShowHint = True
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
    ExplicitLeft = 96
    ExplicitTop = 72
    ExplicitWidth = 300
    ExplicitHeight = 250
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
      Top = 51
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
      TabOrder = 1
      Text = '0'
      Width = 73
    end
    object dataOS: TcxDateEdit
      Left = 170
      Top = 51
      Hint = 'Data da ordem de servi'#231'o'
      Style.HotTrack = False
      TabOrder = 2
      Width = 83
    end
    object tipoOS: TcxComboBox
      Left = 320
      Top = 51
      Hint = 'Tipo de ordem de servi'#231'o'
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'CONSUMO'
        'PRESTA'#199#195'O')
      Style.HotTrack = False
      TabOrder = 3
      Text = 'PRESTA'#199#195'O'
      Width = 85
    end
    object cliente: TcxLookupComboBox
      Left = 64
      Top = 81
      Hint = 'Selecione o cliente'
      Properties.KeyFieldNames = 'cod_cliente'
      Properties.ListColumns = <
        item
          FieldName = 'nom_cliente'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsClientes
      Style.HotTrack = False
      TabOrder = 4
      Width = 341
    end
    object codigoMotorista: TcxButtonEdit
      Left = 22
      Top = 126
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
      TabOrder = 5
      Text = '0'
      Width = 93
    end
    object nomeMotorista: TcxTextEdit
      Left = 121
      Top = 129
      Hint = 'Nome do motorista/terceiro'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 284
    end
    object placaVeiculo: TcxButtonEdit
      Left = 469
      Top = 51
      Hint = 'Placa do ve'#237'culo'
      Properties.Buttons = <
        item
          Action = actionSrarchVeichle
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 7
      Width = 76
    end
    object descricaoVeiculo: TcxTextEdit
      Left = 551
      Top = 51
      Hint = 'Descri'#231#227'o do ve'#237'culo cadastrado'
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 8
      Width = 229
    end
    object roteiro: TcxButtonEdit
      Left = 479
      Top = 81
      Hint = 'Roteiro'
      Properties.Buttons = <
        item
          Action = actionSearchRoadMap
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 9
      Width = 301
    end
    object kmInicial: TcxMaskEdit
      Left = 435
      Top = 126
      Hint = 'Km inicial'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 10
      Text = '0'
      Width = 88
    end
    object horaSaida: TcxTimeEdit
      Left = 529
      Top = 126
      Hint = 'Hora da sa'#237'da'
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 11
      Width = 70
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 605
      Top = 126
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 12
      Text = '0'
      Width = 95
    end
    object horaRetorno: TcxTimeEdit
      Left = 706
      Top = 126
      Hint = 'Hora do retorno'
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      TabOrder = 13
      Width = 74
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
      Index = 1
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
      ControlOptions.OriginalWidth = 70
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
      Control = cxMaskEdit1
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
  end
  object actionListOS: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 360
    Top = 8
    object actionSearchOS: TAction
      Category = 'Search'
      Caption = 'Pesquisar N'#250'mero'
      Hint = 'Pesquisar OS pelo n'#250'mero'
      ImageIndex = 86
    end
    object actionSearchDriver: TAction
      Category = 'Search'
      Caption = 'Pesquisar Motorista'
      Hint = 'Pesquisar por motorista ou terceiro'
      ImageIndex = 86
    end
    object actionSrarchVeichle: TAction
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
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbClientesEmpresa
    Left = 304
    Top = 8
  end
end
