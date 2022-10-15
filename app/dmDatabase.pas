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
    dsBonLivr: TDataSource;
    dsQproduit: TDataSource;
    ADOproduitref: TWideStringField;
    ADOproduitcode_bare: TIntegerField;
    ADOproduitdésignation: TWideStringField;
    ADOproduitfamille: TWideStringField;
    ADOproduitmarque: TWideStringField;
    ADOproduitdate_p: TDateTimeField;
    ADOfournisseurcode_f: TWideStringField;
    ADOfournisseurnom: TWideStringField;
    ADOfournisseuradresse_f: TWideStringField;
    ADOfournisseurtel_f: TSmallintField;
    ADOfournisseuremail_f: TWideStringField;
    ADOfournisseursolde_f: TBCDField;
    ADOclientcode_c: TWideStringField;
    ADOclientnom_c: TWideStringField;
    ADOclientadresse_c: TWideStringField;
    ADOclienttel_c: TSmallintField;
    ADOclientemail_c: TWideStringField;
    ADOclientsolde_c: TBCDField;
    ADObonCmndcode_cmnd: TWideStringField;
    ADObonCmnddate_bc: TDateTimeField;
    ADObonCmndNFactAchat: TWideStringField;
    ADObonCmndobservation: TWideStringField;
    ADObonCmndcode_f: TWideStringField;
    ADOdetail_cmndcode_cmnd: TWideStringField;
    ADOdetail_cmndref: TWideStringField;
    ADOdetail_cmndqte_cmnd: TSmallintField;
    ADOdetail_cmndprixAchat: TBCDField;
    ADOdetail_cmndprixVente: TBCDField;
    ADObonLivrcode_bl: TWideStringField;
    ADObonLivrdate_bl: TDateTimeField;
    ADObonLivrNFactVente: TWideStringField;
    ADObonLivrobservation: TWideStringField;
    ADObonLivrcode_c: TWideStringField;
    ADOQproduit: TADOTable;
    ADOdetail_livrcode_bl: TWideStringField;
    ADOdetail_livrref: TWideStringField;
    ADOdetail_livrqte_livr: TSmallintField;
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
