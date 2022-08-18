program MYGC;

uses
  Vcl.Forms,
  fiche_fournisseur in 'fiche_fournisseur.pas' {frmFournisseur},
  liste_des_frnsr in 'liste_des_frnsr.pas' {liste_frnsr},
  liste_des_clients in 'liste_des_clients.pas' {frmListClients},
  fiche_client in 'fiche_client.pas' {frmClient},
  fiche_produit in 'fiche_produit.pas' {frmProduit},
  dmDatabase in 'dmDatabase.pas' {db: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmProduit, frmProduit);
  Application.CreateForm(Tliste_frnsr, liste_frnsr);
  Application.CreateForm(TfrmFournisseur, frmFournisseur);
  Application.CreateForm(TfrmListClients, frmListClients);
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(Tdb, db);
  Application.Run;
end.
