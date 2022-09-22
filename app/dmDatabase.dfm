object db: Tdb
  Height = 686
  Width = 848
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=bddcommercial;Data Source=DESKTOP-M9OQ1' +
      'ML\SQLEXPRESS'
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
  end
  object ADOclient: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 296
    Top = 112
    object ADOclientcode_c: TStringField
      FieldName = 'code_c'
      Size = 5
    end
    object ADOclientnom_c: TWideStringField
      FieldName = 'nom_c'
      Size = 30
    end
    object ADOclientadresse_c: TWideStringField
      FieldName = 'adresse_c'
      Size = 70
    end
    object ADOclienttel_c: TStringField
      FieldName = 'tel_c'
      Size = 21
    end
    object ADOclientemail_c: TStringField
      FieldName = 'email_c'
      Size = 70
    end
    object ADOclientsold_c: TFloatField
      FieldName = 'sold_c'
    end
  end
  object ADObonCmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'bon_commande'
    Left = 368
    Top = 192
    object ADObonCmndcode_cmnd: TStringField
      FieldName = 'code_cmnd'
      Size = 6
    end
    object ADObonCmnddate_bc: TDateTimeField
      FieldName = 'date_bc'
    end
    object ADObonCmndobservation: TWideStringField
      FieldName = 'observation'
      Size = 100
    end
    object ADObonCmndvalider_bc: TBooleanField
      FieldName = 'valider_bc'
    end
    object ADObonCmndpiece_réglé_bc: TBooleanField
      FieldName = 'piece_r'#233'gl'#233'_bc'
    end
    object ADObonCmndcode_f: TStringField
      FieldName = 'code_f'
      Size = 5
    end
    object ADObonCmndNpiece_achat: TStringField
      FieldName = 'Npiece_achat'
      Size = 6
    end
    object ADObonCmndNumPiece_bc: TStringField
      FieldName = 'NumPiece_bc'
      Size = 6
    end
  end
  object ADOdetail_cmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_cmnd'
    Left = 488
    Top = 104
    object ADOdetail_cmndidDetailCmnd: TStringField
      FieldName = 'idDetailCmnd'
      Size = 6
    end
    object ADOdetail_cmndcode_cmnd: TStringField
      FieldName = 'code_cmnd'
      Size = 6
    end
    object ADOdetail_cmndref: TStringField
      FieldName = 'ref'
      Size = 5
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
    object ADOdetail_livridDetailLivr: TStringField
      FieldName = 'idDetailLivr'
      Size = 6
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
    object ADOdetail_livrcode_bl: TStringField
      FieldName = 'code_bl'
      Size = 6
    end
    object ADOdetail_livrref: TStringField
      FieldName = 'ref'
      Size = 5
    end
  end
  object ADOproduit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produit'
    Left = 24
    Top = 112
    object ADOproduitref: TStringField
      FieldName = 'ref'
      Size = 5
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
  end
  object dsProduit: TDataSource
    DataSet = ADOproduit
    Left = 292
    Top = 293
  end
  object dsFournisseur: TDataSource
    DataSet = ADOfournisseur
    Left = 160
    Top = 288
  end
  object dsDetailCmnd: TDataSource
    DataSet = ADOdetail_cmnd
    Left = 456
    Top = 288
  end
  object dsDetailLivr: TDataSource
    DataSet = ADOdetail_livr
    Left = 576
    Top = 304
  end
  object dsBonCmnd: TDataSource
    DataSet = ADObonCmnd
    Left = 696
    Top = 288
  end
  object dsClient: TDataSource
    DataSet = ADOclient
    Left = 776
    Top = 336
  end
  object ADObonLivr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'bon_livraison'
    Left = 704
    Top = 128
    object ADObonLivrcode_bl: TStringField
      FieldName = 'code_bl'
      Size = 6
    end
    object ADObonLivrdate_bl: TDateTimeField
      FieldName = 'date_bl'
    end
    object ADObonLivrobservation: TWideStringField
      FieldName = 'observation'
      Size = 100
    end
    object ADObonLivrvalider_bl: TBooleanField
      FieldName = 'valider_bl'
    end
    object ADObonLivrpiece_réglé_bl: TBooleanField
      FieldName = 'piece_r'#233'gl'#233'_bl'
    end
    object ADObonLivrNpiece_vente: TStringField
      FieldName = 'Npiece_vente'
      Size = 6
    end
    object ADObonLivrcode_c: TStringField
      FieldName = 'code_c'
      Size = 5
    end
    object ADObonLivrNumPiece_bl: TStringField
      FieldName = 'NumPiece_bl'
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = ADObonLivr
    Left = 320
    Top = 432
  end
end
