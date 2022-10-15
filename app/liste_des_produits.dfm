object frmListeProduits: TfrmListeProduits
  Left = 0
  Top = 0
  Caption = 'Liste des Produits'
  ClientHeight = 741
  ClientWidth = 1380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 80
    Top = 40
    Width = 211
    Height = 31
    Caption = 'Liste des Produits'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 248
    Width = 841
    Height = 449
    Align = alCustom
    DataSource = db.dsQproduit
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ref'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'd'#233'signation'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'famille'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qte_cmnd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prixAchat'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 917
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Nouveau'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 917
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
  end
  object Button3: TButton
    Left = 917
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 917
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 112
    Width = 841
    Height = 105
    Caption = 'Recherche par : '
    TabOrder = 5
    object Label2: TLabel
      Left = 32
      Top = 48
      Width = 73
      Height = 17
      Caption = 'Code barre :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object SearchBox2: TSearchBox
      Left = 470
      Top = 48
      Width = 185
      Height = 23
      TabOrder = 0
      OnChange = SearchBox2Change
    end
    object SearchBox1: TSearchBox
      Left = 128
      Top = 48
      Width = 185
      Height = 23
      TabOrder = 1
      OnChange = SearchBox1Change
    end
    object ComboBox1: TComboBox
      Left = 680
      Top = 48
      Width = 105
      Height = 23
      ItemIndex = 0
      TabOrder = 2
      Text = 'd'#233'signation'
      Items.Strings = (
        'd'#233'signation'
        'famille'
        'marque')
    end
  end
  object Button5: TButton
    Left = 917
    Top = 584
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
    OnClick = Button5Click
  end
end
