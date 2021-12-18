object Form1: TForm1
  Left = 239
  Top = 95
  Caption = 'DTMF generator'
  ClientHeight = 230
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Freq1'
  end
  object Label2: TLabel
    Left = 64
    Top = 16
    Width = 27
    Height = 13
    Caption = 'Freq2'
  end
  object Label3: TLabel
    Left = 119
    Top = 16
    Width = 42
    Height = 13
    Caption = 'Seconds'
  end
  object Label4: TLabel
    Left = 175
    Top = 16
    Width = 35
    Height = 13
    Caption = 'Volume'
  end
  object TrackBar1: TTrackBar
    Left = 175
    Top = 36
    Width = 17
    Height = 151
    Max = 100
    Min = 1
    Orientation = trVertical
    Position = 50
    TabOrder = 0
    TickMarks = tmBoth
  end
  object Button1: TButton
    Left = 9
    Top = 66
    Width = 33
    Height = 25
    Caption = '1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 49
    Top = 66
    Width = 33
    Height = 25
    Caption = '2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 89
    Top = 66
    Width = 33
    Height = 25
    Caption = '3'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 129
    Top = 66
    Width = 33
    Height = 25
    Caption = 'a'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 9
    Top = 98
    Width = 33
    Height = 25
    Caption = '4'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 49
    Top = 98
    Width = 33
    Height = 25
    Caption = '5'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 89
    Top = 98
    Width = 33
    Height = 25
    Caption = '6'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 129
    Top = 98
    Width = 33
    Height = 25
    Caption = 'b'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 9
    Top = 130
    Width = 33
    Height = 25
    Caption = '7'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 49
    Top = 130
    Width = 33
    Height = 25
    Caption = '8'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 89
    Top = 130
    Width = 33
    Height = 25
    Caption = '9'
    TabOrder = 11
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 129
    Top = 130
    Width = 33
    Height = 25
    Caption = 'c'
    TabOrder = 12
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 9
    Top = 162
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 13
    OnClick = Button13Click
  end
  object Button14: TButton
    Left = 49
    Top = 162
    Width = 33
    Height = 25
    Caption = '0'
    TabOrder = 14
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 89
    Top = 162
    Width = 33
    Height = 25
    Caption = '#'
    TabOrder = 15
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 129
    Top = 162
    Width = 33
    Height = 25
    Caption = 'd'
    TabOrder = 16
    OnClick = Button16Click
  end
  object Text1: TEdit
    Left = 9
    Top = 36
    Width = 48
    Height = 21
    TabOrder = 17
  end
  object Text2: TEdit
    Left = 64
    Top = 36
    Width = 48
    Height = 21
    TabOrder = 18
  end
  object Text3: TEdit
    Left = 119
    Top = 36
    Width = 48
    Height = 21
    TabOrder = 19
  end
  object Button17: TButton
    Left = 9
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 20
    OnClick = Button17Click
  end
  object Button18: TButton
    Left = 148
    Top = 196
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 21
    OnClick = Button18Click
  end
end
