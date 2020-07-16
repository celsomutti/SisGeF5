object view_ControleEntregas: Tview_ControleEntregas
  Left = 0
  Top = 0
  Caption = 'Controle de Entregas de Pedidos'
  ClientHeight = 407
  ClientWidth = 899
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 899
    Height = 407
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Controle de Entregas de Pedidos'
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
    object cxButton1: TcxButton
      Left = 814
      Top = 372
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = aclFechar
      TabOrder = 26
    end
    object datAtribuicao: TcxDateEdit
      Left = 116
      Top = 103
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 95
    end
    object edtEntregador: TcxButtonEdit
      Left = 276
      Top = 103
      Hint = 'C'#243'digo doentregador'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisar
          Default = True
          Kind = bkGlyph
        end>
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.OnChange = edtEntregadorPropertiesChange
      Properties.OnValidate = edtEntregadorPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = '0'
      Width = 73
    end
    object txtNomeEntregador: TcxTextEdit
      Left = 355
      Top = 103
      Hint = 'Nome do entregador'
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 181
    end
    object cxButton2: TcxButton
      Left = 802
      Top = 103
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actIniciar
      TabOrder = 7
    end
    object grdAtribuicao: TcxGrid
      Left = 22
      Top = 179
      Width = 250
      Height = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object tvAtribuicao: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvAtribuicaoNavigatorButtonsButtonClick
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
        Navigator.Buttons.Delete.ImageIndex = 4
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
        DataController.DataSource = dsAtribuicao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skCount
            Column = tvAtribuicaonum_nossunumero
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvAtribuicaoqtd_volumes
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object tvAtribuicaoid_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'id_atribuicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object tvAtribuicaocod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 140
        end
        object tvAtribuicaocod_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'cod_atribuicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object tvAtribuicaodat_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_atribuicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvAtribuicaocod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'TRANSFOLHA'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'CARRIERS'
              ImageIndex = 1
              Value = 2
            end
            item
              Description = 'SPLOG BRASIL'
              ImageIndex = 1
              Value = 3
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object tvAtribuicaonom_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_embarcador'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 174
        end
        object tvAtribuicaocod_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_embarcador'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 126
        end
        object tvAtribuicaonum_nossunumero: TcxGridDBColumn
          DataBinding.FieldName = 'num_nossonumero'
          PropertiesClassName = 'TcxTextEditProperties'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 129
        end
        object tvAtribuicaodes_endereco: TcxGridDBColumn
          DataBinding.FieldName = 'des_endereco'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 616
        end
        object tvAtribuicaodat_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'dat_retorno'
          PropertiesClassName = 'TcxDateEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvAtribuicaodom_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'dom_retorno'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.NullStyle = nssUnchecked
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvAtribuicaodes_log: TcxGridDBColumn
          DataBinding.FieldName = 'des_log'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvAtribuicaonum_cep: TcxGridDBColumn
          DataBinding.FieldName = 'num_cep'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object tvAtribuicaonom_bairro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_bairro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 204
        end
        object tvAtribuicaonom_consumidor: TcxGridDBColumn
          DataBinding.FieldName = 'nom_consumidor'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 258
        end
        object tvAtribuicaoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxSpinEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvAtribuicaodes_telefone: TcxGridDBColumn
          DataBinding.FieldName = 'des_telefone'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvAtribuicaonum_lote_remessa: TcxGridDBColumn
          DataBinding.FieldName = 'num_lote_remessa'
          PropertiesClassName = 'TcxSpinEditProperties'
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvAtribuicao: TcxGridLevel
        GridView = tvAtribuicao
      end
    end
    object cxButton3: TcxButton
      Left = 802
      Top = 329
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 14
    end
    object cxButton4: TcxButton
      Left = 22
      Top = 329
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      TabOrder = 10
    end
    object txtLeitura: TcxTextEdit
      Left = 22
      Top = 152
      Hint = 'C'#243'digo de barras ou identrificador'
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnValidate = txtLeituraPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 121
    end
    object cxButton5: TcxButton
      Left = 103
      Top = 329
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actExcluirPedido
      TabOrder = 11
    end
    object cxButton6: TcxButton
      Left = 207
      Top = 329
      Width = 114
      Height = 25
      Cursor = crHandPoint
      Action = actExcluirAtribuicao
      TabOrder = 12
    end
    object cxButton7: TcxButton
      Left = 327
      Top = 329
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = actImprimir
      TabOrder = 13
    end
    object edtEntregadorRetorno: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do entregador'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisarEntregadorRetorno
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d'
      Properties.OnValidate = edtEntregadorRetornoPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Text = '0'
      Visible = False
      Width = 72
    end
    object txtNomeEntregadorRetorno: TcxTextEdit
      Left = 10000
      Top = 10000
      Hint = 'Nome do entregador'
      TabStop = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Visible = False
      Width = 170
    end
    object datInicio: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data do in'#237'cio do per'#237'odo de atribui'#231#227'o'
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Visible = False
      Width = 98
    end
    object datFinal: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data do final do per'#237'odo de atribui'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Visible = False
      Width = 98
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actIniciarRetorno
      TabOrder = 15
      Visible = False
    end
    object grdRetorno: TcxGrid
      Left = 10000
      Top = 10000
      Width = 250
      Height = 177
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      Visible = False
      object tvRetorno: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvRetornoNavigatorButtonsButtonClick
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
        DataController.DataSource = dsAtribuicao
        DataController.Summary.DefaultGroupSummaryItems = <
          item
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = tvRetornoqtd_volumes
          end
          item
            Kind = skCount
            Column = tvRetornonum_nossunumero
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvRetornodom_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'dom_retorno'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'Pendente'
              Value = 0
            end
            item
              Description = 'Entregue'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'Insucesso'
              ImageIndex = 9
              Value = 2
            end>
          Properties.ShowDescriptions = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornoid_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'id_atribuicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornocod_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'cod_atribuicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornonum_lote_remessa: TcxGridDBColumn
          DataBinding.FieldName = 'num_lote_remessa'
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object tvRetornodat_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_atribuicao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object tvRetornocod_entregador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_entregador'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornocod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 120
        end
        object tvRetornocod_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_embarcador'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornonom_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_embarcador'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object tvRetornonum_nossunumero: TcxGridDBColumn
          DataBinding.FieldName = 'num_nossonumero'
          PropertiesClassName = 'TcxTextEditProperties'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvRetornodes_endereco: TcxGridDBColumn
          DataBinding.FieldName = 'des_endereco'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 302
        end
        object tvRetornonum_cep: TcxGridDBColumn
          DataBinding.FieldName = 'num_cep'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object tvRetornonom_bairro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_bairro'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 182
        end
        object tvRetornonom_consumidor: TcxGridDBColumn
          DataBinding.FieldName = 'nom_consumidor'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 218
        end
        object tvRetornoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxSpinEditProperties'
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornodes_telefone: TcxGridDBColumn
          DataBinding.FieldName = 'des_telefone'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornodat_retorno: TcxGridDBColumn
          DataBinding.FieldName = 'dat_retorno'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvRetornodes_log: TcxGridDBColumn
          DataBinding.FieldName = 'des_log'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvRetorno: TcxGridLevel
        GridView = tvRetorno
      end
    end
    object txtLeituraRetorno: TcxTextEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnValidate = txtLeituraRetornoPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 21
      Visible = False
      Width = 121
    end
    object cxButton9: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelarRetorno
      Cancel = True
      TabOrder = 23
      Visible = False
    end
    object cxButton10: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Action = actImprimirRetorno
      TabOrder = 24
      Visible = False
    end
    object cxButton11: TcxButton
      Left = 10000
      Top = 10000
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravarRetorno
      TabOrder = 25
      Visible = False
    end
    object cboLote: TcxComboBox
      Left = 568
      Top = 103
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Sem Controle'
        '1'#186
        '2'#186
        '3'#186
        '4'#186
        '5'#186
        '6'#186
        '7'#186
        '8'#186
        '9'#186)
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Text = 'Sem Controle'
      Width = 113
    end
    object cboCliente: TcxComboBox
      Left = 48
      Top = 38
      Hint = 'Cliente'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'TRANSFOLHA'
        'CARRIERS'
        'SPLOG BRASIL')
      Properties.OnChange = cboClientePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 125
    end
    object cboRetorno: TcxComboBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Pendente'
        'Entregue'
        'Insucesso')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Text = 'Pendente'
      Visible = False
      Width = 121
    end
    object chkDANFE: TcxCheckBox
      Left = 687
      Top = 103
      Hint = 'Seleione esta op'#231#227'o se o produto dve ser localizado pela DANFE'
      Caption = 'DANFE'
      ParentFont = False
      State = cbsChecked
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Atribui'#231#245'es'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      OnTabChanging = dxLayoutGroup2TabChanging
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Presta'#231#227'o de Contas'
      ButtonOptions.Buttons = <>
      OnTabChanging = dxLayoutGroup3TabChanging
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data da Atribui'#231#227'o'
      Control = datAtribuicao
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Entregador'
      Control = edtEntregador
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Visible = False
      Control = txtNomeEntregador
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Atribui'#231#227'o'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdAtribuicao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Nosso N'#250'mero/DACTE/ID Pedido/DANFE'
      CaptionOptions.Layout = clTop
      Control = txtLeitura
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Entregador'
      Control = edtEntregadorRetorno
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nome'
      CaptionOptions.Visible = False
      Control = txtNomeEntregadorRetorno
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Per'#237'odo de'
      Control = datInicio
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'at'#233
      Control = datFinal
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton8'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Retorno'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdRetorno
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Nosso N'#250'mero/DACTE/ID Pedido/DANFE'
      CaptionOptions.Layout = clTop
      Control = txtLeituraRetorno
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton9'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton9
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton10'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton10
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton11'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Lote'
      Control = cboLote
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Cliente'
      Control = cboCliente
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Retorno'
      Control = cboRetorno
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkDANFE
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object aclControle: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 272
    Top = 8
    object aclFechar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Fechar'
      Hint = 'Fechar tela'
      ImageIndex = 17
      OnExecute = aclFecharExecute
    end
    object actIniciar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Iniciar'
      Hint = 'Iniciar atribui'#231#227'o'
      ImageIndex = 1
      OnExecute = actIniciarExecute
    end
    object actPesquisar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar entregador'
      ImageIndex = 14
      OnExecute = actPesquisarExecute
    end
    object actGravar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Gravar a atribui'#231#227'o no banco de dados'
      ImageIndex = 13
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar atribui'#231#227'o'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actExcluirPedido: TAction
      Category = 'Controle de Entregas'
      Caption = 'Excluir Pedido'
      Enabled = False
      Hint = 'Excluir o pedido selecionado da atribui'#231#227'o'
      ImageIndex = 23
      OnExecute = actExcluirPedidoExecute
    end
    object actExcluirAtribuicao: TAction
      Category = 'Controle de Entregas'
      Caption = 'Excluir Atribui'#231#227'o'
      Enabled = False
      Hint = 'Excluir toda a atribui'#231#227'o'
      ImageIndex = 9
      OnExecute = actExcluirAtribuicaoExecute
    end
    object actImprimir: TAction
      Category = 'Controle de Entregas'
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir atribui'#231#227'o'
      ImageIndex = 27
      OnExecute = actImprimirExecute
    end
    object actPesquisarEntregadorRetorno: TAction
      Category = 'Controle de Entregas'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar o entregador'
      ImageIndex = 14
      OnExecute = actPesquisarEntregadorRetornoExecute
    end
    object actIniciarRetorno: TAction
      Category = 'Controle de Entregas'
      Caption = 'Iniciar'
      Hint = 'Iniciar presta'#231#227'o de contas'
      ImageIndex = 1
      OnExecute = actIniciarRetornoExecute
    end
    object actCancelarRetorno: TAction
      Category = 'Controle de Entregas'
      Caption = 'Cancelar'
      Enabled = False
      Hint = 'Cancelar presta'#231#227'o de contas'
      ImageIndex = 2
      OnExecute = actCancelarRetornoExecute
    end
    object actImprimirRetorno: TAction
      Category = 'Controle de Entregas'
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Imprimir listagem de pend'#234'ncias'
      ImageIndex = 27
      OnExecute = actImprimirRetornoExecute
    end
    object actGravarRetorno: TAction
      Category = 'Controle de Entregas'
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Gravar a presta'#231#227'o de contas'
      ImageIndex = 13
      OnExecute = actGravarRetornoExecute
    end
  end
  object dsAtribuicao: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbAtribuicao
    Left = 320
    Top = 8
  end
  object frxAtribuicao: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43556.608606504600000000
    ReportOptions.LastChange = 43573.578035196760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 400
    Top = 8
    Datasets = <
      item
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
      end>
    Variables = <
      item
        Name = ' Listagem'
        Value = Null
      end
      item
        Name = 'vEntregador'
        Value = ''
      end
      item
        Name = 'vData'
        Value = ''
      end
      item
        Name = 'vImpressao'
        Value = ''
      end
      item
        Name = 'vTotalPedidos'
        Value = ''
      end
      item
        Name = 'vTotalVolumes'
        Value = ''
      end
      item
        Name = 'vLote'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ATRIBUI'#199#195'O DE ENTREGAS EXPRESSAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 789.921770000000000000
          Top = 11.338590000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page#]/[TotalPages#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Entregador: [vEntregador]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 495.118430000000000000
          Top = 37.795300000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              'Data da Atribui'#231#227'o: [vData] - Lote [frxDBAtribuicao."num_lote_re' +
              'messa"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 89.929190000000000000
          Width = 975.118740000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 94.488250000000000000
          Top = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Embarcador')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 170.078850000000000000
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 257.008040000000000000
          Top = 64.252010000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 491.338900000000000000
          Top = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 566.929500000000000000
          Top = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 680.315400000000000000
          Top = 64.252010000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumidor')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 888.189550000000000000
          Top = 64.252010000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vol.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 922.205320000000000000
          Top = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 37.795300000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
        RowCount = 0
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_embarcador"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 170.078850000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_nossonumero"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 257.008040000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_endereco"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 491.338900000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_cep"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_bairro"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 684.094930000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_consumidor"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 891.969080000000000000
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."qtd_volumes"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 922.205320000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_telefone"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBAtribuicao."cod_cliente"> = 1,'#39'TFO'#39',IIF(<frxDBAtribui' +
              'cao."cod_cliente"> = 2,'#39'CAR'#39',IIF(<frxDBAtribuicao."cod_cliente">' +
              ' = 3,'#39'SPL'#39','#39#39')))]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Left = 37.795300000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[vImpressao]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Pedidos da Atribui'#231#227'o: [COUNT(0,1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 37.795300000000000000
          Top = 45.354360000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Total de Volumes da Atribui'#231#227'o: [SUM(<frxDBAtribuicao."qtd_volum' +
              'es">,0,0)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 173.858380000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBAtribuicao."num_lote_remessa"'
        KeepTogether = True
        StartNewPage = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Total de Pedidos do Lote [frxDBAtribuicao."num_lote_remessa"]: [' +
              'COUNT(0,1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Top = 41.574830000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Total de Volumes do Lote [frxDBAtribuicao."num_lote_remessa"]: [' +
              'SUM(<frxDBAtribuicao."qtd_volumes">,0,0)]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxDBAtribuicao: TfrxDBDataset
    UserName = 'frxDBAtribuicao'
    CloseDataSource = False
    DataSet = Data_Sisgef.mtbAtribuicao
    BCDToCurrency = False
    Left = 448
    Top = 8
  end
  object SaveDialog: TSaveDialog
    Left = 544
    Top = 8
  end
  object frxPendencia: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43557.531706747700000000
    ReportOptions.LastChange = 43573.592591296300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 496
    Top = 8
    Datasets = <
      item
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
      end>
    Variables = <
      item
        Name = ' Listagem'
        Value = Null
      end
      item
        Name = 'vDataInicial'
        Value = Null
      end
      item
        Name = 'vDataFinal'
        Value = Null
      end
      item
        Name = 'vEntregador'
        Value = Null
      end
      item
        Name = 'vImpressao'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              'LISTAGEM DE PEND'#202'NCIAS DE PRESTA'#199#195'O DE CONTAS DE ENTREGADOR DE E' +
              'XPRESSAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 710.551640000000000000
          Top = 18.897650000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g: [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 45.354360000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ENTREGADOR : [vEntregador] - PER'#205'ODO DE [vDataInicial] AT'#201' [vDat' +
              'aFinal]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 90.708720000000000000
          Top = 86.929190000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 162.519790000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Embarcador')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 260.787570000000000000
          Top = 86.929190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 362.834880000000000000
          Top = 86.929190000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumidor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 755.906000000000000000
          Top = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 869.291900000000000000
          Top = 86.929190000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 937.323440000000000000
          Top = 86.929190000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vol.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 975.118740000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Left = 975.118740000000000000
          Top = 86.929190000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lote')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
        Filter = '<frxDBAtribuicao."dom_retorno"> = 0'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."dat_atribuicao"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_embarcador"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 260.787570000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_nossonumero"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 362.834880000000000000
          Width = 177.637910000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_consumidor"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 544.252320000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_endereco"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 755.906000000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_bairro"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 869.291900000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_cep"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 937.323440000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."qtd_volumes"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_lote_remessa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBAtribuicao."cod_cliente"> = 1,'#39'TFO'#39',IIF(<frxDBAtribui' +
              'cao."cod_cliente"> = 2,'#39'CAR'#39',IIF(<frxDBAtribuicao."cod_cliente">' +
              ' = 3,'#39'SPL'#39','#39#39')))]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[vImpressao]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Pedidos Pendentes: [COUNT(0,1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 41.574830000000000000
          Top = 26.456710000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'Total de Volumes Pendentes: [SUM(<frxDBAtribuicao."qtd_volumes">' +
              ',0,0)]')
          ParentFont = False
        end
      end
    end
  end
end
