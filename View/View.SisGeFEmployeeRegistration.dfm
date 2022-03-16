object ViewSisGeFEmployeeRegistration: TViewSisGeFEmployeeRegistration
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 507
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 57
    Align = alTop
    Caption = ' Identifica'#231#227'o '
    TabOrder = 0
    Transparent = True
    Height = 64
    Width = 811
    object cxLabel1: TcxLabel
      Left = 3
      Top = 16
      Caption = 'C'#243'digo:'
      Transparent = True
    end
    object codigo: TcxMaskEdit
      Left = 3
      Top = 32
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d'
      Properties.ReadOnly = True
      TabOrder = 1
      Text = '0'
      Width = 78
    end
    object cpf: TcxMaskEdit
      Left = 87
      Top = 32
      Hint = 'N'#250'mero do CPF'
      Properties.EditMask = '0##\.###\.###\-##;1; '
      TabOrder = 2
      Text = '   .   .   -  '
      Width = 106
    end
    object cxLabel2: TcxLabel
      Left = 87
      Top = 16
      Caption = 'CPF:'
      Transparent = True
    end
    object nomeCompleto: TcxTextEdit
      Left = 199
      Top = 32
      Hint = 'Nome completo'
      Properties.MaxLength = 70
      TabOrder = 4
      Width = 321
    end
    object cxLabel3: TcxLabel
      Left = 199
      Top = 16
      Caption = 'Nome:'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 526
      Top = 16
      Caption = 'Alias:'
      Transparent = True
    end
    object alias: TcxTextEdit
      Left = 526
      Top = 32
      Hint = 'Alias'
      Properties.MaxLength = 70
      TabOrder = 7
      Width = 282
    end
  end
  object cxGroupBox2: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 127
    Align = alTop
    Caption = ' Documentos/Filia'#231#227'o '
    TabOrder = 2
    Transparent = True
    Height = 166
    Width = 811
    object cxLabel5: TcxLabel
      Left = 3
      Top = 16
      Caption = 'RG:'
      Transparent = True
    end
    object numeroRG: TcxTextEdit
      Left = 3
      Top = 32
      Hint = 'N'#250'mero do RG'
      Properties.MaxLength = 20
      TabOrder = 1
      Width = 94
    end
    object ufRG: TcxComboBox
      Left = 103
      Top = 32
      Hint = 'UF RG'
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 2
      Width = 49
    end
    object cxLabel6: TcxLabel
      Left = 103
      Top = 16
      Caption = 'UF RG:'
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 158
      Top = 16
      Caption = 'Emissor RG:'
      Transparent = True
    end
    object emissorRG: TcxTextEdit
      Left = 158
      Top = 32
      Hint = 'Nome do org'#227'o emissor do RG'
      Properties.MaxLength = 50
      TabOrder = 5
      Width = 115
    end
    object dataRG: TcxDateEdit
      Left = 279
      Top = 32
      Hint = 'Data emiss'#227'o RG'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 6
      Width = 82
    end
    object cxLabel8: TcxLabel
      Left = 279
      Top = 16
      Caption = 'Emiss'#227'o RG:'
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 367
      Top = 16
      Caption = 'Naturalidade:'
      Transparent = True
    end
    object naturalidade: TcxTextEdit
      Left = 367
      Top = 32
      Hint = 'Naturalidade'
      Properties.MaxLength = 70
      TabOrder = 9
      Width = 386
    end
    object cxLabel10: TcxLabel
      Left = 759
      Top = 16
      Caption = 'UF:'
      Transparent = True
    end
    object ufNaturalidade: TcxComboBox
      Left = 759
      Top = 32
      Hint = 'UF Naturalidade'
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 2
      TabOrder = 11
      Width = 49
    end
    object cxLabel12: TcxLabel
      Left = 3
      Top = 56
      Caption = 'Nome do Pai:'
      Transparent = True
    end
    object nomePai: TcxTextEdit
      Left = 3
      Top = 72
      Hint = 'Nome do pai'
      Properties.MaxLength = 70
      TabOrder = 13
      Width = 298
    end
    object cxLabel13: TcxLabel
      Left = 307
      Top = 56
      Caption = 'Nome da M'#227'e:'
      Transparent = True
    end
    object nomeMae: TcxTextEdit
      Left = 307
      Top = 72
      Hint = 'Nome da m'#227'e'
      Properties.MaxLength = 70
      TabOrder = 15
      Width = 313
    end
    object cxLabel14: TcxLabel
      Left = 626
      Top = 56
      Caption = 'PIS:'
      Transparent = True
    end
    object numeroPIS: TcxTextEdit
      Left = 626
      Top = 72
      Hint = 'N'#250'mero do PIS'
      Properties.MaxLength = 20
      TabOrder = 17
      Width = 94
    end
    object nascimento: TcxDateEdit
      Left = 726
      Top = 72
      Hint = 'Data de nascimento'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 18
      Width = 82
    end
    object cxLabel11: TcxLabel
      Left = 726
      Top = 56
      Caption = 'Nascimento:'
      Transparent = True
    end
    object cxLabel15: TcxLabel
      Left = 3
      Top = 96
      Caption = 'N'#186'. CNH:'
      Transparent = True
    end
    object numeroCNH: TcxMaskEdit
      Left = 3
      Top = 112
      Hint = 'N'#250'mero CNH'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.ReadOnly = False
      TabOrder = 21
      Text = '0'
      Width = 78
    end
    object cxLabel16: TcxLabel
      Left = 87
      Top = 96
      Caption = 'Registro CNH:'
      Transparent = True
    end
    object registroCNH: TcxMaskEdit
      Left = 87
      Top = 112
      Hint = 'Registro CNH'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.ReadOnly = False
      TabOrder = 23
      Text = '0'
      Width = 74
    end
    object cxLabel17: TcxLabel
      Left = 167
      Top = 96
      Caption = 'UF CNH:'
      Transparent = True
    end
    object ufCNH: TcxComboBox
      Left = 167
      Top = 112
      Hint = 'UF CNH'
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 25
      Width = 49
    end
    object cxLabel18: TcxLabel
      Left = 222
      Top = 96
      Caption = 'Categoria CNH:'
      Transparent = True
    end
    object categoriaCNH: TcxTextEdit
      Left = 222
      Top = 112
      Hint = 'Categoria da CNH'
      Properties.MaxLength = 2
      TabOrder = 27
      Width = 79
    end
    object cxLabel19: TcxLabel
      Left = 307
      Top = 96
      Caption = '1'#170'. CNH:'
      Transparent = True
    end
    object primeiraCNH: TcxDateEdit
      Left = 307
      Top = 112
      Hint = 'Data emiss'#227'o da pimeira CNHG'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 29
      Width = 82
    end
    object cxLabel20: TcxLabel
      Left = 395
      Top = 96
      Caption = 'Emiss'#227'o CNH:'
      Transparent = True
    end
    object emissaoCNH: TcxDateEdit
      Left = 395
      Top = 112
      Hint = 'Data emiss'#227'o da CNHG atual'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 31
      Width = 82
    end
    object cxLabel21: TcxLabel
      Left = 483
      Top = 96
      Caption = 'Validade CNH:'
      Transparent = True
    end
    object validadeCNH: TcxDateEdit
      Left = 483
      Top = 112
      Hint = 'Data validade da CNHG atual'
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 33
      Width = 82
    end
    object cxLabel22: TcxLabel
      Left = 571
      Top = 96
      Caption = 'C'#243'digo CNH:'
      Transparent = True
    end
    object codigoCNH: TcxMaskEdit
      Left = 571
      Top = 112
      Hint = 'C'#243'digo de Segura'#231'a CNH'
      Properties.Alignment.Horz = taRightJustify
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.ReadOnly = False
      TabOrder = 35
      Text = '0'
      Width = 74
    end
    object funcao: TcxLookupComboBox
      Left = 651
      Top = 112
      Hint = 'Fun'#231#227'o ou cargo'
      Properties.KeyFieldNames = 'id_funcao'
      Properties.ListColumns = <
        item
          FieldName = 'des_funcao'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsFuncoes
      TabOrder = 36
      Width = 157
    end
    object cxLabel23: TcxLabel
      Left = 651
      Top = 96
      Caption = 'Fun'#231#227'o:'
      Transparent = True
    end
    object status: TcxCheckBox
      Left = 3
      Top = 139
      Hint = 'Status do cadastro'
      Caption = 'INATIVO'
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '2'
      TabOrder = 38
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 296
    Width = 817
    Height = 191
    Align = alClient
    TabOrder = 6
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 187
    ClientRectLeft = 4
    ClientRectRight = 813
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 0
      object cxLabel24: TcxLabel
        Left = 2
        Top = 2
        Caption = 'CEP:'
        Transparent = True
      end
      object cepEndereco: TcxButtonEdit
        Left = 2
        Top = 18
        Hint = 'CEP do endere'#231'o'
        Properties.Buttons = <
          item
            Action = actionSearchCEP
            Default = True
            ImageIndex = 82
            Kind = bkGlyph
          end>
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.EditMask = '99999\-999;1; '
        TabOrder = 1
        Text = '     -   '
        Width = 78
      end
      object cxLabel25: TcxLabel
        Left = 87
        Top = 2
        Caption = 'Logradouro:'
        Transparent = True
      end
      object logradouroEndereco: TcxTextEdit
        Left = 86
        Top = 21
        Hint = 'Logradouro endere'#231'o'
        Properties.MaxLength = 70
        TabOrder = 3
        Width = 298
      end
      object cxLabel26: TcxLabel
        Left = 390
        Top = 2
        Caption = 'N'#250'mero:'
        Transparent = True
      end
      object numeroLogradouro: TcxTextEdit
        Left = 390
        Top = 21
        Hint = 'N'#250'mero do Logradouro'
        Properties.MaxLength = 10
        TabOrder = 5
        Width = 79
      end
      object cxLabel27: TcxLabel
        Left = 476
        Top = 2
        Caption = 'Complemento:'
        Transparent = True
      end
      object complementoLogradouro: TcxTextEdit
        Left = 475
        Top = 21
        Hint = 'Logradouro endere'#231'o'
        Properties.MaxLength = 50
        TabOrder = 7
        Width = 331
      end
      object cxLabel28: TcxLabel
        Left = 2
        Top = 42
        Caption = 'Bairro:'
        Transparent = True
      end
      object bairroLogradouro: TcxTextEdit
        Left = 2
        Top = 61
        Hint = 'Bairro logradouro'
        Properties.MaxLength = 70
        TabOrder = 9
        Width = 298
      end
      object cxLabel29: TcxLabel
        Left = 306
        Top = 42
        Caption = 'Cidade:'
        Transparent = True
      end
      object cidadeLogradouro: TcxTextEdit
        Left = 306
        Top = 61
        Hint = 'Cidade logradouro'
        Properties.MaxLength = 70
        TabOrder = 11
        Width = 298
      end
      object cxLabel30: TcxLabel
        Left = 610
        Top = 42
        Caption = 'UF:'
        Transparent = True
      end
      object ufLogradouro: TcxComboBox
        Left = 610
        Top = 61
        Hint = 'UF endere'#231'o'
        Properties.DropDownListStyle = lsEditFixedList
        Properties.MaxLength = 2
        TabOrder = 13
        Width = 49
      end
      object cxLabel31: TcxLabel
        Left = 2
        Top = 82
        Caption = 'Refer'#234'ncia:'
        Transparent = True
      end
      object referenciaLogradouro: TcxTextEdit
        Left = 2
        Top = 101
        Hint = 'Refer'#234'ncia do logradouro'
        Properties.MaxLength = 256
        TabOrder = 15
        Width = 804
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Contato'
      ImageIndex = 1
      object gridContatos: TcxGrid
        Left = 0
        Top = 0
        Width = 809
        Height = 163
        Align = alClient
        TabOrder = 0
        object gridContatosDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 91
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 94
          Navigator.Buttons.Next.ImageIndex = 93
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 92
          Navigator.Buttons.Insert.ImageIndex = 89
          Navigator.Buttons.Delete.ImageIndex = 90
          Navigator.Buttons.Edit.ImageIndex = 95
          Navigator.Buttons.Post.ImageIndex = 83
          Navigator.Buttons.Cancel.ImageIndex = 84
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 96
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsContatos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Images = Data_Sisgef.iml_16_16
          OptionsCustomize.ColumnGrouping = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gridContatosDBTableView1cod_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridContatosDBTableView1seq_contato: TcxGridDBColumn
            DataBinding.FieldName = 'seq_contato'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
          end
          object gridContatosDBTableView1des_contato: TcxGridDBColumn
            DataBinding.FieldName = 'des_contato'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 213
          end
          object gridContatosDBTableView1num_telefone: TcxGridDBColumn
            DataBinding.FieldName = 'num_telefone'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '!\(99\)99999-9999;1; '
            Width = 108
          end
          object gridContatosDBTableView1des_email: TcxGridDBColumn
            DataBinding.FieldName = 'des_email'
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 486
          end
        end
        object gridContatosLevel1: TcxGridLevel
          GridView = gridContatosDBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Dados Banc'#225'rios'
      ImageIndex = 2
      object formaPagamento: TcxComboBox
        Left = 3
        Top = 19
        Hint = 'Forma de pagamento'
        Properties.Items.Strings = (
          'NENHUMA'
          'OBB PLUS'
          'DEP'#211'SITO/TRANSFER'#202'NCIA'
          'CHEQUE'
          'TED/DOC'
          'DINHEIRO'
          'FOLHA DE PAGAMENTO'
          'CART'#195'O DE CR'#201'DITO')
        TabOrder = 0
        Text = 'NENHUMA'
        Width = 208
      end
      object cxLabel32: TcxLabel
        Left = 2
        Top = 3
        Caption = 'Forma de Pagamento:'
        Transparent = True
      end
      object cxLabel33: TcxLabel
        Left = 2
        Top = 43
        Caption = 'Tipo de Conta:'
        Transparent = True
      end
      object tipoConta: TcxComboBox
        Left = 3
        Top = 59
        Hint = 'Tipo de conta'
        Properties.Items.Strings = (
          'NENHUM'
          'CORRENTE'
          'POUPAN'#199'A'
          'SAL'#193'RIO')
        TabOrder = 3
        Text = 'NENHUMA'
        Width = 208
      end
      object cxLabel34: TcxLabel
        Left = 3
        Top = 81
        Caption = 'Banco:'
        Transparent = True
      end
      object banco: TcxLookupComboBox
        Left = 2
        Top = 96
        Hint = 'Banco'
        Properties.KeyFieldNames = 'cod_banco'
        Properties.ListColumns = <
          item
            Caption = 'C'#243'digo'
            Fixed = True
            FieldName = 'cod_banco'
          end
          item
            Caption = 'Nome'
            MinWidth = 50
            FieldName = 'nom_banco'
          end>
        Properties.ListSource = dsBancos
        TabOrder = 5
        Width = 209
      end
      object cxLabel35: TcxLabel
        Left = 2
        Top = 120
        Caption = 'Ag'#234'ncia:'
        Transparent = True
      end
      object agencia: TcxTextEdit
        Left = 2
        Top = 136
        Hint = 'Ag'#234'ncia da conta'
        Properties.MaxLength = 10
        TabOrder = 7
        Width = 79
      end
      object cxLabel36: TcxLabel
        Left = 87
        Top = 120
        Caption = 'Conta:'
        Transparent = True
      end
      object numeroConta: TcxTextEdit
        Left = 87
        Top = 136
        Hint = 'N'#250'mero da conta'
        Properties.MaxLength = 10
        TabOrder = 9
        Width = 124
      end
      object cxLabel37: TcxLabel
        Left = 217
        Top = 3
        Caption = 'Nome Favorecido:'
        Transparent = True
      end
      object nomeFavorecido: TcxTextEdit
        Left = 217
        Top = 19
        Hint = 'Nome do favorecido'
        Properties.MaxLength = 70
        TabOrder = 11
        Width = 321
      end
      object cxLabel38: TcxLabel
        Left = 217
        Top = 43
        Caption = 'CPF Favorecido:'
        Transparent = True
      end
      object cpfFavorecido: TcxMaskEdit
        Left = 217
        Top = 59
        Hint = 'N'#250'mero do CPF do favorecido'
        Properties.EditMask = '0##\.###\.###\-##;1; '
        TabOrder = 13
        Text = '   .   .   -  '
        Width = 106
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 3
      object observacoes: TcxMemo
        Left = 0
        Top = 0
        Hint = 'Observa'#231#245'es'
        Align = alClient
        Properties.ScrollBars = ssBoth
        TabOrder = 0
        Height = 163
        Width = 809
      end
    end
  end
  object statusBar: TdxStatusBar
    Left = 0
    Top = 487
    Width = 817
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        PanelStyle.Font.Charset = DEFAULT_CHARSET
        PanelStyle.Font.Color = clWindowText
        PanelStyle.Font.Height = -11
        PanelStyle.Font.Name = 'Tahoma'
        PanelStyle.Font.Style = [fsBold]
        PanelStyle.ParentFont = False
        Bevel = dxpbNone
        MinWidth = 150
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Bevel = dxpbNone
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Bevel = dxpbNone
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object actionListRegister: TActionList
    Images = Data_Sisgef.imageListOperation_32_32
    Left = 512
    object actionNew: TAction
      Caption = '&Novo'
      Hint = 'Novo registro'
      ImageIndex = 0
      OnExecute = actionNewExecute
    end
    object actionLocate: TAction
      Caption = '&Localizar'
      Hint = 'Localizar registro'
      ImageIndex = 12
    end
    object actionEdit: TAction
      Caption = '&Editar'
      Hint = 'Editar registro'
      ImageIndex = 9
      OnExecute = actionEditExecute
    end
    object actionDelete: TAction
      Caption = 'E&xcluir'
      Hint = 'Excluir registro'
      ImageIndex = 4
    end
    object actionSave: TAction
      Caption = '&Gravar'
      Hint = 'Gravar registro'
      ImageIndex = 13
    end
    object actionCancel: TAction
      Caption = '&Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 2
      OnExecute = actionCancelExecute
    end
    object actionAttach: TAction
      Caption = 'A&nexos'
      Hint = 'Anexar documento'
      ImageIndex = 17
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 3
      OnExecute = actionCloseFormExecute
    end
    object actionSearchCEP: TAction
      Caption = 'Pesquisa CEP'
      Hint = 'Pesquisar CEP'
    end
  end
  object barManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = Data_Sisgef.imageListOperation_32_32
    ImageOptions.LargeIcons = True
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 576
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      54
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Register'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 845
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Data_Sisgef.imageListOperation_32_32
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actionNew
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actionLocate
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actionEdit
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actionAttach
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actionCancel
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actionSave
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actionCloseForm
      Align = iaRight
      Category = 0
      AutoGrayScale = False
    end
  end
  object memTableContatos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 659
    Top = 1
    object memTableContatoscod_entregador: TIntegerField
      DisplayLabel = 'C'#243'digo:'
      FieldName = 'cod_entregador'
    end
    object memTableContatosseq_contato: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'seq_contato'
    end
    object memTableContatosdes_contato: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_contato'
      Size = 30
    end
    object memTableContatosnum_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'num_telefone'
      Size = 15
    end
    object memTableContatosdes_email: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'des_email'
      Size = 150
    end
  end
  object dsContatos: TDataSource
    DataSet = memTableContatos
    Left = 723
    Top = 1
  end
  object memTableBancos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 411
    Top = 1
    object memTableBancoscod_banco: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cod_banco'
      Size = 4
    end
    object memTableBancosnom_banco: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nom_banco'
      Size = 50
    end
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = memTableBancos
    Left = 451
    Top = 1
  end
  object memTableFuncoes: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 336
    object memTableFuncoesid_funcao: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_funcao'
    end
    object memTableFuncoesdes_funcao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_funcao'
      Size = 132
    end
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = memTableFuncoes
    Left = 379
    Top = 1
  end
end
