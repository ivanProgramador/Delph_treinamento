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
    btMultiplicar: TButton;
    btDividir: TButton;
    Label3: TLabel;
    txtResultado: TEdit;
    opcVisual: TRadioGroup;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtrairClick(Sender: TObject);
    procedure btMultiplicarClick(Sender: TObject);
    procedure btDividirClick(Sender: TObject);
    procedure opcVisualClick(Sender: TObject);
    procedure txtNum1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
      {
        em uuma função no Delph depois de declarar eu tenho de dizer
        que tipo de dado ela vai retornar no caso da função abaixo ela vai retornar
        Real

       }
      function calculaResultado(num1,num2:Real;operacao:String):Real;
      function validarCampos():Boolean;
      procedure habilitarBotoes(habilitado: boolean);
      procedure registrarLog(acao:String);

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btDividirClick(Sender: TObject);
   begin
     if validarCampos then
      begin
          if txtNum2.Text = '0' then
           begin
              showMessage('Você não pode dividir por zero');
              registrarLog('Erro de didvisão por zero');
           end

          else

           if ValidarCampos then
              begin
               txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'dividir'));
               registrarLog('Dividir, num1= ' + txtNum1.Text +'num2 ='+txtNum2.Text + ' , resultado = ' + txtResultado.Text );
           end;
      end;
    end;






procedure TForm1.btMultiplicarClick(Sender: TObject);
begin

   if ValidarCampos then
    begin
       txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'multiplicar'));
       registrarLog('Multiplicar, num1= ' + txtNum1.Text +'num2 ='+txtNum2.Text + ' , resultado = ' + txtResultado.Text );
     end;

end;

procedure TForm1.btSomarClick(Sender: TObject);

begin
  if ValidarCampos then

    begin
       txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'somar'));
       registrarLog('Somar, num1= ' + txtNum1.Text +'num2 ='+txtNum2.Text + ' , resultado = ' + txtResultado.Text );
     end;
end;




procedure TForm1.btSubtrairClick(Sender: TObject);
begin

  if ValidarCampos then
    begin
       txtResultado.Text := FloatToStr(calculaResultado(StrToFloat(txtNum1.text),StrToFloat(txtNum2.text),'subtrair'));
       registrarLog('Subtrair, num1= ' + txtNum1.Text +'num2 ='+txtNum2.Text + ' , resultado = ' + txtResultado.Text );
     end;
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    registrarLog('Aplicação finalizada');
    registrarLog('--------------------');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
       registrarLog('--------------------');
       registrarLog('Aplicação iniciada');
end;




procedure TForm1.habilitarBotoes(habilitado: boolean);
begin
    btSomar.Enabled := habilitado;
    btSubtrair.Enabled := habilitado;
    btMultiplicar.Enabled := habilitado;
    btDividir.Enabled := habilitado;

end;

procedure TForm1.opcVisualClick(Sender: TObject);
begin
  case opcVisual.ItemIndex of

     {
       caso eu precise executar mais de uma linha dentro do case
       essa linhas ou logica devem ficar de ntro de um begin e de um end
       para que o delph saiba onde começa e onde termina o case
     }

     0:
      begin
       TStyleManager.SetStyle('Windows');
       registrarLog('Tema alterado para Windows');
      end;
     1:
       begin
        TStyleManager.SetStyle('Glow');
        registrarLog('Tema alterado para Glow');
      end;

     2:
       begin
       TStyleManager.SetStyle('Aqua Light Slate');
       registrarLog('Tema alterado para Light Slate');
      end;
  end;

end;


procedure TForm1.registrarLog(acao: String);

var
 //quando eu digo que o tipo de uma avrivel é TextFile ele entende qua eu estou falando de um aruivo de texto
 //porque se trata de uma classe nativa
 arquivo: TextFile;

begin
   try
     //criando o arquivo com base na variavel
     AssignFile(arquivo,'Logs.txt');

     //testando se oa ruivo ja existe se existir ele ebrea
     if FileExists('Logs.txt') then
        Append(arquivo)

     else
       //se não existir ele cria e abre
        Rewrite(arquivo);

        //escrevend o aruivo a data/hora taual convertida em string
        //e concatenando ação que vem como parametro

        WriteLn(arquivo,'[' + DateTimeToStr(now()) + ']' + acao );

   finally
       CloseFile(arquivo);

   end;

end;




procedure TForm1.txtNum1Change(Sender: TObject);
begin
  if validarCampos then
    habilitarBotoes(True)
  else
    habilitarBotoes(false)
end;



function TForm1.validarCampos: Boolean;
begin
    if(txtNum1.Text = '') or (txtNum2.Text ='') then
      Result := False
    else
    {
      Mesmo sendo uma calculadora existe a possibilidade do cliente digitar um numero
      então preciso fazer um tratamento para que ele nãop veja que deu uma excessão
      então estou usando o "try" o codigo dentro dele vai tentar converter a string digitada
      em numero mas caso não sseja possivel ele vai jgar o erro pra dentro
      da avriavel E: que vai receber a excessão de conversão e retornar false
      caso a execessão exista então os botões vão permanecer desabilitados
      para o cliente o sistema ignora a letra digitada nisso o sistema não
      vai travar e vai ficar esperando um numero.

    }
      try
        strToFloat(txtNum1.text);
        strToFloat(txtNum2.text);
        Result := True;

        except
          on E: EconvertError do
            begin
                Result := False;
            end;

      end;
end;


end.
