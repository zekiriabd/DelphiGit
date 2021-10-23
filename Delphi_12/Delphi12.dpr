program Delphi12;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMyClass in 'uMyClass.pas',
  uMyClass2 in 'uMyClass2.pas';

begin
//  MyStaticClass.MyVariable:= '11111';

  var myObject := Mycalss.Create('Hi');
  try
   Writeln(myObject.MyField);
   myObject.MyField := 'Coucou';
   Writeln(myObject.MyField);
  finally
    myObject.Free;
  end;


   Readln;
end.
