program Delphi4;
uses
  SysUtils;

begin

 var i : Integer := -10;
     Inc(i);
     i:= abs(i);
 Writeln('i  => ' + i.Tostring);

 var d : Double := 15.2;
     d := Round(d);
     d:= Int(d);
     d:= Frac(d);
 Writeln('d  => ' + d.Tostring);

 var str := 'a,B,C,d';
     str := LowerCase(str);
     str := UpperCase(str);

  Writeln('str  => ' + str);

  var c := str[3];
  Writeln('c  => ' + c);

  var myarray := str.Split([',']);
  Writeln('myarray  => ' + string.Join('|',myarray));

 Readln;
end.
