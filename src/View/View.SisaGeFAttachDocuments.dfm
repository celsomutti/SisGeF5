object view_SisgeFAttachDocuments: Tview_SisgeFAttachDocuments
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Documentos Anexados'
  ClientHeight = 367
  ClientWidth = 369
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 369
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      369
      32)
    object cxButton1: TcxButton
      Left = 294
      Top = 3
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionClose
      Anchors = [akRight, akBottom]
      TabOrder = 1
    end
    object cxButton2: TcxButton
      Left = 0
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionAttach
      Anchors = [akLeft, akBottom]
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 81
      Top = 6
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = actionDownload
      Anchors = [akLeft, akBottom]
      TabOrder = 2
    end
  end
  object chkListFolder: TcxCheckListBox
    Left = 0
    Top = 0
    Width = 369
    Height = 335
    Align = alClient
    Items = <>
    TabOrder = 1
  end
  object actionListAttach: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 600
    Top = 16
    object actionClose: TAction
      Caption = 'Fechar'
      ImageIndex = 98
      OnExecute = actionCloseExecute
    end
    object actionAttach: TAction
      Caption = 'Anexar'
      Hint = 'Anexar documento'
      ImageIndex = 99
      OnExecute = actionAttachExecute
    end
    object actionDownload: TAction
      Caption = 'Download'
      Hint = 'Efetuar o download do documento'
      ImageIndex = 119
    end
  end
  object OpenDialog: TOpenDialog
    Left = 616
    Top = 80
  end
  object IdFTPDocs: TIdFTP
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    TransferType = ftBinary
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 624
    Top = 149
  end
end
