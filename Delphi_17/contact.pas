
{*********************************************}
{                                             }
{              XML Data Binding               }
{                                             }
{         Generated on: 31/10/2021 20:45:57   }
{       Generated from: D:\Test\contact.xml   }
{                                             }
{*********************************************}

unit contact;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLContactsType = interface;
  IXMLContactType = interface;

{ IXMLContactsType }

  IXMLContactsType = interface(IXMLNodeCollection)
    ['{CE97548A-481A-41F1-95A5-BD0086B6F92B}']
    { Property Accessors }
    function Get_Contact(Index: Integer): IXMLContactType;
    { Methods & Properties }
    function Add: IXMLContactType;
    function Insert(const Index: Integer): IXMLContactType;
    property Contact[Index: Integer]: IXMLContactType read Get_Contact; default;
  end;

{ IXMLContactType }

  IXMLContactType = interface(IXMLNode)
    ['{AFA35FC6-D112-4D94-888A-08053784B82F}']
    { Property Accessors }
    function Get_ID: Integer;
    function Get_FirstNom: UnicodeString;
    function Get_LastNom: UnicodeString;
    procedure Set_ID(Value: Integer);
    procedure Set_FirstNom(Value: UnicodeString);
    procedure Set_LastNom(Value: UnicodeString);
    { Methods & Properties }
    property ID: Integer read Get_ID write Set_ID;
    property FirstNom: UnicodeString read Get_FirstNom write Set_FirstNom;
    property LastNom: UnicodeString read Get_LastNom write Set_LastNom;
  end;

{ Forward Decls }

  TXMLContactsType = class;
  TXMLContactType = class;

{ TXMLContactsType }

  TXMLContactsType = class(TXMLNodeCollection, IXMLContactsType)
  protected
    { IXMLContactsType }
    function Get_Contact(Index: Integer): IXMLContactType;
    function Add: IXMLContactType;
    function Insert(const Index: Integer): IXMLContactType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLContactType }

  TXMLContactType = class(TXMLNode, IXMLContactType)
  protected
    { IXMLContactType }
    function Get_ID: Integer;
    function Get_FirstNom: UnicodeString;
    function Get_LastNom: UnicodeString;
    procedure Set_ID(Value: Integer);
    procedure Set_FirstNom(Value: UnicodeString);
    procedure Set_LastNom(Value: UnicodeString);
  end;

{ Global Functions }

function GetContacts(Doc: IXMLDocument): IXMLContactsType;
function LoadContacts(const FileName: string): IXMLContactsType;
function NewContacts: IXMLContactsType;

const
  TargetNamespace = '';

implementation

uses System.Variants, Xml.xmlutil;

{ Global Functions }

function GetContacts(Doc: IXMLDocument): IXMLContactsType;
begin
  Result := Doc.GetDocBinding('Contacts', TXMLContactsType, TargetNamespace) as IXMLContactsType;
end;

function LoadContacts(const FileName: string): IXMLContactsType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Contacts', TXMLContactsType, TargetNamespace) as IXMLContactsType;
end;

function NewContacts: IXMLContactsType;
begin
  Result := NewXMLDocument.GetDocBinding('Contacts', TXMLContactsType, TargetNamespace) as IXMLContactsType;
end;

{ TXMLContactsType }

procedure TXMLContactsType.AfterConstruction;
begin
  RegisterChildNode('Contact', TXMLContactType);
  ItemTag := 'Contact';
  ItemInterface := IXMLContactType;
  inherited;
end;

function TXMLContactsType.Get_Contact(Index: Integer): IXMLContactType;
begin
  Result := List[Index] as IXMLContactType;
end;

function TXMLContactsType.Add: IXMLContactType;
begin
  Result := AddItem(-1) as IXMLContactType;
end;

function TXMLContactsType.Insert(const Index: Integer): IXMLContactType;
begin
  Result := AddItem(Index) as IXMLContactType;
end;

{ TXMLContactType }

function TXMLContactType.Get_ID: Integer;
begin
  Result := ChildNodes['ID'].NodeValue;
end;

procedure TXMLContactType.Set_ID(Value: Integer);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

function TXMLContactType.Get_FirstNom: UnicodeString;
begin
  Result := ChildNodes['FirstNom'].Text;
end;

procedure TXMLContactType.Set_FirstNom(Value: UnicodeString);
begin
  ChildNodes['FirstNom'].NodeValue := Value;
end;

function TXMLContactType.Get_LastNom: UnicodeString;
begin
  Result := ChildNodes['LastNom'].Text;
end;

procedure TXMLContactType.Set_LastNom(Value: UnicodeString);
begin
  ChildNodes['LastNom'].NodeValue := Value;
end;

end.