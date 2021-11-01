object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 597
  ClientWidth = 423
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
    Left = 119
    Top = 8
    Width = 57
    Height = 15
    Caption = 'First Name'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 264
    Top = 8
    Width = 56
    Height = 15
    Caption = 'Last Name'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 29
    Width = 73
    Height = 23
    DataField = 'ID'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 95
    Top = 29
    Width = 154
    Height = 23
    DataField = 'First Name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 255
    Top = 29
    Width = 154
    Height = 23
    DataField = 'Last Name'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 58
    Width = 393
    Height = 503
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 567
    Width = 390
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DataSource=FILE_CSV'
      'Database=D:\TEST'
      
        'ODBCAdvanced=DefaultDir=D:\TEST;DriverId=27;MaxBufferSize=2048;P' +
        'ageTimeout=5'
      'DriverID=ODBC')
    LoginPrompt = False
    Left = 80
    Top = 496
  end
  object FDTable1: TFDTable
    CachedUpdates = True
    Connection = FDConnection1
    TableName = '[contact.csv]'
    Left = 184
    Top = 496
    object FDTable1ID: TIntegerField
      FieldName = 'ID'
    end
    object FDTable1FirstName: TIntegerField
      FieldName = 'First Name'
    end
    object FDTable1LastName: TIntegerField
      FieldName = 'Last Name'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 264
    Top = 496
  end
end
