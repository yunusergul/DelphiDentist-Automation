unit kisiduz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Data.Win.ADODB;

type
  TForm8 = class(TForm)
    GridPanel1: TGridPanel;
    StaticText1: TStaticText;
    MaskEdit1: TMaskEdit;
    StaticText2: TStaticText;
    MaskEdit2: TMaskEdit;
    StaticText3: TStaticText;
    MaskEdit3: TMaskEdit;
    StaticText4: TStaticText;
    Memo1: TMemo;
    StaticText5: TStaticText;
    MaskEdit4: TMaskEdit;
    StaticText6: TStaticText;
    MaskEdit5: TMaskEdit;
    GridPanel2: TGridPanel;
    StaticText12: TStaticText;
    MaskEdit11: TMaskEdit;
    StaticText13: TStaticText;
    MaskEdit12: TMaskEdit;
    StaticText14: TStaticText;
    MaskEdit13: TMaskEdit;
    StaticText16: TStaticText;
    MaskEdit14: TMaskEdit;
    StaticText17: TStaticText;
    MaskEdit15: TMaskEdit;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StaticText9: TStaticText;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure verigetir();
    procedure verikaydet();
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  kis_id,ak_id,ht_id,cinss:integer;
  cins:string;
implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
verikaydet;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
    MaskEdit1.Text:='';
    MaskEdit2.Text:='';
    MaskEdit3.Text:='';
    MaskEdit4.Text:='';
    MaskEdit5.Text:='';
    Memo1.Lines.CommaText:='';
    MaskEdit11.Text:='';
    MaskEdit12.Text:='';
    MaskEdit13.Text:='';
    MaskEdit14.Text:='';
    MaskEdit15.Text:='';
    cins:='';
    ak_id:=0;
    ht_id:=0;
    RadioButton1.Checked:=false;
    RadioButton1.Checked:=false;
    form8.Close;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
    verigetir;
end;

procedure TForm8.verigetir;
begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select hst.adi as ''has_adi'',ak.id as ''ak_idd'',hst.id as ''ht_idd'',hst.soyadi as ''has_soyadi'',hst.kimlik_no,hst.adres,hst.gsm as ''has_gsm'',hst.mail as ''has_mail'',cinsiyet,ak.adi,ak.soyadi,ak.yakınlık,ak.gsm,ak.mail');
    ADOQuery1.SQL.Add('from hasta_bilgileri hst join akraba ak on ak.id=hst.akraba_id where hst.id='+kis_id.ToString+'');
    ADOQuery1.Active:=True;
    MaskEdit1.Text:=ADOQuery1.FieldByName('has_adi').AsString;
    MaskEdit2.Text:=ADOQuery1.FieldByName('has_soyadi').AsString;
    MaskEdit3.Text:=ADOQuery1.FieldByName('kimlik_no').AsString;
    MaskEdit4.Text:=ADOQuery1.FieldByName('has_gsm').AsString;
    MaskEdit5.Text:=ADOQuery1.FieldByName('has_mail').AsString;
    Memo1.Lines.CommaText:=ADOQuery1.FieldByName('adres').AsString;
    MaskEdit11.Text:=ADOQuery1.FieldByName('adi').AsString;
    MaskEdit12.Text:=ADOQuery1.FieldByName('soyadi').AsString;
    MaskEdit13.Text:=ADOQuery1.FieldByName('yakınlık').AsString;
    MaskEdit14.Text:=ADOQuery1.FieldByName('gsm').AsString;
    MaskEdit15.Text:=ADOQuery1.FieldByName('mail').AsString;
    cins:=ADOQuery1.FieldByName('cinsiyet').AsString;
    ak_id:=strtoint(ADOQuery1.FieldByName('ak_idd').AsString);
    ht_id:=strtoint(ADOQuery1.FieldByName('ht_idd').AsString);
    if cins='False' then
    begin
       RadioButton2.Checked:=True;
    end
    else
    begin
        RadioButton1.Checked:=True;
    end;
end;
procedure TForm8.verikaydet;
begin
  ADOQuery1.SQL.Clear; // akraba veri girişi
  ADOQuery1.SQL.Add('update akraba set adi='+#39+MaskEdit11.Text+#39+', soyadi='+#39+MaskEdit12.Text+#39+', yakınlık='+#39+MaskEdit13.Text+#39+', gsm='+#39+MaskEdit14.Text+#39+',mail='+#39+MaskEdit15.Text+#39+' where id='+ak_id.ToString+'');
  ADOQuery1.ExecSQL;
    if RadioButton1.Checked=true then
    begin
      cinss:=1;
    end
    else
    begin
      cinss:=0;
    end;
  ADOQuery1.SQL.Clear; // akraba veri girişi
  ADOQuery1.SQL.Add('update hasta_bilgileri set adi='+#39+MaskEdit1.Text+#39+',soyadi='+#39+MaskEdit2.Text+#39+',kimlik_no='+#39+MaskEdit3.Text+#39+',gsm='+#39+MaskEdit4.Text+#39+',mail='+#39+MaskEdit5.Text+#39+',adres='+#39+Memo1.Lines.CommaText+#39+',cinsiyet='+cinss.ToString+' where id='+ht_id.ToString+'');
  ADOQuery1.ExecSQL;
  verigetir;
end;
end.
