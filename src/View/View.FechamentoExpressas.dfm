object view_FechamentoExpressas: Tview_FechamentoExpressas
  Left = 0
  Top = 0
  Caption = 'Fechamento de Expressas'
  ClientHeight = 519
  ClientWidth = 1072
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
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1072
    Height = 519
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Extrato de Expressas'
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
    object cboAnos: TcxComboBox
      Left = 10
      Top = 56
      Hint = 'Seleione o ano'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025')
      Properties.OnChange = cboAnosPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'Selecione ...'
      Width = 103
    end
    object cboMes: TcxComboBox
      Left = 119
      Top = 56
      Hint = 'Selecione o m'#234's'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezemro')
      Properties.OnChange = cboMesPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = 'Selecione ...'
      Width = 121
    end
    object cboQuinzena: TcxComboBox
      Left = 246
      Top = 56
      Hint = 'Selecione a quinzena'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Selecione ...'
        '1'#170'. Quinzena'
        '2'#170'. Quinzena')
      Properties.OnChange = cboQuinzenaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Text = 'Selecione ...'
      Width = 121
    end
    object cxButton1: TcxButton
      Left = 987
      Top = 52
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actPesquisar
      TabOrder = 7
    end
    object cbocliente: TcxComboBox
      Left = 373
      Top = 56
      Hint = 'Selecione o cliente'
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'TODOS'
        'TRANSFOLHA'
        'CARRIERS'
        'SPLOG BRASIL'
        'DIRECT')
      Properties.OnChange = cboclientePropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Text = 'TODOS'
      Width = 180
    end
    object grdExtrato: TcxGrid
      Left = 10
      Top = 108
      Width = 250
      Height = 276
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object tvExtrato: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExtrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_volumes
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_entregas
          end
          item
            Format = ',0.0;-,0;0'
            Kind = skSum
            Column = tvExtratoqtd_volumes_extra
          end
          item
            Format = ',0;-,0'
            Kind = skSum
            Column = tvExtratoqtd_atraso
          end
          item
            Format = ',0.0;-,0.0'
            Kind = skAverage
            Column = tvExtratoval_performance
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_producao
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00 '
            Kind = skSum
            Column = tvExtratoval_extravios
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_debitos
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_creditos
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_total
          end
          item
            Format = 'R$ ,0.00;-R$ ,0.00'
            Kind = skSum
            Column = tvExtratoval_total_ticket
          end
          item
            Format = 'Total Geral'
            Kind = skCount
            Column = tvExtratonom_expressa
          end
          item
            Format = ' ,0;- ,0'
            Kind = skSum
            Column = tvExtratoqtd_pfp
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = tvExtratocod_tipo_expressa
              end>
            SummaryItems = <
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_atraso
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_entregas
              end
              item
                Format = ',0;-,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes
              end
              item
                Format = ' ,0.0;- ,0.0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_volumes_extra
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_creditos
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_debitos
              end
              item
                Format = ' ,0.0;- ,0.0'
                Kind = skAverage
                Position = spFooter
                Column = tvExtratoval_performance
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_producao
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_total_ticket
              end
              item
                Format = 'R$ ,0.00;-R$ ,0.00'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoval_extravios
              end
              item
                Format = 'Total'
                Kind = skCount
                Position = spFooter
                Column = tvExtratonom_expressa
              end
              item
                Format = ' ,0;- ,0'
                Kind = skSum
                Position = spFooter
                Column = tvExtratoqtd_pfp
              end>
          end>
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Footer = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.Indicator = True
        object tvExtratocod_tipo_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_tipo_expressa'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = Data_Sisgef.iml_16_16
          Properties.Items = <
            item
              Description = 'BASE'
              Value = 1
            end
            item
              Description = 'ENTREGADOR'
              Value = 2
            end>
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object tvExtratocod_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'cod_expressa'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object tvExtratonom_expressa: TcxGridDBColumn
          DataBinding.FieldName = 'nom_expressa'
          HeaderAlignmentHorz = taCenter
          Width = 185
        end
        object tvExtratoqtd_volumes: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0;- ,0'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object tvExtratoqtd_entregas: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_entregas'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0;- ,0'
          HeaderAlignmentHorz = taCenter
          Width = 71
        end
        object tvExtratoqtd_pfp: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_pfp'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0;- ,0'
          HeaderAlignmentHorz = taCenter
          Width = 101
        end
        object tvExtratoqtd_volumes_extra: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_volumes_extra'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 1
          Properties.DisplayFormat = ' ,0.0;- ,0.0'
          HeaderAlignmentHorz = taCenter
          Width = 58
        end
        object tvExtratoqtd_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'qtd_atraso'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ' ,0;- ,0'
          HeaderAlignmentHorz = taCenter
          Width = 60
        end
        object tvExtratoval_performance: TcxGridDBColumn
          DataBinding.FieldName = 'val_performance'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 1
          Properties.DisplayFormat = ' ,0.0;- ,0.0'
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
        object tvExtratoval_producao: TcxGridDBColumn
          DataBinding.FieldName = 'val_producao'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 128
        end
        object tvExtratoval_extravios: TcxGridDBColumn
          DataBinding.FieldName = 'val_extravios'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object tvExtratoval_debitos: TcxGridDBColumn
          DataBinding.FieldName = 'val_debitos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 85
        end
        object tvExtratoval_creditos: TcxGridDBColumn
          DataBinding.FieldName = 'val_creditos'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 97
        end
        object tvExtratoval_total: TcxGridDBColumn
          DataBinding.FieldName = 'val_total'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvExtratoval_total_ticket: TcxGridDBColumn
          DataBinding.FieldName = 'val_total_ticket'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object tvExtratoval_ticket_medio: TcxGridDBColumn
          DataBinding.FieldName = 'val_ticket_medio'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object tvExtratodes_banco: TcxGridDBColumn
          DataBinding.FieldName = 'nom_banco'
          HeaderAlignmentHorz = taCenter
          Width = 192
        end
        object tvExtratodes_tipo_conta: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_conta'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object tvExtratonum_agencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_agencia'
          HeaderAlignmentHorz = taCenter
          Width = 87
        end
        object tvExtratonum_conta: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta'
          HeaderAlignmentHorz = taCenter
          Width = 151
        end
        object tvExtratonom_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'nom_favorecido'
          HeaderAlignmentHorz = taCenter
          Width = 261
        end
        object tvExtratonum_cpf_cnpj: TcxGridDBColumn
          DataBinding.FieldName = 'num_cpf_cnpj'
          HeaderAlignmentHorz = taCenter
        end
      end
      object lvExtrato: TcxGridLevel
        GridView = tvExtrato
      end
    end
    object chkExpandir: TcxCheckBox
      Left = 57
      Top = 83
      Hint = 'Clique para expandir ou fehcar o grid'
      ParentFont = False
      Properties.OnChange = cxCheckBox1PropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 1055
      Top = 83
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxButton2: TcxButton
      Left = 987
      Top = 484
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actFechar
      TabOrder = 12
    end
    object chkAnteriores: TcxCheckBox
      Left = 559
      Top = 58
      Hint = 
        'Considerar tamb'#233'm pedidos baixados em aberto  anteriores ao per'#237 +
        'odo'
      Caption = 'Pedidos baixados em aberto'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
    end
    object chkVolumeExtra: TcxCheckBox
      Left = 829
      Top = 58
      Hint = 'Calcular a quantidade de volumes extra'
      Caption = 'Calcular volumes extra'
      ParentFont = False
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
    object cxButton3: TcxButton
      Left = 10
      Top = 484
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actExtrato
      TabOrder = 11
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
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Ano'
      CaptionOptions.Layout = clTop
      Control = cboAnos
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'M'#234's'
      CaptionOptions.Layout = clTop
      Control = cboMes
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Quinzena'
      CaptionOptions.Layout = clTop
      Control = cboQuinzena
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Cliente'
      CaptionOptions.Layout = clTop
      Control = cbocliente
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Extrato'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = grdExtrato
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Expandir'
      Control = chkExpandir
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkAnteriores
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avBottom
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = chkVolumeExtra
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
  end
  object aclExtratoExpressas: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 536
    Top = 8
    object actPesquisar: TAction
      Category = 'Extrato Expressas'
      Caption = 'Pesquisar'
      Hint = 'Iniciar a pesquisa do extrato'
      ImageIndex = 14
      OnExecute = actPesquisarExecute
    end
    object actFechar: TAction
      Category = 'Extrato Expressas'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 17
      OnExecute = actFecharExecute
    end
    object actExtrato: TAction
      Category = 'Extrato Expressas'
      Caption = 'Extrato'
      Enabled = False
      Hint = 'Visualizar extrato detalhado'
      ImageIndex = 28
      OnExecute = actExtratoExecute
    end
  end
  object dsExtrato: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbFechamentoExpressas
    Left = 496
    Top = 8
  end
end
