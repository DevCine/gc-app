unit liste_des_frnsr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.DBCGrids,dmDatabase;

type
  TfrmListeFrnsr = class(TForm)
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
  frmListeFrnsr: TfrmListeFrnsr;

implementation
                uses fiche_fournisseur;
{$R *.dfm}

procedure TfrmListeFrnsr.Button1Click(Sender: TObject);
begin
frmFournisseur.Show;
db.adofournisseur.Insert;
end;

procedure TfrmListeFrnsr.Button2Click(Sender: TObject);
begin
frmFournisseur.show;
db.adofournisseur.Edit;
end;

procedure TfrmListeFrnsr.Button3Click(Sender: TObject);
begin
db.adofournisseur.Delete;
end;

procedure TfrmListeFrnsr.Button5Click(Sender: TObject);
begin
frmListefrnsr.Close;
end;


procedure TfrmListeFrnsr.SearchBox1Change(Sender: TObject);
begin
if trim(searchbox1.Text) = '' then  db.ADOfournisseur.Filtered := false else
begin
  db.ADOfournisseur.Filter := 'nom like '+ QuotedStr('*'+searchbox1.Text + '*') ;
  db.ADOfournisseur.Filtered := true;
end;
end;

procedure TfrmListeFrnsr.SearchBox2Change(Sender: TObject);
begin
if trim(searchbox2.Text) = '' then  db.ADOfournisseur.Filtered := false else
begin
  db.ADOfournisseur.Filter := 'adresse_f like '+ QuotedStr('*'+searchbox2.Text + '*') ;
  db.ADOfournisseur.Filtered := true;
end;
end;

end.
