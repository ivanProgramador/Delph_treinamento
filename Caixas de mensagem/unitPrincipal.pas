unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Teste de mensagem');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //SE A�RRTA CTRL + ESPA�O VAI APARECER AS SUGEST�ES DE ICONE

  Application.MessageBox('Teste de mensagens','Aten��o', MB_ICONEXCLAMATION + MB_OK);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Application.MessageBox('Teste de mensagem','informa��o',MB_ICONINFORMATION + MB_OK);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   Application.MessageBox('TESTE DE MENSAGEM','ERRO', MB_ICONERROR + MB_OK);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
        Application.MessageBox('Teste de mensagens','Aten��o', MB_ICONQUESTION + MB_OK);
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Application.MessageBox('Teste de mensagens','Aten��o', MB_ICONEXCLAMATION + MB_OKCANCEL);
end;

end.
