unit liste_des_frnsr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  Tliste_frnsr = class(TForm)
    DBGrid1: TDBGrid;
    SearchBox2: TSearchBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SearchBox1: TSearchBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SearchBox2Change(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  liste_frnsr: Tliste_frnsr;

implementation
                uses fournisseur_u;
{$R *.dfm}

procedure Tliste_frnsr.Button1Click(Sender: TObject);
begin
fournisseur_f.Show;
fournisseur_f.ADOTable1.Insert;
end;

procedure Tliste_frnsr.Button2Click(Sender: TObject);
begin
fournisseur_f.show;
fournisseur_f.ADOTable1.Edit;
end;

procedure Tliste_frnsr.Button3Click(Sender: TObject);
begin
fournisseur_f.ADOTable1.Delete;
end;

procedure Tliste_frnsr.Button5Click(Sender: TObject);
begin
liste_frnsr.Close;
end;


procedure Tliste_frnsr.SearchBox1Change(Sender: TObject);
begin
if trim(searchbox1.Text) = '' then  fournisseur_f.ADOTable1.Filtered := false else
begin
  fournisseur_f.ADOTable1.Filter := 'nom like '+ QuotedStr('*'+searchbox1.Text + '*') ;
  fournisseur_f.ADOTable1.Filtered := true;
end;
end;

procedure Tliste_frnsr.SearchBox2Change(Sender: TObject);
begin
if trim(searchbox2.Text) = '' then  fournisseur_f.ADOTable1.Filtered := false else
begin
  fournisseur_f.ADOTable1.Filter := 'adresse_f like '+ QuotedStr('*'+searchbox2.Text + '*') ;
  fournisseur_f.ADOTable1.Filtered := true;
end;
end;

end.
