unit fiche_client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls,dmDatabase;

type
  TfrmClient = class(TForm)
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClient: TfrmClient;

implementation
           uses liste_des_clients;
{$R *.dfm}

procedure TfrmClient.Button1Click(Sender: TObject);
begin
db.ADOclient.Next;
end;

procedure TfrmClient.Button2Click(Sender: TObject);
begin
db.ADOclient.Prior;
end;

procedure TfrmClient.Button3Click(Sender: TObject);
begin
db.ADOclient.First;
end;

procedure TfrmClient.Button4Click(Sender: TObject);
begin
db.ADOclient.Last;
end;

procedure TfrmClient.Button5Click(Sender: TObject);
begin
db.ADOclient.Insert;
end;

procedure TfrmClient.Button6Click(Sender: TObject);
begin
frmClient.Close;
end;

procedure TfrmClient.Button7Click(Sender: TObject);
begin
db.ADOclient.Post;
end;

end.
