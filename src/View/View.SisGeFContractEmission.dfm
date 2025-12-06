object view_SisGeFContractEmission: Tview_SisGeFContractEmission
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Emiss'#227'o de contratos'
  ClientHeight = 391
  ClientWidth = 779
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
    Width = 779
    Height = 391
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
          Caption = 'COLABORADOR'
        end
        item
          Caption = 'MOTORISTA'
        end>
      Properties.OnChange = radioGroupPropertiesChange
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.Color = clBtnFace
      TabOrder = 0
      Transparent = True
      Height = 105
      Width = 759
    end
    object dateContrato: TcxDateEdit
      Left = 146
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
      Left = 613
      Top = 356
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionEmitir
      TabOrder = 5
    end
    object cxButton2: TcxButton
      Left = 694
      Top = 356
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCancelar
      Cancel = True
      TabOrder = 6
    end
    object cboFuncoes: TcxComboBox
      Left = 313
      Top = 121
      Properties.Items.Strings = (
        'ANALISTA'
        'AUXILIAR EXPEDI'#199#195'O'
        'AJUDANTE DE MOTORISTA'
        'COORDENADOR(A)'
        'ASG'
        'SUPERVISOR(A)'
        'AUXILIAR EXPEDI'#199#195'O II'
        'ASSISENTE FINANCEIRO'
        'CAPTA'#199#195'O'
        'FINANCEIRO'
        'GERENTE'
        'LIDER DE EXPEDI'#199#195'O'
        'MONITORAMENTO'
        'MOTORISTA')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 167
    end
    object curValorContrato: TcxCurrencyEdit
      Left = 561
      Top = 121
      Properties.DisplayFormat = ',0.00;-,0.00'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object memoAtividades: TcxMemo
      Left = 10
      Top = 166
      Properties.ScrollBars = ssBoth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 184
      Width = 759
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
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
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
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
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
      Index = 3
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
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Fun'#231#227'o'
      Control = cboFuncoes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Valor Contrato'
      Control = curValorContrato
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Atividades'
      CaptionOptions.Layout = clTop
      Control = memoAtividades
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
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
