unit liste_des_clients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls,dmDatabase;

type
  TfrmListClients = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    SearchBox2: TSearchBox;
    SearchBox1: TSearchBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSourceClient: TDataSource;
    procedure SearchBox1Change(Sender: TObject);
    procedure SearchBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListClients: TfrmListClients;

implementation
             uses fiche_fournisseur;
{$R *.dfm}

procedure TfrmListClients.SearchBox1Change(Sender: TObject);
begin
            if trim(searchbox1.Text) = '' then  db.ADOclient.Filtered := false else
begin
  db.ADOclient.Filter := 'nom_c like '+ QuotedStr('*'+searchbox1.Text + '*') ;
  db.ADOclient.Filtered := true;
end;
end;

procedure TfrmListClients.SearchBox2Change(Sender: TObject);
begin
if trim(searchbox2.Text) = '' then  db.ADOclient.Filtered := false else
begin
  db.ADOclient.Filter := 'adresse_c like '+ QuotedStr('*'+searchbox2.Text + '*') ;
  db.ADOclient.Filtered := true;
end;
end;

end.
