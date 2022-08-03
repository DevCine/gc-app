program MYGC;

uses
  Vcl.Forms,
  fournisseur_u in 'fournisseur_u.pas' {fournisseur_f};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfournisseur_f, fournisseur_f);
  Application.Run;
end.
