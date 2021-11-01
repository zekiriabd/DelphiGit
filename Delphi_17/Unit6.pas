unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

type
  TForm6 = class(TForm)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Id: TIntegerField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1LastName: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BtnOpen: TButton;
    BtnSave: TButton;
    BtnClear: TButton;
    BtnInsert: TButton;
    BtnDelete: TButton;
    BtnFind: TButton;
    BtnUpdate: TButton;
    Edit1: TEdit;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.BtnClearClick(Sender: TObject);
begin
  ClientDataSet1.EmptyDataSet;
end;

procedure TForm6.BtnDeleteClick(Sender: TObject);
begin
  ClientDataSet1.Delete;
end;

procedure TForm6.BtnFindClick(Sender: TObject);
begin
  ClientDataSet1.Locate('Id',Edit1.Text,[lopartialkey]);
end;

procedure TForm6.BtnInsertClick(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

procedure TForm6.BtnOpenClick(Sender: TObject);
begin
   ClientDataSet1.LoadFromFile('D:\Test\contact.xml');
   ClientDataSet1.Active := True;
end;

procedure TForm6.BtnSaveClick(Sender: TObject);
begin
   ClientDataSet1.SaveToFile('D:\Test\contact.xml');
end;

procedure TForm6.BtnUpdateClick(Sender: TObject);
begin
  ClientDataSet1.Post;
end;

end.
