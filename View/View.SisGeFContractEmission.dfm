object view_SisGeFContractEmission: Tview_SisGeFContractEmission
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Emiss'#227'o de contratos'
  ClientHeight = 183
  ClientWidth = 423
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 423
    Height = 183
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object radioGroup: TcxRadioGroup
      Left = 10
      Top = 10
      Hint = 'Selecione o tipo de contrato'
      Caption = 'Tipo de Contrato'
      ParentBackground = False
      ParentColor = False
      Properties.Items = <
        item
          Caption = 'Pessoa F'#237'sica'
        end
        item
          Caption = 'Pessoa Jur'#237'dica'
        end>
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clBtnFace
      TabOrder = 0
      Height = 105
      Width = 403
    end
    object dateContrato: TcxDateEdit
      Left = 219
      Top = 121
      Hint = 'Data do in'#237'cio da ving'#234'ncia do contrato'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 257
      Top = 148
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionEmitir
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 338
      Top = 148
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelar
      Cancel = True
      TabOrder = 3
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = radioGroup
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Hint = 'Data do in'#237'cio da ving'#234'ncia do contrato'
      CaptionOptions.Text = 'Data do In'#237'cio do Contrato:'
      Control = dateContrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
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
  object ationList: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 336
    Top = 8
    object actionEmitir: TAction
      Caption = 'Emitir'
      Hint = 'Emitir o contrato'
      ImageIndex = 83
      OnExecute = actionEmitirExecute
    end
    object actionCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar emiss'#227'o'
      ImageIndex = 84
      OnExecute = actionCancelarExecute
    end
  end
end
