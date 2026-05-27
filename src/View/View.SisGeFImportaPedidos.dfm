object viewImportaPedidos: TviewImportaPedidos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Impota'#231#227'o de Pedidos'
  ClientHeight = 412
  ClientWidth = 650
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 650
    Height = 412
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitLeft = 128
    ExplicitTop = 144
    ExplicitWidth = 300
    ExplicitHeight = 250
    object bteArquivo: TcxButtonEdit
      Left = 52
      Top = 10
      Properties.Buttons = <
        item
          Action = actAbrir
          Default = True
          Kind = bkGlyph
        end
        item
          Action = actLimpar
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 492
    end
    object cxButton1: TcxButton
      Left = 550
      Top = 10
      Width = 90
      Height = 25
      Action = aclImportar
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 541
      Top = 377
      Width = 99
      Height = 25
      Action = aclSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Arquivo'
      Control = bteArquivo
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
  end
  object aclImportacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 592
    Top = 72
    object aclImportar: TAction
      Caption = '&Importar'
      Hint = 'Importar o arquivo'
      ImageIndex = 103
    end
    object aclSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = aclSairExecute
    end
    object actAbrir: TAction
      Caption = 'Abrir'
      Hint = 'Abrir o arquivo'
      ImageIndex = 104
      OnExecute = actAbrirExecute
    end
    object actLimpar: TAction
      Caption = 'Limpar'
      Hint = 'Limpar o arquivo'
      ImageIndex = 84
      OnExecute = actLimparExecute
    end
  end
end
