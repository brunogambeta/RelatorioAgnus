unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Menus, Data.DB, Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CalendarPicker1: TCalendarPicker;
    CalendarPicker2: TCalendarPicker;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Configurao1: TMenuItem;
    ADOConnection1: TADOConnection;
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
ShowMessage('TESTE DE IMPRESS�O');
end;

end.
