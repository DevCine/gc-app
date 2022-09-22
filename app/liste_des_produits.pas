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
var i:integer; idProduit,idDetailCmnd,idDetailLivr:string; p,dc,dl:boolean;
begin

     i:=1;  p := false; dc:= false; dl:= false ;
 idProduit := 'P000';  idDetailCmnd:='DC000'; idDetailLivr := 'DL000' ;
frmProduit.show ;

   //////////// autoincrementation of product id ////////////////
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
               p := true
      end;

    until (i=db.ADOproduit.RecordCount+1) or (p =true);

  finally
    db.ADOproduit.EnableControls;
  end;

if  p =false then
begin
db.ADOproduit.Insert;
        frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(i) ;
 end;
 /////////////////////////////////////////////////////////////////////////
 //////////// incrementation detail commande id /////////////////////////
                     i:=1;         db.adodetail_cmnd.DisableControls;
  try
    db.adodetail_cmnd.First;
    repeat
       if db.adodetail_cmnd.Fields[0].asString =  idDetailCmnd+inttostr(i)then
       begin
               i:=i+1;
               if i>9 then delete(idDetailCmnd,5,1) else if i>99 then delete(idDetailCmnd,4,2)
               else if i>999 then delete(idDetailCmnd,3,3)  ;
               db.adodetail_cmnd.Next;
       end
       else
      begin
      db.adodetail_cmnd.Insert;
               db.adodetail_cmnd.Fields[0].asString:= idDetailCmnd+inttostr(i) ;
               dl := true
      end;

    until (i=db.adodetail_cmnd.RecordCount+1) or (dl =true);

  finally
    db.adodetail_cmnd.EnableControls;
  end;

if  dl =false then
begin
db.adodetail_cmnd.Insert;
        db.adodetail_cmnd.Fields[0].asString:= idDetailCmnd+inttostr(i) ;
end;
 /////////////////////////////////////////////////////////////////////////
 //////////// incrementation detail commande id /////////////////////////
                     i:=1;         db.adodetail_livr.DisableControls;
  try
    db.adodetail_livr.First;
    repeat
       if db.adodetail_livr.Fields[0].asString =  idDetailLivr+inttostr(i)then
       begin
               i:=i+1;
               if i>9 then delete(idDetailLivr,5,1) else if i>99 then delete(idDetailLivr,4,2)
               else if i>999 then delete(idDetailLivr,3,3)  ;
               db.adodetail_livr.Next;
       end
       else
      begin
      db.adodetail_livr.Insert;
               db.adodetail_livr.Fields[0].asString:= idDetailLivr+inttostr(i) ;
               dc := true
      end;

    until (i=db.adodetail_livr.RecordCount+1) or (dc =true);

  finally
    db.adodetail_livr.EnableControls;
  end;

if  dc =false then
begin
db.adodetail_livr.Insert;
        db.adodetail_livr.Fields[0].asString:= idDetailLivr+inttostr(i) ;
end;
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
