object view_DataFechamento: Tview_DataFechamento
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Data de Pagamento'
  ClientHeight = 157
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 339
    Height = 157
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Informe a Data do Pagamento'
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
    object datPagamento: TcxDateEdit
      Left = 109
      Top = 74
      Hint = 'Informe a data do pagamento'
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 121
    end
    object cxButton2: TcxButton
      Left = 254
      Top = 122
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      Cancel = True
      TabOrder = 1
    end
    object cxButton1: TcxButton
      Left = 173
      Top = 122
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actOK
      Default = True
      TabOrder = 0
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
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = datPagamento
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object aclDataFechamento: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 288
    Top = 8
    object actOK: TAction
      Category = 'Data Fechamento'
      Caption = 'OK'
      Hint = 'Aceitar a data de encerramento'
      ImageIndex = 1
      OnExecute = actOKExecute
    end
    object actCancelar: TAction
      Category = 'Data Fechamento'
      Caption = 'Cancelar'
      Hint = 'Cancelar encerramento'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
  end
end
