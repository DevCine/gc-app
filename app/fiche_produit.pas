unit fiche_produit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.JumpList, Vcl.Tabs, Vcl.DockTabSet, Vcl.Grids, Vcl.TabNotBk;

type
  Tproduit_frm = class(TForm)
    Label1: TLabel;
    TabbedNotebook1: TTabbedNotebook;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  produit_frm: Tproduit_frm;

implementation

{$R *.dfm}

end.
