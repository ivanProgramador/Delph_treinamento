unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    sistema1: TMenuItem;
    configuraes1: TMenuItem;
    Usuarios1: TMenuItem;
    N1: TMenuItem;
    sair1: TMenuItem;
    Cadastros1: TMenuItem;
    consultas1: TMenuItem;
    Criarnovo1: TMenuItem;
    Relatrios1: TMenuItem;
    Acessos1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
