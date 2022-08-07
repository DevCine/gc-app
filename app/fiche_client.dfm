object client_frm: Tclient_frm
  Left = 0
  Top = 0
  Caption = 'Fiche Client'
  ClientHeight = 781
  ClientWidth = 1162
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Label8: TLabel
    Left = 457
    Top = 45
    Width = 143
    Height = 31
    Caption = 'Fiche Client'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 39
    Top = 125
    Width = 421
    Height = 204
    Caption = 'Informations personnels'
    DefaultHeaderFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clLime
    HeaderFont.Height = -18
    HeaderFont.Name = 'Times New Roman'
    HeaderFont.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 74
      Top = 59
      Width = 44
      Height = 17
      Caption = 'Code :'
      FocusControl = DBEdit1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 101
      Width = 40
      Height = 17
      Caption = 'Nom :'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 54
      Top = 147
      Width = 64
      Height = 17
      Caption = 'Adresse :'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 56
      Width = 225
      Height = 25
      DataField = 'code_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 101
      Width = 225
      Height = 25
      DataField = 'nom_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 144
      Width = 225
      Height = 25
      DataField = 'adresse_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 39
    Top = 347
    Width = 421
    Height = 176
    Caption = 'Contact'
    DefaultHeaderFont = False
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clLime
    HeaderFont.Height = -18
    HeaderFont.Name = 'Times New Roman'
    HeaderFont.Style = [fsBold]
    TabOrder = 1
    object Label4: TLabel
      Left = 39
      Top = 59
      Width = 60
      Height = 15
      Caption = 'T'#233'l'#233'phone :'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 72
      Top = 114
      Width = 35
      Height = 15
      Caption = 'Email :'
      FocusControl = DBEdit5
    end
    object DBEdit4: TDBEdit
      Left = 144
      Top = 56
      Width = 225
      Height = 23
      DataField = 'tel_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 144
      Top = 111
      Width = 225
      Height = 23
      DataField = 'email_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 39
    Top = 529
    Width = 421
    Height = 174
    Caption = 'Solde/R'#233'gelement'
    DefaultHeaderFont = False
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clLime
    HeaderFont.Height = -18
    HeaderFont.Name = 'Times New Roman'
    HeaderFont.Style = [fsBold]
    TabOrder = 2
    object Label6: TLabel
      Left = 33
      Top = 50
      Width = 67
      Height = 15
      Caption = 'Solde initial :'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 35
      Top = 113
      Width = 67
      Height = 15
      Caption = 'Solde finale :'
      FocusControl = DBEdit7
    end
    object DBEdit6: TDBEdit
      Left = 144
      Top = 52
      Width = 225
      Height = 23
      DataField = 'sold_init_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 144
      Top = 106
      Width = 225
      Height = 23
      DataField = 'sold_fin_c'
      DataSource = liste_client.DataSourceClient
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 962
    Top = 262
    Width = 100
    Height = 42
    Caption = 'next'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 821
    Top = 262
    Width = 100
    Height = 42
    Caption = 'previous'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 821
    Top = 319
    Width = 100
    Height = 42
    Caption = 'first'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 962
    Top = 319
    Width = 100
    Height = 42
    Caption = 'last'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 885
    Top = 379
    Width = 100
    Height = 42
    Caption = 'new'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 821
    Top = 449
    Width = 100
    Height = 42
    Caption = 'Fermer'
    TabOrder = 8
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 962
    Top = 449
    Width = 100
    Height = 42
    Caption = 'Enregistrer'
    TabOrder = 9
    OnClick = Button7Click
  end
end
