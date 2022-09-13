object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 753
  ClientWidth = 1270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 15
  object Button1: TButton
    Left = 392
    Top = 184
    Width = 129
    Height = 73
    Caption = 'Mes Produits'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 680
    Top = 180
    Width = 121
    Height = 81
    Caption = 'Comptoire'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 312
    Width = 121
    Height = 81
    Caption = 'Mes Clients'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 680
    Top = 312
    Width = 113
    Height = 81
    Caption = 'Mes Fournisseurs'
    TabOrder = 3
    OnClick = Button4Click
  end
end
