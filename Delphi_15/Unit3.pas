unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    ListBox1: TListBox;
    BtnInsert: TButton;
    BtnUpdate: TButton;
    BtnDelete: TButton;
    BtnFind: TButton;
    BtnOpenFile: TButton;
    BtnSaveFile: TButton;
    BtnClear: TButton;
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure BtnOpenFileClick(Sender: TObject);
    procedure BtnSaveFileClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
 
  private
    { Private declarations }
     myFile : TextFile;
     text : string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
implementation

{$R *.dfm}





procedure TForm3.BtnDeleteClick(Sender: TObject);
begin
   ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TForm3.BtnFindClick(Sender: TObject);
begin
  ListBox1.Selected[ListBox1.Items.IndexOf(Edit1.Text)] := True;
end;

procedure TForm3.BtnInsertClick(Sender: TObject);
begin
   ListBox1.Items.Add(Edit1.Text);
   Edit1.Clear;
end;

procedure TForm3.BtnUpdateClick(Sender: TObject);
begin
   ListBox1.Items[ListBox1.ItemIndex] := Edit1.Text;
end;

procedure TForm3.ListBox1Click(Sender: TObject);
begin
   Edit1.Text :=  ListBox1.Items[ListBox1.ItemIndex];
end;

//----------------------- Delphi VCL 4 -----------

procedure TForm3.BtnClearClick(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TForm3.BtnOpenFileClick(Sender: TObject);
begin
    ListBox1.Items.LoadFromFile('D:\Test\contact.txt');
    {var myStringList := TStringList.Create;
    TRY
      myStringList.LoadFromFile('D:\Test\contact.txt');
      ListBox1.Items.Text := myStringList.Text;
    FINALLY
     myStringList.Free;
    END;
     AssignFile(myFile,'D:\Test\contact.txt');
    Try
       Reset(myFile);
       while not Eof(myFile) do
       begin
          ReadLn(myFile, text);
          ListBox1.Items.Append(text);
       end;
    Finally
      CloseFile(myFile);
    End;}
end;


procedure TForm3.BtnSaveFileClick(Sender: TObject);
begin
    ListBox1.Items.SaveToFile('D:\Test\contact.txt')
    {var myStringList := TStringList.Create;
    TRY
      myStringList.Text := ListBox1.Items.Text;
      myStringList.SaveToFile('D:\Test\contact.txt');
    FINALLY
     myStringList.Free;
    END;
    AssignFile(myFile,'D:\Test\contact.txt');
    TRY
      ReWrite(myFile);
      Writeln(myFile,ListBox1.Items.Text);
    FINALLY
      CloseFile(myFile);
    END; }
end;

end.
