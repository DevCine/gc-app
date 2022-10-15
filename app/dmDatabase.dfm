object db: Tdb
  Height = 396
  Width = 875
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.16.0;Data Source=C:\Yacine\Yacine\a' +
      'pp gestion\bdd\MYGC.accdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.16.0'
    Left = 280
    Top = 8
  end
  object ADOfournisseur: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'fournisseur'
    Left = 128
    Top = 120
    object ADOfournisseurcode_f: TWideStringField
      FieldName = 'code_f'
      Size = 5
    end
    object ADOfournisseurnom: TWideStringField
      FieldName = 'nom'
      Size = 30
    end
    object ADOfournisseuradresse_f: TWideStringField
      FieldName = 'adresse_f'
      Size = 70
    end
    object ADOfournisseurtel_f: TSmallintField
      FieldName = 'tel_f'
    end
    object ADOfournisseuremail_f: TWideStringField
      FieldName = 'email_f'
      Size = 70
    end
    object ADOfournisseursolde_f: TBCDField
      FieldName = 'solde_f'
      Precision = 19
    end
  end
  object ADOclient: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'client'
    Left = 240
    Top = 120
    object ADOclientcode_c: TWideStringField
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
    object ADOclienttel_c: TSmallintField
      FieldName = 'tel_c'
    end
    object ADOclientemail_c: TWideStringField
      FieldName = 'email_c'
      Size = 70
    end
    object ADOclientsolde_c: TBCDField
      FieldName = 'solde_c'
      Precision = 19
    end
  end
  object ADObonCmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'bon_commande'
    Left = 344
    Top = 120
    object ADObonCmndcode_cmnd: TWideStringField
      FieldName = 'code_cmnd'
      Size = 6
    end
    object ADObonCmnddate_bc: TDateTimeField
      FieldName = 'date_bc'
    end
    object ADObonCmndNFactAchat: TWideStringField
      FieldName = 'NFactAchat'
      Size = 6
    end
    object ADObonCmndobservation: TWideStringField
      FieldName = 'observation'
      Size = 255
    end
    object ADObonCmndcode_f: TWideStringField
      FieldName = 'code_f'
      Size = 5
    end
  end
  object ADOdetail_cmnd: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_cmnd'
    Left = 472
    Top = 120
    object ADOdetail_cmndcode_cmnd: TWideStringField
      FieldName = 'code_cmnd'
      Size = 6
    end
    object ADOdetail_cmndref: TWideStringField
      FieldName = 'ref'
      Size = 5
    end
    object ADOdetail_cmndqte_cmnd: TSmallintField
      FieldName = 'qte_cmnd'
    end
    object ADOdetail_cmndprixAchat: TBCDField
      FieldName = 'prixAchat'
      Precision = 19
    end
    object ADOdetail_cmndprixVente: TBCDField
      FieldName = 'prixVente'
      Precision = 19
    end
  end
  object ADOdetail_livr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'detail_livr'
    Left = 584
    Top = 120
    object ADOdetail_livrcode_bl: TWideStringField
      FieldName = 'code_bl'
      Size = 6
    end
    object ADOdetail_livrref: TWideStringField
      FieldName = 'ref'
      Size = 5
    end
    object ADOdetail_livrqte_livr: TSmallintField
      FieldName = 'qte_livr'
    end
  end
  object ADOproduit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'produit'
    Left = 24
    Top = 120
    object ADOproduitref: TWideStringField
      FieldName = 'ref'
      Size = 5
    end
    object ADOproduitcode_bare: TIntegerField
      FieldName = 'code_bare'
    end
    object ADOproduitdésignation: TWideStringField
      FieldName = 'd'#233'signation'
      Size = 80
    end
    object ADOproduitfamille: TWideStringField
      FieldName = 'famille'
      Size = 50
    end
    object ADOproduitmarque: TWideStringField
      FieldName = 'marque'
      Size = 50
    end
    object ADOproduitdate_p: TDateTimeField
      FieldName = 'date_p'
    end
  end
  object dsProduit: TDataSource
    DataSet = ADOproduit
    Left = 20
    Top = 253
  end
  object dsFournisseur: TDataSource
    DataSet = ADOfournisseur
    Left = 128
    Top = 256
  end
  object dsDetailCmnd: TDataSource
    DataSet = ADOdetail_cmnd
    Left = 464
    Top = 256
  end
  object dsDetailLivr: TDataSource
    DataSet = ADOdetail_livr
    Left = 592
    Top = 256
  end
  object dsBonCmnd: TDataSource
    DataSet = ADObonCmnd
    Left = 336
    Top = 256
  end
  object dsClient: TDataSource
    DataSet = ADOclient
    Left = 240
    Top = 256
  end
  object ADObonLivr: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'bon_livraison'
    Left = 688
    Top = 120
    object ADObonLivrcode_bl: TWideStringField
      FieldName = 'code_bl'
      Size = 6
    end
    object ADObonLivrdate_bl: TDateTimeField
      FieldName = 'date_bl'
    end
    object ADObonLivrNFactVente: TWideStringField
      FieldName = 'NFactVente'
      Size = 6
    end
    object ADObonLivrobservation: TWideStringField
      FieldName = 'observation'
      Size = 255
    end
    object ADObonLivrcode_c: TWideStringField
      FieldName = 'code_c'
      Size = 5
    end
  end
  object dsBonLivr: TDataSource
    DataSet = ADObonLivr
    Left = 688
    Top = 256
  end
  object dsQproduit: TDataSource
    DataSet = ADOQproduit
    Left = 784
    Top = 264
  end
  object ADOQproduit: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Qproduits'
    Left = 784
    Top = 120
  end
end
