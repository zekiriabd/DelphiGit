unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw, Data.DB, Datasnap.DBClient;

type
  TForm9 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    ClientDataSet1: TClientDataSet;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

//uses VCL.ActiveX;


{$R *.dfm}


procedure WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
   Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
  begin
    sl := TStringList.Create;
    try
      ms := TMemoryStream.Create;
      try
        sl.Text := HTMLCode;
        sl.SaveToStream(ms);
        ms.Seek(0, 0);
        (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms));
      finally
        ms.Free;
      end;
    finally
      sl.Free;
    end;
  end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
//   WebBrowser1.Navigate('google.fr');
   var str1 := '<!DOCTYPE html>'+
'<html lang="en">'+
'<head>'+
'  <title>Bootstrap Example</title>'+
'  <meta charset="utf-8">'+
'  <meta name="viewport" content="width=device-width, initial-scale=1">'+
'  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">'+
'  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>'+
'  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>'+
'</head>'+
'<body>'+
'<div class="container">'+
'  <h2>Contextual Classes</h2>'+
'  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>'+
'  <table class="table">'+
'    <thead>'+
'      <tr>'+
'        <th>Firstname</th>'+
'        <th>Lastname</th>'+
'        <th>Email</th>'+
'      </tr>'+
'    </thead>'+
'    <tbody>';

var str2 :=
'    </tbody>'+
'  </table>'+
'</div>'+
'</body>'+
'</html>';

    var str3 := '';
   ClientDataSet1.Active:= True;
   ClientDataSet1.First;
   while not ClientDataSet1.Eof do
   begin
      str3 := str3 +
      '<tr class="warning"><td>'+ClientDataSet1.FieldByName('Id').AsString + '</td>'+
      '<td>'+ ClientDataSet1.FieldByName('FirstName').AsString +'</td>' +
      '<td>'+ ClientDataSet1.FieldByName('LastName').AsString +'</td><tr>';
     ClientDataSet1.Next;
   end;

    var str := str1 + str3 + str2;
    WB_LoadHTML( WebBrowser1, str);
end;

end.
