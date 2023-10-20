object view_AtualizacaoSistema: Tview_AtualizacaoSistema
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Atualiza'#231#227'o do Sistema'
  ClientHeight = 205
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = '@Microsoft JhengHei UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    477
    205)
  PixelsPerInch = 96
  TextHeight = 15
  object cxButton1: TcxButton
    Left = 8
    Top = 170
    Width = 92
    Height = 25
    Cursor = crHandPoint
    Caption = 'Atualizar'
    Default = True
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 8
    Top = 125
    Anchors = [akLeft, akTop, akRight]
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    TabOrder = 1
    Visible = False
    Width = 461
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 100
    Caption = ' '
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Atualiza'#231#227'o dispon'#237'vel'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = '@Microsoft JhengHei UI'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxButton2: TcxButton
    Left = 377
    Top = 170
    Width = 92
    Height = 25
    Cursor = crHandPoint
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Sair'
    TabOrder = 4
    OnClick = cxButton2Click
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 37
    AutoSize = False
    Caption = 'cxLabel3'
    Properties.WordWrap = True
    Transparent = True
    Height = 44
    Width = 461
  end
  object IdFTP1: TIdFTP
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    IPVersion = Id_IPv4
    Host = 'ftp.novorioexpress.com'
    Passive = True
    ConnectTimeout = 0
    Password = 'al0c@rioca'
    TransferType = ftBinary
    Username = 'alocarioca.novorioexpress.com'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 416
    Top = 16
  end
end
