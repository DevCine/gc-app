object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Bon de Livraison'
  ClientHeight = 769
  ClientWidth = 1336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 158
    Height = 31
    Caption = 'Bon livraison n'#176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 61
    Top = 88
    Width = 1024
    Height = 169
    Caption = 'Client'
    TabOrder = 0
    object Label2: TLabel
      Left = 56
      Top = 32
      Width = 31
      Height = 15
      Caption = 'Client'
    end
    object DBText1: TDBText
      Left = 520
      Top = 36
      Width = 65
      Height = 17
      DataField = 'sold_c'
      DataSource = db.dsClient
    end
    object Label3: TLabel
      Left = 416
      Top = 36
      Width = 84
      Height = 15
      Caption = 'Ancienne solde:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 32
      Width = 145
      Height = 23
      KeyField = 'nom_c'
      ListField = 'nom_c'
      ListSource = db.dsClient
      TabOrder = 0
    end
    object Button1: TButton
      Left = 288
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Clients'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    Left = 61
    Top = 263
    Width = 1028
    Height = 314
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Pi'#232'ce info'
      object Label4: TLabel
        Left = 48
        Top = 32
        Width = 51
        Height = 15
        Caption = 'N'#176' pi'#232'ce: '
      end
      object Label5: TLabel
        Left = 56
        Top = 88
        Width = 27
        Height = 15
        Caption = 'Date:'
      end
      object DBEdit1: TDBEdit
        Left = 124
        Top = 32
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object DateTimePicker1: TDateTimePicker
        Left = 124
        Top = 88
        Width = 121
        Height = 23
        Date = 44798.000000000000000000
        Time = 0.536526701391267100
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detail de Pi'#232'ce'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1020
        Height = 284
        Align = alBottom
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object SearchBox1: TSearchBox
        Left = 40
        Top = 48
        Width = 305
        Height = 23
        TabOrder = 1
        Text = 'SearchBox1'
      end
      object ComboBox1: TComboBox
        Left = 384
        Top = 48
        Width = 145
        Height = 23
        ItemIndex = 0
        TabOrder = 2
        Text = 'Code bare'
        Items.Strings = (
          'Code bare'
          'D'#233'signation')
      end
      object Button2: TButton
        Left = 560
        Top = 47
        Width = 75
        Height = 25
        Caption = 'Produits'
        TabOrder = 3
        OnClick = Button2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observation'
      ImageIndex = 2
      object DBRichEdit1: TDBRichEdit
        Left = 0
        Top = 0
        Width = 1020
        Height = 284
        Align = alClient
        DataField = 'observation'
        DataSource = db.DataSource1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        TabOrder = 0
        ExplicitHeight = 305
      end
    end
  end
  object Panel1: TPanel
    Left = 61
    Top = 583
    Width = 1028
    Height = 158
    TabOrder = 2
    object Label10: TLabel
      Left = 564
      Top = 55
      Width = 35
      Height = 15
      Caption = 'R'#233'gl'#233' :'
    end
    object Label11: TLabel
      Left = 564
      Top = 95
      Width = 34
      Height = 15
      Caption = 'Reste :'
    end
    object Label6: TLabel
      Left = 62
      Top = 31
      Width = 70
      Height = 15
      Caption = 'Montant HT :'
    end
    object Label7: TLabel
      Left = 88
      Top = 71
      Width = 44
      Height = 15
      Caption = 'Remise :'
    end
    object Label8: TLabel
      Left = 60
      Top = 111
      Width = 72
      Height = 15
      Caption = 'Montant TVA:'
    end
    object Label9: TLabel
      Left = 352
      Top = 31
      Width = 62
      Height = 15
      Caption = 'Net A Payer'
    end
    object Label12: TLabel
      Left = 368
      Top = 88
      Width = 21
      Height = 15
      Caption = '0.00'
    end
    object Edit1: TEdit
      Left = 152
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 152
      Top = 64
      Width = 121
      Height = 23
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 152
      Top = 109
      Width = 121
      Height = 23
      TabOrder = 2
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 605
      Top = 48
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'Edit4'
    end
    object Edit5: TEdit
      Left = 608
      Top = 96
      Width = 121
      Height = 23
      TabOrder = 4
      Text = 'Edit5'
    end
  end
  object Button3: TButton
    Left = 1160
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Sauver'
    TabOrder = 3
  end
  object Button4: TButton
    Left = 1160
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 1160
    Top = 477
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 5
  end
  object Button6: TButton
    Left = 1160
    Top = 533
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
  end
  object DBCheckBox1: TDBCheckBox
    Left = 1152
    Top = 324
    Width = 97
    Height = 17
    Caption = 'valider'
    DataField = 'valider_bl'
    DataSource = db.DataSource1
    TabOrder = 7
  end
  object Panel2: TPanel
    Left = 1091
    Top = 88
    Width = 246
    Height = 195
    TabOrder = 8
    object Label13: TLabel
      Left = 24
      Top = 131
      Width = 114
      Height = 15
      Caption = 'Nouveau solde client:'
    end
    object Label14: TLabel
      Left = 56
      Top = 152
      Width = 21
      Height = 15
      Caption = '0.00'
    end
    object Label15: TLabel
      Left = 24
      Top = 42
      Width = 91
      Height = 15
      Caption = 'Stock du Produit:'
    end
    object Label16: TLabel
      Left = 112
      Top = 77
      Width = 12
      Height = 23
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit6: TEdit
      Left = 49
      Top = 80
      Width = 57
      Height = 23
      TabOrder = 0
    end
    object Edit7: TEdit
      Left = 136
      Top = 80
      Width = 57
      Height = 23
      TabOrder = 1
    end
  end
end
