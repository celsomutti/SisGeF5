object view_CadastroEntregadoresExpressas: Tview_CadastroEntregadoresExpressas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Entregadores de Expressas'
  ClientHeight = 510
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 15
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 762
    Height = 510
    Align = alClient
    TabOrder = 0
    OptionsImage.Images = Data_Sisgef.lmi_32_32
    ExplicitLeft = 320
    ExplicitTop = 176
    ExplicitWidth = 300
    ExplicitHeight = 250
    object maskEditID: TcxMaskEdit
      Left = 12
      Top = 33
      Hint = 'Id do cadastro do entregador'
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Text = '0'
      Width = 61
    end
    object maskEditCodigo: TcxMaskEdit
      Left = 80
      Top = 33
      Hint = 'C'#243'digo do entregador'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = '0'
      Width = 73
    end
    object textEditNomeEntregador: TcxTextEdit
      Left = 160
      Top = 33
      Hint = 'Nome do entregador (Apelido)'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 234
    end
    object textEditNomePessoa: TcxTextEdit
      Left = 495
      Top = 33
      Hint = 'Nome da pessoa'
      TabStop = False
      Properties.MaxLength = 70
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 255
    end
    object buttonEditCodigoPessoa: TcxButtonEdit
      Left = 401
      Top = 33
      Hint = 'C'#243'digo de cadastro da pessoa'
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Text = '0'
      Width = 87
    end
    object buttonEditCodigoBase: TcxButtonEdit
      Left = 12
      Top = 84
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end
        item
          Visible = False
        end>
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Text = '0'
      Width = 85
    end
    object textEditNomeBase: TcxTextEdit
      Left = 104
      Top = 84
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 290
    end
    object textEditCodigoERP: TcxTextEdit
      Left = 401
      Top = 84
      Hint = 'C'#243'sigo ERP'
      Properties.MaxLength = 70
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 259
    end
    object checkBoxAtivo: TcxCheckBox
      Left = 729
      Top = 86
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object lookupComboBoxCliente: TcxLookupComboBox
      Left = 12
      Top = 135
      Hint = 'Cliente ao qual o entregador est'#225' vinculado'
      Properties.ListColumns = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 261
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object layoutItemID: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = '#Id:'
      CaptionOptions.Layout = clTop
      Control = maskEditID
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemCodigo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo:'
      CaptionOptions.Layout = clTop
      Control = maskEditCodigo
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 73
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlPadraoGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object layoutItemNomeEntregador: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome:'
      CaptionOptions.Layout = clTop
      Control = textEditNomeEntregador
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 233
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemNomePessoa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nome da Pessoa:'
      CaptionOptions.Layout = clTop
      Control = textEditNomePessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 254
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object layoutItemCodigoPessoa: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'C'#243'd. Pessoa:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoPessoa
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemCodigoBase: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'd. Base:'
      CaptionOptions.Layout = clTop
      Control = buttonEditCodigoBase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemNomeBase: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Hint = 'Nome da base'
      CaptionOptions.Text = 'Nome Base:'
      CaptionOptions.Layout = clTop
      Control = textEditNomeBase
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 290
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = layoutControlPadraoGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutItemCodigoERP: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'C'#243'digo ERP:'
      CaptionOptions.Layout = clTop
      Control = textEditCodigoERP
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutItemAtivo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'App Ativo:'
      Control = checkBoxAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutItemClientes: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Cliente:'
      CaptionOptions.Layout = clTop
      Control = lookupComboBoxCliente
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 261
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
