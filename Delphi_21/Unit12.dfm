object Form12: TForm12
  Left = 0
  Top = 0
  Caption = '0'
  ClientHeight = 710
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 710
    Align = alLeft
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = -5
  end
  object Panel2: TPanel
    Left = 201
    Top = 0
    Width = 991
    Height = 710
    Align = alClient
    Color = clLime
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 842
    object StatusBar1: TStatusBar
      Left = 1
      Top = 676
      Width = 989
      Height = 33
      Panels = <>
      ExplicitWidth = 840
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 989
      Height = 48
      Align = alTop
      Color = clGray
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 840
      object Edit1: TEdit
        Left = 5
        Top = 13
        Width = 548
        Height = 23
        TabOrder = 1
        OnChange = Edit1Change
        OnEnter = Edit1Enter
      end
      object Button2: TButton
        Left = 559
        Top = 12
        Width = 274
        Height = 25
        Caption = 'Search'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 49
      Width = 989
      Height = 627
      Align = alClient
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 840
      DesignSize = (
        989
        627)
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 706
        Height = 596
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'VideoId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Firstname'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lastname'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Titel'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Date'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Name'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Delete'
            Title.Caption = '#'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 707
        Top = 1
        Width = 281
        Height = 596
        Align = alRight
        TabOrder = 2
        ExplicitLeft = 558
        ExplicitHeight = 600
        object Image1: TImage
          Left = 1
          Top = 1
          Width = 279
          Height = 201
          Align = alTop
          Stretch = True
          ExplicitLeft = 6
          ExplicitTop = 5
          ExplicitWidth = 268
        end
        object DBMemo1: TDBMemo
          Left = 1
          Top = 227
          Width = 279
          Height = 368
          Align = alClient
          DataField = 'Description'
          DataSource = DataSource1
          TabOrder = 0
          ExplicitHeight = 372
        end
        object Button1: TButton
          Left = 1
          Top = 202
          Width = 279
          Height = 25
          Align = alTop
          Caption = 'Open Video'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object LinkLabel1: TBitBtn
        Left = 97
        Top = 0
        Width = 4
        Height = 13
        Cursor = crHandPoint
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Delete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Visible = False
        OnClick = LinkLabel1Click
      end
      object Panel6: TPanel
        Left = 1
        Top = 597
        Width = 987
        Height = 29
        Align = alBottom
        TabOrder = 3
        ExplicitWidth = 838
        object SpeedButton1: TSpeedButton
          Left = 159
          Top = -2
          Width = 121
          Height = 30
          Caption = 'Add'
          ImageIndex = 1
          Images = ImageList1
        end
        object SpeedButton2: TSpeedButton
          Left = 334
          Top = -1
          Width = 121
          Height = 30
          Caption = 'Update'
          ImageIndex = 0
          Images = ImageList1
        end
        object SpeedButton3: TSpeedButton
          Left = 518
          Top = -1
          Width = 121
          Height = 30
          Caption = 'Delete'
          OnClick = SpeedButton3Click
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 80
          Height = 27
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbLast]
          Align = alLeft
          TabOrder = 0
        end
      end
    end
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 206
    Top = 16
    Width = 547
    Height = 19
    KeyField = 'VideoId'
    ListField = 'Name'
    ListSource = DataSource2
    TabOrder = 2
    Visible = False
    OnDblClick = DBLookupListBox1DblClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'SERVER=DESKTOP-OIIA5V5\SQLEXPRESS'
      'OSAuthent=Yes'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=DESKTOP-OIIA5V5'
      'MARS=yes'
      'Database=YouTubeVideo'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 592
  end
  object DataSource1: TDataSource
    Left = 72
    Top = 656
  end
  object FDTable1: TFDTable
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'VideoId'
    Connection = FDConnection1
    TableName = 'YouTubeVideo.dbo.Video'
    Left = 64
    Top = 320
    object FDTable1VideoId: TFDAutoIncField
      FieldName = 'VideoId'
      Origin = 'VideoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1LessonId: TIntegerField
      FieldName = 'LessonId'
      Origin = 'LessonId'
      Required = True
    end
    object FDTable1TecherId: TIntegerField
      FieldName = 'TecherId'
      Origin = 'TecherId'
      Required = True
    end
    object FDTable1Name: TWideStringField
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      Size = 50
    end
    object FDTable1Date: TSQLTimeStampField
      FieldName = 'Date'
      Origin = 'Date'
      Required = True
    end
    object FDTable1Url: TStringField
      FieldName = 'Url'
      Origin = 'Url'
      Required = True
      Size = 200
    end
    object FDTable1Image: TStringField
      FieldName = 'Image'
      Origin = 'Image'
      Required = True
      Size = 50
    end
    object FDTable1Description: TWideStringField
      FieldName = 'Description'
      Origin = 'Description'
      Size = 300
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable1
    Left = 64
    Top = 376
  end
  object ImageList1: TImageList
    Left = 106
    Top = 489
    Bitmap = {
      494C010102001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000900000B160000000E001C001200400014000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000900000B160000000E001C001200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000014000000180013EEEC0018EAE8001DE6E30022E2DE0026DEDA000000
      200000132A000000000000000000000000000000000000000000000000000000
      0000000014000000180000F5F50000F3F30000F0F00000EEEE0000ECEC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000230A
      240005FBFA000AF7F6000EF3F10013EEEC0018EAE8001DE6E30022E2DE0026DE
      DA002BDAD500000015000000000000000000000000000000000000000000230A
      240000FDFD0000FAFA0000F8F80000F5F50000F3F30000F0F00000EEEE0000EC
      EC0000E9E9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000600100012FF
      FF0000FFFF0005FBFA000AF7F6000EF3F10013EEEC0018EAE8001DE6E30022E2
      DE0026DEDA002BDAD50002000A000000000000000000000000000600100012FF
      FF0000FFFF0000FDFD0000FAFA0000F8F80000F5F50000F3F30000F0F00000EE
      EE0000ECEC0000E9E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000700160024FF
      FF0012FFFF001C00190000091B0000000D0000001100000A160000000B002C00
      200022E2DE0026DEDA00000623000000000000000000000000000700160024FF
      FF0012FFFF0000FFFF00000000000000000000000000000000000000000000F0
      F00000EEEE0000ECEC0000062300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C02130049FFFF0037FF
      FF000B001F0012FFFF0000FFFF0005FBFA000AF7F6000EF3F10013EEEC0018EA
      E8000000260022E2DE0026DEDA0000000B00000000000C02130049FFFF0037FF
      FF0024FFFF000000000000FFFF0000FDFD0000FAFA0000F8F80000F5F5000000
      000000F0F00000EEEE0000ECEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000006005BFFFF0049FF
      FF0037FFFF0024FFFF000A0012001300080005FBFA00040012000000080013EE
      EC0018EAE8001DE6E30022E2DE0013071B0000000000000006005BFFFF0049FF
      FF000000000024FFFF0012FFFF0000FFFF0000FDFD0000FAFA0000F8F80000F5
      F5000000000000F0F00000EEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020004006DFFFF005BFF
      FF0049FFFF0037FFFF000C0004000B02000000FFFF0013001200000A10000EF3
      F10013EEEC0018EAE8001DE6E3000000210000000000020004006DFFFF005BFF
      FF0049FFFF0037FFFF0024FFFF0012FFFF0000FFFF0000FDFD0000FAFA0000F8
      F80000F5F50000F3F30000F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002040080FFFF006DFF
      FF005BFFFF0049FFFF00000A1C0024FFFF0012FFFF0000FFFF00150008000AF7
      F6000EF3F10013EEEC0018EAE80000010E00000000000002040080FFFF006DFF
      FF005BFFFF0049FFFF0037FFFF0024FFFF0012FFFF0000FFFF0000FDFD0000FA
      FA0000F8F80000F5F50000F3F30000010E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000090D0092FFFF0080FF
      FF0002001F0035001C0049FFFF0037FFFF0024FFFF0012FFFF0000FFFF002C00
      1900000024000EF3F10013EEEC00210000000000000000090D0092FFFF0080FF
      FF006DFFFF00000000000000000037FFFF0024FFFF0012FFFF00000000000000
      000000FAFA0000F8F80000F5F500210000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003000070092FF
      FF0080FFFF006DFFFF005BFFFF0049FFFF0037FFFF0024FFFF0012FFFF0000FF
      FF0005FBFA000AF7F60000060A000000000000000000000000003000070092FF
      FF00000000006DFFFF005BFFFF000000000037FFFF0024FFFF00000000000000
      000000FDFD0000FAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000171400A4FF
      FF0092FFFF0080FFFF006DFFFF005BFFFF0049FFFF0037FFFF0024FFFF0012FF
      FF0000FFFF0005FBFA002A00100000000000000000000000000000171400A4FF
      FF0092FFFF0080FFFF006DFFFF005BFFFF0049FFFF0037FFFF0024FFFF0012FF
      FF0000FFFF0000FDFD002A001000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005201
      1000A4FFFF0092FFFF0080FFFF006DFFFF005BFFFF0049FFFF0037FFFF0024FF
      FF0012FFFF000000120000000000000000000000000000000000000000000000
      0000A4FFFF0092FFFF0080FFFF006DFFFF005BFFFF0049FFFF0037FFFF0024FF
      FF0012FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000403001300060092FFFF0080FFFF006DFFFF005BFFFF0049FFFF000004
      1C0004000A000000000000000000000000000000000000000000000000000000
      0000000403000000000092FFFF0080FFFF006DFFFF005BFFFF0049FFFF000004
      1C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000080000370000001600070000060C00000009000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000080000370000001600070000060C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FC1FFC1F00000000
      F007F00700000000E003E00300000000C001C00100000000C001C00100000000
      8000800000000000800080000000000080008000000000008000800000000000
      8000800000000000C001C00100000000C001C00100000000E003E00300000000
      F007F00700000000FC1FFC1F0000000000000000000000000000000000000000
      000000000000}
  end
end