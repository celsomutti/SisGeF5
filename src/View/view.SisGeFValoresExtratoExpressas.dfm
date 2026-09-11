object viewValoresExtratosExpressas: TviewValoresExtratosExpressas
  Left = 0
  Top = 0
  Caption = 'Valores de Exxtratos de Entregadores de Expressas'
  ClientHeight = 729
  ClientWidth = 1008
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 729
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 10
      Top = 10
      Width = 80
      Height = 25
      Action = actNovo
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 96
      Top = 10
      Width = 80
      Height = 25
      Action = actEditar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 194
      Top = 10
      Width = 80
      Height = 25
      Action = actExportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object tipoParametro: TcxComboBox
      Left = 320
      Top = 12
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'DATA ENTREGA'
        'DATA PAGAMENTO')
      Style.HotTrack = False
      TabOrder = 3
      Text = 'DATA ENTREGA'
      Width = 109
    end
    object dataInicial: TcxDateEdit
      Left = 453
      Top = 12
      Hint = 'Data inicial do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 4
      Width = 80
    end
    object dataFinal: TcxDateEdit
      Left = 550
      Top = 12
      Hint = 'Data final do per'#237'odo'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.HotTrack = False
      TabOrder = 5
      Width = 80
    end
    object cxButtonEdit1: TcxButtonEdit
      Left = 686
      Top = 12
      Hint = 'C'#243'digo do motorista'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Style.HotTrack = False
      TabOrder = 6
      Text = '0'
      Width = 77
    end
    object nomeMotorista: TcxTextEdit
      Left = 769
      Top = 12
      Hint = 'Nome do motorista'
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.HotTrack = False
      TabOrder = 7
      Width = 229
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
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Data'
      Control = tipoParametro
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'De'
      Control = dataInicial
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'a'
      Control = dataFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Motorista'
      Control = cxButtonEdit1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 77
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Visible = False
      Control = nomeMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
  end
  object aclValores: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 928
    Top = 96
    object actNovo: TAction
      Caption = '&Novo'
      Hint = 'Novo lan'#231'amento'
      ImageIndex = 115
    end
    object actEditar: TAction
      Caption = '&Editar'
      Hint = 'Editar lan'#231'amento'
      ImageIndex = 95
    end
    object actExcluir: TAction
      Caption = 'E&xcluir'
      Hint = 'Excluir lan'#231'amento'
      ImageIndex = 130
    end
    object actVoltar: TAction
      Caption = '&Voltar'
      Hint = 'Candelar opera'#231#227'o e voltar para a tela anterior'
      ImageIndex = 108
    end
    object actExportar: TAction
      Caption = 'Ex&portar'
      Hint = 'Exporta dados'
      ImageIndex = 101
    end
    object actGravar: TAction
      Caption = '&Gravar'
      Hint = 'Gravar o lan'#231'amento'
      ImageIndex = 85
    end
    object actEncerrar: TAction
      Caption = 'En&cerrar'
      Hint = 'Encerrrar o extrato do entregador'
      ImageIndex = 125
    end
    object actReabrir: TAction
      Caption = '&Reabrir'
      Hint = 'Reabrir extrato do entregador'
      ImageIndex = 111
    end
    object actPesquisar: TAction
      Caption = 'Pes&quisar'
      Hint = 'Pesquisar extrato'
      ImageIndex = 86
    end
    object actSair: TAction
      Caption = '&Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
    end
  end
end
