object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 589
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object TreeView1: TTreeView
    Left = 8
    Top = 88
    Width = 345
    Height = 449
    Indent = 19
    TabOrder = 0
    Items.NodeData = {
      0303000000200000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      000200000001013100220000000000000000000000FFFFFFFFFFFFFFFF000000
      000000000000000000010231003100240000000000000000000000FFFFFFFFFF
      FFFFFF0000000000000000000000000103310031003100200000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000002000000010132002200000000
      00000000000000FFFFFFFFFFFFFFFF0000000000000000000000000102320032
      00240000000000000000000000FFFFFFFFFFFFFFFF0000000000000000000000
      000103320032003200200000000000000000000000FFFFFFFFFFFFFFFF000000
      00000000000100000001013300220000000000000000000000FFFFFFFFFFFFFF
      FF000000000000000000000000010233003300}
  end
  object BtnInsert: TButton
    Left = 11
    Top = 49
    Width = 81
    Height = 33
    Caption = 'Insert'
    TabOrder = 1
    OnClick = BtnInsertClick
  end
  object BtnDelete: TButton
    Left = 98
    Top = 49
    Width = 81
    Height = 33
    Caption = 'Delete'
    TabOrder = 2
    OnClick = BtnDeleteClick
  end
  object BtnFind: TButton
    Left = 185
    Top = 49
    Width = 81
    Height = 33
    Caption = 'Find'
    TabOrder = 3
    OnClick = BtnFindClick
  end
  object BtnUpdate: TButton
    Left = 272
    Top = 49
    Width = 81
    Height = 33
    Caption = 'Update'
    TabOrder = 4
    OnClick = BtnUpdateClick
  end
  object Edit1: TEdit
    Left = 11
    Top = 18
    Width = 344
    Height = 23
    TabOrder = 5
    Text = 'Edit1'
  end
  object BtnOpen: TButton
    Left = 8
    Top = 543
    Width = 113
    Height = 43
    Caption = 'Open'
    TabOrder = 6
    OnClick = BtnOpenClick
  end
  object BtnSave: TButton
    Left = 127
    Top = 543
    Width = 110
    Height = 43
    Caption = 'Save'
    TabOrder = 7
    OnClick = BtnSaveClick
  end
  object BtnClear: TButton
    Left = 243
    Top = 543
    Width = 112
    Height = 43
    Caption = 'Clear'
    TabOrder = 8
    OnClick = BtnClearClick
  end
  object XMLDocument1: TXMLDocument
    Active = True
    FileName = 'D:\Test\contact.xml'
    Left = 184
    Top = 416
  end
end
