object frmProduit: TfrmProduit
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
    Top = 94
    Width = 865
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
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = 'Description'
      object Label6: TLabel
        Left = 52
        Top = 355
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
        Height = 31
        DataField = 'ref'
        DataSource = db.dsProduit
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 168
        Top = 352
        Width = 145
        Height = 31
        DataField = 'date_produit'
        DataSource = db.dsProduit
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 168
        Top = 293
        Width = 329
        Height = 31
        DataField = 'marque'
        DataSource = db.dsProduit
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 168
        Top = 229
        Width = 329
        Height = 31
        DataField = 'famille'
        DataSource = db.dsProduit
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 168
        Top = 173
        Width = 329
        Height = 31
        DataField = 'code_bare'
        DataSource = db.dsProduit
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 125
        Width = 329
        Height = 31
        DataField = 'd'#233'signation'
        DataSource = db.dsProduit
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Prix / Stock'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 16
        Top = 24
        Width = 393
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
          Height = 23
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
          Height = 31
          DataField = 'prix_ht_cmnd'
          DataSource = db.dsDetailCmnd
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 150
          Top = 111
          Width = 154
          Height = 31
          DataField = 'tva_cmnd'
          DataSource = db.dsDetailCmnd
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 150
          Top = 167
          Width = 154
          Height = 31
          DataField = 'prix_ttc_cmnd'
          DataSource = db.dsDetailCmnd
          TabOrder = 2
        end
        object Button3: TButton
          Left = 318
          Top = 224
          Width = 38
          Height = 33
          Caption = '+'
          TabOrder = 3
          OnClick = Button3Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 150
          Top = 224
          Width = 154
          Height = 31
          KeyField = 'nom'
          ListField = 'nom'
          ListSource = db.dsFournisseur
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 424
        Top = 24
        Width = 393
        Height = 281
        Caption = 'Stock'
        TabOrder = 1
        object Label13: TLabel
          Left = 64
          Top = 58
          Width = 51
          Height = 23
          Caption = 'Initial :'
          FocusControl = DBEdit11
        end
        object Label14: TLabel
          Left = 56
          Top = 114
          Width = 57
          Height = 23
          Caption = 'Actuel :'
        end
        object Label15: TLabel
          Left = 64
          Top = 176
          Width = 45
          Height = 23
          Caption = 'Alert :'
        end
        object DBEdit11: TDBEdit
          Left = 160
          Top = 55
          Width = 154
          Height = 31
          DataField = 'qte_cmnd'
          DataSource = db.dsDetailCmnd
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 160
          Top = 111
          Width = 153
          Height = 31
          TabOrder = 1
        end
        object SpinEdit1: TSpinEdit
          Left = 160
          Top = 176
          Width = 81
          Height = 34
          MaxValue = 0
          MinValue = 0
          TabOrder = 2
          Value = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 304
        Width = 801
        Height = 297
        Caption = 'Prix de vente'
        TabOrder = 2
        object Label16: TLabel
          Left = 186
          Top = 64
          Width = 54
          Height = 23
          Caption = 'Prix HT'
        end
        object Label17: TLabel
          Left = 400
          Top = 64
          Width = 61
          Height = 23
          Caption = 'Prix TTC'
        end
        object Label18: TLabel
          Left = 592
          Top = 64
          Width = 49
          Height = 23
          Caption = 'Marge'
        end
        object Label19: TLabel
          Left = 74
          Top = 104
          Width = 53
          Height = 23
          Caption = 'Detail :'
        end
        object Label20: TLabel
          Left = 83
          Top = 176
          Width = 44
          Height = 23
          Caption = 'Gros :'
        end
        object DBEdit14: TDBEdit
          Left = 150
          Top = 104
          Width = 154
          Height = 31
          DataField = 'prix_ht_livr'
          DataSource = db.dsDetailLivr
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 352
          Top = 104
          Width = 154
          Height = 31
          DataField = 'prix_ttc_livr'
          DataSource = db.dsDetailLivr
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 548
          Top = 104
          Width = 149
          Height = 31
          TabOrder = 2
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observation'
      ImageIndex = 2
    end
  end
  object Button1: TButton
    Left = 960
    Top = 272
    Width = 75
    Height = 25
    Caption = 'sauver'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 960
    Top = 423
    Width = 75
    Height = 25
    Caption = 'fermer'
    TabOrder = 2
    OnClick = Button2Click
  end
end
