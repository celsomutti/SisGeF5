object viewCadastroCandidatos: TviewCadastroCandidatos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Candidatos'
  ClientHeight = 522
  ClientWidth = 981
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lcRoot: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 981
    Height = 522
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 312
    ExplicitTop = 168
    ExplicitWidth = 300
    ExplicitHeight = 250
    object parametro: TcxButtonEdit
      Left = 75
      Top = 44
      Hint = 'Par'#226'metro de pesquisa'
      Properties.Buttons = <
        item
          Action = actCadastroLimpar
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 769
    end
    object cxButton1: TcxButton
      Left = 850
      Top = 44
      Width = 107
      Height = 25
      Action = actCadastroPesquisar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 880
      Top = 487
      Width = 91
      Height = 25
      Action = actCadastroSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object lrgRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lgpFooter: TdxLayoutGroup
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgpContainer: TdxLayoutGroup
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Container'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lgpPesquisa: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object lgpCadastro: TdxLayoutGroup
      Parent = lgpContainer
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pesquisa'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Hint = 'Par'#226'metro de pesquisa'
      CaptionOptions.Text = 'Pesquisar'
      Control = parametro
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpPesquisa
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lrgRoot
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object aclCadastro: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 880
    Top = 176
    object actCadastroPesquisar: TAction
      Caption = 'Pes&quisar'
      Hint = 'Pesquisar'
      ImageIndex = 86
    end
    object actCadastroLimpar: TAction
      Caption = 'Limpar'
      Hint = 'Limpar par'#226'metro'
      ImageIndex = 128
      OnExecute = actCadastroLimparExecute
    end
    object actCadastroSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actCadastroSairExecute
    end
  end
end
