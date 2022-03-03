object view_SisGeFConfirmPassword: Tview_SisGeFConfirmPassword
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Confirma'#231#227'o de Usu'#225'rio'
  ClientHeight = 171
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = 'Usu'#225'rio'
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 58
    Caption = 'Senha:'
  end
  object username: TcxTextEdit
    Left = 8
    Top = 31
    Hint = 'Nome do usu'#225'rio'
    TabStop = False
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 333
  end
  object password: TcxButtonEdit
    Left = 8
    Top = 81
    Hint = 'Senha do usu'#225'rio'
    Properties.Buttons = <
      item
        Action = actionViewPassword
        Default = True
        Kind = bkGlyph
      end>
    Properties.EchoMode = eemPassword
    Properties.Images = Data_Sisgef.iml_16_16
    TabOrder = 3
    TextHint = 'Informe a senha'
    Width = 333
  end
  object cxButton1: TcxButton
    Left = 185
    Top = 128
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Action = actionOK
    Default = True
    TabOrder = 4
  end
  object cxButton2: TcxButton
    Left = 266
    Top = 128
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Action = actionCancel
    Cancel = True
    TabOrder = 5
  end
  object actionListConfirmPassword: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 40
    Top = 120
    object actionOK: TAction
      Category = 'Senha'
      Caption = '&OK'
      Hint = 'Confirma a senha'
      ImageIndex = 83
      OnExecute = actionOKExecute
    end
    object actionCancel: TAction
      Category = 'Senha'
      Caption = 'Cancelar'
      Hint = 'Cancelar confirma'#231#227'o'
      ImageIndex = 84
      OnExecute = actionCancelExecute
    end
    object actionViewPassword: TAction
      Category = 'Senha'
      Caption = 'Visualiar Senha'
      Hint = 'Visualizar ou ocultar senha'
      ImageIndex = 88
      OnExecute = actionViewPasswordExecute
    end
  end
end
