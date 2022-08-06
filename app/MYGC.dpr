program MYGC;

uses
  Vcl.Forms,
  fournisseur_u in 'fournisseur_u.pas' {fournisseur_f},
  liste_des_frnsr in 'liste_des_frnsr.pas' {liste_frnsr};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tliste_frnsr, liste_frnsr);
  Application.CreateForm(Tfournisseur_f, fournisseur_f);
  Application.Run;
end.
