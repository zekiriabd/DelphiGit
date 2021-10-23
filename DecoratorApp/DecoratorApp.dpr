program DecoratorApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Type

  ILogger = interface ['{6CED8DCE-9CC7-491F-8D93-996BE8E4D388}']
    function log(): string;
  end;

  LoggerBase = class(TInterfacedObject, ILogger)
  public
   function log(): string;
  end;

   LoggerDecorator = class abstract (TInterfacedObject, ILogger)
    private
    loggerBase : ILogger;
    public
     constructor Create(_loggerBase : ILogger);
     function log(): string; virtual;
  end;

  LogConsoleDecorator = class(LoggerDecorator)
  public
     constructor Create(_loggerBase : ILogger);
     function log(): string;override;
  end;








  LogConsoleMailDecorator = class(LoggerDecorator)
   public
     constructor Create(_loggerBase : ILogger);
     function log(): string;override;
  end;


{ LoggerBase }

function LoggerBase.log: string;
begin
   Result := 'Message: start debugging';
end;

{ LoggerDecorator }
constructor LoggerDecorator.Create(_loggerBase: ILogger);
begin
  Self.loggerBase := _loggerBase;
end;

function LoggerDecorator.log: string;
begin
    Result := Self.loggerBase.log();
end;

{ LogConsoleDecorator }

constructor LogConsoleDecorator.Create(_loggerBase: ILogger);
begin
     inherited Create(_loggerBase);
end;

function LogConsoleDecorator.log: string;
begin
    Result := loggerBase.log() + ' in console,';
end;

{ LogConsoleMailDecorator }

constructor LogConsoleMailDecorator.Create(_loggerBase: ILogger);
begin
  inherited Create(_loggerBase);
end;

function LogConsoleMailDecorator.log: string;
begin
   Result := loggerBase.log() + ' in Mail.';
end;

var
x :string;

logConsoleMailD : ILogger;
begin

   logConsoleMailD := LogConsoleMailDecorator.Create(LogConsoleDecorator.Create(LoggerBase.Create()));
   Writeln(logConsoleMailD.log());


   Readln(x);
end.
