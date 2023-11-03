object view_ConferenciaVolumesPedido: Tview_ConferenciaVolumesPedido
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Confer'#234'ncia de Volumes por Pedido'
  ClientHeight = 332
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 669
    Height = 332
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    object cxLabel1: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Confer'#234'ncia de Volumes por Pedido'
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
    object txtLeitura: TcxTextEdit
      Left = 10
      Top = 57
      ParentFont = False
      Properties.OnValidate = txtLeituraPropertiesValidate
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 121
    end
    object grdVolumes: TcxGrid
      Left = 10
      Top = 107
      Width = 250
      Height = 182
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object tvVolumes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0;-,0'
            Kind = skSum
            FieldName = 'dom_ok'
            Column = tvVolumesnum_volume
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object tvVolumesdom_ok: TcxGridDBColumn
          Caption = 'OK'
          DataBinding.FieldName = 'dom_ok'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object tvVolumesnum_nossonumero: TcxGridDBColumn
          Caption = 'Nosso N'#250'mero'
          DataBinding.FieldName = 'num_nossonumero'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 455
        end
        object tvVolumesnum_volume: TcxGridDBColumn
          Caption = 'N'#186' Volume'
          DataBinding.FieldName = 'num_volume'
          PropertiesClassName = 'TcxMaskEditProperties'
          Properties.IgnoreMaskBlank = True
          Properties.MaskKind = emkRegExpr
          Properties.EditMask = '\d\d\d\d\d\d'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 119
        end
      end
      object lvVolumes: TcxGridLevel
        GridView = tvVolumes
      end
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
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Leitura'
      CaptionOptions.Layout = clTop
      Control = txtLeitura
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Volumes'
      CaptionOptions.Layout = clTop
      Control = grdVolumes
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object ds: TDataSource
    AutoEdit = False
    DataSet = Data_Sisgef.mtbConferenciaPedido
    Left = 456
    Top = 8
  end
  object aclConferencia: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 512
    Top = 8
    object actCancelar: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar confer'#234'ncia'
      ImageIndex = 2
    end
  end
end
