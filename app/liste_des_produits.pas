unit liste_des_produits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, dmDatabase;

type
  TfrmListeProduits = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    SearchBox2: TSearchBox;
    SearchBox1: TSearchBox;
    ComboBox1: TComboBox;
    procedure SearchBox2Change(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListeProduits: TfrmListeProduits;

implementation

{$R *.dfm}

procedure TfrmListeProduits.SearchBox1Change(Sender: TObject);
begin
             if trim(searchbox1.Text) = '' then  db.ADOfournisseur.Filtered := false else
begin
  db.ADOfournisseur.Filter := 'code_bare like '+ QuotedStr('*'+searchbox1.Text + '*') ;
  db.ADOfournisseur.Filtered := true;
end;
end;

procedure TfrmListeProduits.SearchBox2Change(Sender: TObject);
    var searchV:string;
begin
searchV:= combobox1.Text;

        if trim(searchbox2.Text) = '' then  db.ADOfournisseur.Filtered := false else
begin
  db.ADOfournisseur.Filter := searchV+' like '+ QuotedStr('*'+searchbox2.Text + '*') ;
  db.ADOfournisseur.Filtered := true;
end;
end;

end.
