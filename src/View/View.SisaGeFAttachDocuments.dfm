object view_SisgeFAttachDocuments: Tview_SisgeFAttachDocuments
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Anexar Documentos'
  ClientHeight = 413
  ClientWidth = 685
  Color = clBtnFace
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
    Top = 381
    Width = 685
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      685
      32)
    object cxButton1: TcxButton
      Left = 610
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
  end
  object cxShellListView1: TcxShellListView
    Left = 0
    Top = 0
    Width = 685
    Height = 381
    Cursor = crHandPoint
    Align = alClient
    IconOptions.AutoArrange = True
    IconOptions.Size = isExtraLarge
    Root.BrowseFolder = bfCustomPath
    TabOrder = 1
  end
  object actionListAttach: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 600
    Top = 16
    object actionClose: TAction
      Caption = 'Fechar'
      ImageIndex = 17
      OnExecute = actionCloseExecute
    end
    object actionAttach: TAction
      Caption = 'Anexar'
      Hint = 'Anexar documento'
      ImageIndex = 45
      OnExecute = actionAttachExecute
    end
  end
  object OpenDialog: TOpenDialog
    Left = 616
    Top = 80
  end
end
