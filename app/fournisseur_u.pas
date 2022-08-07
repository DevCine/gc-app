unit fournisseur_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  Tfournisseur_frm = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Image1: TImage;
    procedure GroupBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  fournisseur_frm: Tfournisseur_frm;

implementation
           uses liste_des_frnsr, database;
{$R *.dfm}

procedure Tfournisseur_frm.Button1Click(Sender: TObject);
begin
db.adofournisseur.Next;
end;

procedure Tfournisseur_frm.Button2Click(Sender: TObject);
begin
db.adofournisseur.Prior;
end;

procedure Tfournisseur_frm.Button3Click(Sender: TObject);
begin
db.adofournisseur.First;
end;

procedure Tfournisseur_frm.Button4Click(Sender: TObject);
begin
db.adofournisseur.Last;
end;

procedure Tfournisseur_frm.Button5Click(Sender: TObject);
begin
db.adofournisseur.Insert;
end;

procedure Tfournisseur_frm.Button6Click(Sender: TObject);
begin
fournisseur_frm.Close;
end;

procedure Tfournisseur_frm.Button7Click(Sender: TObject);
begin
db.adofournisseur.Post;
end;

procedure Tfournisseur_frm.GroupBox1Click(Sender: TObject);
begin
GroupBox1.HeaderFont.Color:= clgreen;
end;

end.
