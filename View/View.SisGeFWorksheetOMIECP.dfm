object view_SisGeFWorksheetOMIECP: Tview_SisGeFWorksheetOMIECP
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Planilha Contas a Pagar OMIE'
  ClientHeight = 406
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 779
    Height = 406
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.dxLayoutCxLookAndFeel4
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Planilha de Contas a Pagar - OMIE'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
    end
    object gridBIMER: TcxGrid
      Left = 10
      Top = 36
      Width = 759
      Height = 329
      TabOrder = 1
      object gridBIMERDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Images = Data_Sisgef.iml_16_16
        Navigator.Buttons.First.ImageIndex = 91
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.ImageIndex = 94
        Navigator.Buttons.Next.ImageIndex = 93
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.ImageIndex = 92
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        DataController.DataSource = dsOMIE
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object gridBIMERDBTableView1cod_integracao: TcxGridDBColumn
          DataBinding.FieldName = 'cod_integracao'
          HeaderAlignmentHorz = taCenter
          Width = 116
        end
        object gridBIMERDBTableView1nom_favorecido: TcxGridDBColumn
          DataBinding.FieldName = 'nom_fornecedor'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_categoria: TcxGridDBColumn
          DataBinding.FieldName = 'des_categoria'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1nom_conta_corrente: TcxGridDBColumn
          DataBinding.FieldName = 'nom_conta_corrente'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_bruto: TcxGridDBColumn
          DataBinding.FieldName = 'val_bruto'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '0.00;-0.00'
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridBIMERDBTableView1nom_vendedor: TcxGridDBColumn
          DataBinding.FieldName = 'nom_vendedor'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1nom_projeto: TcxGridDBColumn
          DataBinding.FieldName = 'nom_projeto'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1dat_emissao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_emissao'
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object gridBIMERDBTableView1dat_registro: TcxGridDBColumn
          DataBinding.FieldName = 'dat_registro'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object gridBIMERDBTableView1dat_vencimento: TcxGridDBColumn
          DataBinding.FieldName = 'dat_vencimento'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object gridBIMERDBTableView1dat_previsao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_previsao'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object gridBIMERDBTableView1dat_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'dat_pagamento'
          HeaderAlignmentHorz = taCenter
          Width = 83
        end
        object gridBIMERDBTableView1val_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'val_pagamento'
          HeaderAlignmentHorz = taCenter
          Width = 84
        end
        object gridBIMERDBTableView1val_juros: TcxGridDBColumn
          DataBinding.FieldName = 'val_juros'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_multa: TcxGridDBColumn
          DataBinding.FieldName = 'val_multa'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_desconto: TcxGridDBColumn
          DataBinding.FieldName = 'val_desconto'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object gridBIMERDBTableView1dat_conciliacao: TcxGridDBColumn
          DataBinding.FieldName = 'dat_conciliacao'
          HeaderAlignmentHorz = taCenter
          Width = 82
        end
        object gridBIMERDBTableView1des_observacoes: TcxGridDBColumn
          DataBinding.FieldName = 'des_observacoes'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_tipo_documento: TcxGridDBColumn
          DataBinding.FieldName = 'des_tipo_documento'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_documento: TcxGridDBColumn
          DataBinding.FieldName = 'num_documento'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_parcela: TcxGridDBColumn
          DataBinding.FieldName = 'num_parcela'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1tot_parcelas: TcxGridDBColumn
          DataBinding.FieldName = 'tot_parcelas'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_pedido: TcxGridDBColumn
          DataBinding.FieldName = 'num_pedido'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_nota_fiscal: TcxGridDBColumn
          DataBinding.FieldName = 'num_nota_fiscal'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_chave_nfe: TcxGridDBColumn
          DataBinding.FieldName = 'num_chave_nfe'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_forma_pagamento: TcxGridDBColumn
          DataBinding.FieldName = 'des_forma_pagamento'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1cod_barras_boleto: TcxGridDBColumn
          DataBinding.FieldName = 'cod_barras_boleto'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_percentual_juros_mes: TcxGridDBColumn
          DataBinding.FieldName = 'val_percentual_juros_mes'
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
        object gridBIMERDBTableView1val_percentual_multa_atraso: TcxGridDBColumn
          DataBinding.FieldName = 'val_percentual_multa_atraso'
          HeaderAlignmentHorz = taCenter
          Width = 127
        end
        object gridBIMERDBTableView1nom_banco_transferencia: TcxGridDBColumn
          DataBinding.FieldName = 'nom_banco_transferencia'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1num_agencia_transferencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_agencia_transferencia'
          HeaderAlignmentHorz = taCenter
          Width = 110
        end
        object gridBIMERDBTableView1num_conta_transferencia: TcxGridDBColumn
          DataBinding.FieldName = 'num_conta_transferencia'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object gridBIMERDBTableView1num_CNPJ_CPF_titular: TcxGridDBColumn
          DataBinding.FieldName = 'num_CNPJ_CPF_titular'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1nom_titular: TcxGridDBColumn
          DataBinding.FieldName = 'nom_titular'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_finalidade_transferencia: TcxGridDBColumn
          DataBinding.FieldName = 'des_finalidade_transferencia'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'val_PIS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_PIS: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_PIS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'val_COFINS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_COFINS: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_COFINS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_CSLL: TcxGridDBColumn
          DataBinding.FieldName = 'val_CSLL'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_CSLL: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_CSLL'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_IR: TcxGridDBColumn
          DataBinding.FieldName = 'val_IR'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_IR: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_IR'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_ISS: TcxGridDBColumn
          DataBinding.FieldName = 'val_ISS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_ISS: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_ISS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1val_INSS: TcxGridDBColumn
          DataBinding.FieldName = 'val_INSS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1des_reter_INSS: TcxGridDBColumn
          DataBinding.FieldName = 'des_reter_INSS'
          HeaderAlignmentHorz = taCenter
        end
        object gridBIMERDBTableView1nom_departamento: TcxGridDBColumn
          DataBinding.FieldName = 'nom_departamento'
          HeaderAlignmentHorz = taCenter
        end
      end
      object gridBIMERLevel1: TcxGridLevel
        GridView = gridBIMERDBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 613
      Top = 371
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionExportGrid
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
    end
    object cxButton2: TcxButton
      Left = 694
      Top = 371
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Action = actionCloseForm
      TabOrder = 3
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 222
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridBIMER
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object actionListOMIE: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 560
    object actionExportGrid: TAction
      Caption = 'E&xportar'
      Hint = 'Exportar dados do crid'
      ImageIndex = 101
      OnExecute = actionExportGridExecute
    end
    object actionCloseForm: TAction
      Caption = '&Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 98
      OnExecute = actionCloseFormExecute
    end
  end
  object dsOMIE: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.memTableOMIE
    Left = 632
  end
end
