unit bon_commande;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,dmDatabase,fiche_produit,
  fiche_fournisseur;
type
  TfrmBonCmnd = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    ComboBox1: TComboBox;
    Button2: TButton;
    TabSheet3: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    Panel1: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Button7: TButton;
    Label17: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBonCmnd: TfrmBonCmnd;

implementation

{$R *.dfm}

procedure TfrmBonCmnd.Button1Click(Sender: TObject);
begin
frmfournisseur.show;
end;

procedure TfrmBonCmnd.Button2Click(Sender: TObject);
var ip:integer; idProduit:string; p:boolean;
begin
   frmProduit.show ;
end;

procedure TfrmBonCmnd.Button3Click(Sender: TObject);
begin
db.ADObonCmnd.Post;

end;

procedure TfrmBonCmnd.Button5Click(Sender: TObject);
begin
db.ADOQproduit.delete;
end;

procedure TfrmBonCmnd.Button6Click(Sender: TObject);
begin
db.ADObonCmnd.Cancel;
db.ADObonCmnd.IndexFieldNames :='code_cmnd';
frmboncmnd.Close;
end;

procedure TfrmBonCmnd.Button7Click(Sender: TObject);
var ip,ibc:integer; idProduit,idBonCmnd:string; p,bc:boolean;
begin
                                          db.ADObonCmnd.Cancel;
   frmProduit.show ;
     ip:=1;  p := false; bc:= false;
 idProduit := 'P000';   idBonCmnd := 'BC000' ;
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
 //////////// incrementation bon commande id /////////////////////////
 db.ADObonCmnd.IndexFieldNames :='code_cmnd';
                     ibc:=1;         db.adoboncmnd.DisableControls;
  try
    db.adoboncmnd.First;
    repeat
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
//////////////////////////////////////////////////////////////////////
db.adodetail_cmnd.Insert;
        db.adodetail_cmnd.Fields[0].asString:= idBonCmnd+inttostr(ibc) ;
        db.adodetail_cmnd.Fields[1].asString:= idProduit+inttostr(ip);
end;

procedure TfrmBonCmnd.DBLookupComboBox1CloseUp(Sender: TObject);
begin
label17.Caption:= db.ADOfournisseur.FieldByName('solde_f').AsString;
end;

procedure TfrmBonCmnd.FormActivate(Sender: TObject);

begin
   label1.Caption:='Bon Commande n° '+dbedit1.Field.Value;


end;

procedure TfrmBonCmnd.FormClose(Sender: TObject; var Action: TCloseAction);

begin
db.ADOQproduit.Active:= false;
db.ADOQproduit.Active:= true;

end;

end.
