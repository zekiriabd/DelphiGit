program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
Type

MyClass = Class

Public
  // avec overload
  function Addition(x:integer; y:integer):integer; overload;
  function Addition(a:String; b:String):String; overload;

  constructor Create();overload;
  constructor Create(mesg:String);overload;
End;

{ MyClass }

function MyClass.Addition(x:integer; y:integer):integer;
begin
     Result:= x+y;
end;

function MyClass.Addition(a, b: String): String;
begin
     Result:= a+b;
end;

constructor MyClass.Create(mesg: String);
begin
     Writeln(mesg);
end;

constructor MyClass.Create();
begin
   Writeln('Delphi');
end;

var
myObj : MyClass;
n:Integer;
begin
  myObj := MyClass.Create('5555555');
  Writeln(myObj.Addition(1,2));
  Writeln(myObj.Addition('A','B'));
  Readln(n);
end.
