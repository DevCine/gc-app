unit liste_des_produits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.Grids, Vcl.DBGrids, dmDatabase, Vcl.Mask;

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
    Button5: TButton;
    procedure SearchBox2Change(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmListeProduits: TfrmListeProduits;

implementation

{$R *.dfm}      uses fiche_produit,bon_commande;


procedure TfrmListeProduits.Button1Click(Sender: TObject);
var ibc:integer; idBonCmnd:string; bc:boolean;
begin
   frmBoncmnd.show;
   frmProduit.show ;
          idBonCmnd:= 'BC000';  bc:= false;
    //////////// incrementation bon commande id /////////////////////////
db.ADObonCmnd.IndexFieldNames :='code_cmnd';
                     ibc:=1;         db.adoboncmnd.DisableControls;
  try
    db.adoboncmnd.First;
    repeat
    if db.ADObonCmnd.RecordCount=0 then
               begin
                 db.adoboncmnd.Insert;
               db.adoboncmnd.Fields[0].asString:=  idBonCmnd+inttostr(ibc) ;
               bc:= true;
               end
               else
       if db.adoboncmnd.Fields[0].asString =  idBonCmnd+inttostr(ibc)then
       begin
               ibc:=ibc+1;
               if ibc>9 then delete(idBonCmnd,5,1) else if ibc>99 then delete(idBonCmnd,4,2)
               else if ibc>999 then delete(idBonCmnd,3,3)  ;
               db.adoboncmnd.Next;
       end
       else
      begin
      db.adoboncmnd.Insert;
               frmboncmnd.DBEdit1.Field.value:= idBonCmnd+inttostr(ibc) ;
               bc := true
      end;

    until (ibc=db.adoboncmnd.RecordCount+1) or (bc =true);

  finally
    db.adoboncmnd.EnableControls;
  end;

if  bc =false then
begin
db.adoboncmnd.Insert;
         frmboncmnd.DBEdit1.Field.value:= idBonCmnd+inttostr(ibc) ;
end;
db.ADObonCmnd.Post;
end;

procedure TfrmListeProduits.Button3Click(Sender: TObject);
begin
db.ADOproduit.Locate('ref',db.ADOQproduit.Fields[0].value,[]);
db.ADOproduit.Delete;
db.ADOQproduit.Active:=false;
db.ADOQproduit.Active:=true;
end;

procedure TfrmListeProduits.Button5Click(Sender: TObject);
begin
frmlisteproduits.Close;
end;

procedure TfrmListeProduits.SearchBox1Change(Sender: TObject);
begin
             if trim(searchbox1.Text) = '' then  db.ADOQproduit.Filtered := false else
begin
  db.adoqproduit.Filter := 'ref like '+ QuotedStr('*'+searchbox1.Text + '*') ;
  db.ADOQproduit.Filtered := true;
end;
end;

procedure TfrmListeProduits.SearchBox2Change(Sender: TObject);
    var searchV:string;
begin
searchV:= combobox1.Text;

        if trim(searchbox2.Text) = '' then  db.ADOQproduit.Filtered := false else
begin
  db.ADOQproduit.Filter := searchV+' like '+ QuotedStr('*'+searchbox2.Text + '*') ;
  db.ADOQproduit.Filtered := true;
end;
end;

end.
