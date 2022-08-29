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
    ADOdetail_livr: TADOTable;
    ADOproduit: TADOTable;
    dsProduit: TDataSource;
    dsFournisseur: TDataSource;
    dsDetailCmnd: TDataSource;
    dsDetailLivr: TDataSource;
    dsStock: TDataSource;
    dsClient: TDataSource;
    ADOproduitref: TStringField;
    ADOproduitcode_bare: TIntegerField;
    ADOproduitdésignation: TWideStringField;
    ADOproduitfamille: TWideStringField;
    ADOproduitmarque: TWideStringField;
    ADOproduitdate_produit: TDateTimeField;
    ADOproduitcode_s: TStringField;
    ADObonLivr: TADOTable;
    ADOclientcode_c: TStringField;
    ADOclientnom_c: TWideStringField;
    ADOclientadresse_c: TWideStringField;
    ADOclienttel_c: TStringField;
    ADOclientemail_c: TStringField;
    ADOclientsold_c: TFloatField;
    DataSource1: TDataSource;
    ADObonLivrnum_piece_bl: TStringField;
    ADObonLivrdate_bl: TDateTimeField;
    ADObonLivrobservation: TWideStringField;
    ADObonLivrvalider_bl: TBooleanField;
    ADObonLivrpiece_réglé_bl: TBooleanField;
    ADObonLivrNpiece_vente: TStringField;
    ADObonLivrcode_c: TStringField;
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
