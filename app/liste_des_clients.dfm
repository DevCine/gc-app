object liste_client: Tliste_client
  Left = 0
  Top = 0
  Caption = 'liste des clients'
  ClientHeight = 756
  ClientWidth = 1244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 504
    Top = 48
    Width = 193
    Height = 31
    Caption = 'Liste des Clients'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 96
    Width = 753
    Height = 105
    Caption = 'Recherche par : '
    TabOrder = 0
    object Label2: TLabel
      Left = 56
      Top = 48
      Width = 36
      Height = 17
      Caption = 'Nom :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 392
      Top = 48
      Width = 56
      Height = 17
      Caption = 'Adresse :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object SearchBox2: TSearchBox
      Left = 456
      Top = 40
      Width = 185
      Height = 23
      TabOrder = 0
      OnChange = SearchBox2Change
    end
    object SearchBox1: TSearchBox
      Left = 128
      Top = 40
      Width = 185
      Height = 23
      TabOrder = 1
      OnChange = SearchBox1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 224
    Width = 1041
    Height = 524
    DataSource = DataSourceClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresse_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sold_init_c'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sold_fin_c'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 1104
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Nouveau'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 1104
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Modifier'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 1104
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 1104
    Top = 552
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 1104
    Top = 712
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
  end
  object DataSourceClient: TDataSource
    DataSet = db.ADOclient
    Left = 1160
    Top = 8
  end
end
