unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm10 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ADOTable1ID: TFloatField;
    ADOTable1FirstName: TWideStringField;
    ADOTable1LastName: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation
uses Excel2010;
{$R *.dfm}

procedure TForm10.FormCreate(Sender: TObject);
begin
{    ADOConnection1.Connected := false;
    ADOConnection1.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\Test\contact.xlsx;Extended Properties="Excel 12.0;HDR=YES;"';
    ADOConnection1.Connected := true;

    ADOTable1.active:=false;
    ADOTable1.Connection :=  ADOConnection1;
    ADOTable1.TableName:='[Feuil1$]';
    ADOTable1.Active :=true;

  var appsttings := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'appsetting.ini');
     try
         var pathFile := appsttings.ReadString('Connection','ExcelFilePath', EmptyStr);
          edit1.text := pathFile;
     finally
      appsttings.Free;
     end;
     }

end;

end.
