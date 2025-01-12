object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Primeiro Sistema'
  ClientHeight = 127
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 89
    Height = 15
    Caption = 'Digite seu nome:'
  end
  object CaixaNome: TEdit
    Left = 8
    Top = 45
    Width = 265
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 198
    Top = 80
    Width = 75
    Height = 25
    Caption = 'ok'
    TabOrder = 1
    OnClick = Button1Click
  end
end
