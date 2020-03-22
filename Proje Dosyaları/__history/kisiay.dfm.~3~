object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Hasta Bilgileri'
  ClientHeight = 744
  ClientWidth = 1231
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 1231
    Height = 744
    Align = alClient
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 2
        Control = DBGrid1
        Row = 2
      end
      item
        Column = 0
        Control = SearchBox1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 3.959301805620600000
      end
      item
        Value = 15.007906938059290000
      end
      item
        Value = 70.036899044276670000
      end
      item
        Value = 10.995892212043440000
      end>
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 146
      Width = 1229
      Height = 514
      Align = alBottom
      BorderStyle = bsNone
      DataSource = DataSource1
      PopupMenu = eklesil
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          ButtonStyle = cbsNone
          Expanded = False
          FieldName = 'adi'
          Title.Caption = 'Hasta Ad'#305
          Width = 523
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'soyadi'
          Title.Caption = 'Hasta Soyad'#305
          Width = 296
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kimlik_no'
          Title.Caption = 'Hasta Kimlik No'
          Width = 367
          Visible = True
        end>
    end
    object SearchBox1: TSearchBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 605
      Height = 23
      Align = alLeft
      TabOrder = 1
      ExplicitHeight = 21
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=disci;Data Source=DESKTOP-PKHVEEA\SQLEX' +
      'PRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Top = 288
  end
  object verigirisQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select hb.adi,hb.soyadi,hb.kimlik_no from hasta_bilgileri hb joi' +
        'n akraba ak on ak.id=hb.akraba_id')
    Top = 330
  end
  object DataSource1: TDataSource
    DataSet = verigirisQuery
    Top = 376
  end
  object eklesil: TPopupMenu
    Top = 256
    object Ekle1: TMenuItem
      Caption = 'Ekle'
      OnClick = Ekle1Click
    end
    object Dzenle1: TMenuItem
      Caption = 'D'#252'zenle'
      OnClick = Dzenle1Click
    end
    object Sil1: TMenuItem
      Caption = 'Sil'
      OnClick = Sil1Click
    end
  end
end
