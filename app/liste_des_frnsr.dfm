object frmListeFrnsr: TfrmListeFrnsr
  Left = 0
  Top = 0
  Caption = 'Liste des fournisseur'
  ClientHeight = 710
  ClientWidth = 1178
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
    Top = 32
    Width = 263
    Height = 31
    Caption = 'Liste des Fournisseurs'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 240
    Width = 993
    Height = 441
    Align = alCustom
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'code_f'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adresse_f'
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tel_f'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_f'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sold_fin_f'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 1048
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Nouveau'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1048
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 1048
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 1048
    Top = 536
    Width = 75
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 1104
    Top = 712
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
    OnClick = Button5Click
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 104
    Width = 753
    Height = 105
    Caption = 'Recherche par : '
    TabOrder = 6
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
end
