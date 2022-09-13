unit mainMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm} uses liste_des_frnsr,comptoire,liste_des_clients,liste_des_produits,bon_livraison;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
frmListeProduits.show ;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
frmcomptoire.show;
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
frmListeClients.Show;
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
frmListeFrnsr.show;
end;

end.
