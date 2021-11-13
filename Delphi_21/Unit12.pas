unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls, Vcl.MPlayer,
  Winapi.WebView2, Winapi.ActiveX, Vcl.Edge, Vcl.OleCtrls, SHDocVw, System.AnsiStrings,
  Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    DBMemo1: TDBMemo;
    Image1: TImage;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBLookupListBox1: TDBLookupListBox;
    FDTable1: TFDTable;
    FDTable1VideoId: TFDAutoIncField;
    FDTable1LessonId: TIntegerField;
    FDTable1TecherId: TIntegerField;
    FDTable1Name: TWideStringField;
    FDTable1Date: TSQLTimeStampField;
    FDTable1Url: TStringField;
    FDTable1Image: TStringField;
    FDTable1Description: TWideStringField;
    DataSource2: TDataSource;
    LinkLabel1: TBitBtn;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FDQuery1AfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupListBox1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LinkLabel1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    FDQuery1 :  TFDQuery;
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation
uses SQLConst;
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

procedure TForm12.Button1Click(Sender: TObject);
begin
    var myForm := TForm.Create(nil) ;
    try
      myForm.Height:=400; myForm.Width:=600;

      var WebBrowser1:= TWebBrowser.Create(myForm);
      try
           var str := ReplaceStr(TSQLConst.YOUTUBE_FRAM,'%1', FDQuery1.FieldByName('URL').Text);
            TOleControl(WebBrowser1).Parent :=  myForm;
            WebBrowser1.Align:= alClient;
            WB_LoadHTML(WebBrowser1,str);
            myForm.ShowModal;
      finally
         TOleControl(WebBrowser1).Free;
      end;
    finally
       myForm.Free;
    end;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
   {
    FDQuery1.SQL.Text := 'SELECT [VideoId],[Name],[Date],[Url],[Image],[Description],[TecherId],'+
    '[Firstname],[Lastname],[LessonId],[Titel] FROM [YouTubeVideo].[dbo].[View_Video_Detailed]'+
    'WHERE [Name] Like :Name';
    'WHERE [Name] Like ''%'+ Edit1.Text +'%'' ';
    FDQuery1.ParamByName('name').Value := '%'+ Edit1.Text +'%';
    FDQuery1.Open();
   }

   //FDQuery1.FindKey([Edit1.Text]);
   //FDQuery1.Locate('Name',Edit1.Text,[]);

   FDQuery1.Filter := 'Name Like' + QuotedStr('%' + Edit1.Text + '%');
   FDQuery1.Filtered:=True;

   DBGrid1.SetFocus;
end;

procedure TForm12.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    {  if(Column.FieldName ='Delete') and (gdSelected in State) then
      begin
       LinkLabel1.Left   := Rect.Left + DBGrid1.Left + 1;
       LinkLabel1.Top    := Rect.Top + DBGrid1.Top + 1;
       LinkLabel1.Width  := Rect.Right - Rect.Left;
       LinkLabel1.Height := Rect.Bottom - Rect.Top;
       LinkLabel1.Visible:=true;
      end;}
end;

procedure TForm12.DBLookupListBox1DblClick(Sender: TObject);
begin
    FDQuery1.FindKey([FDTable1VideoId.Value]);
    DBGrid1.SetFocus;
    DBLookupListBox1.Visible := false;
end;

procedure TForm12.Edit1Change(Sender: TObject);
begin
   FDTable1.Filter := 'Name Like' + QuotedStr(Edit1.Text + '%');
end;

procedure TForm12.Edit1Enter(Sender: TObject);
begin
   DBLookupListBox1.Visible := True;
end;

procedure TForm12.FDQuery1AfterScroll(DataSet: TDataSet);
begin
     image1.Picture.LoadFromFile(FDQuery1.FieldByName('Image').Text);
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
     FDQuery1 :=  TFDQuery.Create(nil);
     FDQuery1.Connection := FDConnection1;
     FDQuery1.SQL.Text := TSQLConst.SELECT_VIDEO_DETAILED;
     DataSource1.DataSet :=FDQuery1;
     FDQuery1.AfterScroll := FDQuery1AfterScroll;
     FDQuery1.IndexFieldNames := 'VideoId';
     FDQuery1.Open();
     FDTable1.Open();
end;

procedure TForm12.FormDestroy(Sender: TObject);
begin
   FDTable1.Close;
   FDQuery1.Close;
   FDConnection1.Close;
   FDQuery1.Free;
end;

procedure TForm12.LinkLabel1Click(Sender: TObject);
begin
   //ShowMessage(FDQuery1.FieldByName('VideoId').Text);
end;

procedure TForm12.SpeedButton3Click(Sender: TObject);
begin
//if  (Application.messagebox('Are you sure to delete?' ,'ATTENTION',mb_YesNo) = IDYES) then
if (Vcl.Dialogs.MessageDlg(
'Are you sure to delete?',
mtConfirmation,
[mbYes,mbNo],0) = mrYes)
then
begin
   //FDTable1.Delete;
     var mySQL :=  TFDQuery.Create(nil);
     Try
       mySQL.Connection := FDConnection1;
       mySQL.ExecSQL(TSQLConst.DELETE_VIDEO,
       [FDQuery1.FieldByName('VideoId').AsString]);
       FDQuery1.Refresh;
     Finally
       mySQL.Close;
       mySQL.Free;
     End;
end;


end;

end.
