object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 509
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 342
    Height = 23
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 7
    Top = 76
    Width = 342
    Height = 389
    ItemHeight = 15
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object BtnInsert: TButton
    Left = 8
    Top = 37
    Width = 81
    Height = 33
    Caption = 'Insert'
    TabOrder = 2
    OnClick = BtnInsertClick
  end
  object BtnUpdate: TButton
    Left = 268
    Top = 37
    Width = 81
    Height = 33
    Caption = 'Update'
    TabOrder = 3
    OnClick = BtnUpdateClick
  end
  object BtnDelete: TButton
    Left = 95
    Top = 37
    Width = 81
    Height = 33
    Caption = 'Delete'
    TabOrder = 4
    OnClick = BtnDeleteClick
  end
  object BtnFind: TButton
    Left = 182
    Top = 37
    Width = 81
    Height = 33
    Caption = 'Find'
    TabOrder = 5
    OnClick = BtnFindClick
  end
  object BtnOpenFile: TButton
    Left = 8
    Top = 471
    Width = 105
    Height = 34
    Caption = 'Open File'
    TabOrder = 6
    OnClick = BtnOpenFileClick
  end
  object BtnSaveFile: TButton
    Left = 119
    Top = 471
    Width = 114
    Height = 34
    Caption = 'Save File'
    TabOrder = 7
    OnClick = BtnSaveFileClick
  end
  object BtnClear: TButton
    Left = 239
    Top = 471
    Width = 110
    Height = 34
    Caption = 'Clear'
    TabOrder = 8
    OnClick = BtnClearClick
  end
end
