unit Controller;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
System.Generics.Collections,rest.Json, System.JSON,
Data.DB, Data.Win.ADODB,
DatabaseAccess,User;

type
{$METHODINFO ON}
  TServerMethods1 = class(TComponent)
  private
    { Private declarations }
  public
    { Public declarations }
      function HelloWorld():string;
      function GetUserList(): TList<TUser>;
      function GetUserListFromDb(): TList<TUser>;
      function AddNewUser (newUser : TUser): string ;
  end;

{$METHODINFO OFF}

implementation


//Hello World Web Method
function TServerMethods1.HelloWorld():string;
begin
   result := 'Hello World';
end;

// GetUserList Web Method
function TServerMethods1.GetUserList(): TList<TUser>;
begin
      Result:= TList<TUser>.Create;
      Result.Add(TUser.Create(1,'Zekiri','Abdelali'));
      Result.Add(TUser.Create(1,'Zekir25555i','Abdelali1211'));

end;

// GetUserList From Database Web Method
function TServerMethods1.GetUserListFromDb(): TList<TUser>;
var mUser : TUser;
    userSqlProc : TADOStoredProc;
begin
      Result:= TList<TUser>.Create();
      userSqlProc := TDatabaseAccess.ExecProc('sp_GetDelphiUsers',nil);
      userSqlProc.Open;
      while not userSqlProc.EOF do
      begin
          Result.Add(
          TUser.Create(
                userSqlProc.FieldByName('Id').AsInteger,
                userSqlProc.FieldByName('FirstName').AsString,
                userSqlProc.FieldByName('LastName').AsString
                )
          );

          userSqlProc.Next;
      end;
      userSqlProc.Close;


end;

 // Add New User
function TServerMethods1.AddNewUser (newUser : TUser): string ;
var Params : TList<TProcParam>;
    Param : TProcParam;
    userSqlProc : TADOStoredProc;
begin
        Params:= TList<TProcParam>.Create();

        Param:=TProcParam.Create('firstName', TDataType.ftString , newUser.mFirstName , 100);
        Params.Add(Param);

        Param:=TProcParam.Create('lastName', TDataType.ftString , newUser.mLastName , 100);
        Params.Add(Param);

        userSqlProc := TDatabaseAccess.ExecProc('sp_AddDelphiUser',Params);
        Result := userSqlProc.Name;
end;

end.

