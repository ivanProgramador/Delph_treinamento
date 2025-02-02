object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de contatos'
  ClientHeight = 441
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 197
    Height = 30
    Caption = 'Agenda de contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 37
    Height = 15
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 8
    Top = 114
    Width = 41
    Height = 15
    Caption = 'Celular:'
  end
  object Label4: TLabel
    Left = 8
    Top = 216
    Width = 74
    Height = 15
    Caption = 'Observa'#231#245'es:'
  end
  object Label5: TLabel
    Left = 8
    Top = 344
    Width = 76
    Height = 15
    Caption = 'Data cadastro'
  end
  object DBText1: TDBText
    Left = 8
    Top = 365
    Width = 185
    Height = 17
    DataField = 'data_cadastro'
    DataSource = DM.dsContatos
  end
  object Label6: TLabel
    Left = 296
    Top = 48
    Width = 232
    Height = 21
    Caption = 'Lista de contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 296
    Top = 85
    Width = 126
    Height = 15
    Caption = 'Pesquise seus contatos'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 85
    Width = 121
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsContatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 135
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsContatos
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 237
    Width = 185
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.dsContatos
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 8
    Top = 184
    Width = 97
    Height = 17
    Caption = 'Boqueado'
    DataField = 'bloqueado'
    DataSource = DM.dsContatos
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 296
    Top = 135
    Width = 281
    Height = 202
    DataSource = DM.dsContatos
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
  end
  object DBNavigator1: TDBNavigator
    Left = 296
    Top = 360
    Width = 280
    Height = 25
    DataSource = DM.dsContatos
    TabOrder = 5
  end
  object txtBusca: TEdit
    Left = 296
    Top = 106
    Width = 280
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
