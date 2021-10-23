program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
Type
Animal = Class
  Public procedure Speak();virtual;
End;

Cat = Class(Animal)
  Public procedure Speak();override;
End;

{ Animal }
procedure Animal.Speak;
begin
  Writeln('I talking to other animals');
end;

{ Cat }
procedure Cat.Speak;
begin
   Writeln('I can mow with cats');
end;

var
   x:string;
   _cat: Animal;
begin
   _cat := Cat.Create;
   _cat.Speak();


   Readln(x);
end.
