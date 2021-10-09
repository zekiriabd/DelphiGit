program Delphi7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

begin
  {var myDateTime : TDateTime := StrToDateTime('23/10/2021');
  Writeln(DateTimeToStr(myDateTime));

  myDateTime := Now;
  Writeln(DateTimeToStr(myDateTime));

  Writeln(FormatDateTime('d/m/y',myDateTime));
  Writeln(FormatDateTime('dd/mm/yy',myDateTime));
  Writeln(FormatDateTime('ddd d of mmm yyyy',myDateTime));

  Writeln('Today is  ' + DateToStr(myDateTime));
  Writeln('Today''s time = '+TimeToStr(myDateTime));

  var myYear, myMonth, myDay: word;
    DecodeDate(myDateTime ,myYear, myMonth, myDay);
    Writeln(IntToStr(myYear));
    Writeln(IntToStr(myMonth));
    Writeln(IntToStr(myDay));


   }
   var myBool:= (11 < 10) OR (2 = 1) ;

   if myBool = true then
      Writeln('True')
   else
      Writeln('false');




  Readln;
end.
