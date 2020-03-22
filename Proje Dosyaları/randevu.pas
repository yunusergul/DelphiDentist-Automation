unit randevu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.FileCtrl,
  Vcl.CheckLst, Vcl.ComCtrls, Vcl.TabNotBk, VCLTee.TeeFilters, System.ImageList,
  Vcl.ImgList, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons, Data.DB, Data.Win.ADODB,
  Vcl.WinXCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    GridPanel1: TGridPanel;
    DBGrid1: TDBGrid;
    SearchBox1: TSearchBox;
    BitBtn1: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    procedure SearchBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
 uses randevuay;
procedure TForm5.BitBtn1Click(Sender: TObject);
begin
      randevuay.Form9.ShowModal;
end;



procedure TForm5.BitBtn2Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select CONVERT(VARCHAR(5),r.baslangic_zamani, 108)as''saati'',hs.adi,hs.soyadi,hs.kimlik_no,k.kullanici_adi  from randevu r join hasta_bilgileri hs on hs.id=r.hasta_id');
ADOQuery1.SQL.Add('join kullanici_hesabi k on k.id=r.doctor_id where r.iptal_edildi=''False'' and CONVERT(VARCHAR(11), GETDATE(), 106)=CONVERT(VARCHAR(11),r.baslangic_zamani, 106) order by saati asc');
ADOQuery1.Open;
end;

procedure TForm5.SearchBox1Change(Sender: TObject);
begin
if SearchBox1.Text<>'' then
   Begin
    ADOQuery1.Filter:='adi LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+' or soyadi LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+' or kimlik_no LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+'or kullanici_adi LIKE '+QuotedStr(#37+SearchBox1.Text+#37)+'';
    ADOQuery1.Filtered:=true;
   End
  else
   begin
    ADOQuery1.Filtered:=false;
   end;
end;

end.
