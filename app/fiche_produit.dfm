object produit_frm: Tproduit_frm
  Left = 0
  Top = 0
  Caption = 'Fiche Produit'
  ClientHeight = 730
  ClientWidth = 1078
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
  object TabbedNotebook1: TTabbedNotebook
    Left = 0
    Top = 167
    Width = 881
    Height = 466
    PageIndex = 1
    TabFont.Charset = DEFAULT_CHARSET
    TabFont.Color = clBtnText
    TabFont.Height = -15
    TabFont.Name = 'Segoe UI'
    TabFont.Style = []
    TabOrder = 0
    object TTabPage
      Left = 4
      Top = 31
      Caption = 'Description'
      ExplicitTop = 26
      ExplicitWidth = 292
      ExplicitHeight = 220
    end
    object TTabPage
      Left = 4
      Top = 31
      Caption = 'Prix & Stocl'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
end
