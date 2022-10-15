unit fiche_fournisseur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.Win.ADODB, Vcl.Imaging.pngimage,dmDatabase;

type
  TfrmFournisseur = class(TForm)
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
    Edit1: TEdit;
    procedure GroupBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFournisseur: TfrmFournisseur;

implementation
           uses liste_des_frnsr;
{$R *.dfm}

procedure TfrmFournisseur.Button1Click(Sender: TObject);
begin
db.adofournisseur.Next;
end;

procedure TfrmFournisseur.Button2Click(Sender: TObject);
begin
db.adofournisseur.Prior;
end;

procedure TfrmFournisseur.Button3Click(Sender: TObject);
begin
db.adofournisseur.First;
end;

procedure TfrmFournisseur.Button4Click(Sender: TObject);
begin
db.adofournisseur.Last;
end;

procedure TfrmFournisseur.Button5Click(Sender: TObject);
var ifr:integer; idfournisseur:string; f:boolean;
begin

     ifr:=1;  f := false;
 idfournisseur := 'F000';  db.ADOfournisseur.Cancel;
   //////////// autoincrementation of fournissuer id ////////////////
  db.adofournisseur.DisableControls;
  try
    db.adofournisseur.First;
    repeat
       if db.adofournisseur.Fields[0].asString =  idfournisseur+inttostr(ifr)then
       begin
               ifr:=ifr+1;
               if ifr>9 then delete(idfournisseur,4,1) else if ifr>99 then delete(idfournisseur,3,2)
               else if ifr>999 then delete(idfournisseur,2,3)  ;
               db.adofournisseur.Next;
       end
       else
      begin
      db.adofournisseur.Insert;
               DBEdit1.Field.Value:= idfournisseur+inttostr(ifr) ;
               f := true
      end;

    until (ifr=db.adofournisseur.RecordCount+1) or (f =true);

  finally
    db.adofournisseur.EnableControls;
  end;

if  f =false then
begin
db.adofournisseur.Insert;
     DBEdit1.Field.Value:= idfournisseur+inttostr(ifr) ;

 end;
end;

procedure TfrmFournisseur.Button6Click(Sender: TObject);
begin
db.ADOfournisseur.Cancel;
frmFournisseur.Close;
end;

procedure TfrmFournisseur.Button7Click(Sender: TObject);
begin
db.adofournisseur.Post;
end;

procedure TfrmFournisseur.FormShow(Sender: TObject);
var ifr:integer; idfournisseur:string; f:boolean;
begin

     ifr:=1;  f := false;
 idfournisseur := 'F000';
   //////////// autoincrementation of fournissuer id ////////////////
  db.adofournisseur.DisableControls;
  try
    db.adofournisseur.First;
    repeat
       if db.adofournisseur.Fields[0].asString =  idfournisseur+inttostr(ifr)then
       begin
               ifr:=ifr+1;
               if ifr>9 then delete(idfournisseur,4,1) else if ifr>99 then delete(idfournisseur,3,2)
               else if ifr>999 then delete(idfournisseur,2,3)  ;
               db.adofournisseur.Next;
       end
       else
      begin
      db.adofournisseur.Insert;
               DBEdit1.Field.Value:= idfournisseur+inttostr(ifr) ;
               f := true
      end;

    until (ifr=db.adofournisseur.RecordCount+1) or (f =true);

  finally
    db.adofournisseur.EnableControls;
  end;

if  f =false then
begin
db.adofournisseur.Insert;
     DBEdit1.Field.Value:= idfournisseur+inttostr(ifr) ;

 end;

end;

procedure TfrmFournisseur.GroupBox1Click(Sender: TObject);
begin
GroupBox1.HeaderFont.Color:= clgreen;
end;

end.
