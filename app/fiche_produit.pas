unit fiche_produit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.JumpList, Vcl.Tabs, Vcl.DockTabSet, Vcl.Grids, Vcl.TabNotBk, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB;

type
  Tproduit_frm = class(TForm)
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
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
    DataSourceproduit: TDataSource;
    DataSourceQueryProduit: TDataSource;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DataSourcefournisseur: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  produit_frm: Tproduit_frm;

implementation
        uses database;
{$R *.dfm}

end.
