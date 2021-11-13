unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm11 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation
uses System.Win.ComObj;

{$R *.dfm}

procedure TForm11.FormCreate(Sender: TObject);
var Excel_App : variant;
begin
  var SourceFile := 'D:\Test\contact.xlsx';
  Excel_App := CreateOleObject('Excel.Application');
  Try
   Excel_App.Visible := false;

  finally
  Excel_App.Free;
  End;


end;

end.
