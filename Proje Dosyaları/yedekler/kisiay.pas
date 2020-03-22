unit kisiay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Menus, Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TForm8 = class(TForm)
    GridPanel1: TGridPanel;
    ADOConnection1: TADOConnection;
    verigirisQuery: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SearchBox1: TSearchBox;
    eklesil: TPopupMenu;
    Ekle1: TMenuItem;
    Dzenle1: TMenuItem;
    Sil1: TMenuItem;
    procedure Ekle1Click(Sender: TObject);
    procedure Dzenle1Click(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Dzenle1Click(Sender: TObject);
begin
    //d
end;

procedure TForm8.Ekle1Click(Sender: TObject);
begin
   //e
end;

procedure TForm8.Sil1Click(Sender: TObject);
begin
//s
end;

end.
