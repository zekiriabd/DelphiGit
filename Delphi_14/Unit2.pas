unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.ImageList,
  Vcl.ImgList;

type
  TForm2 = class(TForm)
    procedure FormPaint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormPaint(Sender: TObject);
begin

   Canvas.Pen.Width :=2;
   Canvas.Pen.Color:= clBlack;
   Canvas.Brush.Color := clRed;
   Canvas.Pen.Style := psDot;
   Canvas.MoveTo(50,50);
   Canvas.LineTo(0,100);
   Canvas.lineTo(100, 100);
   Canvas.lineTo(50, 50);
   Canvas.Rectangle(0,0,200,200);
   Canvas.Rectangle(100,100,400,200);
   Canvas.Ellipse(50,50,500,500);
   Canvas.Polygon([Point(0,0),Point(100,0),Point(50,50)]);
   Canvas.Polygon([Point(0,0), Point(0,100), Point(50,50)]);
   Canvas.Polygon([Point(0,100), Point(100,100), Point(50,50)]);
   Canvas.Polygon([Point(100,0),Point(100,100),Point(50,50)]);

var h,w,centre :integer;
begin
  centre := 100 div 2;
  with Canvas do
  begin
    for h := 0 to centre do // hauteur
      for w := 0 to h do    // largeur
      begin
        pixels[abs(w-centre), abs(w-h+centre)] := clGreen; // en haut à gauche
        pixels[abs(w+centre), abs(w-h+centre)] := clGreen; // en haut à droite
        pixels[abs(w-h+centre), abs(w+centre)] := clGreen; // en bas à gauche
        pixels[abs(h-w+centre), abs(w+centre)] := clGreen; // en bas à droite
      end;
    // bordure rouge
    pen.Color:=clRed;
    pen.Style:=psSolid;
    Polyline([Point(50, 0), Point(100, 50), Point(50, 100), Point(0, 50), Point(50, 0)]);
  end;
end;
end;
end.
