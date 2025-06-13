object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Case test'
  ClientHeight = 180
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object comboUsuario: TComboBox
    Left = 24
    Top = 40
    Width = 217
    Height = 23
    TabOrder = 0
    Items.Strings = (
      'Investidor'
      'Diretor'
      'Supervisor '
      'Gerente'
      'Vendedor  ')
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 217
    Height = 25
    Caption = 'Login'
    TabOrder = 1
    OnClick = Button1Click
  end
end
