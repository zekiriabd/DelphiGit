unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

type

  TForm4 = class(TForm)
    BtnInsert: TButton;
    BtnDelete: TButton;
    BtnUpdate: TButton;
    BtnFind: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    StringGrid1: TStringGrid;
    BtnOpen: TButton;
    BtnSave: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BtnDeleteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}


procedure TForm4.BtnFindClick(Sender: TObject);
begin          
   var ARow := StringGrid1.Cols[0].IndexOf(Edit1.Text);
   StringGrid1.Selection := TGridRect(Rect(0,ARow,2,ARow));
end;

procedure TForm4.BtnInsertClick(Sender: TObject);
begin
   StringGrid1.Cells[0,StringGrid1.RowCount] := Edit1.Text; 
   StringGrid1.Cells[1,StringGrid1.RowCount] := Edit2.Text;
   StringGrid1.Cells[2,StringGrid1.RowCount] := Edit3.Text;    
   StringGrid1.RowCount:= StringGrid1.RowCount + 1;    
end;





procedure TForm4.BtnUpdateClick(Sender: TObject);
begin
   var ARow := StringGrid1.Cols[0].IndexOf(Edit1.Text);
   if  ARow > 0 then
   begin
     StringGrid1.Cells[1,ARow] := Edit2.Text;
     StringGrid1.Cells[2,ARow] := Edit3.Text;
   end;
end;



procedure TForm4.FormCreate(Sender: TObject);
begin
     StringGrid1.Cells[0,0] := 'ID';
     StringGrid1.Cells[1,0] := 'First Name';
     StringGrid1.Cells[2,0] := 'Last Name'; 
              
     StringGrid1.ColWidths[0]:= 75;
     StringGrid1.ColWidths[1]:= 130;
     StringGrid1.ColWidths[2]:= 130;  
end;

procedure TForm4.StringGrid1SelectCell(Sender: TObject; 
ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if ARow > 0 then 
  begin
    Edit1.Text:=StringGrid1.Cells[0,ARow];
    Edit2.Text:=StringGrid1.Cells[1,ARow];
    Edit3.Text:=StringGrid1.Cells[2,ARow];
  end;
end;

procedure TForm4.BtnDeleteClick(Sender: TObject);
begin
     With StringGrid1 do
     begin
         for var nRow := Row to RowCount  do
           Rows[nRow].Assign(Rows[nRow + 1 ]);
         Rows[RowCount - 1].Clear;
         RowCount := RowCount - 1;
     end;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
    for var i := 1 to StringGrid1.RowCount -1  do
      StringGrid1.Rows[i].Clear;
end;

procedure TForm4.BtnSaveClick(Sender: TObject);
begin
    var csvFile := TStringList.Create;
    Try
      for var i := 0 to StringGrid1.RowCount -1  do
        csvFile.Add(StringGrid1.Rows[i].CommaText);
     csvFile.SaveToFile('d:\test\contact.csv');
    Finally
       csvFile.Free;
    End;
end;

procedure TForm4.BtnOpenClick(Sender: TObject);
begin
  var csvFile := TStringList.Create;
  try
    csvFile.LoadFromFile('d:\test\contact.csv');
    StringGrid1.RowCount := csvFile.Count;
    for var i := 0 to csvFile.Count - 1 do
      StringGrid1.Rows[i].CommaText := csvFile[i];
  finally
    csvFile.Free;
  end;
end;

end.
