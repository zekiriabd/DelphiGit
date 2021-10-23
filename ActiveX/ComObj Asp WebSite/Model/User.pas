unit User;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, AspTlb, WebApplicationCOM_ASP_TLB, StdVcl;

type
  TUser = class(TASPObject, IUser)
  private
    FirstName :   OleVariant;
    LastName  :   OleVariant;
  public
    function Get_FirstName: OleVariant; safecall;
    function Get_LastName: OleVariant; safecall;
    procedure Set_FirstName(Value: OleVariant); safecall;
    procedure Set_LastName(Value: OleVariant); safecall;
  end;

implementation

uses ComServ;


function TUser.Get_FirstName: OleVariant;
begin
      Result := Self.FirstName;
end;

function TUser.Get_LastName: OleVariant;
begin
      Result := Self.LastName;
end;

procedure TUser.Set_FirstName(Value: OleVariant);
begin
       Self.FirstName := Value;
end;

procedure TUser.Set_LastName(Value: OleVariant);
begin
       Self.LastName := Value;
end;

initialization
  TAutoObjectFactory.Create(ComServer, TUser, Class_User,
    ciMultiInstance, tmApartment);
end.
