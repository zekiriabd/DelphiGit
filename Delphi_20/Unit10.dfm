object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 602
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 176
    Top = 3
    Width = 54
    Height = 15
    Caption = 'FirstName'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 411
    Top = 3
    Width = 53
    Height = 15
    Caption = 'LastName'
    FocusControl = DBEdit3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 53
    Width = 624
    Height = 484
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 543
    Width = 620
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 154
    Height = 23
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 176
    Top = 24
    Width = 229
    Height = 23
    DataField = 'FirstName'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 411
    Top = 24
    Width = 229
    Height = 23
    DataField = 'LastName'
    DataSource = DataSource1
    TabOrder = 4
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Test\contact.xl' +
      'sx;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 384
    Top = 480
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = '[Feuil1$]'
    Left = 448
    Top = 424
    object ADOTable1ID: TFloatField
      FieldName = 'ID'
    end
    object ADOTable1FirstName: TWideStringField
      DisplayWidth = 15
      FieldName = 'FirstName'
      Size = 255
    end
    object ADOTable1LastName: TWideStringField
      DisplayWidth = 15
      FieldName = 'LastName'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 304
    Top = 424
  end
end
