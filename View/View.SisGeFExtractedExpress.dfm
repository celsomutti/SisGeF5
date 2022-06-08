object view_SisGeFExtractedExpress: Tview_SisGeFExtractedExpress
  Left = 0
  Top = 0
  Caption = 'Extrato de Expressas'
  ClientHeight = 405
  ClientWidth = 868
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
    Width = 868
    Height = 405
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    ExplicitWidth = 812
    object tipoExtrato: TcxComboBox
      Left = 36
      Top = 80
      Hint = 'Tipo de Extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'ANAL'#237'TICO'
        'SINT'#201'TICO')
      Style.HotTrack = False
      TabOrder = 0
      Text = 'SELECIONE ...'
      Width = 94
    end
    object tipoPeriodo: TcxComboBox
      Left = 136
      Top = 80
      Hint = 'Tipo de Periodo'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'CUSTOMIZADO'
        'PARAMETRIZADO')
      Style.HotTrack = False
      TabOrder = 1
      Text = 'SELECIONE ...'
      Width = 111
    end
    object dataInicialPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data inicial do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 207
    end
    object dataFinalPeriodo: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data final do per'#237'odo customizado'
      Style.HotTrack = False
      TabOrder = 3
      Visible = False
      Width = 209
    end
    object anoPeriodo: TcxComboBox
      Left = 313
      Top = 77
      Hint = 'Ano do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      TabOrder = 4
      Width = 66
    end
    object mesPeriodo: TcxComboBox
      Left = 385
      Top = 76
      Hint = 'M'#234's do per'#237'odo do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
      Style.HotTrack = False
      TabOrder = 5
      Text = 'SELECIONE ...'
      Width = 98
    end
    object periodoParametrizado: TcxComboBox
      Left = 489
      Top = 76
      Hint = 'Per'#237'odo parametrizado'
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object situacaoExtrato: TcxComboBox
      Left = 690
      Top = 80
      Hint = 'Situa'#231#227'o do extrato'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SELECIONE ...'
        'ABERTO'
        'ENCERRADO')
      Style.HotTrack = False
      TabOrder = 7
      Text = 'SELECIONE ...'
      Width = 142
    end
    object listaClientes: TcxMCListBox
      Left = 36
      Top = 155
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 60
        end
        item
          Text = 'Nome'
          Width = 200
        end>
      Style.TransparentBorder = True
      TabOrder = 8
    end
    object cxButton1: TcxButton
      Left = 36
      Top = 258
      Width = 78
      Height = 25
      Action = actionIncludeClients
      TabOrder = 9
    end
    object cxButton2: TcxButton
      Left = 120
      Top = 258
      Width = 77
      Height = 25
      Action = actionExcludeClients
      TabOrder = 10
    end
    object listaBases: TcxMCListBox
      Left = 311
      Top = 155
      Width = 246
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 177
        end>
      TabOrder = 12
    end
    object cxButton3: TcxButton
      Left = 311
      Top = 258
      Width = 78
      Height = 25
      Action = actionIncludeBases
      TabOrder = 13
    end
    object cxButton4: TcxButton
      Left = 395
      Top = 258
      Width = 78
      Height = 25
      Action = actionExcludeBases
      TabOrder = 14
    end
    object listaEntregadores: TcxMCListBox
      Left = 587
      Top = 155
      Width = 245
      Height = 97
      HeaderSections = <
        item
          Alignment = taRightJustify
          Text = 'C'#243'digo'
          Width = 65
        end
        item
          AutoSize = True
          Text = 'Nome'
          Width = 176
        end>
      TabOrder = 16
    end
    object cxButton5: TcxButton
      Left = 587
      Top = 258
      Width = 78
      Height = 25
      Action = actionIncludeCouriers
      TabOrder = 17
    end
    object cxButton6: TcxButton
      Left = 671
      Top = 258
      Width = 77
      Height = 25
      Action = actionExcludeCouriers
      TabOrder = 18
    end
    object cxButton7: TcxButton
      Left = 203
      Top = 258
      Width = 78
      Height = 25
      Action = actionClearClients
      TabOrder = 11
    end
    object cxButton8: TcxButton
      Left = 479
      Top = 258
      Width = 78
      Height = 25
      Action = actionClearBases
      TabOrder = 15
    end
    object cxButton9: TcxButton
      Left = 754
      Top = 258
      Width = 78
      Height = 25
      Action = actionClearCouriers
      TabOrder = 19
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
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Tipo de Extrato:'
      CaptionOptions.Layout = clTop
      Control = tipoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 94
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Tipo de Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = tipoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutGroupMain: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object layoutGroupParameters: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Par'#226'metros'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object layoutGroupExtract: TdxLayoutGroup
      Parent = layoutGroupMain
      CaptionOptions.Text = 'Extrato'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = layoutGroupParameters
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 1
    end
    object layoutGroupCustomized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Customizado'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object layoutGroupParameterized: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Parametrizado'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = layoutGroupCustomized
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Data Inicial:'
      CaptionOptions.Layout = clTop
      Control = dataInicialPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Hint = 'Data final do per'#237'odo customizado'
      CaptionOptions.Text = 'Data Final:'
      CaptionOptions.Layout = clTop
      Control = dataFinalPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = layoutGroupParameterized
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Ano:'
      CaptionOptions.Layout = clTop
      Control = anoPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = layoutGroupParameterized
      CaptionOptions.Hint = 'M'#234's do per'#237'odo'
      CaptionOptions.Text = 'M'#234's:'
      CaptionOptions.Layout = clTop
      Control = mesPeriodo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = layoutGroupParameterized
      CaptionOptions.Text = 'Per'#237'odo:'
      CaptionOptions.Layout = clTop
      Control = periodoParametrizado
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Situa'#231#227'o:'
      CaptionOptions.Layout = clTop
      Control = situacaoExtrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = layoutGroupParameters
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Clientes: (Nenhum cliente informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaClientes
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bases: (Nenhuma base informda = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaBases
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Entregadores: (Nenhum informado = TODOS)'
      CaptionOptions.Layout = clTop
      Control = listaEntregadores
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object actionListExtract: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 264
    Top = 16
    object actionIncludeClients: TAction
      Category = 'Clients'
      Caption = 'Incluir'
      Hint = 'Incluir Clientes'
      ImageIndex = 89
    end
    object actionExcludeClients: TAction
      Category = 'Clients'
      Caption = 'Excluir'
      Hint = 'Excluir cliente'
      ImageIndex = 90
    end
    object actionClearClients: TAction
      Category = 'Clients'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
    end
    object actionIncludeBases: TAction
      Category = 'Bases'
      Caption = 'Incluir'
      Hint = 'Incluir base'
      ImageIndex = 89
    end
    object actionExcludeBases: TAction
      Category = 'Bases'
      Caption = 'Excluir'
      Hint = 'Excluir base'
      ImageIndex = 90
    end
    object actionClearBases: TAction
      Category = 'Bases'
      Caption = 'Limpar'
      Hint = 'Limpar lista'
      ImageIndex = 84
    end
    object actionIncludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Incluir'
      Hint = 'Incluir entregadores'
      ImageIndex = 89
    end
    object actionExcludeCouriers: TAction
      Category = 'Couriers'
      Caption = 'Excluir'
      Hint = 'Excluir entregador da lista'
      ImageIndex = 90
    end
    object actionClearCouriers: TAction
      Category = 'Couriers'
      Caption = 'Limpar'
      Hint = 'Limpar lista de entregadores'
      ImageIndex = 84
    end
  end
end
