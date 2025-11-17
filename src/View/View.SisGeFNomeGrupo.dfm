object viewSisGeFNomeGrupo: TviewSisGeFNomeGrupo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Nome do Grupo'
  ClientHeight = 150
  ClientWidth = 350
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
    Width = 350
    Height = 150
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    ExplicitHeight = 140
    object txeGrupo: TcxTextEdit
      Left = 22
      Top = 46
      Hint = 'Informe o nome do grupo'
      Properties.CharCase = ecUpperCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 306
    end
    object cxButton1: TcxButton
      Left = 22
      Top = 103
      Width = 75
      Height = 25
      Action = actOK
      Default = True
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 253
      Top = 103
      Width = 75
      Height = 25
      Action = actCancelar
      Cancel = True
      TabOrder = 2
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
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Nome do Grupo'
      CaptionOptions.Layout = clTop
      Control = txeGrupo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object aclNomeGrupo: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 288
    Top = 8
    object actOK: TAction
      Caption = 'OK'
      Hint = 'OK'
      ImageIndex = 83
      OnExecute = actOKExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar'
      ImageIndex = 84
      OnExecute = actCancelarExecute
    end
  end
end
