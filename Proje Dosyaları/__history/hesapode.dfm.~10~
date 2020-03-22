object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #214'deme Ekran'#305
  ClientHeight = 473
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 112
    Width = 521
    Height = 337
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dis'
        Title.Caption = 'Di'#351' '#304'smi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hastalik_adi'
        Title.Caption = 'Hastal'#305'k Ad'#305
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tedavi_adi'
        Title.Caption = 'Tedavi Ad'#305
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'yapilan_islem'
        Title.Caption = 'Yap'#305'lan '#304#351'lemler'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = #220'cret'
        Width = 38
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 8
    Width = 23
    Height = 17
    Caption = 'Ad'#305':'
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 16
    Top = 31
    Width = 40
    Height = 17
    Caption = 'Soyad'#305':'
    TabOrder = 2
  end
  object StaticText3: TStaticText
    Left = 16
    Top = 54
    Width = 76
    Height = 17
    Caption = 'Kimlik Numaras'#305
    TabOrder = 3
  end
  object StaticText4: TStaticText
    Left = 16
    Top = 77
    Width = 58
    Height = 17
    Caption = 'Kalan Bor'#231':'
    TabOrder = 4
  end
  object StaticText5: TStaticText
    Left = 80
    Top = 77
    Width = 59
    Height = 17
    Caption = 'StaticText4'
    TabOrder = 5
  end
  object StaticText6: TStaticText
    Left = 98
    Top = 54
    Width = 59
    Height = 17
    Caption = 'StaticText3'
    TabOrder = 6
  end
  object StaticText7: TStaticText
    Left = 62
    Top = 31
    Width = 59
    Height = 17
    Caption = 'StaticText2'
    TabOrder = 7
  end
  object StaticText8: TStaticText
    Left = 45
    Top = 8
    Width = 59
    Height = 17
    Caption = 'StaticText1'
    TabOrder = 8
  end
  object BitBtn1: TBitBtn
    Left = 387
    Top = 77
    Width = 150
    Height = 29
    Caption = #214'deme Yap'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 387
    Top = 50
    Width = 150
    Height = 21
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = #214'deme Miktar'#305
    TabOrder = 10
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=disci;Data Source=DESKTOP-PKHVEEA\SQLEX' +
      'PRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 168
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 200
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select d.dis,hkt.hastalik_adi,ted.tedavi_adi,adbi.yapilan_islem,' +
        'ted.fiyat as'#39#220'cret'#39' from hasta_bilgileri hst'
      
        '  join ziyaretci ziy on hst.id=ziy.hasta_id join ziyaret_id zid ' +
        'on zid.ziyaretci_id=ziy.id'
      
        '  join sorun_tespiti soru on soru.id=zid.sorun_tespit_id join te' +
        'davi ted on ted.id=soru.secilmis_tedavi_id'
      
        '  join kullanici_hesabi kul on kul.id=ziy.dentist_id join yetkil' +
        'ik yet on yet.id=kul.yetki_id join dis d on d.id=soru.dis_id'
      '  join hastalik_katalogu hkt on hkt.id=soru.hastalik_katalog_id'
      '  join adim_bilgi adbi on adbi.id=zid.tedavi_adimlari_id'
      '  where hst.kimlik_no='#39'11111111111'#39)
    Top = 120
  end
end
