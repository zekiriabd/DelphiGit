object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 531
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object BtnInsert: TButton
    Left = 8
    Top = 41
    Width = 81
    Height = 33
    Caption = 'Insert'
    TabOrder = 0
    OnClick = BtnInsertClick
  end
  object BtnDelete: TButton
    Left = 95
    Top = 41
    Width = 81
    Height = 33
    Caption = 'Delete'
    TabOrder = 1
    OnClick = BtnDeleteClick
  end
  object BtnUpdate: TButton
    Left = 268
    Top = 41
    Width = 81
    Height = 33
    Caption = 'Update'
    TabOrder = 2
    OnClick = BtnUpdateClick
  end
  object BtnFind: TButton
    Left = 182
    Top = 41
    Width = 81
    Height = 33
    Caption = 'Find'
    TabOrder = 3
    OnClick = BtnFindClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 81
    Height = 23
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 95
    Top = 8
    Width = 117
    Height = 23
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 218
    Top = 8
    Width = 131
    Height = 23
    TabOrder = 6
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 80
    Width = 344
    Height = 401
    ColCount = 3
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 7
    OnSelectCell = StringGrid1SelectCell
  end
  object BtnOpen: TButton
    Left = 8
    Top = 487
    Width = 114
    Height = 36
    Caption = 'Open'
    TabOrder = 8
    OnClick = BtnOpenClick
  end
  object BtnSave: TButton
    Left = 128
    Top = 487
    Width = 113
    Height = 36
    Caption = 'Save'
    TabOrder = 9
    OnClick = BtnSaveClick
  end
  object Button1: TButton
    Left = 247
    Top = 487
    Width = 105
    Height = 36
    Caption = 'Clear'
    TabOrder = 10
    OnClick = Button1Click
  end
end
