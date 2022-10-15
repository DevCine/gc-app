unit bon_livraison;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, dmDatabase,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    ComboBox1: TComboBox;
    Button2: TButton;
    TabSheet3: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label12: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label16: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
                uses liste_des_clients, liste_des_produits;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
frmlisteClients.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
frmlisteProduits.show;
end;

end.
