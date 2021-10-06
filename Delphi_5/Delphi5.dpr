program Delphi5;
uses SysUtils, Math;
var
     intArray : array[0..2] of Integer = (50,28,3200);
     strArray : array of string;
     intMatrix : Array of Array of string;
begin
 // Constant Array
     Writeln(intArray[0] + intArray[1] + intArray[2]);
     Writeln(Length(intArray));
     Writeln(MaxIntValue(intArray));
     Writeln(MinIntValue(intArray));
//Dynamic arrays
     SetLength(strArray, 3);
     strArray[0]:= 'A';
     strArray[1]:= 'B';
     strArray[2]:= 'C';

     Writeln(Length(strArray));
     Writeln( String.Join('|',strArray));

//Multi-dimensional arrays
     SetLength(intMatrix,2,3);

     intMatrix[0,0]:= '1';
     intMatrix[0,1]:= '2';
     intMatrix[0,2]:= '3';

     intMatrix[1,0]:= '10';
     intMatrix[1,1]:= '20';
     intMatrix[1,2]:= '30';

     Writeln(String.Join('|',intMatrix[0]));
     Writeln(String.Join('|',intMatrix[1]));

  Readln;
end.
