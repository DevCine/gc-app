unit dmDatabase;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdb = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOfournisseur: TADOTable;
    ADOclient: TADOTable;
    ADOstock: TADOTable;
    ADOdetail_cmnd: TADOTable;
    ADOdetail_cmndNumPiece_bc: TIntegerField;
    ADOdetail_cmndref: TIntegerField;
    ADOdetail_cmndqte_cmnd: TIntegerField;
    ADOdetail_cmndprix_ht_cmnd: TFloatField;
    ADOdetail_cmndtva_cmnd: TFloatField;
    ADOdetail_cmndremise_cmnd: TFloatField;
    ADOdetail_cmndprix_ttc_cmnd: TFloatField;
    ADOdetail_cmndréglé_cmnd: TBooleanField;
    ADOdetail_livr: TADOTable;
    ADOproduit: TADOTable;
    ADOproduitref: TIntegerField;
    ADOproduitcode_bare: TIntegerField;
    ADOproduitdésignation: TWideStringField;
    ADOproduitfamille: TWideStringField;
    ADOproduitmarque: TWideStringField;
    ADOproduitdate_produit: TDateTimeField;
    ADOproduitcode_s: TIntegerField;
    DataSourceproduit: TDataSource;
    DataSourcefournisseur: TDataSource;
    ADOfournisseurcode_f: TIntegerField;
    ADOfournisseurnom: TWideStringField;
    ADOfournisseuradresse_f: TWideStringField;
    ADOfournisseurtel_f: TStringField;
    ADOfournisseuremail_f: TStringField;
    ADOfournisseursold_init_f: TFloatField;
    ADOfournisseursold_fin_f: TFloatField;
    ADOclientcode_c: TIntegerField;
    ADOclientnom_c: TWideStringField;
    ADOclientadresse_c: TWideStringField;
    ADOclienttel_c: TStringField;
    ADOclientemail_c: TStringField;
    ADOclientsold_init_c: TFloatField;
    ADOclientsold_fin_c: TFloatField;
    ADOstockcode_s: TIntegerField;
    ADOstocks_initial: TIntegerField;
    ADOstocks_actuel: TIntegerField;
    ADOstockalert: TIntegerField;
    ADOdetail_livrnum_piece_bl: TIntegerField;
    ADOdetail_livrref: TIntegerField;
    ADOdetail_livrqte_min: TIntegerField;
    ADOdetail_livrqte_max: TIntegerField;
    ADOdetail_livrprix_qte: TIntegerField;
    ADOdetail_livrprix_ht_livr: TFloatField;
    ADOdetail_livrremise_livr: TFloatField;
    ADOdetail_livrprix_ttc_livr: TFloatField;
    ADOdetail_livrréglé_livr: TBooleanField;
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
