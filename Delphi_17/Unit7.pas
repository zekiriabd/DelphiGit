unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  TForm7 = class(TForm)
    TreeView1: TTreeView;
    BtnInsert: TButton;
    BtnDelete: TButton;
    BtnFind: TButton;
    BtnUpdate: TButton;
    Edit1: TEdit;
    BtnOpen: TButton;
    BtnSave: TButton;
    BtnClear: TButton;
    XMLDocument1: TXMLDocument;
    procedure BtnClearClick(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses  contact;
{$R *.dfm}

procedure TForm7.BtnClearClick(Sender: TObject);
begin
    TreeView1.Items.Clear;
end;

procedure TForm7.BtnDeleteClick(Sender: TObject);
begin
  TreeView1.Items.Delete(TreeView1.Selected);
end;

procedure TForm7.BtnFindClick(Sender: TObject);
begin
    for var i := 0 to TreeView1.Items.Count - 1 do
    if TreeView1.Items[i].Text = Edit1.Text then
    begin
      TreeView1.SetFocus;
      TreeView1.Selected :=  TreeView1.Items[i];
    end;
end;

procedure TForm7.BtnInsertClick(Sender: TObject);
begin
    TreeView1.Items.AddChildFirst(TreeView1.Selected,Edit1.Text);
end;



procedure TForm7.BtnUpdateClick(Sender: TObject);
begin
    TreeView1.Selected.Text := Edit1.Text;
end;

procedure TForm7.BtnSaveClick(Sender: TObject);
begin
    TreeView1.SaveToFile('D:\Test\contact.yml');
end;


procedure TForm7.BtnOpenClick(Sender: TObject);
begin
//  TreeView1.LoadFromFile('D:\Test\contact.yml')

  var Contacts := contact.GetContacts(XMLDocument1);
  for var i := 0 to Contacts.Count - 1  do
  begin
     var Contact := TreeView1.Items.Add(nil,Contacts[i].ID.ToString);
         TreeView1.Items.AddChild(Contact,
           Contacts[i].FirstNom + ' ' +  Contacts[i].LastNom
         );

  end;
end;

end.
