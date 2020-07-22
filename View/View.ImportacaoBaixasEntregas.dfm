object view_ImportacaoBaixasEntregas: Tview_ImportacaoBaixasEntregas
  Left = 0
  Top = 0
  Caption = 'Importa'#231#227'o de Baixas de Entregas'
  ClientHeight = 497
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 22
    Width = 650
    Height = 65
  end
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 718
    Height = 497
    Align = alClient
    TabOrder = 0
    object labelTitle: TcxLabel
      Left = 11
      Top = 11
      Caption = 'title'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object buttonImport: TcxButton
      Left = 624
      Top = 42
      Width = 83
      Height = 25
      Cursor = crHandPoint
      Action = actionImportar
      TabOrder = 2
    end
    object buttonEditFile: TcxButtonEdit
      Left = 57
      Top = 42
      Properties.Buttons = <
        item
          Action = actionOpenFile
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Style.HotTrack = False
      TabOrder = 1
      TextHint = 'Informe o arquivo a ser importado'
      Width = 561
    end
    object groupBoxDisplayTotal: TcxGroupBox
      Left = 11
      Top = 73
      Caption = 'Total de Registros'
      PanelStyle.Active = True
      TabOrder = 3
      DesignSize = (
        185
        105)
      Height = 105
      Width = 185
      object labelDisplayTotal: TcxLabel
        Left = 155
        Top = 26
        Anchors = [akTop, akRight]
        Caption = '0'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -32
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 177
        AnchorY = 51
      end
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object layoutItemTitle: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemButtonImport: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonImport
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemButtonEditFile: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '&Arquivo'
      Control = buttonEditFile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlPadraoGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutItemGroupBoxDisplayTotal: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = groupBoxDisplayTotal
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object openDialog: TOpenDialog
    Left = 440
    Top = 8
  end
  object actionListImportacao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 512
    Top = 8
    object actionImportar: TAction
      Category = 'Importa'#231#227'o Baixas'
      Caption = 'Importar'
      Hint = 'Importar baixas de entregas'
      ImageIndex = 33
    end
    object actionOpenFile: TAction
      Category = 'Importa'#231#227'o Baixas'
      Caption = 'Abrir'
      Hint = 'Abrir arquivo a ser importado'
      ImageIndex = 40
    end
  end
end
