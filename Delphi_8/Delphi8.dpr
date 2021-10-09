program Delphi8;

uses
  System.SysUtils;

begin
{
   var myNumber := 0;
   Writeln('Entrez un nombre?');
   Readln(myNumber);
   if (myNumber Mod 2 = 0 ) then
      Writeln('ce chiffre est pair.')
   else
      Writeln('Ce chiffre est impair.');


   var myNumber1 := 0;
   var myNumber2 := 0;
   Writeln('Entrer un nombre1?');
   Readln(myNumber1);

   Writeln('Entrer un nombre2?');
   Readln(myNumber2);
   if (myNumber1 mod myNumber2 = 0) then
    Writeln(inttostr(myNumber1) + ' C''est bien un multiple de  ' + inttostr(myNumber2))
  else
     Writeln('Non ce n''est pas un multiple.');
}

   var myNumber := 0;
   Writeln('Entrez le reste de stock produit?');
   Readln(myNumber);

   if ( myNumber >= 10 ) then  Writeln('ok')
   else
     if ( myNumber > 3 ) then     Writeln('Attention')
     else
         Writeln('c''est garve');

  Readln;
end.
