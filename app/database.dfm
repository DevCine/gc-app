object db: Tdb
  Left = 0
  Top = 0
  Caption = 'base de donn'#233'es'
  ClientHeight = 706
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=bddcommerce;Data Source=DESKTOP-M9OQ1ML' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 16
  end
  object ADOfournisseur: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fournisseur'
    Left = 136
    Top = 16
  end
  object ADOclient: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 248
    Top = 16
  end
  object ADOstock: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stock'
    Left = 328
    Top = 16
  end
  object ADOdetail_cmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_cmnd'
    Left = 432
    Top = 16
    object ADOdetail_cmndNumPiece_bc: TIntegerField
      FieldName = 'NumPiece_bc'
    end
    object ADOdetail_cmndref: TIntegerField
      FieldName = 'ref'
    end
    object ADOdetail_cmndqte_cmnd: TIntegerField
      FieldName = 'qte_cmnd'
    end
    object ADOdetail_cmndprix_ht_cmnd: TFloatField
      FieldName = 'prix_ht_cmnd'
    end
    object ADOdetail_cmndtva_cmnd: TFloatField
      FieldName = 'tva_cmnd'
    end
    object ADOdetail_cmndremise_cmnd: TFloatField
      FieldName = 'remise_cmnd'
    end
    object ADOdetail_cmndprix_ttc_cmnd: TFloatField
      FieldName = 'prix_ttc_cmnd'
    end
    object ADOdetail_cmndréglé_cmnd: TBooleanField
      FieldName = 'r'#233'gl'#233'_cmnd'
    end
  end
  object ADOdetail_livr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_livr'
    Left = 552
    Top = 16
  end
  object ADOqueryProduit: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from stock , produit , detail_cmnd , detail_livr, fourn' +
        'isseur'
      '')
    Left = 64
    Top = 128
    object ADOqueryProduitcode_s: TIntegerField
      FieldName = 'code_s'
    end
    object ADOqueryProduits_initial: TIntegerField
      FieldName = 's_initial'
    end
    object ADOqueryProduits_actuel: TIntegerField
      FieldName = 's_actuel'
    end
    object ADOqueryProduitalert: TIntegerField
      FieldName = 'alert'
    end
    object ADOqueryProduitref: TIntegerField
      FieldName = 'ref'
    end
    object ADOqueryProduitcode_bare: TIntegerField
      FieldName = 'code_bare'
    end
    object ADOqueryProduitdésignation: TWideStringField
      FieldName = 'd'#233'signation'
      Size = 100
    end
    object ADOqueryProduitfamille: TWideStringField
      FieldName = 'famille'
      Size = 50
    end
    object ADOqueryProduitmarque: TWideStringField
      FieldName = 'marque'
      Size = 50
    end
    object ADOqueryProduitdate_produit: TDateTimeField
      FieldName = 'date_produit'
    end
    object ADOqueryProduitcode_s_1: TIntegerField
      FieldName = 'code_s_1'
    end
    object ADOqueryProduitNumPiece_bc: TIntegerField
      FieldName = 'NumPiece_bc'
    end
    object ADOqueryProduitref_1: TIntegerField
      FieldName = 'ref_1'
    end
    object ADOqueryProduitqte_cmnd: TIntegerField
      FieldName = 'qte_cmnd'
    end
    object ADOqueryProduitprix_ht_cmnd: TFloatField
      FieldName = 'prix_ht_cmnd'
    end
    object ADOqueryProduittva_cmnd: TFloatField
      FieldName = 'tva_cmnd'
    end
    object ADOqueryProduitremise_cmnd: TFloatField
      FieldName = 'remise_cmnd'
    end
    object ADOqueryProduitprix_ttc_cmnd: TFloatField
      FieldName = 'prix_ttc_cmnd'
    end
    object ADOqueryProduitréglé_cmnd: TBooleanField
      FieldName = 'r'#233'gl'#233'_cmnd'
    end
    object ADOqueryProduitnum_piece_bl: TIntegerField
      FieldName = 'num_piece_bl'
    end
    object ADOqueryProduitref_2: TIntegerField
      FieldName = 'ref_2'
    end
    object ADOqueryProduitqte_min: TIntegerField
      FieldName = 'qte_min'
    end
    object ADOqueryProduitqte_max: TIntegerField
      FieldName = 'qte_max'
    end
    object ADOqueryProduitprix_qte: TIntegerField
      FieldName = 'prix_qte'
    end
    object ADOqueryProduitprix_ht_livr: TFloatField
      FieldName = 'prix_ht_livr'
    end
    object ADOqueryProduitremise_livr: TFloatField
      FieldName = 'remise_livr'
    end
    object ADOqueryProduitprix_ttc_livr: TFloatField
      FieldName = 'prix_ttc_livr'
    end
    object ADOqueryProduitréglé_livr: TBooleanField
      FieldName = 'r'#233'gl'#233'_livr'
    end
    object ADOqueryProduitcode_f: TIntegerField
      FieldName = 'code_f'
    end
    object ADOqueryProduitnom: TWideStringField
      FieldName = 'nom'
      Size = 50
    end
    object ADOqueryProduitadresse_f: TWideStringField
      FieldName = 'adresse_f'
      Size = 50
    end
    object ADOqueryProduittel_f: TStringField
      FieldName = 'tel_f'
      Size = 21
    end
    object ADOqueryProduitemail_f: TStringField
      FieldName = 'email_f'
      Size = 30
    end
    object ADOqueryProduitsold_init_f: TFloatField
      FieldName = 'sold_init_f'
    end
    object ADOqueryProduitsold_fin_f: TFloatField
      FieldName = 'sold_fin_f'
    end
  end
  object ADOproduit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produit'
    Left = 368
    Top = 144
    object ADOproduitref: TIntegerField
      FieldName = 'ref'
    end
    object ADOproduitcode_bare: TIntegerField
      FieldName = 'code_bare'
    end
    object ADOproduitdésignation: TWideStringField
      FieldName = 'd'#233'signation'
      Size = 100
    end
    object ADOproduitfamille: TWideStringField
      FieldName = 'famille'
      Size = 50
    end
    object ADOproduitmarque: TWideStringField
      FieldName = 'marque'
      Size = 50
    end
    object ADOproduitdate_produit: TDateTimeField
      FieldName = 'date_produit'
    end
    object ADOproduitcode_s: TIntegerField
      FieldName = 'code_s'
    end
  end
end
