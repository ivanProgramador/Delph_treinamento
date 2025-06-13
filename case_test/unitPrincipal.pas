unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    comboUsuario: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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
   case comboUsuario.ItemIndex of
     0:
       begin
         showMessage('Logado como: Investidor');
         showMessage('Teste de segundo comando');
       end;
     1:
       begin
         showMessage('Logado como: Diretor');
         showMessage('Teste de segundo comando');
       end;

     2:showMessage('Logado como: Supevisor');
     3:showMessage('Logado como: Investidor');
     4:showMessage('Logado como: Vendedor');






   end;
end;

end.
