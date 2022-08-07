object produit_frm: Tproduit_frm
  Left = 0
  Top = 0
  Caption = 'Fiche Produit'
  ClientHeight = 767
  ClientWidth = 1187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 424
    Top = 40
    Width = 161
    Height = 31
    Caption = 'Fiche Produit'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 32
    Top = 102
    Width = 1081
    Height = 657
    ActivePage = TabSheet2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabHeight = 25
    TabOrder = 0
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = 'Description'
      object Label7: TLabel
        Left = 48
        Top = 415
        Width = 51
        Height = 23
        Caption = 'code_s'
        FocusControl = DBEdit7
      end
      object Label6: TLabel
        Left = 41
        Top = 352
        Width = 96
        Height = 23
        Caption = 'Expir'#233' dans :'
        FocusControl = DBEdit6
      end
      object Label5: TLabel
        Left = 80
        Top = 296
        Width = 68
        Height = 23
        Caption = 'Marque :'
        FocusControl = DBEdit5
      end
      object Label4: TLabel
        Left = 87
        Top = 232
        Width = 61
        Height = 23
        Caption = 'Famille :'
        FocusControl = DBEdit4
      end
      object Label3: TLabel
        Left = 54
        Top = 176
        Width = 94
        Height = 23
        Caption = 'Code barre :'
        FocusControl = DBEdit3
      end
      object Label2: TLabel
        Left = 48
        Top = 128
        Width = 100
        Height = 23
        Caption = 'D'#233'signation :'
        FocusControl = DBEdit2
      end
      object Label8: TLabel
        Left = 64
        Top = 67
        Width = 84
        Height = 23
        Caption = 'R'#233'ference :'
        FocusControl = DBEdit1
      end
      object DBEdit1: TDBEdit
        Left = 168
        Top = 64
        Width = 329
        Height = 23
        DataField = 'ref'
        DataSource = DataSourceproduit
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 168
        Top = 412
        Width = 329
        Height = 23
        DataField = 'code_s'
        DataSource = DataSourceproduit
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 168
        Top = 352
        Width = 145
        Height = 23
        DataField = 'date_produit'
        DataSource = DataSourceproduit
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 168
        Top = 293
        Width = 329
        Height = 23
        DataField = 'marque'
        DataSource = DataSourceproduit
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 168
        Top = 229
        Width = 329
        Height = 23
        DataField = 'famille'
        DataSource = DataSourceproduit
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 173
        Width = 329
        Height = 23
        DataField = 'code_bare'
        DataSource = DataSourceproduit
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 125
        Width = 329
        Height = 23
        DataField = 'd'#233'signation'
        DataSource = DataSourceproduit
        TabOrder = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Prix / Stock'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 16
        Top = 24
        Width = 521
        Height = 281
        Caption = 'Prix Achat'
        TabOrder = 0
        object Label9: TLabel
          Left = 64
          Top = 58
          Width = 63
          Height = 23
          Caption = 'Prix HT :'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 88
          Top = 114
          Width = 39
          Height = 26
          Caption = 'TVA :'
          FocusControl = DBEdit9
        end
        object Label11: TLabel
          Left = 57
          Top = 170
          Width = 70
          Height = 23
          Caption = 'Prix TTC :'
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 31
          Top = 229
          Width = 96
          Height = 23
          Caption = 'Fournisseur :'
        end
        object DBEdit8: TDBEdit
          Left = 150
          Top = 55
          Width = 154
          Height = 23
          DataField = 'prix_ht_cmnd'
          DataSource = DataSourceQueryProduit
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 150
          Top = 111
          Width = 154
          Height = 23
          DataField = 'tva_cmnd'
          DataSource = DataSourceQueryProduit
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 150
          Top = 167
          Width = 154
          Height = 23
          DataField = 'prix_ttc_cmnd'
          DataSource = DataSourceQueryProduit
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 150
          Top = 224
          Width = 154
          Height = 31
          DataField = 'nom'
          DataSource = DataSourceQueryProduit
          KeyField = 'nom'
          ListField = 'nom'
          ListSource = DataSourcefournisseur
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 560
        Top = 24
        Width = 481
        Height = 281
        Caption = 'Prix de vente'
        TabOrder = 1
      end
    end
  end
  object DataSourceproduit: TDataSource
    DataSet = db.ADOproduit
    Left = 1100
    Top = 13
  end
  object DataSourceQueryProduit: TDataSource
    DataSet = db.ADOqueryProduit
    Left = 952
    Top = 16
  end
  object DataSourcefournisseur: TDataSource
    DataSet = db.ADOfournisseur
    Left = 784
    Top = 8
  end
end
