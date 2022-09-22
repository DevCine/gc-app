unit dmDatabase;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdb = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOfournisseur: TADOTable;
    ADOclient: TADOTable;
    ADObonCmnd: TADOTable;
    ADOdetail_cmnd: TADOTable;
    ADOdetail_livr: TADOTable;
    ADOproduit: TADOTable;
    dsProduit: TDataSource;
    dsFournisseur: TDataSource;
    dsDetailCmnd: TDataSource;
    dsDetailLivr: TDataSource;
    dsBonCmnd: TDataSource;
    dsClient: TDataSource;
    ADObonLivr: TADOTable;
    ADOclientcode_c: TStringField;
    ADOclientnom_c: TWideStringField;
    ADOclientadresse_c: TWideStringField;
    ADOclienttel_c: TStringField;
    ADOclientemail_c: TStringField;
    ADOclientsold_c: TFloatField;
    DataSource1: TDataSource;
    ADObonLivrcode_bl: TStringField;
    ADObonLivrdate_bl: TDateTimeField;
    ADObonLivrobservation: TWideStringField;
    ADObonLivrvalider_bl: TBooleanField;
    ADObonLivrpiece_réglé_bl: TBooleanField;
    ADObonLivrNpiece_vente: TStringField;
    ADObonLivrcode_c: TStringField;
    ADObonLivrNumPiece_bl: TStringField;
    ADObonCmndcode_cmnd: TStringField;
    ADObonCmnddate_bc: TDateTimeField;
    ADObonCmndobservation: TWideStringField;
    ADObonCmndvalider_bc: TBooleanField;
    ADObonCmndpiece_réglé_bc: TBooleanField;
    ADObonCmndcode_f: TStringField;
    ADObonCmndNpiece_achat: TStringField;
    ADObonCmndNumPiece_bc: TStringField;
    ADOproduitref: TStringField;
    ADOproduitcode_bare: TIntegerField;
    ADOproduitdésignation: TWideStringField;
    ADOproduitfamille: TWideStringField;
    ADOproduitmarque: TWideStringField;
    ADOproduitdate_produit: TDateTimeField;
    ADOdetail_cmndcode_cmnd: TStringField;
    ADOdetail_cmndref: TStringField;
    ADOdetail_cmndqte_cmnd: TIntegerField;
    ADOdetail_cmndprix_ht_cmnd: TFloatField;
    ADOdetail_cmndtva_cmnd: TFloatField;
    ADOdetail_cmndremise_cmnd: TFloatField;
    ADOdetail_cmndprix_ttc_cmnd: TFloatField;
    ADOdetail_cmndréglé_cmnd: TBooleanField;
    ADOdetail_cmndidDetailCmnd: TStringField;
    ADOdetail_livrcode_bl: TStringField;
    ADOdetail_livrref: TStringField;
    ADOdetail_livrqte_min: TIntegerField;
    ADOdetail_livrqte_max: TIntegerField;
    ADOdetail_livrprix_qte: TIntegerField;
    ADOdetail_livrprix_ht_livr: TFloatField;
    ADOdetail_livrremise_livr: TFloatField;
    ADOdetail_livrprix_ttc_livr: TFloatField;
    ADOdetail_livrréglé_livr: TBooleanField;
    ADOdetail_livridDetailLivr: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db: Tdb;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
