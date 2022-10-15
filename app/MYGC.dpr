program MYGC;

uses
  Vcl.Forms,
  fiche_fournisseur in 'fiche_fournisseur.pas' {frmFournisseur},
  liste_des_frnsr in 'liste_des_frnsr.pas' {frmListeFrnsr},
  liste_des_clients in 'liste_des_clients.pas' {frmListeClients},
  fiche_client in 'fiche_client.pas' {frmClient},
  fiche_produit in 'fiche_produit.pas' {frmProduit},
  dmDatabase in 'dmDatabase.pas' {db: TDataModule},
  liste_des_produits in 'liste_des_produits.pas' {frmListeProduits},
  comptoire in 'comptoire.pas' {frmComptoire},
  bon_livraison in 'bon_livraison.pas' {Form2},
  mainMenu in 'mainMenu.pas' {frmMain},
  bon_commande in 'bon_commande.pas' {frmBonCmnd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmListeProduits, frmListeProduits);
  Application.CreateForm(TfrmComptoire, frmComptoire);
  Application.CreateForm(TfrmListeFrnsr, frmListeFrnsr);
  Application.CreateForm(TfrmProduit, frmProduit);
  Application.CreateForm(TfrmFournisseur, frmFournisseur);
  Application.CreateForm(TfrmListeClients, frmListeClients);
  Application.CreateForm(TfrmClient, frmClient);
  Application.CreateForm(Tdb, db);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmBonCmnd, frmBonCmnd);
  Application.Run;
end.
