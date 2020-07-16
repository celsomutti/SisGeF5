object view_FilterData: Tview_FilterData
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Filtro'
  ClientHeight = 340
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object layoutControl: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 637
    Height = 340
    Align = alClient
    BevelKind = bkFlat
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object labelTitle: TcxLabel
      Left = 80
      Top = 13
      AutoSize = False
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 24
      Width = 515
      AnchorY = 25
    end
    object comboBoxOperador: TcxComboBox
      Left = 80
      Top = 53
      Hint = 'Selecione o operador de concord'#226'ncia'
      Enabled = False
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '...'
        'e'
        'ou'
        'n'#227'o')
      Style.HotTrack = False
      TabOrder = 1
      Text = '...'
      Width = 60
    end
    object comboBoxCampos: TcxComboBox
      Left = 199
      Top = 53
      Hint = 'Selecione o campo'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnCloseUp = comboBoxCamposPropertiesCloseUp
      Style.HotTrack = False
      TabOrder = 2
      Width = 137
    end
    object comboBoxCondicao: TcxComboBox
      Left = 408
      Top = 53
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'igual a'
        'diferente de'
        'maior que'
        'menor que'
        'maior ou igual a'
        'menor ou igual a'
        'entre'
        'em'
        'contendo')
      Properties.OnCloseUp = comboBoxCondicaoPropertiesCloseUp
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object maskEditValorInicial: TcxMaskEdit
      Left = 80
      Top = 86
      Hint = 'Valor inicial'
      Properties.IgnoreMaskBlank = True
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object maskEditValorFinal: TcxMaskEdit
      Left = 384
      Top = 86
      Hint = 'Valor final'
      Properties.IgnoreMaskBlank = True
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object memoParametros: TcxMemo
      Left = 13
      Top = 270
      Properties.OnChange = memoParametrosPropertiesChange
      Style.HotTrack = False
      TabOrder = 10
      Height = 89
      Width = 185
    end
    object buttonExecutar: TcxButton
      Left = 13
      Top = 298
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Executar o filtro'
      Caption = 'Executar'
      Enabled = False
      ModalResult = 1
      OptionsImage.ImageIndex = 49
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 11
      OnClick = actionExecutarExecute
    end
    object buttonLimpar: TcxButton
      Left = 96
      Top = 298
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionLimpar
      TabOrder = 12
    end
    object buttonFechar: TcxButton
      Left = 545
      Top = 298
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Hint = 'Fechar a tela de filtro'
      Cancel = True
      Caption = 'Fechar'
      ModalResult = 2
      OptionsImage.ImageIndex = 17
      OptionsImage.Images = Data_Sisgef.iml_16_16
      TabOrder = 13
      OnClick = actionFecharExecute
    end
    object buttonGrupo: TcxButton
      Left = 537
      Top = 53
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actionGrupo
      TabOrder = 4
    end
    object checkBoxBoolean: TcxCheckBox
      Left = 13
      Top = 218
      Caption = 'N'#227'o'
      Properties.OnChange = checkBoxBooleanPropertiesChange
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object memoLista: TcxMemo
      Left = 80
      Top = 119
      Style.HotTrack = False
      TabOrder = 7
      Height = 58
      Width = 538
    end
    object buttonAdicionar: TcxButton
      Left = 530
      Top = 185
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Action = actionAdicionar
      TabOrder = 8
    end
    object layoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutTitle: TdxLayoutItem
      Parent = layoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000005000000050000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000004000000090000001100000015000000160000
        00110000000A0000000400000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000020000000908121B38173970BA204E9CF5204E9BF51638
        6FBB040C183A0000000A00000003000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000004000000112B639DD979B9DFFFBCECF9FF6BBFEBFF4492
        D2FF154388DC0000001300000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000100000006020509213475BAFFA0E6FBFFB9EFFBFF68BFECFF54AF
        E9FF1C52A2FF0104092700000007000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000807101C3C3676BBFF9DE3FAFFABE9F9FF5EB8E9FF54AE
        E8FF1F57A5FF030B184000000009000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002000000090B1A2D563777BBFF9BE0F9FF99E2F6FF55B1E5FF51AC
        E8FF245BA8FF051126590000000B000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000B0F213C6D3677BCFF99DDF8FF84D9F3FF4AAAE2FF4EA9
        E6FF2660ABFF0716326F0000000C000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000C112849833678BDFF96DAF8FF7CD4F1FF42A4DFFF4AA7
        E4FF2864AFFF081B3E850000000E000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000030000000D152E599B367ABFFF95D8F7FF75D0EFFF399EDDFF46A4
        E3FF2B6AB4FF091E4B9E0000000F000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000500000010173566B1367CC2FF92D6F7FF6ECCEEFF3299DBFF42A1
        E2FF2D6FB9FF0A2255B300000013000000070000000200000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        00050000000C0102041D21518ED93079C3FF4697D7FF4099D8FF2A82CFFF338B
        D5FF296BB9FF0C2A6ADA000103220000000F0000000700000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000060000
        000E0E213D7026549BF23877BDFF4A99DAFF3E98DAFF3190D7FF2D88D4FF328C
        D6FF398BD4FF2F6CB6FF25599FF30E223F730000001300000009000000030000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000002000000070204081B1D43
        78C13575BAFF55A2DCFF60ACE1FF55A8E0FF41A3DEFF3698DCFF308FD7FF2B87
        D2FF2E8CD4FF3890D5FF3685CEFF2968B4FF1B437AC4020408210000000A0000
        0003000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000603070C20225089D14794
        D2FF61B1E6FF72BAE8FF6EB9E8FF5DB4E5FF4AAFE3FF3EA4E1FF3597DBFF2C8A
        D5FF2F8DD6FF3F9ADCFF4298DCFF3B90D7FF2E78C3FF1F4C8AD603070C260000
        0009000000030000000100000000000000000000000000000000000000000000
        0000000000000000000000000001000000040101020F224E84C74E9BD7FF6AB9
        EBFF81C6EEFF8ACAEFFF7EC5EEFF6CC3EBFF52BBE8FF41AAE5FF389DDFFF2D8D
        D7FF2F8BD6FF449FDEFF4DA3E3FF469CE1FF3990D8FF2D78C5FF1D4781CA0001
        0216000000070000000200000001000000000000000000000000000000000000
        00000000000000000000000000020000000816335482438CCAFF6FC0EFFF81CA
        F2FF99D6F4FF9DD8F3FF8AD1F2FF77CEF0FF55C2ECFF43B0E6FF3AA3E2FF3093
        DAFF2B8BD6FF3898DCFF50AAE6FF54A9E7FF469EE4FF378ED8FF2A6EB9FF122C
        50880000000E0000000400000001000000000000000000000000000000000000
        0000000000000000000100000005060E162A3478B7FB65B8E9FF7CC8F3FF9DD8
        F7FFACE1F8FFACE1F7FF97D9F5FF7AD4F2FF56C8EDFF44B4E8FF3BA5E3FF3095
        DCFF2A8AD5FF3697DBFF52AEE5FF5AB0EBFF50A6E7FF429BE1FF348AD4FF2761
        AAFB050B14320000000800000002000000010000000000000000000000000000
        00000000000000000002000000081E466A984896D0FF6EBFEDFF8DD2F6FFCEEF
        F8FFD3F2F8FFB6E6F9FF9CDEF7FF7FDAF3FF57CBEDFF42B4E8FF3AA5E3FF3095
        DBFF2888D4FF3191D7FF4EAAE4FF5EB4ECFF58ACEBFF49A0E5FF3A92DCFF2C74
        BEFF1636619E0000000E00000003000000010000000000000000000000000000
        0000000000000000000304090E1C377EB9F559ACDEFF79C5F1FFBAE6F9FFDAF4
        F8FFDEF6F8FFCCF0F9FFA3E3F8FF82DFF4FF56CFEEFF41B4E7FF38A5E3FF3096
        DBFF2584D2FF2B8BD3FF47A7E0FF61B6EAFF5EB1ECFF50A6E7FF3E96DFFF3085
        D0FF265FA7F603070C2500000006000000010000000000000000000000000000
        00000000000100000005153145634190CBFF60B2E4FF8ED2F6FFD2F1F8FFDFF7
        F9FFE2F8F9FFD8F5F8FFAAE8F9FF7DDFF3FF54CDEEFF3FB4E7FF37A5E2FF2E95
        DBFF2381D0FF2888D2FF45A5E0FF60B7EAFF62B4EDFF55A9E9FF439BE2FF338B
        D5FF2A6DB8FF0E233D6A00000009000000020000000000000000000000000000
        0000000000010000000625587BA24596CFFF66B6E7FFA6DDF8FFD8F4F9FFE2F8
        F9FFE5FAF9FFD8F6F8FFB5EDF8FF7FE0F4FF53CFEEFF3FB4E7FF36A4E2FF2C93
        DAFF2381D0FF2585CFFF3D9FDDFF5EB7E9FF64B6EDFF59ABEAFF469FE4FF368F
        D9FF2B76C0FF193D6AA70000000C000000030000000000000000000000000000
        000000000002000000073377A3CF4494CEFF6EBBEAFFB5E4F9FFDEF6F9FFE4F9
        FAFFE4F9FAFFDCF6FBFFD7F4FBFFCAF1FBFFCFF3FBFFD2F5FCFFCFF5FCFFC4F0
        FCFFB0E2F7FFACE1F6FF9ED8F2FF8ED1F2FF79C3F0FF60B1ECFF4BA2E6FF3992
        DBFF2C7DC7FF22528DD30000000E000000040000000000000000000000000000
        000000000002000000073E8EC3F364B2E0FFA4E1F7FFE1F7FCFFD7E7F3FF9EB9
        DCFF7C9FCFFF5985C1FF4375B7FF3D72B8FF1857ACFF1A5EB3FF1E6ABAFF277C
        C2FF549CD3FF5BA4D7FF6BB1E0FF80BFE7FF94CCEEFFBDE8F7FFA2D7F3FF59A8
        E2FF2E83CDFF2962A7F400000010000000040000000000000000000000000000
        000000000002000000074297CEFEC1ECF9FFBBCFE6FF517CBEFF1A54ADFF1F5A
        B2FF2462B6FF2566B7FF2068B8FF1C69BAFF2071BFFF257DC7FF2E8CCFFF3DA1
        D7FF55ADDDFF60B5E3FF62B9E7FF5CB4E8FF4EABE6FF3B97DAFF549CD6FFA6D3
        ECFF7EB8E3FF2C69B0FE0000000F000000040000000000000000000000000000
        000000000001000000063D8DBFEBE8F2F9FF285FB2FF1658B2FF2067BDFF2971
        C4FF2D75C4FF2D77C5FF2577C2FF2175C3FF247EC7FF2B8ACFFF369BD6FF4AB2
        DFFF68C1E9FF78CDF0FF7BD3F1FF74CEF3FF65C2F1FF4EAEE8FF3190D3FF348A
        CCFFCCEAF7FF2761A2EA0000000C000000030000000000000000000000000000
        000000000001000000031C3F546B9ECAE6FFC2D6ECFF568FCFFF246FC4FF2B76
        C8FF2F78C8FF2E7BC7FF277AC5FF2279C5FF2881CBFF2F8ED1FF3AA0D9FF50BA
        E4FF70CAECFF83D7F3FF89DEF7FF81D9F9FF71CEF5FF57B8EDFF64B2E2FFAFDA
        F1FF85B5DBFF112A466F00000008000000020000000000000000000000000000
        00000000000000000001000000041D3A4B6072ADD3F4C8E1F1FFE7F0F9FFB0CC
        EBFF90B8E2FF6DA3D8FF5294D1FF4E94D1FF2F86CCFF2F90D2FF3CA1DAFF57BC
        E5FF89D6F0FF97E0F5FFA6EAFAFFACE8FAFFB3E7FAFFCAEEFAFFAAD3EBFF5F98
        C6F5162E44660000000A00000004000000010000000000000000000000000000
        000000000000000000000000000100000004060C0F192A526A834A8AB2D37CBA
        E0FFA1CDE8FFC5E0F1FFDBECF6FFDAEBF6FFEAF4FAFFFAFDFEFFF7FCFEFFDFF1
        F8FFC9E5F4FFC3E3F3FFAAD5ECFF8ABFE1FF6BA9D6FF3E79A6D522456388050A
        0E1E000000080000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000004000000060810
        141F1F3D4F633263819E3B7398B84382ABCF4484AFD551A0D5FF509FD3FF4282
        AED53E7DA8D0376E93B92E5C7DA01B374C67070E13240000000A000000070000
        0004000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0002000000030000000500000006000000060000000700000008000000080000
        0008000000080000000700000007000000050000000400000002000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000200000002000000020000
        0002000000020000000200000001000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Control = labelTitle
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutcomboBoxOperador: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'Operador:'
      Control = comboBoxOperador
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object layoutcomboBoxCampos: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Campo:'
      Control = comboBoxCampos
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutcomboBoxCondicao: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Condi'#231#227'o:'
      Control = comboBoxCondicao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object layoutmaskEditValoInicial: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Valor:'
      Control = maskEditValorInicial
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutmaskEditValorFinal: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'e'
      Visible = False
      Control = maskEditValorFinal
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object layoutmemoParametros: TdxLayoutItem
      Parent = layoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Par'#226'metros'
      CaptionOptions.Layout = clTop
      Control = memoParametros
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object layoutButtonExecutar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonExecutar
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object layoutButtonLimpar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonLimpar
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = layoutControlGroup_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 7
      AutoCreated = True
    end
    object layoutbuttonFechar: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonFechar
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laytoutButtonGrupo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = buttonGrupo
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object layoutCheckBoxBoolean: TdxLayoutItem
      Parent = layoutControlGroup_Root
      CaptionOptions.Text = 'Valor:'
      CaptionOptions.Visible = False
      Visible = False
      Control = checkBoxBoolean
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object layoutMemoLista: TdxLayoutItem
      Parent = layoutControlGroup_Root
      CaptionOptions.Text = 'Lista'
      Visible = False
      Control = memoLista
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object layoutButtonAdicionar: TdxLayoutItem
      Parent = layoutControlGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'buttonAdicionar'
      CaptionOptions.Visible = False
      Control = buttonAdicionar
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object actionListFiltro: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 328
    Top = 8
    object actionGrupo: TAction
      Category = 'Filtro'
      Caption = 'Grupo'
      Enabled = False
      Hint = 'Iniciar grupo de pesquisa'
      ImageIndex = 3
      OnExecute = actionGrupoExecute
    end
    object actionAdicionar: TAction
      Category = 'Filtro'
      Caption = 'Adicionar'
      Hint = 'Adicionar linha no par'#226'metro de pesquisa'
      ImageIndex = 3
      OnExecute = actionAdicionarExecute
    end
    object actionExecutar: TAction
      Category = 'Filtro'
      Caption = 'Executar'
      Enabled = False
      Hint = 'Executar o filtro'
      ImageIndex = 49
      OnExecute = actionExecutarExecute
    end
    object actionLimpar: TAction
      Category = 'Filtro'
      Caption = 'Limpar'
      Enabled = False
      Hint = 'Limpar os par'#226'metros de pesquisa'
      ImageIndex = 9
      OnExecute = actionLimparExecute
    end
    object actionFechar: TAction
      Category = 'Filtro'
      Caption = 'Fechar'
      Hint = 'Fechar a tela de filtro'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
  end
end
