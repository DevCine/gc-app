object frmComptoire: TfrmComptoire
  Left = 0
  Top = 0
  Caption = 'Vente au Comptoire'
  ClientHeight = 770
  ClientWidth = 1390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 770
    Align = alLeft
    TabOrder = 0
    object Label3: TLabel
      Left = 17
      Top = 216
      Width = 25
      Height = 15
      Caption = 'sold:'
    end
    object Label4: TLabel
      Left = 17
      Top = 296
      Width = 41
      Height = 15
      Caption = 'Remise:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 57
      Top = 162
      Width = 145
      Height = 23
      KeyField = 'nom_c'
      ListField = 'nom_c'
      ListSource = db.dsClient
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 213
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 81
      Top = 293
      Width = 121
      Height = 23
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 241
    Top = 223
    Width = 952
    Height = 547
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 241
    Top = 0
    Width = 952
    Height = 217
    TabOrder = 2
    object Label1: TLabel
      Left = 848
      Top = 20
      Width = 27
      Height = 15
      Caption = '00:00'
    end
    object Label2: TLabel
      Left = 448
      Top = 52
      Width = 51
      Height = 37
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 24
      Top = 184
      Width = 393
      Height = 23
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 448
      Top = 184
      Width = 137
      Height = 23
      ItemIndex = 0
      TabOrder = 1
      Text = 'Code Bare'
      Items.Strings = (
        'Code Bare'
        'D'#233'signation')
    end
  end
  object Panel3: TPanel
    Left = 1190
    Top = 0
    Width = 201
    Height = 770
    TabOrder = 3
    object Button1: TButton
      Left = 48
      Top = 296
      Width = 90
      Height = 34
      Caption = 'Produits'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 48
      Top = 340
      Width = 90
      Height = 34
      Caption = 'Quantit'#233
      TabOrder = 1
    end
    object Button3: TButton
      Left = 48
      Top = 393
      Width = 90
      Height = 34
      Caption = 'Sauver'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 48
      Top = 440
      Width = 90
      Height = 34
      Caption = 'Imprimer'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 48
      Top = 496
      Width = 90
      Height = 34
      Caption = 'Supprimer'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 48
      Top = 552
      Width = 90
      Height = 29
      Caption = 'Fermer'
      TabOrder = 5
    end
    object Button7: TButton
      Left = 48
      Top = 608
      Width = 90
      Height = 29
      Caption = 'Favoris'
      TabOrder = 6
    end
  end
end
