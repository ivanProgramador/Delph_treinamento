unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtNumero1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtNumero2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    txtResultado: TEdit;
    Label5: TLabel;
    Soma: TButton;
    procedure SomaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SomaClick(Sender: TObject);

var
  numero1:   Real;
  numero2:   Real;
  resultado: Real;

begin

   numero1 := StrToFloat(txtNumero1.Text);

   numero2 := StrToFloat(txtNumero1.Text);

   resultado :=  numero1 + numero2;

   txtResultado.Text := FloatToStr(resultado);


end;

end.
