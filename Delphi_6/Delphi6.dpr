program Delphi6;

uses System.Generics.Collections,System.SysUtils;
function ListToString(list : TList<Integer>):string;
begin
     var str :='';
     for var elm:Integer in List do
        str := str + '|'+ IntToStr(elm);
     Result :=str;
end;
begin
  //TDictionary
  var dictionary := TDictionary<Integer, string>.Create;
  dictionary.Add(1,'Abdelali');
  dictionary.Add(2,'Ali');
  dictionary.Add(3,'Raof');
  Writeln(dictionary.Count);
  Writeln(dictionary[2]);
  dictionary.Remove(3);
  Writeln(dictionary.Count);
  Writeln(dictionary.ContainsValue('Ali'));
 // TList
    var list :=  TList<Integer>.Create;
    list.AddRange([2,3,4,5]);
    list.Add(6);
    list.Insert(0,1);
    list.Remove(5);
    Writeln(list.First);
    Writeln(list.Last);
    Writeln(ListToString(list));
    list.IndexOf(3);
    Writeln(ListToString(list));
  Readln;
end.
