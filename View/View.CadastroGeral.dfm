object view_CadastroGeral: Tview_CadastroGeral
  Left = 0
  Top = 0
  Caption = 'Cadastro Geral'
  ClientHeight = 444
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 793
    Height = 444
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Cadastro Geral'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxTabControl1: TcxTabControl
      Left = 10
      Top = 56
      Width = 289
      Height = 193
      Color = 14803425
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 191
      ClientRectLeft = 2
      ClientRectRight = 287
      ClientRectTop = 2
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
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutTabControlCadastro: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxTabControl1'
      CaptionOptions.Layout = clTop
      Control = cxTabControl1
      ControlOptions.AutoColor = True
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dsEnderecos: TDataSource
    AutoEdit = False
    Left = 192
    Top = 16
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableEnderecos
    Left = 232
    Top = 16
  end
end
