unit anasayfa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdDayTime,
  Vcl.WinXPickers, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.WinXPanels, Data.DB,
  Data.Win.ADODB;

type
  TForm2 = class(TForm)
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Image2: TImage;
    StaticText1: TStaticText;
    Panel1: TPanel;
    Image1: TImage;
    StaticText2: TStaticText;
    Panel3: TPanel;
    Image3: TImage;
    StaticText3: TStaticText;
    Panel4: TPanel;
    Image4: TImage;
    StaticText4: TStaticText;
    Panel5: TPanel;
    Label1: TLabel;
    Image6: TImage;
    StaticText5: TStaticText;
    GridPanel2: TGridPanel;
    Image5: TImage;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  closectrl:boolean;
  kullanici_id,yetki:string;

implementation
uses kualanici_ad_sif,supad_des, kisibil,randevu,tedavi,giris,hesap;

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
randevu.Form5.ShowModal;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if closectrl=false then
  begin
   Application.Terminate;
  end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
closectrl:=false;
end;

procedure TForm2.FormShow(Sender: TObject);
begin

ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select k.yetki_id,y.yetki from kullanici_hesabi k join yetkilik y on y.id=k.yetki_id where kullanici_adi='''+kullanici_id+'''');
ADOQuery1.Open;
StaticText5.Caption:=ADOQuery1.FieldByName('yetki').AsString;
yetki:=ADOQuery1.FieldByName('yetki_id').AsString;
if yetki='3'  then
begin
     Panel1.Visible:=false;
end;
Application.MainFormOnTaskbar := True;
Application.ShowMainForm := False;
end;

procedure TForm2.Image5Click(Sender: TObject);
begin
giris.Form1.�ifre.Text:='';
giris.Form1.kullaniciadi.Text:='';
giris.Form1.AlphaBlend:=false;
closectrl:=true;
Form2.Close;
end;

procedure TForm2.Panel1Click(Sender: TObject);
begin
  tedavi.Form4.ShowModal;
end;

procedure TForm2.Panel2Click(Sender: TObject);
begin
  randevu.Form5.ShowModal;
end;

procedure TForm2.Panel3Click(Sender: TObject);
begin
     kisibil.Form6.ShowModal;
end;

procedure TForm2.Panel4Click(Sender: TObject);
begin
      hesap.Form10.ShowModal;
end;

end.
