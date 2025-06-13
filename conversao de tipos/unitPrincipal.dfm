object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 137
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 100
    Height = 15
    Caption = 'Digite um numero:'
  end
  object Label2: TLabel
    Left = 168
    Top = 36
    Width = 14
    Height = 30
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 208
    Top = 24
    Width = 102
    Height = 15
    Caption = 'Digite um numero?'
  end
  object Label4: TLabel
    Left = 352
    Top = 36
    Width = 14
    Height = 30
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 392
    Top = 24
    Width = 55
    Height = 15
    Caption = 'Resultado:'
  end
  object txtNumero1: TEdit
    Left = 24
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object txtNumero2: TEdit
    Left = 208
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object txtResultado: TEdit
    Left = 392
    Top = 45
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Soma: TButton
    Left = 24
    Top = 96
    Width = 489
    Height = 25
    Caption = 'Soma'
    TabOrder = 3
    OnClick = SomaClick
  end
end
