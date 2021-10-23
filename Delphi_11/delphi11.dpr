program delphi11;
uses
  System.SysUtils;

   function Addition(const a:integer ; const b:integer): integer;
   begin
        Result:= a + b ;
   end;

   function Substraction(const a:integer ; const b:integer): integer;
   begin
        Result:= a - b ;
   end;

   procedure ShowAll(tab:array of Integer);
   begin
       for var elm in tab do
         Writeln(elm);
   end;

var
  myTab : array of Integer;

    procedure UpperSub(var str:string);
    begin
       str := UpperCase(str.Substring(0,4));
    end;

begin
     var mYstr := 'aBcdefGH';
     UpperSub(mYstr);
     Writeln(mYstr);
     Writeln(Addition(5 , 4));
     Writeln(Substraction(5 , 4));
     SetLength(myTab,2);
     myTab[0]:=10;
     myTab[1]:=20;
     ShowAll(myTab);
    Readln;
end.
