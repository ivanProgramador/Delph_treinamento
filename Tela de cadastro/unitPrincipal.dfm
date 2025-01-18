object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de clientes'
  ClientHeight = 441
  ClientWidth = 684
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 32
      Width = 309
      Height = 45
      Caption = 'Cadastro de  clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 327
      Top = 32
      Width = 75
      Height = 49
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 408
      Top = 32
      Width = 75
      Height = 49
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 489
      Top = 32
      Width = 75
      Height = 49
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 570
      Top = 32
      Width = 75
      Height = 49
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 87
    Width = 684
    Height = 354
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label2: TLabel
        Left = 0
        Top = 16
        Width = 97
        Height = 15
        Caption = 'Codigo do cliente:'
      end
      object Label3: TLabel
        Left = 160
        Top = 16
        Width = 77
        Height = 15
        Caption = 'Tipo de cliente'
      end
      object Label4: TLabel
        Left = 0
        Top = 66
        Width = 74
        Height = 15
        Caption = 'Nome cliente:'
      end
      object Label5: TLabel
        Left = 0
        Top = 128
        Width = 52
        Height = 15
        Caption = 'Endere'#231'o:'
      end
      object Label6: TLabel
        Left = 0
        Top = 178
        Width = 34
        Height = 15
        Caption = 'Bairro:'
      end
      object Label7: TLabel
        Left = 160
        Top = 176
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object Label8: TLabel
        Left = 0
        Top = 240
        Width = 17
        Height = 15
        Caption = 'UF:'
      end
      object Label9: TLabel
        Left = 160
        Top = 240
        Width = 24
        Height = 15
        Caption = 'CEP:'
      end
      object Label10: TLabel
        Left = 358
        Top = 16
        Width = 18
        Height = 15
        Caption = 'RG:'
      end
      object Label11: TLabel
        Left = 520
        Top = 16
        Width = 84
        Height = 15
        Caption = 'Data expedi'#231#227'o:'
      end
      object Label12: TLabel
        Left = 358
        Top = 72
        Width = 47
        Height = 15
        Caption = 'Telefone:'
      end
      object Label13: TLabel
        Left = 520
        Top = 72
        Width = 40
        Height = 15
        Caption = 'Celular:'
      end
      object Label14: TLabel
        Left = 358
        Top = 136
        Width = 34
        Height = 15
        Caption = 'E-mail'
      end
      object Edit1: TEdit
        Left = 0
        Top = 37
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 160
        Top = 37
        Width = 145
        Height = 23
        TabOrder = 1
        Items.Strings = (
          'Pessoa fisica'
          'Pessoa Juridica')
      end
      object Edit2: TEdit
        Left = 0
        Top = 87
        Width = 305
        Height = 23
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 0
        Top = 149
        Width = 305
        Height = 23
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 160
        Top = 199
        Width = 145
        Height = 23
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 0
        Top = 261
        Width = 121
        Height = 23
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 160
        Top = 261
        Width = 145
        Height = 23
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 358
        Top = 37
        Width = 131
        Height = 23
        TabOrder = 7
      end
      object Edit9: TEdit
        Left = 520
        Top = 37
        Width = 121
        Height = 23
        TabOrder = 8
      end
      object Edit10: TEdit
        Left = 358
        Top = 93
        Width = 131
        Height = 23
        TabOrder = 9
      end
      object Edit11: TEdit
        Left = 520
        Top = 93
        Width = 121
        Height = 23
        TabOrder = 10
      end
      object Edit12: TEdit
        Left = 358
        Top = 157
        Width = 283
        Height = 23
        TabOrder = 11
      end
      object CheckBox1: TCheckBox
        Left = 358
        Top = 199
        Width = 121
        Height = 17
        Caption = 'Cliente negativado'
        TabOrder = 12
      end
      object Edit27: TEdit
        Left = 0
        Top = 199
        Width = 121
        Height = 23
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do c'#244'njuje'
      ImageIndex = 1
      object Label15: TLabel
        Left = 3
        Top = 24
        Width = 36
        Height = 15
        Caption = 'Nome:'
      end
      object Label16: TLabel
        Left = 3
        Top = 124
        Width = 111
        Height = 15
        Caption = 'Data de nascimento: '
      end
      object Label17: TLabel
        Left = 3
        Top = 74
        Width = 24
        Height = 15
        Caption = 'CPF:'
      end
      object Edit13: TEdit
        Left = 3
        Top = 145
        Width = 174
        Height = 23
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 3
        Top = 95
        Width = 174
        Height = 23
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 192
        Top = 95
        Width = 465
        Height = 217
        Caption = 'Contatos do c'#244'njuje'
        TabOrder = 2
        object Label18: TLabel
          Left = 13
          Top = 24
          Width = 40
          Height = 15
          Caption = 'Celular:'
        end
        object Label19: TLabel
          Left = 16
          Top = 88
          Width = 37
          Height = 15
          Caption = 'E-mail:'
        end
        object Label20: TLabel
          Left = 224
          Top = 27
          Width = 59
          Height = 15
          Caption = 'Operadora:'
        end
        object Edit15: TEdit
          Left = 13
          Top = 45
          Width = 121
          Height = 23
          TabOrder = 0
        end
        object Edit16: TEdit
          Left = 16
          Top = 109
          Width = 353
          Height = 23
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 224
          Top = 48
          Width = 145
          Height = 23
          TabOrder = 2
          Items.Strings = (
            'Tim'
            'Vivo'
            'oi'
            'Claro')
        end
      end
      object Edit4: TEdit
        Left = 3
        Top = 45
        Width = 406
        Height = 23
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do trabalho:'
      ImageIndex = 2
      object Prof: TLabel
        Left = 16
        Top = 16
        Width = 51
        Height = 15
        Caption = 'Profiss'#227'o:'
      end
      object Label21: TLabel
        Left = 16
        Top = 80
        Width = 48
        Height = 15
        Caption = 'Empresa:'
      end
      object Label22: TLabel
        Left = 16
        Top = 136
        Width = 163
        Height = 15
        Caption = 'Endere'#231'o completo do tabalho'
      end
      object Label23: TLabel
        Left = 16
        Top = 200
        Width = 107
        Height = 15
        Caption = 'Telefone do tabalho:'
      end
      object Label24: TLabel
        Left = 208
        Top = 200
        Width = 104
        Height = 15
        Caption = 'Celular do trabalho:'
      end
      object Edit17: TEdit
        Left = 16
        Top = 101
        Width = 433
        Height = 23
        TabOrder = 0
      end
      object Edit18: TEdit
        Left = 16
        Top = 157
        Width = 433
        Height = 23
        TabOrder = 1
      end
      object Edit19: TEdit
        Left = 16
        Top = 221
        Width = 121
        Height = 23
        TabOrder = 2
      end
      object Edit20: TEdit
        Left = 208
        Top = 221
        Width = 241
        Height = 23
        TabOrder = 3
      end
      object Edit26: TEdit
        Left = 16
        Top = 37
        Width = 433
        Height = 23
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de cr'#233'dito'
      ImageIndex = 3
      object Label25: TLabel
        Left = 16
        Top = 16
        Width = 93
        Height = 15
        Caption = 'Sal'#225'rio do cliente:'
      end
      object Label26: TLabel
        Left = 16
        Top = 72
        Width = 97
        Height = 15
        Caption = 'Sal'#225'rio do c'#244'njuje:'
      end
      object Label27: TLabel
        Left = 16
        Top = 130
        Width = 92
        Height = 15
        Caption = 'Limite de cr'#233'dito:'
      end
      object Label28: TLabel
        Left = 16
        Top = 192
        Width = 68
        Height = 15
        Caption = 'Limite usado'
      end
      object Label29: TLabel
        Left = 16
        Top = 256
        Width = 78
        Height = 15
        Caption = 'Limite restante'
      end
      object Label30: TLabel
        Left = 375
        Top = 16
        Width = 68
        Height = 15
        Caption = 'observa'#231#245'es:'
      end
      object Edit21: TEdit
        Left = 16
        Top = 93
        Width = 317
        Height = 23
        TabOrder = 0
      end
      object Edit22: TEdit
        Left = 16
        Top = 151
        Width = 161
        Height = 23
        TabOrder = 1
      end
      object Edit23: TEdit
        Left = 16
        Top = 213
        Width = 161
        Height = 23
        TabOrder = 2
      end
      object Edit24: TEdit
        Left = 16
        Top = 277
        Width = 161
        Height = 23
        TabOrder = 3
      end
      object Memo1: TMemo
        Left = 375
        Top = 37
        Width = 290
        Height = 260
        Lines.Strings = (
          '')
        TabOrder = 4
      end
      object Edit25: TEdit
        Left = 16
        Top = 37
        Width = 317
        Height = 23
        TabOrder = 5
      end
    end
  end
end
