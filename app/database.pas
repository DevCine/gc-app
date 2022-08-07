unit database;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Tdb = class(TForm)
    ADOConnection1: TADOConnection;
    ADOfournisseur: TADOTable;
    ADOclient: TADOTable;
    ADOstock: TADOTable;
    ADOdetail_cmnd: TADOTable;
    ADOdetail_livr: TADOTable;
    ADOqueryProduit: TADOQuery;
    ADOproduit: TADOTable;
    ADOproduitref: TIntegerField;
    ADOproduitcode_bare: TIntegerField;
    ADOproduitdésignation: TWideStringField;
    ADOproduitfamille: TWideStringField;
    ADOproduitmarque: TWideStringField;
    ADOproduitdate_produit: TDateTimeField;
    ADOproduitcode_s: TIntegerField;
    ADOqueryProduitcode_s: TIntegerField;
    ADOqueryProduits_initial: TIntegerField;
    ADOqueryProduits_actuel: TIntegerField;
    ADOqueryProduitalert: TIntegerField;
    ADOqueryProduitref: TIntegerField;
    ADOqueryProduitcode_bare: TIntegerField;
    ADOqueryProduitdésignation: TWideStringField;
    ADOqueryProduitfamille: TWideStringField;
    ADOqueryProduitmarque: TWideStringField;
    ADOqueryProduitdate_produit: TDateTimeField;
    ADOqueryProduitcode_s_1: TIntegerField;
    ADOqueryProduitNumPiece_bc: TIntegerField;
    ADOqueryProduitref_1: TIntegerField;
    ADOqueryProduitqte_cmnd: TIntegerField;
    ADOqueryProduitprix_ht_cmnd: TFloatField;
    ADOqueryProduittva_cmnd: TFloatField;
    ADOqueryProduitremise_cmnd: TFloatField;
    ADOqueryProduitprix_ttc_cmnd: TFloatField;
    ADOqueryProduitréglé_cmnd: TBooleanField;
    ADOqueryProduitnum_piece_bl: TIntegerField;
    ADOqueryProduitref_2: TIntegerField;
    ADOqueryProduitqte_min: TIntegerField;
    ADOqueryProduitqte_max: TIntegerField;
    ADOqueryProduitprix_qte: TIntegerField;
    ADOqueryProduitprix_ht_livr: TFloatField;
    ADOqueryProduitremise_livr: TFloatField;
    ADOqueryProduitprix_ttc_livr: TFloatField;
    ADOqueryProduitréglé_livr: TBooleanField;
    ADOqueryProduitcode_f: TIntegerField;
    ADOqueryProduitnom: TWideStringField;
    ADOqueryProduitadresse_f: TWideStringField;
    ADOqueryProduittel_f: TStringField;
    ADOqueryProduitemail_f: TStringField;
    ADOqueryProduitsold_init_f: TFloatField;
    ADOqueryProduitsold_fin_f: TFloatField;
    ADOdetail_cmndNumPiece_bc: TIntegerField;
    ADOdetail_cmndref: TIntegerField;
    ADOdetail_cmndqte_cmnd: TIntegerField;
    ADOdetail_cmndprix_ht_cmnd: TFloatField;
    ADOdetail_cmndtva_cmnd: TFloatField;
    ADOdetail_cmndremise_cmnd: TFloatField;
    ADOdetail_cmndprix_ttc_cmnd: TFloatField;
    ADOdetail_cmndréglé_cmnd: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db: Tdb;

implementation

{$R *.dfm}

end.
