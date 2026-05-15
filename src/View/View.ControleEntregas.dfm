object view_ControleEntregas: Tview_ControleEntregas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Entregas de Pedidos'
  ClientHeight = 458
  ClientWidth = 909
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
    Width = 909
    Height = 458
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxButton1: TcxButton
      Left = 824
      Top = 423
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = aclFechar
      TabOrder = 33
    end
    object datAtribuicao: TcxDateEdit
      Left = 118
      Top = 71
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
      Left = 278
      Top = 71
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
      Left = 357
      Top = 71
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
      Left = 810
      Top = 71
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actIniciar
      TabOrder = 7
    end
    object grdAtribuicao: TcxGrid
      Left = 24
      Top = 147
      Width = 861
      Height = 225
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
        OptionsSelection.CellSelect = False
        OptionsSelection.CheckBoxPosition = cbpIndicator
        OptionsSelection.CheckBoxVisibility = [cbvDataRow]
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
          Visible = False
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
          Properties.Alignment = taRightJustify
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
      Left = 810
      Top = 378
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 14
    end
    object cxButton4: TcxButton
      Left = 24
      Top = 378
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      TabOrder = 10
    end
    object txtLeitura: TcxTextEdit
      Left = 24
      Top = 120
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
      Width = 861
    end
    object cxButton5: TcxButton
      Left = 105
      Top = 378
      Width = 98
      Height = 25
      Cursor = crHandPoint
      Action = actExcluirPedido
      TabOrder = 11
    end
    object cxButton6: TcxButton
      Left = 209
      Top = 378
      Width = 114
      Height = 25
      Cursor = crHandPoint
      Action = actExcluirAtribuicao
      TabOrder = 12
    end
    object cxButton7: TcxButton
      Left = 329
      Top = 378
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
      Width = 861
      Height = 225
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
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
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
          Properties.ReadOnly = True
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
        object tvRetornocod_informativo: TcxGridDBColumn
          DataBinding.FieldName = 'cod_informativo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'des_informativo'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsInformativo
          HeaderAlignmentHorz = taCenter
          Width = 158
        end
        object tvRetornonum_lote_remessa: TcxGridDBColumn
          DataBinding.FieldName = 'num_lote_remessa'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 59
        end
        object tvRetornodat_atribuicao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_atribuicao'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ReadOnly = True
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
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 141
        end
        object tvRetornonum_nossunumero: TcxGridDBColumn
          DataBinding.FieldName = 'num_nossonumero'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvRetornodes_endereco: TcxGridDBColumn
          DataBinding.FieldName = 'des_endereco'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 302
        end
        object tvRetornonum_cep: TcxGridDBColumn
          DataBinding.FieldName = 'num_cep'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object tvRetornonom_bairro: TcxGridDBColumn
          DataBinding.FieldName = 'nom_bairro'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 182
        end
        object tvRetornonom_consumidor: TcxGridDBColumn
          DataBinding.FieldName = 'nom_consumidor'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 218
        end
        object tvRetornoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ReadOnly = True
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
      Width = 861
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
      Left = 570
      Top = 71
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
    object cboRetorno: TcxComboBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Pendente'
        'Finalizado'
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
      Left = 689
      Top = 71
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
    object codCliente: TcxButtonEdit
      Left = 48
      Top = 10
      Hint = 'C'#243'digo do cliente'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisarCliente
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = codClientePropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = '0'
      Width = 81
    end
    object nomCliente: TcxTextEdit
      Left = 135
      Top = 10
      TabStop = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 764
    end
    object bteEntregadorRel: TcxButtonEdit
      Left = 10000
      Top = 10000
      Hint = 'C'#243'digo do entregador'
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Buttons = <
        item
          Action = actPesquisaEntregadorRel
          Default = True
          Kind = bkGlyph
        end>
      Properties.IgnoreMaskBlank = True
      Properties.Images = Data_Sisgef.iml_16_16
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d\d\d\d\d\d\d\d'
      Properties.OnValidate = bteEntregadorRelPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Text = '0'
      Visible = False
      Width = 78
    end
    object txtnomEntregadorRel: TcxTextEdit
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
      TabOrder = 27
      Visible = False
      Width = 266
    end
    object datInicialRel: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data inicial de atribui'#231#227'o'
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
      TabOrder = 28
      Visible = False
      Width = 91
    end
    object datFinalRel: TcxDateEdit
      Left = 10000
      Top = 10000
      Hint = 'Data final de atribui'#231#227'o'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 29
      Visible = False
      Width = 91
    end
    object gridRel: TcxGrid
      Left = 10000
      Top = 10000
      Width = 861
      Height = 270
      TabOrder = 31
      Visible = False
      object gridRelDBTableView1: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = gridRelDBTableView1NavigatorButtonsButtonClick
        Navigator.Buttons.CustomButtons = <
          item
            Hint = 'Expandir grupos'
            ImageIndex = 38
          end
          item
            Hint = 'Retrair grupos'
            ImageIndex = 37
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
        DataController.DataSource = dsRel
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Indicator = True
        object gridRelDBTableView1id_atribuicao: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_atribuicao'
          HeaderAlignmentHorz = taCenter
          Width = 33
        end
        object gridRelDBTableView1cod_atribuicao: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'cod_atribuicao'
          HeaderAlignmentHorz = taCenter
          Width = 112
        end
        object gridRelDBTableView1dat_atribuicao: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'dat_atribuicao'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object gridRelDBTableView1cod_entregador: TcxGridDBColumn
          Caption = 'C'#243'd. Entregador'
          DataBinding.FieldName = 'cod_entregador'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object gridRelDBTableView1num_nossosumero: TcxGridDBColumn
          Caption = 'Pedido BR'
          DataBinding.FieldName = 'num_nossosumero'
          HeaderAlignmentHorz = taCenter
          Width = 133
        end
        object gridRelDBTableView1nom_entregador: TcxGridDBColumn
          Caption = 'Nome do Entregador'
          DataBinding.FieldName = 'nom_entregador'
          HeaderAlignmentHorz = taCenter
          Width = 245
        end
        object gridRelDBTableView1cod_cliente: TcxGridDBColumn
          Caption = 'C'#243'd. Cliente'
          DataBinding.FieldName = 'cod_cliente'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object gridRelDBTableView1nom_cliente: TcxGridDBColumn
          Caption = 'Nome do Cliente'
          DataBinding.FieldName = 'nom_cliente'
          HeaderAlignmentHorz = taCenter
          Width = 221
        end
        object gridRelDBTableView1cod_embarcador: TcxGridDBColumn
          Caption = 'C'#243'd. Base'
          DataBinding.FieldName = 'cod_embarcador'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object gridRelDBTableView1nom_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'nom_embarcador'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
        object gridRelDBTableView1nom_base: TcxGridDBColumn
          Caption = 'Nome da Base'
          DataBinding.FieldName = 'nom_base'
          HeaderAlignmentHorz = taCenter
          Width = 220
        end
        object gridRelDBTableView1cod_retorno: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'cod_retorno'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          HeaderAlignmentHorz = taCenter
          Width = 154
        end
        object gridRelDBTableView1nom_consumidor: TcxGridDBColumn
          Caption = 'Nome do Consumidor'
          DataBinding.FieldName = 'nom_consumidor'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 226
        end
        object gridRelDBTableView1num_cep: TcxGridDBColumn
          Caption = 'CEP'
          DataBinding.FieldName = 'num_cep'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 72
        end
        object gridRelDBTableView1des_endereco: TcxGridDBColumn
          Caption = 'Endere'#231'o'
          DataBinding.FieldName = 'des_endereco'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 291
        end
        object gridRelDBTableView1nom_bairro: TcxGridDBColumn
          Caption = 'Bairro'
          DataBinding.FieldName = 'nom_bairro'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 183
        end
        object gridRelDBTableView1qtd_volumes: TcxGridDBColumn
          Caption = 'Volumes'
          DataBinding.FieldName = 'qtd_volumes'
          HeaderAlignmentHorz = taCenter
        end
        object gridRelDBTableView1des_telefone: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'des_telefone'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object gridRelDBTableView1num_lote_remessa: TcxGridDBColumn
          Caption = 'Lote'
          DataBinding.FieldName = 'num_lote_remessa'
          HeaderAlignmentHorz = taCenter
          Width = 81
        end
        object gridRelDBTableView1dat_retorno: TcxGridDBColumn
          Caption = 'Data Retorno'
          DataBinding.FieldName = 'dat_retorno'
          HeaderAlignmentHorz = taCenter
        end
        object gridRelDBTableView1dom_retorno: TcxGridDBColumn
          Caption = 'Flag'
          DataBinding.FieldName = 'dom_retorno'
          HeaderAlignmentHorz = taCenter
        end
        object gridRelDBTableView1cod_informativo: TcxGridDBColumn
          Caption = 'Informativo'
          DataBinding.FieldName = 'cod_informativo'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'des_informativo'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsInformativo
          HeaderAlignmentHorz = taCenter
          Width = 237
        end
        object gridRelDBTableView1des_log: TcxGridDBColumn
          Caption = 'LOG'
          DataBinding.FieldName = 'des_log'
          Visible = False
          HeaderAlignmentHorz = taCenter
          VisibleForCustomization = False
        end
      end
      object gridRelLevel1: TcxGridLevel
        GridView = gridRelDBTableView1
      end
    end
    object cxButton12: TcxButton
      Left = 10000
      Top = 10000
      Width = 89
      Height = 25
      Action = actExportarRelatorio
      TabOrder = 32
      Visible = False
    end
    object cxButton13: TcxButton
      Left = 10000
      Top = 10000
      Width = 83
      Height = 25
      Action = actGerar
      TabOrder = 30
      Visible = False
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Data da Atribui'#231#227'o'
      Control = datAtribuicao
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Entregador'
      Control = edtEntregador
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 73
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
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 181
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 88
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
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 72
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
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 170
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
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'at'#233
      Control = datFinal
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 98
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 177
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Nosso N'#250'mero/DACTE/ID Pedido/DANFE'
      CaptionOptions.Layout = clTop
      Control = txtLeituraRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
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
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Lote'
      Control = cboLote
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Retorno'
      Control = cboRetorno
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkDANFE
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      Control = codCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nome do cliente'
      CaptionOptions.Visible = False
      Control = nomCliente
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Relat'#243'rios'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Entregador'
      Control = bteEntregadorRel
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = ']'
      CaptionOptions.Visible = False
      Control = txtnomEntregadorRel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 266
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Atribui'#231#227'o Inicial'
      Control = datInicialRel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'a'
      Control = datFinalRel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Grid'
      CaptionOptions.Visible = False
      Control = gridRel
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton12'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton13'
      CaptionOptions.Visible = False
      Control = cxButton13
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
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
    object actPesquisarCliente: TAction
      Category = 'Controle de Entregas'
      Caption = 'Pesquisar cliente'
      Hint = 'Pesquisar cliente'
      ImageIndex = 14
      OnExecute = actPesquisarClienteExecute
    end
    object actPesquisaEntregadorRel: TAction
      Category = 'Controle de Entregas'
      Caption = 'Pesquisa entregador'
      Hint = 'Pesquisa entregador'
      ImageIndex = 14
      OnExecute = actPesquisaEntregadorRelExecute
    end
    object actGerar: TAction
      Category = 'Controle de Entregas'
      Caption = 'Gerar'
      Hint = 'Gerar relat'#243'rio'
      ImageIndex = 49
      OnExecute = actGerarExecute
    end
    object actExportarRelatorio: TAction
      Category = 'Controle de Entregas'
      Caption = 'Exportar'
      Hint = 'Exportar relat'#243'rio'
      ImageIndex = 11
      OnExecute = actExportarRelatorioExecute
    end
  end
  object dsAtribuicao: TDataSource
    DataSet = Data_Sisgef.mtbAtribuicao
    Left = 320
    Top = 8
  end
  object frxAtribuicao: TfrxReport
    Version = '6.9.15'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 11.338590000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ATRIBUI'#199#195'O DE ENTREGAS EXPRESSAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 789.921770000000000000
          Top = 11.338590000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g.: [Page#]/[TotalPages#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 37.795300000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Entregador: [vEntregador]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 37.795300000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
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
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 89.929190000000000000
          Width = 975.118740000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Embarcador')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 64.252010000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 64.252010000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 64.252010000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 64.252010000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumidor')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 888.189550000000000000
          Top = 64.252010000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vol.')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Top = 64.252010000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 64.252010000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_embarcador"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 83.149660000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_nossonumero"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_endereco"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_cep"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 113.385900000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_bairro"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 684.094930000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_consumidor"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."qtd_volumes"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_telefone"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBAtribuicao."cod_cliente"> = 1,'#39'TFO'#39',IIF(<frxDBAtribui' +
              'cao."cod_cliente"> = 2,'#39'CAR'#39',IIF(<frxDBAtribuicao."cod_cliente">' +
              ' = 3,'#39'SPL'#39','#39#39')))]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 483.779840000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
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
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Pedidos da Atribui'#231#227'o: [COUNT(0,1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 45.354360000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Total de Volumes da Atribui'#231#227'o: [SUM(<frxDBAtribuicao."qtd_volum' +
              'es">,0,0)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 173.858380000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBAtribuicao."num_lote_remessa"'
        KeepTogether = True
        StartNewPage = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 15.118120000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Total de Pedidos do Lote [frxDBAtribuicao."num_lote_remessa"]: [' +
              'COUNT(0,1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 41.574830000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
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
    Version = '6.9.15'
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
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 136.063080000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 18.897650000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'LISTAGEM DE PEND'#202'NCIAS DE PRESTA'#199#195'O DE CONTAS DE ENTREGADOR DE E' +
              'XPRESSAS')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 710.551640000000000000
          Top = 18.897650000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'g: [Page#] / [TotalPages#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 45.354360000000000000
          Width = 975.118740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'ENTREGADOR : [vEntregador] - PER'#205'ODO DE [vDataInicial] AT'#201' [vDat' +
              'aFinal]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 86.929190000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Embarcador')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 86.929190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nosso N'#250'mero')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 86.929190000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Consumidor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Top = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Top = 86.929190000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Top = 86.929190000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vol.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 113.385900000000000000
          Width = 975.118740000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Top = 86.929190000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lote')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBAtribuicao
        DataSetName = 'frxDBAtribuicao'
        Filter = '<frxDBAtribuicao."dom_retorno"> = 0'
        RowCount = 0
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."dat_atribuicao"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_embarcador"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_nossonumero"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 177.637910000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_consumidor"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Width = 207.874150000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."des_endereco"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 755.906000000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."nom_bairro"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 869.291900000000000000
          Width = 68.031540000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_cep"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."qtd_volumes"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 975.118740000000000000
          Width = 37.795300000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBAtribuicao."num_lote_remessa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<frxDBAtribuicao."cod_cliente"> = 1,'#39'TFO'#39',IIF(<frxDBAtribui' +
              'cao."cod_cliente"> = 2,'#39'CAR'#39',IIF(<frxDBAtribuicao."cod_cliente">' +
              ' = 3,'#39'SPL'#39','#39#39')))]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 385.512060000000000000
        Width = 1046.929810000000000000
        object Memo20: TfrxMemoView
          AllowVectorExport = True
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
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 302.362400000000000000
        Width = 1046.929810000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 3.779530000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total de Pedidos Pendentes: [COUNT(0,1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 26.456710000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Total de Volumes Pendentes: [SUM(<frxDBAtribuicao."qtd_volumes">' +
              ',0,0)]')
          ParentFont = False
        end
      end
    end
  end
  object mtbRel: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id_atribuicao'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'cod_atribuicao'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'dat_atribuicao'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'cod_entregador'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nom_entregador'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_cliente'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'nom_cliente'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'cod_embarcador'
        DataType = ftInteger
      end
      item
        Name = 'nom_embarcador'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_base'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'num_nossosumero'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'cod_retorno'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'des_endereco'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'num_cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'nom_bairro'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'nom_consumidor'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'qtd_volumes'
        DataType = ftInteger
      end
      item
        Name = 'des_telefone'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'num_lote_remessa'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'dat_retorno'
        DataType = ftDateTime
      end
      item
        Name = 'dom_retorno'
        DataType = ftShortint
      end
      item
        Name = 'cod_informativo'
        DataType = ftInteger
      end
      item
        Name = 'des_log'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 664
    Top = 192
    Content = {
      414442530F009F34BB0B0000FF00010001FF02FF0304000C0000006D00740062
      00520065006C0005000A0000005400610062006C006500060000000000070000
      080032000000090000FF0AFF0B04001A000000690064005F0061007400720069
      00620075006900630061006F0005001A000000690064005F0061007400720069
      00620075006900630061006F000C00010000000E000D000F0001100001110001
      12000113001A000000690064005F006100740072006900620075006900630061
      006F00FEFF0B04001C00000063006F0064005F00610074007200690062007500
      6900630061006F0005001C00000063006F0064005F0061007400720069006200
      75006900630061006F000C00020000000E00140015000F0000000F0001100001
      11000112000113001C00000063006F0064005F00610074007200690062007500
      6900630061006F0016000F000000FEFF0B04001C0000006400610074005F0061
      00740072006900620075006900630061006F0005001C0000006400610074005F
      006100740072006900620075006900630061006F000C00030000000E0017000F
      000110000111000112000113001C0000006400610074005F0061007400720069
      00620075006900630061006F00FEFF0B04001C00000063006F0064005F006500
      6E007400720065006700610064006F00720005001C00000063006F0064005F00
      65006E007400720065006700610064006F0072000C00040000000E000D000F00
      0110000111000112000113001C00000063006F0064005F0065006E0074007200
      65006700610064006F007200FEFF0B04001C0000006E006F006D005F0065006E
      007400720065006700610064006F00720005001C0000006E006F006D005F0065
      006E007400720065006700610064006F0072000C00050000000E001400150046
      0000000F000118000110000119000111000112000113001C0000006E006F006D
      005F0065006E007400720065006700610064006F007200160046000000FEFF0B
      04001600000063006F0064005F0063006C00690065006E007400650005001600
      000063006F0064005F0063006C00690065006E00740065000C00060000000E00
      0D000F000110000111000112000113001600000063006F0064005F0063006C00
      690065006E0074006500FEFF0B0400160000006E006F006D005F0063006C0069
      0065006E00740065000500160000006E006F006D005F0063006C00690065006E
      00740065000C00070000000E0014001500460000000F00011800011000011900
      011100011200011300160000006E006F006D005F0063006C00690065006E0074
      006500160046000000FEFF0B04001C00000063006F0064005F0065006D006200
      610072006300610064006F00720005001C00000063006F0064005F0065006D00
      6200610072006300610064006F0072000C00080000000E000D000F0001180001
      10000119000111000112000113001C00000063006F0064005F0065006D006200
      610072006300610064006F007200FEFF0B04001C0000006E006F006D005F0065
      006D006200610072006300610064006F00720005001C0000006E006F006D005F
      0065006D006200610072006300610064006F0072000C00090000000E00140015
      00460000000F000118000110000119000111000112000113001C0000006E006F
      006D005F0065006D006200610072006300610064006F007200160046000000FE
      FF0B0400100000006E006F006D005F0062006100730065000500100000006E00
      6F006D005F0062006100730065000C000A0000000E0014001500460000000F00
      011800011000011900011100011200011300100000006E006F006D005F006200
      610073006500160046000000FEFF0B04001E0000006E0075006D005F006E006F
      00730073006F00730075006D00650072006F0005001E0000006E0075006D005F
      006E006F00730073006F00730075006D00650072006F000C000B0000000E0014
      0015000E0000000F000110000111000112000113001E0000006E0075006D005F
      006E006F00730073006F00730075006D00650072006F0016000E000000FEFF0B
      04001600000063006F0064005F007200650074006F0072006E006F0005001600
      000063006F0064005F007200650074006F0072006E006F000C000C0000000E00
      140015000F0000000F0001180001100001190001110001120001130016000000
      63006F0064005F007200650074006F0072006E006F0016000F000000FEFF0B04
      00180000006400650073005F0065006E00640065007200650063006F00050018
      0000006400650073005F0065006E00640065007200650063006F000C000D0000
      000E0014001500780000000F0001180001100001190001110001120001130018
      0000006400650073005F0065006E00640065007200650063006F001600780000
      00FEFF0B04000E0000006E0075006D005F0063006500700005000E0000006E00
      75006D005F006300650070000C000E0000000E0014001500090000000F000118
      000110000119000111000112000113000E0000006E0075006D005F0063006500
      7000160009000000FEFF0B0400140000006E006F006D005F0062006100690072
      0072006F000500140000006E006F006D005F00620061006900720072006F000C
      000F0000000E0014001500460000000F00011800011000011900011100011200
      011300140000006E006F006D005F00620061006900720072006F001600460000
      00FEFF0B04001C0000006E006F006D005F0063006F006E00730075006D006900
      64006F00720005001C0000006E006F006D005F0063006F006E00730075006D00
      690064006F0072000C00100000000E0014001500460000000F00011800011000
      0119000111000112000113001C0000006E006F006D005F0063006F006E007300
      75006D00690064006F007200160046000000FEFF0B0400160000007100740064
      005F0076006F006C0075006D00650073000500160000007100740064005F0076
      006F006C0075006D00650073000C00110000000E000D000F0001180001100001
      1900011100011200011300160000007100740064005F0076006F006C0075006D
      0065007300FEFF0B0400180000006400650073005F00740065006C0065006600
      6F006E0065000500180000006400650073005F00740065006C00650066006F00
      6E0065000C00120000000E00140015001E0000000F0001180001100001190001
      1100011200011300180000006400650073005F00740065006C00650066006F00
      6E00650016001E000000FEFF0B0400200000006E0075006D005F006C006F0074
      0065005F00720065006D0065007300730061000500200000006E0075006D005F
      006C006F00740065005F00720065006D0065007300730061000C00130000000E
      000D000F00011000011100011200011300200000006E0075006D005F006C006F
      00740065005F00720065006D006500730073006100FEFF0B0400160000006400
      610074005F007200650074006F0072006E006F00050016000000640061007400
      5F007200650074006F0072006E006F000C00140000000E0017000F0001180001
      1000011900011100011200011300160000006400610074005F00720065007400
      6F0072006E006F00FEFF0B04001600000064006F006D005F007200650074006F
      0072006E006F0005001600000064006F006D005F007200650074006F0072006E
      006F000C00150000000E001A000F000118000110000119000111000112000113
      001600000064006F006D005F007200650074006F0072006E006F00FEFF0B0400
      1E00000063006F0064005F0069006E0066006F0072006D006100740069007600
      6F0005001E00000063006F0064005F0069006E0066006F0072006D0061007400
      690076006F000C00160000000E000D000F000118000110000119000111000112
      000113001E00000063006F0064005F0069006E0066006F0072006D0061007400
      690076006F00FEFF0B04000E0000006400650073005F006C006F00670005000E
      0000006400650073005F006C006F0067000C00170000000E001B000F00011800
      011C000110000119000111000112000113000E0000006400650073005F006C00
      6F006700FEFEFF1DFEFF1EFEFF1FFEFEFEFF20FEFF21FF22FEFEFE0E004D0061
      006E0061006700650072001E0055007000640061007400650073005200650067
      006900730074007200790012005400610062006C0065004C006900730074000A
      005400610062006C00650008004E0061006D006500140053006F007500720063
      0065004E0061006D0065000A0054006100620049004400240045006E0066006F
      0072006300650043006F006E00730074007200610069006E00740073001E004D
      0069006E0069006D0075006D0043006100700061006300690074007900180043
      006800650063006B004E006F0074004E0075006C006C00140043006F006C0075
      006D006E004C006900730074000C0043006F006C0075006D006E00100053006F
      007500720063006500490044000E006400740049006E00740033003200100044
      0061007400610054007900700065001400530065006100720063006800610062
      006C0065000800420061007300650012004F0049006E00550070006400610074
      00650010004F0049006E00570068006500720065001A004F0072006900670069
      006E0043006F006C004E0061006D00650018006400740041006E007300690053
      007400720069006E0067000800530069007A006500140053006F007500720063
      006500530069007A0065001400640074004400610074006500540069006D0065
      00120041006C006C006F0077004E0075006C006C0014004F0041006C006C006F
      0077004E0075006C006C000E0064007400530042007900740065000C00640074
      004D0065006D006F00100042006C006F00620044006100740061001C0043006F
      006E00730074007200610069006E0074004C0069007300740010005600690065
      0077004C006900730074000E0052006F0077004C006900730074001800520065
      006C006100740069006F006E004C006900730074001C00550070006400610074
      00650073004A006F00750072006E0061006C000E004300680061006E00670065
      007300}
    object mtbRelid_atribuicao: TIntegerField
      FieldName = 'id_atribuicao'
      Required = True
    end
    object mtbRelcod_atribuicao: TStringField
      FieldName = 'cod_atribuicao'
      Required = True
      Size = 15
    end
    object mtbReldat_atribuicao: TDateTimeField
      FieldName = 'dat_atribuicao'
      Required = True
    end
    object mtbRelcod_entregador: TIntegerField
      FieldName = 'cod_entregador'
      Required = True
    end
    object mtbRelnom_entregador: TStringField
      FieldName = 'nom_entregador'
      Size = 70
    end
    object mtbRelcod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Required = True
    end
    object mtbRelnom_cliente: TStringField
      FieldName = 'nom_cliente'
      Size = 70
    end
    object mtbRelcod_embarcador: TIntegerField
      FieldName = 'cod_embarcador'
    end
    object mtbRelnom_embarcador: TStringField
      FieldName = 'nom_embarcador'
      Size = 70
    end
    object mtbRelnom_base: TStringField
      FieldName = 'nom_base'
      Size = 70
    end
    object mtbRelnum_nossosumero: TStringField
      FieldName = 'num_nossosumero'
      Required = True
      Size = 14
    end
    object mtbRelcod_retorno: TStringField
      FieldName = 'cod_retorno'
      Size = 15
    end
    object mtbReldes_endereco: TStringField
      FieldName = 'des_endereco'
      Size = 120
    end
    object mtbRelnum_cep: TStringField
      FieldName = 'num_cep'
      Size = 9
    end
    object mtbRelnom_bairro: TStringField
      FieldName = 'nom_bairro'
      Size = 70
    end
    object mtbRelnom_consumidor: TStringField
      FieldName = 'nom_consumidor'
      Size = 70
    end
    object mtbRelqtd_volumes: TIntegerField
      FieldName = 'qtd_volumes'
    end
    object mtbReldes_telefone: TStringField
      FieldName = 'des_telefone'
      Size = 30
    end
    object mtbRelnum_lote_remessa: TIntegerField
      FieldName = 'num_lote_remessa'
      Required = True
    end
    object mtbReldat_retorno: TDateTimeField
      FieldName = 'dat_retorno'
    end
    object mtbReldom_retorno: TShortintField
      FieldName = 'dom_retorno'
    end
    object mtbRelcod_informativo: TIntegerField
      FieldName = 'cod_informativo'
    end
    object mtbReldes_log: TMemoField
      FieldName = 'des_log'
      BlobType = ftMemo
    end
  end
  object dsRel: TDataSource
    AutoEdit = False
    DataSet = mtbRel
    Left = 712
    Top = 192
  end
  object mtbInformativos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 656
    Top = 16
    object mtbInformativosid: TIntegerField
      FieldName = 'id'
    end
    object mtbInformativosdes_informativo: TStringField
      FieldName = 'des_informativo'
      Size = 100
    end
  end
  object dsInformativo: TDataSource
    AutoEdit = False
    DataSet = mtbInformativos
    Left = 712
    Top = 16
  end
end
