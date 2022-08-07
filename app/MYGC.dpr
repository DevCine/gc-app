program MYGC;

uses
  Vcl.Forms,
  fournisseur_u in 'fournisseur_u.pas' {fournisseur_frm},
  liste_des_frnsr in 'liste_des_frnsr.pas' {liste_frnsr},
  liste_des_clients in 'liste_des_clients.pas' {liste_client},
  database in 'database.pas' {db},
  fiche_client in 'fiche_client.pas' {client_frm},
  fiche_produit in 'fiche_produit.pas' {produit_frm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tproduit_frm, produit_frm);
  Application.CreateForm(Tliste_frnsr, liste_frnsr);
  Application.CreateForm(Tfournisseur_frm, fournisseur_frm);
  Application.CreateForm(Tliste_client, liste_client);
  Application.CreateForm(Tdb, db);
  Application.CreateForm(Tclient_frm, client_frm);
  Application.Run;
end.
