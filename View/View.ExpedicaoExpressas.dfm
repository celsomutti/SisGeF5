object view_ExpedicaoExpressas: Tview_ExpedicaoExpressas
  Left = 0
  Top = 0
  Caption = 'Expedi'#231#227'o de Expressas'
  ClientHeight = 523
  ClientWidth = 955
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
    Width = 955
    Height = 523
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Expedi'#231#227'o de Expressas'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 870
      Top = 488
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 5
    end
    object cboUnitizador: TcxComboBox
      Left = 161
      Top = 95
      Hint = 'Selecione o tipo de unitizator'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'PALLET'
        'SACO R'#193'FIA'
        'VOLUME')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Text = 'Selecione ...'
      Width = 139
    end
    object datExpedicao: TcxDateEdit
      Left = 286
      Top = 95
      Hint = 'Data da expedi'#231#227'o'
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
      TabOrder = 8
      Width = 89
    end
    object mskCCEP: TcxMaskEdit
      Left = 369
      Top = 95
      Hint = 'C'#243'digo da cabe'#231'a de CEP'
      ParentFont = False
      Properties.IgnoreMaskBlank = True
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '\d\d\d\d\d'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 83
    end
    object grdExpedicao: TcxGrid
      Left = 10
      Top = 197
      Width = 250
      Height = 200
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      object tvExpedicao: TcxGridDBTableView
        Navigator.Buttons.OnButtonClick = tvExpedicaoNavigatorButtonsButtonClick
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
        Navigator.Buttons.Delete.ImageIndex = 9
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.ImageIndex = 19
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsExpedicao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skCount
            Column = tvExpedicaonum_nossonumero
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExpedicaoqtd_volumes
          end
          item
            Format = ',0.000;-,0.000'
            Kind = skSum
            Column = tvExpedicaoqtd_peso
          end
          item
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvExpedicaoid_expedicao: TcxGridDBColumn
          DataBinding.FieldName = 'id_expedicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodat_expedicao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_expedicao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodom_ccep: TcxGridDBColumn
          Caption = '!'
          DataBinding.FieldName = 'dom_ccep'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'OK'
              ImageIndex = 1
              Value = 0
            end
            item
              Description = 'Aten'#231#227'o'
              ImageIndex = 20
              Value = 1
            end>
          Properties.ShowDescriptions = False
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object tvExpedicaocod_ccep: TcxGridDBColumn
          Caption = 'CCEP'
          DataBinding.FieldName = 'cod_ccep'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaocod_base: TcxGridDBColumn
          DataBinding.FieldName = 'cod_base'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaonum_container: TcxGridDBColumn
          Caption = 'Container'
          DataBinding.FieldName = 'num_container'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object tvExpedicaocod_unitizador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_unitizador'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaonum_nossonumero: TcxGridDBColumn
          Caption = 'Nosso N'#250'mero/AWB'
          DataBinding.FieldName = 'num_nossonumero'
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 158
        end
        object tvExpedicaocod_embarcador: TcxGridDBColumn
          DataBinding.FieldName = 'cod_embarcador'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodes_embarcador: TcxGridDBColumn
          Caption = 'Embarcador'
          DataBinding.FieldName = 'des_embarcador'
          HeaderAlignmentHorz = taCenter
          Width = 244
        end
        object tvExpedicaoqtd_volumes: TcxGridDBColumn
          Caption = 'Volumes'
          DataBinding.FieldName = 'qtd_volumes'
          HeaderAlignmentHorz = taCenter
          Width = 236
        end
        object tvExpedicaoqtd_peso: TcxGridDBColumn
          Caption = 'Peso'
          DataBinding.FieldName = 'qtd_peso'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0.000;- ,0.000'
          HeaderAlignmentHorz = taCenter
          Width = 240
        end
        object tvExpedicaodes_executor: TcxGridDBColumn
          DataBinding.FieldName = 'des_executor'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodat_execucao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_execucao'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodes_conferente: TcxGridDBColumn
          DataBinding.FieldName = 'des_conferente'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodat_conferencia: TcxGridDBColumn
          DataBinding.FieldName = 'dat_conferencia'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodes_recebedor: TcxGridDBColumn
          DataBinding.FieldName = 'des_recebedor'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaodat_recebimento: TcxGridDBColumn
          DataBinding.FieldName = 'dat_recebimento'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
        object tvExpedicaonum_romaneio: TcxGridDBColumn
          Caption = 'Romaneio'
          DataBinding.FieldName = 'num_romaneio'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvExpedicao: TcxGridLevel
        GridView = tvExpedicao
      end
    end
    object cxButton3: TcxButton
      Left = 10
      Top = 488
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actGravar
      TabOrder = 1
    end
    object cxButton4: TcxButton
      Left = 91
      Top = 488
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actRotulo
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 172
      Top = 488
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actCancelar
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 858
      Top = 91
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actIniciar
      TabOrder = 13
    end
    object txtLeitura: TcxTextEdit
      Left = 22
      Top = 140
      Hint = 'Leitura'
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
      TabOrder = 14
      Width = 121
    end
    object cboCliente: TcxComboBox
      Left = 22
      Top = 95
      Hint = 'Selecione o cliente'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'TRANSFOLHA'
        'CARRIERS'
        'SPLOG'
        'DIRECT')
      Properties.OnChange = cboClientePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Text = 'Selecione ...'
      Width = 155
    end
    object chkDANFE: TcxCheckBox
      Left = 446
      Top = 97
      Hint = 'Pesquisar pela chave da DANFE'
      Caption = 'DANFE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
    end
    object datExpedicaoPesquisa: TcxDateEdit
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowToday = False
      Properties.OnChange = datExpedicaoPesquisaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object cboContainers: TcxComboBox
      Left = 10000
      Top = 10000
      Hint = 'Container, CCEP a imprimir'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Todos')
      Properties.OnChange = cboContainersPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Text = 'Todos'
      Visible = False
      Width = 268
    end
    object cxButton6: TcxButton
      Left = 10000
      Top = 10000
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisarExpedicao
      TabOrder = 18
      Visible = False
    end
    object cboTipoRelatorio: TcxComboBox
      Left = 10000
      Top = 10000
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione...'
        'R'#243'tulo'
        'Romaneio'
        'Pr'#233' Atribui'#231#227'o')
      Properties.OnChange = cboTipoRelatorioPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Text = 'Selecione...'
      Visible = False
      Width = 121
    end
    object lblResultado: TcxLabel
      Left = 253
      Top = 490
      ParentColor = False
      ParentFont = False
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      AnchorX = 258
      AnchorY = 502
    end
    object lcbRoteiros: TcxLookupComboBox
      Left = 707
      Top = 95
      Hint = 'Identifica'#231#227'o o roteiro'
      ParentFont = False
      Properties.KeyFieldNames = 'des_roteiro'
      Properties.ListColumns = <
        item
          FieldName = 'des_roteiro'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsRoteiros
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 145
    end
    object lcbMotorista: TcxLookupComboBox
      Left = 556
      Top = 95
      Hint = 'Nome do motorista'
      ParentFont = False
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          FieldName = 'cod_entregador'
        end
        item
          Caption = 'Nome'
          FieldName = 'nom_fantasia'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsEntregadores
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 145
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanging = dxLayoutGroup1TabChanging
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Expedi'#231#227'o'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Relat'#243'rios'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Unitizador'
      CaptionOptions.Layout = clTop
      Control = cboUnitizador
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = datExpedicao
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'CCEP'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = mskCCEP
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Pedidos'
      CaptionOptions.Layout = clTop
      Control = grdExpedicao
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton5'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Leitura'
      CaptionOptions.Layout = clTop
      Control = txtLeitura
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = cboCliente
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Visible = False
      Control = chkDANFE
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Expedi'#231#227'o'
      CaptionOptions.Layout = clTop
      Control = datExpedicaoPesquisa
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Containers / CCEP / Roteiros'
      CaptionOptions.Layout = clTop
      Control = cboContainers
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton6'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = cxButton6
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Tipo de relat'#243'rio'
      CaptionOptions.Layout = clTop
      Control = cboTipoRelatorio
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = lblResultado
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Roteiro:'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = lcbRoteiros
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Motorista'
      CaptionOptions.Layout = clTop
      Visible = False
      Control = lcbMotorista
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  object aclExpedicao: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 840
    Top = 16
    object actFechar: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Fechar'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actIniciar: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Iniciar'
      Hint = 'Iniciar a expedi'#231#227'o'
      ImageIndex = 1
      OnExecute = actIniciarExecute
    end
    object actGravar: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Gravar expedi'#231#227'o'
      ImageIndex = 13
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Cancelar'
      Enabled = False
      Hint = ' Cancelar processo de expedi'#231#227'o'
      ImageIndex = 2
      OnExecute = actCancelarExecute
    end
    object actRotulo: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Imprimir'
      Enabled = False
      Hint = 'Emitir R'#243'tulos / Romaneio'
      ImageIndex = 27
      OnExecute = actRotuloExecute
    end
    object actPesquisarExpedicao: TAction
      Category = 'Expedi'#231#227'o'
      Caption = 'Pesquisar'
      Hint = 'Pesquisar expedi'#231#227'o'
      ImageIndex = 19
      OnExecute = actPesquisarExpedicaoExecute
    end
  end
  object dsExpedicao: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbExpedicao
    Left = 776
    Top = 16
  end
  object frxRotulo: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43782.650762175900000000
    ReportOptions.LastChange = 43782.654119953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 608
    Top = 16
    Datasets = <
      item
        DataSet = frxDBExpedicao
        DataSetName = 'frxDBExpedicao'
      end>
    Variables = <
      item
        Name = ' Parametros'
        Value = Null
      end
      item
        Name = 'vMotorista'
        Value = Null
      end
      item
        Name = 'vRoteiro'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 22.677180000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Motorista: [vMotorista]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Roteiro: [vRoteiro]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 510.236550000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
    end
  end
  object frxDBExpedicao: TfrxDBDataset
    UserName = 'frxDBExpedicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dat_expedicao=dat_expedicao'
      'cod_ccep=cod_ccep'
      'cod_base=cod_base'
      'num_container=num_container'
      'cod_unitizador=cod_unitizador'
      'cod_embarcador=cod_embarcador'
      'des_embarcador=des_embarcador'
      'qtd_volumes=qtd_volumes'
      'qtd_peso=qtd_peso'
      'qtd_pedidos=qtd_pedidos'
      'num_romaneio=num_romaneio')
    DataSet = Data_Sisgef.mtbResumoExpedicao
    BCDToCurrency = False
    Left = 672
    Top = 16
  end
  object SaveDialog: TSaveDialog
    Left = 544
    Top = 8
  end
  object frxRomaneio: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43782.650762175920000000
    ReportOptions.LastChange = 43782.654119953700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 728
    Top = 16
    Datasets = <
      item
        DataSet = frxDBExpedicao
        DataSetName = 'frxDBExpedicao'
      end>
    Variables = <
      item
        Name = ' Parametros'
        Value = Null
      end
      item
        Name = 'vMotorista'
        Value = ''
      end
      item
        Name = 'vRoteiro'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Top = 22.677180000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Motorista: [vMotorista]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Roteiro: [vRoteiro]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 79.000000000000000000
          Height = 68.031540000000000000
          BarType = bcCode128
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 510.236550000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
      end
    end
  end
  object frxDBDIRECT: TfrxDBDataset
    UserName = 'frxExpedicaoDIRECT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_expedicao=id_expedicao'
      'dat_expedicao=dat_expedicao'
      'cod_ccep=cod_ccep'
      'cod_base=cod_base'
      'num_container=num_container'
      'cod_unitizador=cod_unitizador'
      'num_nossonumero=num_nossonumero'
      'cod_embarcador=cod_embarcador'
      'des_embarcador=des_embarcador'
      'qtd_volumes=qtd_volumes'
      'qtd_peso=qtd_peso'
      'des_executor=des_executor'
      'dat_execucao=dat_execucao'
      'des_conferente=des_conferente'
      'dat_conferencia=dat_conferencia'
      'des_recebedor=des_recebedor'
      'dat_recebimento=dat_recebimento'
      'dom_ccep=dom_ccep'
      'num_romaneio=num_romaneio')
    DataSet = Data_Sisgef.mtbExpedicao
    BCDToCurrency = False
    Left = 424
    Top = 8
  end
  object frxDIRECT: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43782.650762175900000000
    ReportOptions.LastChange = 43782.738213240740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 480
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDIRECT
        DataSetName = 'frxExpedicaoDIRECT'
      end>
    Variables = <
      item
        Name = ' Parametros'
        Value = Null
      end
      item
        Name = 'vMotorista'
        Value = Null
      end
      item
        Name = 'vRoteiro'
        Value = Null
      end
      item
        Name = 'vImpressao'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        Columns = 3
        ColumnWidth = 170.078740157480000000
        ColumnGap = 75.590551181102360000
        DataSet = frxDBDIRECT
        DataSetName = 'frxExpedicaoDIRECT'
        RowCount = 0
        object BarCode1: TfrxBarCodeView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 79.000000000000000000
          Height = 86.929190000000000000
          BarType = bcCode128
          Expression = '<frxExpedicaoDIRECT."num_nossonumero">'
          Rotation = 0
          TestLine = False
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 510.236550000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#] / [TotalPages#]')
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 710.551640000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[vImpressao]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Motorista: [vMotorista]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 706.772110000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[vRoteiro]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 340.157700000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 30.236240000000000000
          Width = 706.772110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(0,0)] Remessas')
          ParentFont = False
        end
      end
    end
  end
  object mtbRoteiros: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 232
    Top = 8
    object mtbRoteirosdes_roteiro: TStringField
      FieldName = 'des_roteiro'
      Size = 50
    end
  end
  object dsRoteiros: TDataSource
    AutoEdit = False
    DataSet = mtbRoteiros
    Left = 280
    Top = 8
  end
  object mtbEntregadores: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 328
    Top = 8
    object mtbEntregadorescod_entregador: TIntegerField
      FieldName = 'cod_entregador'
    end
    object mtbEntregadoresnom_fantasia: TStringField
      FieldName = 'nom_fantasia'
      Size = 70
    end
  end
  object dsEntregadores: TDataSource
    AutoEdit = False
    DataSet = mtbEntregadores
    Left = 376
    Top = 8
  end
end
