unit unitPrincipal;



interface


uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Vcl.Styles,Vcl.Themes;



type
  TForm1 = class(TForm)
    Label1: TLabel;
    txtNum1: TEdit;
    Label2: TLabel;
    txtNum2: TEdit;
    btSomar: TButton;
    btSubtrair: TButton;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    Label3: TLabel;
    txtResultado: TEdit;
    opcVisual: TRadioGroup;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure opcVisualClick(Sender: TObject);
  private
      {
        em uuma função no Delph depois de declarar eu tenho de dizer
        que tipo de dado ela vai retornar no caso da função abaixo ela vai retornar
        Real

       }
      function calculaResultado(num1,num2:Real;operacao:String):Real;
      function validarCampos():Boolean;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnDividirClick(Sender: TObject);
   begin
     if validarCampos then
      begin
          if txtNum2.Text = '0' then

           showMessage('Você não pode dividir por zero')

          else

           txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'dividir'));
      end;
    end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin

  txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'multiplicar'));

end;

procedure TForm1.btSomarClick(Sender: TObject);
begin

   txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'somar'));

end;

procedure TForm1.btSubtrairClick(Sender: TObject);
begin

  txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'subtrair'));

end;



function TForm1.calculaResultado(num1,num2:Real;operacao:String): Real;

var
  resultado:Real;

begin

  if operacao = 'somar' then
     resultado := num1 + num2;

  if operacao = 'subtrair' then
     resultado := num1 - num2;

  if operacao = 'multiplicar' then
     resultado := num1 * num2;

  if operacao = 'dividir' then
     resultado := num1 / num2;

     {
       A palavra Result é uma reservada (diretiva) que se refere ao retorno da função chamada
       por isso para que possa retornar o resultado do calculo eu digo que o "Result" dessa função
       é o resultado
      }
     Result := resultado;




end;

procedure TForm1.opcVisualClick(Sender: TObject);
begin
  case opcVisual.ItemIndex of

     {
       caso eu precise executar mais de uma linha dentro do case
       essa linhas ou logica devem ficar de ntro de um begin e de um end
       para que o delph saiba onde começa e onde termina o case
     }

     0:TStyleManager.SetStyle('Windows');
     1: TStyleManager.SetStyle('Glow');
     2: TStyleManager.SetStyle('Aqua Light Slate');
  end;

end;

function TForm1.validarCampos: Boolean;
begin
    if(txtNum1.Text = '') or (txtNum2.Text ='') then
      Result := False
    else
      Result := True;
end;


end.
