object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 598
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 10
    Height = 15
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 79
    Top = 8
    Width = 54
    Height = 15
    Caption = 'FirstName'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 222
    Top = 8
    Width = 53
    Height = 15
    Caption = 'LastName'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 11
    Top = 29
    Width = 65
    Height = 23
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 82
    Top = 29
    Width = 121
    Height = 23
    DataField = 'FirstName'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 209
    Top = 29
    Width = 136
    Height = 23
    DataField = 'LastName'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 337
    Height = 385
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 519
    Width = 330
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object BtnOpen: TButton
    Left = 8
    Top = 550
    Width = 113
    Height = 43
    Caption = 'Open'
    TabOrder = 5
    OnClick = BtnOpenClick
  end
  object BtnSave: TButton
    Left = 127
    Top = 550
    Width = 110
    Height = 43
    Caption = 'Save'
    TabOrder = 6
    OnClick = BtnSaveClick
  end
  object BtnClear: TButton
    Left = 243
    Top = 550
    Width = 95
    Height = 43
    Caption = 'Clear'
    TabOrder = 7
    OnClick = BtnClearClick
  end
  object BtnInsert: TButton
    Left = 8
    Top = 58
    Width = 81
    Height = 33
    Caption = 'Insert'
    TabOrder = 8
    OnClick = BtnInsertClick
  end
  object BtnDelete: TButton
    Left = 95
    Top = 58
    Width = 81
    Height = 33
    Caption = 'Delete'
    TabOrder = 9
    OnClick = BtnDeleteClick
  end
  object BtnFind: TButton
    Left = 182
    Top = 58
    Width = 81
    Height = 33
    Caption = 'Find'
    TabOrder = 10
    OnClick = BtnFindClick
  end
  object BtnUpdate: TButton
    Left = 263
    Top = 58
    Width = 81
    Height = 33
    Caption = 'Post'
    TabOrder = 11
    OnClick = BtnUpdateClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 97
    Width = 336
    Height = 23
    TabOrder = 12
    Text = 'Edit1'
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      600000009619E0BD010000001800000003000000000003000000600002496404
      000100000000000946697273744E616D65010049000000010005574944544802
      0002001400084C6173744E616D65010049000000010005574944544802000200
      14000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 464
    object ClientDataSet1Id: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSet1FirstName: TStringField
      FieldName = 'FirstName'
    end
    object ClientDataSet1LastName: TStringField
      FieldName = 'LastName'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 296
    Top = 408
  end
end
