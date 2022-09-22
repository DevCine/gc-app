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
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduit: TfrmProduit;

implementation
             uses liste_des_frnsr;
{$R *.dfm}

procedure TfrmProduit.Button1Click(Sender: TObject);
begin
db.ADOproduit.Post;
db.ADOdetail_cmnd.Post;
db.ADOdetail_livr.Post;

///// trie le dbgrid produit par reference /////
db.ADOproduit.IndexFieldNames :='ref';
db.ADOdetail_cmnd.IndexFieldNames := 'idDetailCmnd';
db.ADOdetail_livr.IndexFieldNames :='idDetailLivr';
end;

procedure TfrmProduit.Button2Click(Sender: TObject);
begin
       frmproduit.Close;
end;
procedure TfrmProduit.Button3Click(Sender: TObject);
begin
frmlistefrnsr.show;
end;

end.
