unit denkisiekler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask;

type
  TForm9 = class(TForm)
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
    StaticText7: TStaticText;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    StaticText9: TStaticText;
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
    StaticText8: TStaticText;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm9;

implementation

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var
ak_iid,cinss:integer;

begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into akraba (adi,soyadi,yakýnlýk,gsm,mail) values(:ves1, :ves2, :ves3, :ves4, :ves5)');
  ADOQuery1.Parameters.ParamByName('ve1').Value:=MaskEdit11.Text;
  ADOQuery1.Parameters.ParamByName('ve2').Value:=MaskEdit12.Text;
  ADOQuery1.Parameters.ParamByName('ve3').Value:=MaskEdit13.Text;
  ADOQuery1.Parameters.ParamByName('ve4').Value:=MaskEdit14.Text;
  ADOQuery1.Parameters.ParamByName('ve5').Value:=MaskEdit15.Text;
  ADOQuery1.ExecSQL;

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from akraba where adi='+#39+'MaskEdit11.Text'+#39+' and soyadi='+#39+'MaskEdit12.Text'+#39+' and gsm='+#39+'MaskEdit14.Text'+#39+'');
  ADOQuery1.Open;
  ak_iid:=strtoint(ADOQuery1.FieldByName('id').AsString);

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into hasta_bilgileri(adi,soyadi,kimlik_no,adres,gsm,mail,akraba_id,cinsiyet) values (:ves1, :ves2, :ves3, :ves4, :ves5, :ves6, :ves7, :ves8)');
  ADOQuery1.Parameters.ParamByName('ve1').Value:=MaskEdit1.Text;
  ADOQuery1.Parameters.ParamByName('ve2').Value:=MaskEdit2.Text;
  ADOQuery1.Parameters.ParamByName('ve3').Value:=MaskEdit3.Text;
  ADOQuery1.Parameters.ParamByName('ve4').Value:=Memo1.Lines.CommaText;
  ADOQuery1.Parameters.ParamByName('ve5').Value:=MaskEdit4.Text;
  ADOQuery1.Parameters.ParamByName('ve6').Value:=MaskEdit5.Text;
  ADOQuery1.Parameters.ParamByName('ve7').Value:= ak_iid.ToString;
  if RadioButton1.Checked=true then
    begin
      cinss:=1;
    end
    else
    begin
      cinss:=0;
    end;
  ADOQuery1.Parameters.ParamByName('ve8').Value:=cinss.ToString;
  ADOQuery1.ExecSQL;



end;

end.
