object db: Tdb
  Height = 594
  Width = 699
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=bddcommerce;Data Source=DESKTOP-M9OQ1ML' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 280
    Top = 8
  end
  object ADOfournisseur: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fournisseur'
    Left = 184
    Top = 112
    object ADOfournisseurcode_f: TIntegerField
      FieldName = 'code_f'
    end
    object ADOfournisseurnom: TWideStringField
      FieldName = 'nom'
      Size = 50
    end
    object ADOfournisseuradresse_f: TWideStringField
      FieldName = 'adresse_f'
      Size = 50
    end
    object ADOfournisseurtel_f: TStringField
      FieldName = 'tel_f'
      Size = 21
    end
    object ADOfournisseuremail_f: TStringField
      FieldName = 'email_f'
      Size = 30
    end
    object ADOfournisseursold_init_f: TFloatField
      FieldName = 'sold_init_f'
    end
    object ADOfournisseursold_fin_f: TFloatField
      FieldName = 'sold_fin_f'
    end
  end
  object ADOclient: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 296
    Top = 112
    object ADOclientcode_c: TIntegerField
      FieldName = 'code_c'
    end
    object ADOclientnom_c: TWideStringField
      FieldName = 'nom_c'
      Size = 30
    end
    object ADOclientadresse_c: TWideStringField
      FieldName = 'adresse_c'
      Size = 50
    end
    object ADOclienttel_c: TStringField
      FieldName = 'tel_c'
      Size = 21
    end
    object ADOclientemail_c: TStringField
      FieldName = 'email_c'
      Size = 30
    end
    object ADOclientsold_init_c: TFloatField
      FieldName = 'sold_init_c'
    end
    object ADOclientsold_fin_c: TFloatField
      FieldName = 'sold_fin_c'
    end
  end
  object ADOstock: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stock'
    Left = 384
    Top = 104
    object ADOstockcode_s: TIntegerField
      FieldName = 'code_s'
    end
    object ADOstocks_initial: TIntegerField
      FieldName = 's_initial'
    end
    object ADOstocks_actuel: TIntegerField
      FieldName = 's_actuel'
    end
    object ADOstockalert: TIntegerField
      FieldName = 'alert'
    end
  end
  object ADOdetail_cmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_cmnd'
    Left = 488
    Top = 104
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
    Left = 608
    Top = 104
    object ADOdetail_livrnum_piece_bl: TIntegerField
      FieldName = 'num_piece_bl'
    end
    object ADOdetail_livrref: TIntegerField
      FieldName = 'ref'
    end
    object ADOdetail_livrqte_min: TIntegerField
      FieldName = 'qte_min'
    end
    object ADOdetail_livrqte_max: TIntegerField
      FieldName = 'qte_max'
    end
    object ADOdetail_livrprix_qte: TIntegerField
      FieldName = 'prix_qte'
    end
    object ADOdetail_livrprix_ht_livr: TFloatField
      FieldName = 'prix_ht_livr'
    end
    object ADOdetail_livrremise_livr: TFloatField
      FieldName = 'remise_livr'
    end
    object ADOdetail_livrprix_ttc_livr: TFloatField
      FieldName = 'prix_ttc_livr'
    end
    object ADOdetail_livrréglé_livr: TBooleanField
      FieldName = 'r'#233'gl'#233'_livr'
    end
  end
  object ADOproduit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produit'
    Left = 24
    Top = 112
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
  object DataSourceproduit: TDataSource
    Left = 260
    Top = 357
  end
  object DataSourcefournisseur: TDataSource
    Left = 412
    Top = 352
  end
end
