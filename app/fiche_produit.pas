unit fiche_produit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.JumpList, Vcl.Tabs, Vcl.DockTabSet, Vcl.Grids, Vcl.TabNotBk, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.DBGrids,dmDatabase, Vcl.Samples.Spin;

type
  TfrmProduit = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduit: TfrmProduit;

implementation
             uses liste_des_frnsr,bon_commande;
{$R *.dfm}

procedure TfrmProduit.Button1Click(Sender: TObject);
begin
db.ADOproduit.Post;
db.ADOdetail_cmnd.Post;
///// trie le dbgrid produit par reference /////
db.ADOproduit.IndexFieldNames :='ref';
end;

procedure TfrmProduit.Button2Click(Sender: TObject);
begin
frmproduit.Close;
end;
procedure TfrmProduit.Button3Click(Sender: TObject);
begin
frmlistefrnsr.show;
end;

procedure TfrmProduit.Button4Click(Sender: TObject);
var ip:integer; idProduit,idBonCmnd:string; p:boolean;
begin
db.ADOproduit.Cancel;
db.ADOdetail_cmnd.Cancel;
           //////// nouvelle enregistrement ////////////////
     ip:=1;  p := false;
 idProduit := 'P000'; idBonCmnd := 'BC000' ;
   //////////// autoincrementation of product id ////////////////
  db.ADOproduit.DisableControls;
  try
    db.ADOproduit.First;
    repeat
       if db.ADOproduit.Fields[0].asString =  idProduit+inttostr(ip)then
       begin
               ip:=ip+1;
               if ip>9 then delete(idproduit,4,1) else if ip>99 then delete(idproduit,3,2)
               else if ip>999 then delete(idproduit,2,3)  ;
               db.ADOproduit.Next;
       end
       else
      begin
      db.ADOproduit.Insert;
               frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(ip) ;
               p := true
      end;

    until (ip=db.ADOproduit.RecordCount+1) or (p =true);

  finally
    db.ADOproduit.EnableControls;
  end;

if  p =false then
begin
db.ADOproduit.Insert;
        frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(ip) ;

 end;
 /////////////////////////////////////////////////////////////////////////
 //////////// incrementation detail commande id /////////////////////////
  db.adodetail_cmnd.Insert;
        db.adodetail_cmnd.Fields[0].asString:= db.ADObonCmnd.Fields[0].AsString ;
        db.adodetail_cmnd.Fields[1].asString:= idProduit+inttostr(ip);
end;

procedure TfrmProduit.FormClose(Sender: TObject; var Action: TCloseAction);
 var i,s:integer;
begin
db.ADOproduit.Cancel;
db.ADOdetail_cmnd.Cancel;
db.ADOQproduit.Active:= false;
db.ADOQproduit.Active:= true;
s:=0;  i:=0;
db.ADOQproduit.First;
if db.ADOQproduit.RecordCount<>0 then
begin
repeat
i:=i+1;
  s:= s+ db.ADOQproduit.FieldByName('prixAchat').asinteger;
 db.ADOQproduit.next;
until i= db.ADOQproduit.RecordCount ;
 end;
frmboncmnd.edit1.Text:=inttostr(s);
 db.ADObonCmnd.Edit;

end;

procedure TfrmProduit.FormShow(Sender: TObject);
var ip:integer; idProduit:string; p:boolean;
begin

     ip:=1;  p := false;
 idProduit := 'P000';
   //////////// autoincrementation of product id ////////////////
  db.ADOproduit.DisableControls;
  try
    db.ADOproduit.First;
    repeat
     if db.adoproduit.RecordCount=0 then
               begin
                db.ADOproduit.Insert;
               db.adoproduit.Fields[0].asString:=  idproduit+inttostr(ip) ;
               p:= true;
               end
               else
       if db.ADOproduit.Fields[0].asString =  idProduit+inttostr(ip)then
       begin
               ip:=ip+1;
               if ip>9 then delete(idproduit,4,1) else if ip>99 then delete(idproduit,3,2)
               else if ip>999 then delete(idproduit,2,3)  ;
               db.ADOproduit.Next;
       end
       else
      begin
      db.ADOproduit.Insert;
               frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(ip) ;
               p := true
      end;

    until (ip=db.ADOproduit.RecordCount+1) or (p =true);

  finally
    db.ADOproduit.EnableControls;
  end;

if  p =false then
begin
db.ADOproduit.Insert;
        frmProduit.DBEdit1.Field.Value:= idProduit+inttostr(ip) ;

 end;
  /////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//////////// incrementation detail commande id /////////////////////////
db.adodetail_cmnd.Insert;
        db.adodetail_cmnd.Fields[0].asstring:= db.ADObonCmnd.Fields[0].AsString ;
        db.adodetail_cmnd.Fields[1].asstring:= idProduit+inttostr(ip) ;
///////////////////////////////////////////////////////////////////////////

end;

end.
