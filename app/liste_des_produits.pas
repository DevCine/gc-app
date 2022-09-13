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
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListeProduits: TfrmListeProduits;
    autoNumP:integer;
implementation

{$R *.dfm}      uses fiche_produit;

procedure TfrmListeProduits.Button1Click(Sender: TObject);
var i:integer; idProduit:string; br:boolean;
begin
//autoNumP := 1;
     i:=1;    br := false  ;
 idProduit := 'P000';
frmProduit.show ;
with db do
begin //ADOproduit.Insert;
//ADOdetail_cmnd.Insert;
//adodetail_livr.Insert;
//adostock.Insert;
end;

  db.ADOproduit.DisableControls;
  try
    db.ADOproduit.First;
    repeat
       if db.ADOproduit.Fields[0].asString =  idProduit+inttostr(i)then
       begin
               i:=i+1;
               if i>9 then delete(idproduit,4,1) else if i>99 then delete(idproduit,3,2)
               else if i>999 then delete(idproduit,2,3)  ;
               db.ADOproduit.Next;
       end
       else
      begin
      db.ADOproduit.Insert;
               frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(i) ;
               br := true
      end;

    until (db.ADOproduit.EOF) or (br);

  finally
    db.ADOproduit.EnableControls;
  end;

if not br then
db.ADOproduit.Insert;
        frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(i+1) ;

end;

procedure TfrmListeProduits.Button3Click(Sender: TObject);
begin
db.ADOproduit.Delete;
end;

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
