object viewFuncoesAtividades: TviewFuncoesAtividades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Atividades'
  ClientHeight = 427
  ClientWidth = 657
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 657
    Height = 427
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    LayoutLookAndFeel = Data_Sisgef.LayoutCxLookAndFeel
    ExplicitHeight = 373
    object cxButton1: TcxButton
      Left = 572
      Top = 392
      Width = 75
      Height = 25
      Action = actSair
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 3
    end
    object gridFuncoes: TcxGrid
      Left = 10
      Top = 10
      Width = 637
      Height = 206
      TabOrder = 0
      object gridFuncoesDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsFuncoes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object gridFuncoesDBTableView1id_funcao: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 56
        end
        object gridFuncoesDBTableView1id_categoria: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'id_categoria'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_categoria'
          Properties.ListColumns = <
            item
              FieldName = 'des_categoria'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsCategorias
          HeaderAlignmentHorz = taCenter
          Width = 161
        end
        object gridFuncoesDBTableView1des_funcao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'des_funcao'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          HeaderAlignmentHorz = taCenter
          Width = 408
        end
        object gridFuncoesDBTableView1des_atividades: TcxGridDBColumn
          DataBinding.FieldName = 'des_atividades'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object gridFuncoesLevel1: TcxGridLevel
        GridView = gridFuncoesDBTableView1
      end
    end
    object dbAtividades: TcxDBMemo
      Left = 10
      Top = 240
      DataBinding.DataField = 'des_atividades'
      DataBinding.DataSource = dsFuncoes
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      TabOrder = 1
      Height = 102
      Width = 637
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 10
      Top = 348
      Width = 630
      Height = 26
      Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
      Buttons.CustomButtons = <
        item
          Hint = 'Atualizar os dados'
          ImageIndex = 105
        end>
      Buttons.Images = Data_Sisgef.iml_16_16
      Buttons.First.ImageIndex = 91
      Buttons.PriorPage.Visible = False
      Buttons.Prior.ImageIndex = 91
      Buttons.Next.ImageIndex = 93
      Buttons.NextPage.Visible = False
      Buttons.Last.ImageIndex = 92
      Buttons.Insert.ImageIndex = 97
      Buttons.Delete.ImageIndex = 130
      Buttons.Delete.Visible = False
      Buttons.Edit.ImageIndex = 95
      Buttons.Post.ImageIndex = 85
      Buttons.Cancel.ImageIndex = 116
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.ImageIndex = 96
      DataSource = dsFuncoes
      InfoPanel.Visible = True
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgpFooter: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgpGrid: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgpFooter
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = gridFuncoes
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgpGrid
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Atividades'
      CaptionOptions.Layout = clTop
      Control = dbAtividades
      ControlOptions.OriginalHeight = 102
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgpGrid
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxDBNavigator1'
      CaptionOptions.Visible = False
      Control = cxDBNavigator1
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 270
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object mtbCategorias: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 352
    Top = 8
    object mtbCategoriasid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object mtbCategoriasdes_categoria: TStringField
      FieldName = 'des_categoria'
      Size = 255
    end
  end
  object mtbFuncoes: TFDMemTable
    AfterInsert = mtbFuncoesAfterInsert
    AfterEdit = mtbFuncoesAfterEdit
    BeforePost = mtbFuncoesBeforePost
    AfterPost = mtbFuncoesAfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 464
    Top = 8
    object mtbFuncoesid_funcao: TIntegerField
      FieldName = 'id_funcao'
    end
    object mtbFuncoesid_categoria: TIntegerField
      FieldName = 'id_categoria'
    end
    object mtbFuncoesdes_funcao: TStringField
      FieldName = 'des_funcao'
      Size = 132
    end
    object mtbFuncoesdes_atividades: TMemoField
      FieldName = 'des_atividades'
      BlobType = ftMemo
    end
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = mtbCategorias
    Left = 392
    Top = 8
  end
  object dsFuncoes: TDataSource
    DataSet = mtbFuncoes
    Left = 512
    Top = 8
  end
  object aclFuncoes: TActionList
    Images = Data_Sisgef.iml_16_16
    Left = 592
    Top = 16
    object actSair: TAction
      Caption = 'Sair'
      Hint = 'Sair da tela'
      ImageIndex = 98
      OnExecute = actSairExecute
    end
  end
end
