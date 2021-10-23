unit uMyClass;

interface

type

    {MyBaseCalss = class
    private
       FMyBaseField: string;
    end;
    Mycalss = class(MyBaseCalss)
    }

    MyInterface = interface
       function isOk() : Boolean;
    end;

    Mycalss = class(TInterfacedObject,MyInterface)
    private
       FMyField: string;
    public
       property MyField : string read FMyField write FMyField;
       constructor Create(myParam:string);

       function isOk() : Boolean;

   end;


implementation

function Mycalss.isOk() : Boolean;
begin
   Writeln('OK');
end;


constructor Mycalss.Create(myParam:string);
begin
     FMyField := myParam;
end;

end.
