unit comptoire;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,dmdatabase, Vcl.Mask;

type
  TfrmComptoire = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComptoire: TfrmComptoire;

implementation

{$R *.dfm}

end.
