program MinhasFinancas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {frmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  Frame.Lancamento.Clean in 'Frames\Frame.Lancamento.Clean.pas' {FrameLancamentoClean: TFrame},
  Frame.Lancamento in 'Frames\Frame.Lancamento.pas' {FrameLancamento: TFrame},
  uLoading in 'Units\uLoading.pas',
  untUserFacade in 'Facade\untUserFacade.pas',
  uSession in 'Units\uSession.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
