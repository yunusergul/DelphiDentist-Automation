unit kisibil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Menus,
  Vcl.Buttons;

type
  TForm6 = class(TForm)
    GridPanel1: TGridPanel;
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    eklesil: TPopupMenu;
    Dzenle1: TMenuItem;
    Sil1: TMenuItem;
    Ekle1: TMenuItem;
    silQuery: TADOQuery;
    kisibulQuery: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SearchBox1Change(Sender: TObject);
    procedure Sil1Click(Sender: TObject);
    procedure Dzenle1Click(Sender: TObject);
    procedure Ekle1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure yenile();
  end;

var
  Form6: TForm6;
  idd:integer;
implementation

{$R *.dfm}
  uses kisiduz,eklekisi;
procedure TForm6.yenile;
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select hb.adi,hb.soyadi,hb.kimlik_no,hb.id from hasta_bilgileri hb join akraba ak on ak.id=hb.akraba_id');
  ADOQuery1.Open;
end;

procedure TForm6.Ekle1Click(Sender: TObject);
begin
eklekisi.Form3.ShowModal;
end;

procedure TForm6.SearchBox1Change(Sender: TObject);
begin
  if SearchBox1.Text<>'' then
   Begin
    ADOQuery1.Filter:='adi LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+' or soyadi LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+' or kimlik_no LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+'';
    ADOQuery1.Filtered:=true;
   End
  else
   begin
    ADOQuery1.Filtered:=false;
   end;
end;

procedure TForm6.Sil1Click(Sender: TObject);
var
arama:string;
buttonSelected:integer;
begin

  arama:=DBGrid1.Fields[DBGrid1.SelectedIndex].AsString;
  silQuery.SQL.Clear;
  silQuery.SQL.Add('select hb.id from hasta_bilgileri hb join akraba ak on ak.id=hb.akraba_id where hb.adi='+#39+arama+#39+' or hb.soyadi='+#39+arama+#39+' or hb.kimlik_no='+#39+arama+#39+'');
  silQuery.open;
  idd:=strtoint(ADOQuery1.FieldByName('id').AsString);
  buttonSelected := messagedlg('Silmek Ýstediðinizden Eminmisiniz?',mtCustom,[mbYes,mbCancel], 0);
  if buttonSelected = mrYes    then
  begin
    silQuery.SQL.Clear;
    silQuery.SQL.Add('DELETE FROM hasta_bilgileri WHERE id='+idd.ToString+'');
    silQuery.ExecSQL;
    yenile;
    ShowMessage('Silme Baþarýlý');
  end;
  if buttonSelected = mrCancel then
  begin
    ShowMessage('Ýptal edildi');
  end;

end;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
eklekisi.Form3.ShowModal;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select hb.adi,hb.soyadi,hb.kimlik_no,hb.id from hasta_bilgileri hb join akraba ak on ak.id=hb.akraba_id');
ADOQuery1.Open;
end;

procedure TForm6.Dzenle1Click(Sender: TObject);
var
arama:string;
begin
arama:=DBGrid1.Fields[DBGrid1.SelectedIndex].AsString;
  silQuery.SQL.Clear;
  silQuery.SQL.Add('select hb.id from hasta_bilgileri hb join akraba ak on ak.id=hb.akraba_id where hb.adi='+#39+arama+#39+' or hb.soyadi='+#39+arama+#39+' or hb.kimlik_no='+#39+arama+#39+'');
  silQuery.open;

  kisiduz.kis_id:=strtoint(ADOQuery1.FieldByName('id').AsString);
  kisiduz.Form8.ShowModal;
end;

end.
