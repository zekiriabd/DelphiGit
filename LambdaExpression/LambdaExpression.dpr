  program LambdaExpression;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Generics.Defaults,
  Generics.Collections;

Type

  {
  TObjectListHelper<T> = class helper for TObjectList<T>
    function ExtractByIndex(const AIndex: Integer): TObject;
  end;
  }

  TObjectListLinq<T:class> = class(TObjectList<T>)
    public function find(aFound: TPredicate<T>): T;
  end;



  TUser = class
  public
      Name: string;
      Age : Integer;
  Constructor Create(_name : string; _age : Integer);
  end;

var
x :string;


{ TObjectListLinq }
function TObjectListLinq<T>.find(aFound: TPredicate<T>): T;
begin
  for var item:T in Self do if aFound(item) then Exit(item);
  Result := nil;
end;

{ User }
constructor TUser.Create(_name: string; _age: Integer);
begin
   Self.Name:=_name;
   Self.Age :=_age;
end;

begin
   var users :=  TObjectListLinq<TUser>.Create();
   users.Add(TUser.Create('zekiri',47));
   users.Add(TUser.Create('Aloui',45));
   users.Add(TUser.Create('Rahich',26));

//    var user := users.find(x=>x.age ==26);

  var user := users.find(function(u : TUser): boolean
   begin
       Result := u.Name = 'zekiri' ;
   end);

   Writeln(user.Age.ToString() +' _ ' + user.Name);


   {users.Sort(TComparer<User>.Construct(
           function (const x, y: User): integer begin Result := y.Age - x.Age; end
   ));

   for var u:User in users do Writeln(u.Age.ToString() +' _ ' + u.Name);
    }




  Readln(x);

end.
