object view_CadastroEntregadores: Tview_CadastroEntregadores
  Left = 0
  Top = 0
  Caption = 'Cadastro de Entregadores'
  ClientHeight = 582
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlPadrao: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 938
    Height = 582
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object labelTitle: TcxLabel
      Left = 11
      Top = 11
      Caption = 'labelTitle'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object layoutControlCadastro: TdxLayoutControl
      Left = 11
      Top = 41
      Width = 916
      Height = 475
      ParentBackground = True
      TabOrder = 1
      Transparent = True
      object buttonEditPessoa: TcxButtonEdit
        Left = 367
        Top = 30
        Hint = 'C'#243'digo do cadastro da pessoa'
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Action = actionLocalizarPessoas
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Properties.OnValidate = buttonEditPessoaPropertiesValidate
        Style.HotTrack = False
        TabOrder = 2
        Text = '0'
        Width = 103
      end
      object textEditNomePessoa: TcxTextEdit
        Left = 476
        Top = 30
        Hint = 'Nome da pessoa vincudala oo cadastro do entregador'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 3
        Width = 429
      end
      object maskEditCodigo: TcxMaskEdit
        Left = 11
        Top = 30
        Hint = 'C'#243'digo do entregador'
        Properties.Alignment.Horz = taRightJustify
        Properties.IgnoreMaskBlank = True
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 0
        Text = '0'
        Width = 76
      end
      object textEditNomeFantasia: TcxTextEdit
        Left = 93
        Top = 30
        Hint = 'Nome fantasia do entregador'
        Properties.CharCase = ecUpperCase
        Style.HotTrack = False
        TabOrder = 1
        Width = 268
      end
      object buttonEditCodigoAgente: TcxButtonEdit
        Left = 11
        Top = 77
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Action = actionLocalizarAgentes
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Properties.OnValidate = buttonEditCodigoAgentePropertiesValidate
        Style.HotTrack = False
        TabOrder = 4
        Text = '0'
        Width = 92
      end
      object textEditNomeAgente: TcxTextEdit
        Left = 109
        Top = 77
        Hint = 'Nome do agente'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 5
        Width = 379
      end
      object textEditCodigoERP: TcxTextEdit
        Left = 494
        Top = 77
        Hint = 'C'#243'digo ERP'
        Style.HotTrack = False
        TabOrder = 6
        Width = 411
      end
      object currencyEditTicketMedio: TcxCurrencyEdit
        Left = 667
        Top = 170
        Hint = 'Valot do Ticket M'#233'dio (Verba fixa)'
        EditValue = 0.000000000000000000
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00;-,0.00'
        Style.HotTrack = False
        TabOrder = 11
        Width = 140
      end
      object checkBoxAtivo: TcxCheckBox
        Left = 813
        Top = 161
        Caption = 'Ativo'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Style.HotTrack = False
        TabOrder = 12
        Transparent = True
      end
      object buttonEditCodigoTabela: TcxButtonEdit
        Left = 11
        Top = 170
        Hint = 'C'#243'digo da tabela'
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Action = actionPesquisarTabelas
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Properties.OnValidate = buttonEditCodigoTabelaPropertiesValidate
        Style.HotTrack = False
        TabOrder = 8
        Text = '0'
        Width = 140
      end
      object textEditDescricaoTabela: TcxTextEdit
        Left = 157
        Top = 170
        Hint = 'Descricao da tabela'
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 9
        Width = 358
      end
      object buttonEditCodigoFaixa: TcxButtonEdit
        Left = 521
        Top = 170
        Properties.Alignment.Horz = taRightJustify
        Properties.Buttons = <
          item
            Action = actionPesquisarFaixas
            Default = True
            Kind = bkGlyph
          end>
        Properties.IgnoreMaskBlank = True
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.MaskKind = emkRegExpr
        Properties.EditMask = '\d\d\d\d\d\d'
        Style.HotTrack = False
        TabOrder = 10
        Text = '0'
        Width = 140
      end
      object imageComboBoxClientes: TcxImageComboBox
        Left = 11
        Top = 124
        Hint = 'Selecione o cliente'
        EditValue = 0
        Properties.Images = Data_Sisgef.iml_16_16
        Properties.Items = <
          item
            Description = 'Selecione ...'
            ImageIndex = 7
            Value = 0
          end
          item
            Description = 'TRANSFOLHA'
            ImageIndex = 56
            Value = 1
          end
          item
            Description = 'DIRECT'
            ImageIndex = 56
            Value = 4
          end>
        Style.HotTrack = False
        TabOrder = 7
        Width = 894
      end
      object gridExtravios: TcxGrid
        Left = 35
        Top = 254
        Width = 846
        Height = 186
        TabOrder = 13
        object gridExtraviosDBTableViewExtravios: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = gridExtraviosDBTableViewExtraviosNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              ImageIndex = 11
            end>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 5
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 8
          Navigator.Buttons.Next.ImageIndex = 7
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsExtravios
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Column = gridExtraviosDBTableViewExtraviosval_total
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object gridExtraviosDBTableViewExtravioscod_extravio: TcxGridDBColumn
            DataBinding.FieldName = 'cod_extravio'
            HeaderAlignmentHorz = taCenter
            Width = 48
          end
          object gridExtraviosDBTableViewExtraviosdes_extravio: TcxGridDBColumn
            DataBinding.FieldName = 'des_extravio'
            HeaderAlignmentHorz = taCenter
            Width = 173
          end
          object gridExtraviosDBTableViewExtraviosnum_nossonumero: TcxGridDBColumn
            DataBinding.FieldName = 'num_nossonumero'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object gridExtraviosDBTableViewExtravioscod_agente: TcxGridDBColumn
            DataBinding.FieldName = 'cod_agente'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosval_produto: TcxGridDBColumn
            DataBinding.FieldName = 'val_produto'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdat_extravio: TcxGridDBColumn
            DataBinding.FieldName = 'dat_extravio'
            HeaderAlignmentHorz = taCenter
            Width = 71
          end
          object gridExtraviosDBTableViewExtraviosval_multa: TcxGridDBColumn
            DataBinding.FieldName = 'val_multa'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosval_verba: TcxGridDBColumn
            DataBinding.FieldName = 'val_verba'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosval_total: TcxGridDBColumn
            DataBinding.FieldName = 'val_total'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object gridExtraviosDBTableViewExtraviosdom_restricao: TcxGridDBColumn
            DataBinding.FieldName = 'dom_restricao'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtravioscod_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtravioscod_tipo: TcxGridDBColumn
            DataBinding.FieldName = 'cod_tipo'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = Data_Sisgef.iml_16_16
            Properties.Items = <
              item
                Description = 'Extravio'
                ImageIndex = 43
                Value = 0
              end
              item
                Description = 'Sinistro'
                ImageIndex = 43
                Value = 1
              end
              item
                Description = 'Multa'
                ImageIndex = 20
                Value = 2
              end>
            HeaderAlignmentHorz = taCenter
            Width = 95
          end
          object gridExtraviosDBTableViewExtraviosval_verba_franquia: TcxGridDBColumn
            DataBinding.FieldName = 'val_verba_franquia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosval_extrato_franquia: TcxGridDBColumn
            DataBinding.FieldName = 'val_extrato_franquia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdom_extrato_franquia: TcxGridDBColumn
            DataBinding.FieldName = 'dom_extrato_franquia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdat_extravio_franquia: TcxGridDBColumn
            DataBinding.FieldName = 'dat_extravio_franquia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdes_envio_correspondencia: TcxGridDBColumn
            DataBinding.FieldName = 'des_envio_correspondencia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdes_retorno_correspondencia: TcxGridDBColumn
            DataBinding.FieldName = 'des_retorno_correspondencia'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdes_observacoes: TcxGridDBColumn
            Caption = 'Obs.'
            DataBinding.FieldName = 'des_observacoes'
            PropertiesClassName = 'TcxBlobEditProperties'
            Properties.BlobEditKind = bekMemo
            HeaderAlignmentHorz = taCenter
            Width = 41
          end
          object gridExtraviosDBTableViewExtraviosval_percentual_pago: TcxGridDBColumn
            Caption = '% Debitado'
            DataBinding.FieldName = 'val_percentual_pago'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object gridExtraviosDBTableViewExtraviosid_extrato: TcxGridDBColumn
            DataBinding.FieldName = 'id_extrato'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosseq_acareacao: TcxGridDBColumn
            DataBinding.FieldName = 'seq_acareacao'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object gridExtraviosDBTableViewExtraviosnom_executor: TcxGridDBColumn
            DataBinding.FieldName = 'nom_executor'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosdat_manutencao: TcxGridDBColumn
            DataBinding.FieldName = 'dat_manutencao'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridExtraviosDBTableViewExtraviosnum_extrato: TcxGridDBColumn
            DataBinding.FieldName = 'num_extrato'
            HeaderAlignmentHorz = taCenter
            Width = 69
          end
        end
        object gridExtraviosLevelExtavios: TcxGridLevel
          GridView = gridExtraviosDBTableViewExtravios
        end
      end
      object gridLancamentos: TcxGrid
        Left = 10000
        Top = 10000
        Width = 846
        Height = 186
        TabOrder = 14
        object gridLancamentosDBTableViewLancamentos: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = gridLancamentosDBTableViewLancamentosNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              ImageIndex = 11
            end>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 5
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 8
          Navigator.Buttons.Next.ImageIndex = 7
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsLancamentos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object gridLancamentosDBTableViewLancamentoscod_lancamento: TcxGridDBColumn
            DataBinding.FieldName = 'cod_lancamento'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object gridLancamentosDBTableViewLancamentosdes_lancamento: TcxGridDBColumn
            DataBinding.FieldName = 'des_lancamento'
            HeaderAlignmentHorz = taCenter
            Width = 241
          end
          object gridLancamentosDBTableViewLancamentosdat_lancamento: TcxGridDBColumn
            DataBinding.FieldName = 'dat_lancamento'
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object gridLancamentosDBTableViewLancamentoscod_entregador: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridLancamentosDBTableViewLancamentoscod_entregador_: TcxGridDBColumn
            DataBinding.FieldName = 'cod_entregador_'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
          end
          object gridLancamentosDBTableViewLancamentosdes_tipo: TcxGridDBColumn
            DataBinding.FieldName = 'des_tipo'
            HeaderAlignmentHorz = taCenter
            Width = 78
          end
          object gridLancamentosDBTableViewLancamentosval_lancamento: TcxGridDBColumn
            DataBinding.FieldName = 'val_lancamento'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            Width = 83
          end
          object gridLancamentosDBTableViewLancamentosdom_desconto: TcxGridDBColumn
            Caption = 'Descontado'
            DataBinding.FieldName = 'dom_desconto'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            HeaderAlignmentHorz = taCenter
            Width = 79
          end
          object gridLancamentosDBTableViewLancamentosdat_desconto: TcxGridDBColumn
            DataBinding.FieldName = 'dat_desconto'
            HeaderAlignmentHorz = taCenter
            Width = 107
          end
          object gridLancamentosDBTableViewLancamentosnum_extrato: TcxGridDBColumn
            DataBinding.FieldName = 'num_extrato'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            Width = 86
          end
          object gridLancamentosDBTableViewLancamentosdom_persistir: TcxGridDBColumn
            DataBinding.FieldName = 'dom_persistir'
            Visible = False
            HeaderAlignmentHorz = taCenter
            VisibleForCustomization = False
            Width = 46
          end
        end
        object gridLancamentosLevelLancamentos: TcxGridLevel
          GridView = gridLancamentosDBTableViewLancamentos
        end
      end
      object gridRemessas: TcxGrid
        Left = 10000
        Top = 10000
        Width = 846
        Height = 186
        TabOrder = 15
        object gridRemessasDBTableViewRemessas: TcxGridDBTableView
          Navigator.Buttons.OnButtonClick = gridRemessasDBTableViewRemessasNavigatorButtonsButtonClick
          Navigator.Buttons.CustomButtons = <
            item
              ImageIndex = 11
            end>
          Navigator.Buttons.Images = Data_Sisgef.iml_16_16
          Navigator.Buttons.First.ImageIndex = 5
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 8
          Navigator.Buttons.Next.ImageIndex = 7
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 6
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.ImageIndex = 19
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = dsExpressas
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = gridRemessasDBTableViewRemessasqtd_entregas
            end
            item
              Format = ',0;-,0'
              Kind = skSum
              Column = gridRemessasDBTableViewRemessasqtd_volumes
            end
            item
              Format = ',0.00;-,0.00'
              Kind = skSum
              Column = gridRemessasDBTableViewRemessasval_producao
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object gridRemessasDBTableViewRemessasdat_baixa: TcxGridDBColumn
            DataBinding.FieldName = 'dat_baixa'
            HeaderAlignmentHorz = taCenter
            Width = 97
          end
          object gridRemessasDBTableViewRemessasqtd_volumes: TcxGridDBColumn
            DataBinding.FieldName = 'qtd_volumes'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object gridRemessasDBTableViewRemessasqtd_entregas: TcxGridDBColumn
            DataBinding.FieldName = 'qtd_entregas'
            HeaderAlignmentHorz = taCenter
            Width = 86
          end
          object gridRemessasDBTableViewRemessasval_verba: TcxGridDBColumn
            DataBinding.FieldName = 'val_verba_entregador'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            Width = 77
          end
          object gridRemessasDBTableViewRemessasval_producao: TcxGridDBColumn
            DataBinding.FieldName = 'val_producao'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            Width = 131
          end
        end
        object gridRemessasLevelRemessas: TcxGridLevel
          GridView = gridRemessasDBTableViewRemessas
        end
      end
      object layoutControlCadastroGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 4
        ShowBorder = False
        Index = -1
      end
      object layoutItemCodigoCadastro: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Pessoa'
        CaptionOptions.Layout = clTop
        Control = buttonEditPessoa
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 70
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemNomePessoa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Nome Pessoa'
        CaptionOptions.Layout = clTop
        Control = textEditNomePessoa
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 290
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 0
        AutoCreated = True
      end
      object layoutItemCodigo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'C'#243'digo'
        CaptionOptions.Layout = clTop
        Control = maskEditCodigo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomeFantasia: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignVert = avClient
        CaptionOptions.Text = 'Nome Fantasia'
        CaptionOptions.Layout = clTop
        Control = textEditNomeFantasia
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 268
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemCodigoAgente: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Agente'
        CaptionOptions.Layout = clTop
        Control = buttonEditCodigoAgente
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemNomeAgente: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Nome do Agente'
        CaptionOptions.Layout = clTop
        Control = textEditNomeAgente
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 315
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
      object layoutItemCodigoERP: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'C'#243'digo ERP'
        CaptionOptions.Layout = clTop
        Control = textEditCodigoERP
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 341
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemTicketMedio: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ticket M'#233'dio'
        CaptionOptions.Layout = clTop
        Control = currencyEditTicketMedio
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = layoutControlCadastroGroup_Root
        LayoutDirection = ldHorizontal
        Index = 3
        AutoCreated = True
      end
      object layoutItemCheckBoxAtivo: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avCenter
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = checkBoxAtivo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 50
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutItemButtonEditCodigoTabela: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Tabela'
        CaptionOptions.Layout = clTop
        Control = buttonEditCodigoTabela
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemTextEditDescricaoTabela: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Descri'#231#227'o da Tabela'
        CaptionOptions.Layout = clTop
        Control = textEditDescricaoTabela
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 194
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemButtonEditCodigoFaixa: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Hint = 'C'#243'digo da faixa da tabela selecionada'
        CaptionOptions.Text = 'Faixa'
        CaptionOptions.Layout = clTop
        Control = buttonEditCodigoFaixa
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 76
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemImageComboBoxClientes: TdxLayoutItem
        Parent = layoutControlCadastroGroup_Root
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Clientes'
        CaptionOptions.Layout = clTop
        Control = imageComboBoxClientes
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutGroupHistorico: TdxLayoutGroup
        Parent = layoutControlCadastroGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Hist'#243'rico'
        Visible = False
        ButtonOptions.Buttons = <>
        ButtonOptions.ShowExpandButton = True
        LayoutDirection = ldTabbed
        Index = 4
      end
      object layoutItemExtravios: TdxLayoutItem
        Parent = layoutGroupHistorico
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Extravios'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridExtravios
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemLancamentos: TdxLayoutItem
        Parent = layoutGroupHistorico
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Lan'#231'amentos'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridLancamentos
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object layoutItemREmessas: TdxLayoutItem
        Parent = layoutGroupHistorico
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Remessas a Receber'
        CaptionOptions.Visible = False
        CaptionOptions.Layout = clTop
        Control = gridRemessas
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
    object layoutControlFooter: TdxLayoutControl
      Left = 11
      Top = 522
      Width = 916
      Height = 49
      ParentBackground = True
      TabOrder = 2
      Transparent = True
      object buttonNovo: TcxButton
        Left = 11
        Top = 11
        Width = 86
        Height = 25
        Cursor = crHandPoint
        Action = LiveBindingsBindNavigateInsert1
        TabOrder = 0
      end
      object buttonLocalizar: TcxButton
        Left = 191
        Top = 11
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionLocalizar
        TabOrder = 2
      end
      object buttonCancelar: TcxButton
        Left = 279
        Top = 11
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = LiveBindingsBindNavigateCancel1
        Cancel = True
        TabOrder = 3
      end
      object buttonGravar: TcxButton
        Left = 367
        Top = 11
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = LiveBindingsBindNavigatePost1
        TabOrder = 4
      end
      object buttonFechar: TcxButton
        Left = 823
        Top = 11
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = actionFechar
        TabOrder = 5
      end
      object buttonEditar: TcxButton
        Left = 103
        Top = 11
        Width = 82
        Height = 25
        Action = LiveBindingsBindNavigateEdit1
        TabOrder = 1
      end
      object layoutControlFooterGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avBottom
        ButtonOptions.Buttons = <>
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object layoutItemButtonNovo: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonNovo
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object layoutItemButtonLocalizar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonLocalizar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object layoutItemButtonCancelar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonCancelar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object layoutItemButtonGravar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonGravar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object layoutItemButtonFechar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahRight
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonFechar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object layoutItemButtonEditar: TdxLayoutItem
        Parent = layoutControlFooterGroup_Root
        AlignHorz = ahLeft
        AlignVert = avCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = buttonEditar
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
    object layoutControlPadraoGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object layoutItemLabelTitle: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = labelTitle
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 46
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemCadastro: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cadastro'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
      Control = layoutControlCadastro
      ControlOptions.OriginalHeight = 237
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object layoutItemFooter: TdxLayoutItem
      Parent = layoutControlPadraoGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Footer'
      CaptionOptions.Visible = False
      Control = layoutControlFooter
      ControlOptions.OriginalHeight = 49
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object memTableEntregadores: TFDMemTable
    AfterInsert = memTableEntregadoresAfterInsert
    AfterEdit = memTableEntregadoresAfterEdit
    BeforePost = memTableEntregadoresBeforePost
    AfterPost = memTableEntregadoresAfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 536
    Top = 8
    object memTableEntregadorescod_cadastro: TIntegerField
      FieldName = 'cod_cadastro'
    end
    object memTableEntregadorescod_entregador: TIntegerField
      FieldName = 'cod_entregador'
    end
    object memTableEntregadoresnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 70
    end
    object memTableEntregadorescod_agente: TIntegerField
      FieldName = 'cod_agente'
    end
    object memTableEntregadoresdat_codigo: TDateField
      FieldName = 'dat_codigo'
    end
    object memTableEntregadoresdes_chave: TStringField
      FieldName = 'des_chave'
      Size = 70
    end
    object memTableEntregadorescod_grupo: TIntegerField
      FieldName = 'cod_grupo'
    end
    object memTableEntregadoresval_verba: TFloatField
      FieldName = 'val_verba'
    end
    object memTableEntregadoresnom_executante: TStringField
      FieldName = 'nom_executante'
    end
    object memTableEntregadoresdom_ativo: TIntegerField
      FieldName = 'dom_ativo'
    end
    object memTableEntregadoresdat_manutencao: TSQLTimeStampField
      FieldName = 'dat_manutencao'
    end
    object memTableEntregadorescod_tabela: TIntegerField
      FieldName = 'cod_tabela'
    end
    object memTableEntregadorescod_cliente: TIntegerField
      FieldName = 'cod_cliente'
    end
  end
  object dsEntregadores: TDataSource
    DataSet = memTableEntregadores
    Left = 592
    Top = 8
  end
  object mtbTipos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 432
    Top = 8
    object mtbTiposcod_tipo: TIntegerField
      FieldName = 'cod_tipo'
    end
    object mtbTiposdes_tipo: TStringField
      FieldName = 'des_tipo'
      Size = 50
    end
    object mtbTiposdes_colunas: TStringField
      FieldName = 'des_colunas'
      Size = 50
    end
  end
  object dsTipos: TDataSource
    AutoEdit = False
    DataSet = mtbTipos
    Left = 480
    Top = 8
  end
  object memTableFaixas: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 672
    Top = 8
    object memTableFaixascod_faixa: TIntegerField
      FieldName = 'cod_faixa'
    end
    object memTableFaixasdes_faixa: TStringField
      FieldName = 'des_faixa'
      Size = 70
    end
  end
  object dsFaixas: TDataSource
    AutoEdit = False
    DataSet = memTableFaixas
    Left = 720
    Top = 8
  end
  object actionListEntregadores: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 376
    Top = 8
    object actionLocalizar: TAction
      Category = 'Entregadores'
      Caption = 'Localizar'
      Hint = 'Localizar entregador'
      ImageIndex = 12
      ShortCut = 119
      OnExecute = actionLocalizarExecute
    end
    object actionFechar: TAction
      Category = 'Entregadores'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actionFecharExecute
    end
    object actionLocalizarAgentes: TAction
      Category = 'Entregadores'
      Caption = 'Pesquisar'
      Hint = 'Localizar agentes'
      ImageIndex = 14
      OnExecute = actionLocalizarAgentesExecute
    end
    object actionLocalizarPessoas: TAction
      Category = 'Entregadores'
      Caption = 'Localiar Pessoas'
      Hint = 'Localizar pessoas'
      ImageIndex = 14
      OnExecute = actionLocalizarPessoasExecute
    end
    object actionPesquisarTabelas: TAction
      Category = 'Entregadores'
      Caption = 'PEsquisar Tabelas'
      Hint = 'Pesquisar tipos de tabelas de verbas'
      ImageIndex = 14
      OnExecute = actionPesquisarTabelasExecute
    end
    object actionPesquisarFaixas: TAction
      Category = 'Entregadores'
      Caption = 'Faixas'
      Hint = 'Pesquisa a faixa da tabela de verbas'
      ImageIndex = 14
      OnExecute = actionPesquisarFaixasExecute
    end
    object LiveBindingsBindNavigateInsert1: TBindNavigateInsert
      Category = 'LiveBindings'
      Caption = 'Inserir'
      Hint = 'Inserir novo entregador'
      ImageIndex = 3
      ShortCut = 113
      DataSource = BindSourceDB2
    end
    object LiveBindingsBindNavigateEdit1: TBindNavigateEdit
      Category = 'LiveBindings'
      Caption = 'Editar'
      Hint = 'Editar dados'
      ImageIndex = 10
      ShortCut = 114
      DataSource = BindSourceDB2
    end
    object LiveBindingsBindNavigatePost1: TBindNavigatePost
      Category = 'LiveBindings'
      Caption = 'Gravar'
      Hint = 'Gravar os dados'
      ImageIndex = 13
      ShortCut = 116
      DataSource = BindSourceDB2
    end
    object LiveBindingsBindNavigateCancel1: TBindNavigateCancel
      Category = 'LiveBindings'
      Caption = 'Cancelar'
      Hint = 'Cancelar opera'#231#227'o'
      ImageIndex = 2
      OnExecute = LiveBindingsBindNavigateCancel1Execute
      DataSource = BindSourceDB2
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 292
    Top = 5
    object LinkPropertyToFieldText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nom_fantasia'
      Component = textEditNomeFantasia
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'dom_ativo'
      Component = checkBoxAtivo
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldText4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'des_chave'
      Component = textEditCodigoERP
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_grupo'
      Component = buttonEditCodigoFaixa
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_entregador'
      Component = maskEditCodigo
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue4: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_cadastro'
      Component = buttonEditPessoa
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue5: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_agente'
      Component = buttonEditCodigoAgente
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldEditValue6: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_cliente'
      Component = imageComboBoxClientes
      ComponentProperty = 'EditValue'
    end
    object LinkPropertyToFieldEditValue7: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'cod_tabela'
      Component = buttonEditCodigoTabela
      ComponentProperty = 'Text'
    end
    object LinkPropertyToFieldValue: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'val_verba'
      Component = currencyEditTicketMedio
      ComponentProperty = 'Value'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = memTableEntregadores
    ScopeMappings = <>
    Left = 328
    Top = 8
  end
  object memTableExtravios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 152
    Top = 6
    object memTableExtravioscod_extravio: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_extravio'
    end
    object memTableExtraviosdes_extravio: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_extravio'
      Size = 150
    end
    object memTableExtraviosnum_nossonumero: TStringField
      DisplayLabel = 'Remessa'
      FieldName = 'num_nossonumero'
    end
    object memTableExtravioscod_agente: TIntegerField
      DisplayLabel = 'Base'
      FieldName = 'cod_agente'
    end
    object memTableExtraviosval_produto: TFloatField
      DisplayLabel = 'Valor Produto'
      FieldName = 'val_produto'
    end
    object memTableExtraviosdat_extravio: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_extravio'
    end
    object memTableExtraviosval_multa: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'val_multa'
    end
    object memTableExtraviosval_verba: TFloatField
      DisplayLabel = 'Verba'
      FieldName = 'val_verba'
    end
    object memTableExtraviosval_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'val_total'
    end
    object memTableExtraviosdom_restricao: TStringField
      DisplayLabel = 'Finalizado'
      FieldName = 'dom_restricao'
      Size = 1
    end
    object memTableExtravioscod_entregador: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'cod_entregador'
    end
    object memTableExtravioscod_tipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cod_tipo'
    end
    object memTableExtraviosval_verba_franquia: TFloatField
      DisplayLabel = 'Verba UN'
      FieldName = 'val_verba_franquia'
    end
    object memTableExtraviosval_extrato_franquia: TFloatField
      DisplayLabel = 'D'#233'bito Extrato UN'
      FieldName = 'val_extrato_franquia'
    end
    object memTableExtraviosdom_extrato_franquia: TStringField
      DisplayLabel = 'Finalizado UN'
      FieldName = 'dom_extrato_franquia'
      Size = 1
    end
    object memTableExtraviosdat_extravio_franquia: TDateField
      DisplayLabel = 'Data UN'
      FieldName = 'dat_extravio_franquia'
    end
    object memTableExtraviosdes_envio_correspondencia: TStringField
      DisplayLabel = 'Envio de Correspond'#234'ncia'
      FieldName = 'des_envio_correspondencia'
    end
    object memTableExtraviosdes_retorno_correspondencia: TStringField
      DisplayLabel = 'Retorno Correspond'#234'ncia'
      FieldName = 'des_retorno_correspondencia'
      Size = 70
    end
    object memTableExtraviosdes_observacoes: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'des_observacoes'
      BlobType = ftMemo
    end
    object memTableExtraviosval_percentual_pago: TFloatField
      DisplayLabel = 'Percentual Debitado'
      FieldName = 'val_percentual_pago'
    end
    object memTableExtraviosid_extrato: TIntegerField
      DisplayLabel = 'ID Extrato'
      FieldName = 'id_extrato'
    end
    object memTableExtraviosseq_acareacao: TIntegerField
      DisplayLabel = 'N'#186' Acarea'#231#227'o'
      FieldName = 'seq_acareacao'
    end
    object memTableExtraviosnom_executor: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nom_executor'
    end
    object memTableExtraviosdat_manutencao: TDateTimeField
      DisplayLabel = 'Manuten'#231#227'o'
      FieldName = 'dat_manutencao'
    end
    object memTableExtraviosnum_extrato: TStringField
      DisplayLabel = 'N'#176' Extrato'
      FieldName = 'num_extrato'
      Size = 30
    end
  end
  object dsExtravios: TDataSource
    AutoEdit = False
    DataSet = memTableExtravios
    Left = 104
    Top = 8
  end
  object memTableLancamentos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 216
    Top = 8
    object memTableLancamentoscod_lancamento: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'cod_lancamento'
    end
    object memTableLancamentosdes_lancamento: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'des_lancamento'
      Size = 256
    end
    object memTableLancamentosdat_lancamento: TDateField
      DisplayLabel = 'Data'
      FieldName = 'dat_lancamento'
    end
    object memTableLancamentoscod_entregador: TIntegerField
      DisplayLabel = 'Entregador'
      FieldName = 'cod_entregador'
    end
    object memTableLancamentoscod_entregador_: TIntegerField
      DisplayLabel = 'Entregador_'
      FieldName = 'cod_entregador_'
    end
    object memTableLancamentosdes_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'des_tipo'
      Size = 10
    end
    object memTableLancamentosval_lancamento: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'val_lancamento'
    end
    object memTableLancamentosdom_desconto: TStringField
      FieldName = 'dom_desconto'
      Size = 1
    end
    object memTableLancamentosdat_desconto: TDateField
      DisplayLabel = 'Data Desconto'
      FieldName = 'dat_desconto'
    end
    object memTableLancamentosnum_extrato: TStringField
      DisplayLabel = 'Extrato'
      FieldName = 'num_extrato'
      Size = 15
    end
    object memTableLancamentosdom_persistir: TStringField
      DisplayLabel = 'Persistir'
      FieldName = 'dom_persistir'
      Size = 1
    end
  end
  object dsLancamentos: TDataSource
    AutoEdit = False
    DataSet = memTableLancamentos
    Left = 256
    Top = 8
  end
  object memTableExpressas: TFDMemTable
    OnCalcFields = memTableExpressasCalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 760
    Top = 8
    object memTableExpressasdat_baixa: TDateField
      DisplayLabel = 'Data Baixa'
      FieldName = 'dat_baixa'
    end
    object memTableExpressasqtd_entregas: TIntegerField
      DisplayLabel = 'Entregas'
      FieldName = 'qtd_entregas'
    end
    object memTableExpressasqtd_volumes: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'qtd_volumes'
    end
    object memTableExpressasval_verba_entregador: TCurrencyField
      DisplayLabel = 'Val. Verba'
      FieldName = 'val_verba_entregador'
    end
    object memTableExpressasval_producao: TCurrencyField
      DisplayLabel = 'Produ'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'val_producao'
      Calculated = True
    end
  end
  object dsExpressas: TDataSource
    AutoEdit = False
    DataSet = memTableExpressas
    Left = 800
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 640
    Top = 16
  end
end
