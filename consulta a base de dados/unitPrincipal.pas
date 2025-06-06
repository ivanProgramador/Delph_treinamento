unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    opcoes: TRadioGroup;
    txtConsulta: TEdit;
    lblConsulta: TLabel;
    btRealizarConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;



procedure TForm1.btRealizarConsultaClick(Sender: TObject);
begin

  //fechando a consulta em andamento
  DM.sqlConsulta.close;

  //limpando a varivel que guarda a consulta
  DM.sqlConsulta.SQL.clear;

  //testando a op��o selecionada pelo usuario
  if(opcoes.ItemIndex = 0) then
    begin
      //atribuindo o valor recebdido no campo ao parametro
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');

      //devolvendo a querie com o valor recebido
      DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
    end;


  if(opcoes.ItemIndex = 1) then
    begin
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
      DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
    end;


  DM.sqlConsulta.Open;



end;

procedure TForm1.opcoesClick(Sender: TObject);
begin

   if(opcoes.ItemIndex = 0) then
     begin

       lblConsulta.Caption := 'Digite o nome';

     end;

   if(opcoes.ItemIndex = 1) then
     begin

       lblConsulta.Caption := 'Digite o bairro';

     end;


end;

end.
