unit fournisseur_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Imaging.pngimage;

type
  Tfournisseur_f = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1code_f: TIntegerField;
    ADOTable1nom: TWideStringField;
    ADOTable1adresse_f: TWideStringField;
    ADOTable1tel_f: TStringField;
    ADOTable1email_f: TStringField;
    ADOTable1sold_init_f: TFloatField;
    ADOTable1sold_fin_f: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
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
  fournisseur_f: Tfournisseur_f;

implementation

{$R *.dfm}

procedure Tfournisseur_f.Button1Click(Sender: TObject);
begin
adotable1.Next;
end;

procedure Tfournisseur_f.Button2Click(Sender: TObject);
begin
adotable1.Prior;
end;

procedure Tfournisseur_f.Button3Click(Sender: TObject);
begin
adotable1.First;
end;

procedure Tfournisseur_f.Button4Click(Sender: TObject);
begin
adotable1.Last;
end;

procedure Tfournisseur_f.Button5Click(Sender: TObject);
begin
adotable1.Insert;
end;

procedure Tfournisseur_f.Button6Click(Sender: TObject);
begin
fournisseur_f.Close;
end;

procedure Tfournisseur_f.Button7Click(Sender: TObject);
begin
adotable1.Post;
end;

procedure Tfournisseur_f.GroupBox1Click(Sender: TObject);
begin
GroupBox1.HeaderFont.Color:= clgreen;
end;

end.
