unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Panel2: TPanel;
    Timer1: TTimer;
    btnRight: TSpeedButton;
    btnStop: TSpeedButton;
    btnTop: TSpeedButton;
    btnLeft: TSpeedButton;
    btnBttom: TSpeedButton;
    Button1: TButton;
    Image1: TImage;
    Panel1: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
Panel1.Brush.Bitmap := TBitmap.Create;
Panel1.Brush.Bitmap.Canvas.Brush.Color := clRed;
Panel1.Brush.Bitmap.Canvas.MoveTo(50,50);
Panel1.Brush.Bitmap.Canvas.LineTo(100, 50);
Panel1.Repaint;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if btnTop.Down then
     Image1.Top := Image1.Top - 5;

   if btnBttom.Down then
     Image1.Top := Image1.Top + 5;

   if btnLeft.Down then
     Image1.Left := Image1.Left - 5;

   if btnRight.Down then
     Image1.Left := Image1.Left + 5;

end;

end.
