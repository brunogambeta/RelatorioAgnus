program RelatorioAgnus;

uses
  Vcl.Forms,
  TelaPrincipal in 'TelaPrincipal.pas' {frmTelaPrincipal},
  TelaConfiguracao in 'TelaConfiguracao.pas' {frmTelaConfiguracao},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTelaPrincipal, frmTelaPrincipal);
  Application.CreateForm(TfrmTelaConfiguracao, frmTelaConfiguracao);
  Application.Run;
end.
