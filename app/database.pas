unit database;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  Tdb = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db: Tdb;

implementation

{$R *.dfm}

end.
