program MinhasFinancas;

uses
  System.StartUpCopy,
  FMX.Forms,
  untLogin in 'untLogin.pas' {frmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  Frame.Lancamento in 'Frames\Frame.Lancamento.pas' {FrameLancamento: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
