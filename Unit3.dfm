object Form3: TForm3
  Left = 784
  Top = 188
  Width = 524
  Height = 480
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 72
    Top = 240
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 136
    Top = 56
    Width = 81
    Height = 33
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 56
    Width = 81
    Height = 33
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 56
    Width = 81
    Height = 33
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 104
    Width = 321
    Height = 120
    DataSource = DataModule4.DSKategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 160
    Top = 240
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 328
    Top = 240
    Width = 65
    Height = 33
    Caption = 'CARI'
    TabOrder = 6
  end
end
