object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de contatos'
  ClientHeight = 394
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  TextHeight = 30
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 177
    Height = 30
    Caption = 'Busca de contatos'
  end
  object Label2: TLabel
    Left = 8
    Top = 44
    Width = 108
    Height = 17
    Caption = 'Nome do contato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 114
    Width = 48
    Height = 17
    Caption = 'Celular:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 204
    Width = 78
    Height = 17
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 322
    Width = 152
    Height = 17
    Caption = 'Data e hora do cadastro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 8
    Top = 353
    Width = 185
    Height = 17
    DataField = 'data'
    DataSource = DM.ds_contatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 240
    Top = 83
    Width = 111
    Height = 17
    Caption = 'Busca de contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 67
    Width = 197
    Height = 22
    DataField = 'nome'
    DataSource = DM.ds_contatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 137
    Width = 197
    Height = 24
    DataField = 'celular'
    DataSource = DM.ds_contatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 8
    Top = 181
    Width = 97
    Height = 17
    Caption = 'bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.ds_contatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 227
    Width = 185
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.ds_contatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 240
    Top = 44
    Width = 330
    Height = 25
    DataSource = DM.ds_contatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 143
    Width = 330
    Height = 234
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    DataSource = DM.ds_contatos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Width = 197
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 240
    Top = 106
    Width = 330
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
