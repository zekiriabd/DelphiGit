program Delphi9;
uses
  System.SysUtils,System.StrUtils;
begin

  var str :string;
  Writeln('Entrez un value?');
  Readln(str);

  if(ReverseString(str) = str) then
     Writeln('True')
  else
     Writeln('False');

   //----------------------------

   var myNumber : Integer;
   Writeln('Entrez un nombre?');
   Readln(myNumber);

   case myNumber of
      1: Writeln('janvier');
      2: Writeln('février');
      3: Writeln('mars');
      else
        Writeln('????');
   end;
   //----------------------------

  var MySystem :string;
  Writeln('Entrez un value?');
  Readln(MySystem);

  if (MySystem = 'Android') then
         Writeln('is Android')
  else
       if (MySystem = 'IOS') then
           Writeln('is IOS')
       else
           Writeln('is Windows');

   case  AnsiIndexStr(MySystem, ['IOS', 'Android', 'Windows']) of
     0: Writeln('is IOS');
     1: Writeln('is Android');
     2: Writeln('is Windows');
   end;

  Readln;
end.
