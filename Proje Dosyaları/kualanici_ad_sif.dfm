object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Kullan'#305'c'#305' Bilgileri G'#252'ncelleme'
  ClientHeight = 241
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 40
    Top = 192
    Width = 75
    Height = 25
    Caption = 'De'#287'i'#351'tir'
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 121
    Top = 192
    Width = 75
    Height = 25
    Caption = #304'ptal Et'
    TabOrder = 1
  end
  object LabeledEdit1: TLabeledEdit
    Left = 40
    Top = 28
    Width = 156
    Height = 21
    EditLabel.Width = 55
    EditLabel.Height = 13
    EditLabel.Caption = 'Kullan'#305'c'#305' Ad'#305
    Enabled = False
    TabOrder = 2
  end
  object LabeledEdit2: TLabeledEdit
    Left = 40
    Top = 72
    Width = 156
    Height = 21
    EditLabel.Width = 43
    EditLabel.Height = 13
    EditLabel.Caption = 'Eski '#350'ifre'
    TabOrder = 3
  end
  object LabeledEdit3: TLabeledEdit
    Left = 40
    Top = 115
    Width = 156
    Height = 21
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = 'Yeni '#351'ifre'
    TabOrder = 4
  end
end
