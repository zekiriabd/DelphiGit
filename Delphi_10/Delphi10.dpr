program Delphi10;
uses
  System.SysUtils,System.Math;

  const
     tab : array[0..3] of Integer = (  -9, 11, -3, 7  );
begin
   var str:= 'AcCbbbbBDiiiii';
   var sum := 0;
   for var c in str  do
      if UpperCase(c) = c then
         Inc(sum);
  Writeln(sum);

   var min:=0;
   for var i:=0 to Length(tab) - 1  do
     if( Abs(tab[min]) > Abs(tab[i]) ) then
       min:= i;
   Writeln(min);

   var min2:= tab[0];
   for var elm in tab do
     if( Abs(min2) > Abs(elm) ) then
       min2 :=  elm;
    Writeln(min2);

   Readln;
end.
