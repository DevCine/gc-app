object db: Tdb
  Height = 649
  Width = 1008
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
  object ADOstock: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'stock'
    Left = 384
    Top = 104
  end
  object ADOdetail_cmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_cmnd'
    Left = 488
    Top = 104
  end
  object ADOdetail_livr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_livr'
    Left = 608
    Top = 104
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
    object ADOproduitcode_s: TStringField
      FieldName = 'code_s'
      Size = 5
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
  object dsStock: TDataSource
    DataSet = ADOstock
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
    object ADObonLivrnum_piece_bl: TStringField
      FieldName = 'num_piece_bl'
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
  end
  object DataSource1: TDataSource
    DataSet = ADObonLivr
    Left = 320
    Top = 432
  end
end
