unit TelaConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TfrmTelaConfiguracao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btTestarConexao: TButton;
    Label4: TLabel;
    editNomeServidor: TEdit;
    editUsuarioConexao: TEdit;
    editSenhaAcesso: TEdit;
    editBancoDados: TEdit;
    btsalvarConexao: TButton;
    procedure btTestarConexaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaConfiguracao: TfrmTelaConfiguracao;

implementation

{$R *.dfm}

procedure TfrmTelaConfiguracao.btTestarConexaoClick(Sender: TObject);
var
srtConexao : String;
nomeServidor : String;
bancoDados : String;
usuarioAcesso : String;
senhaAcesso : String;



begin

  if editNomeServidor.Text = '' then
    begin
      ShowMessage('Informe um nome ou ip de servidor para conex�o');
      exit;
    end;

    if editUsuarioConexao.Text = '' then
    begin
      ShowMessage('Informe um usu�rio para conex�o');
        exit;
    end;
    if editSenhaAcesso.Text = '' then
    begin
      ShowMessage('Informe uma senha para conex�o');
        exit;
    end;
    if editBancoDados.Text = '' then
    begin
      ShowMessage('Informe um nome de banco de dados para conex�o');
        exit;
    end;

    nomeServidor := editNomeServidor.Text;
    usuarioAcesso := editUsuarioConexao.Text;
    senhaAcesso := editSenhaAcesso.Text;
    bancoDados := editBancoDados.Text;




    srtConexao := 'Provider=SQLNCLI11.1;Integrated Security="";Persist Security Info=True;User ID='+usuarioAcesso+';Password='+senhaAcesso+';Initial Catalog='+bancoDados+';Data Source=NOTEBOOKASUSBRU\SQLEXPRESS;Initial File Name="";Server SPN="";'







     // Provider=SQLNCLI11.1;Integrated Security="";Persist Security Info=False;User ID=sa;Initial Catalog=AGNUS_CERVEJARIA;Data Source=NOTEBOOKASUSBRU\SQLEXPRESS;Initial File Name="";Server SPN="";
end;

end.
