unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls,
  uLoading;

type
  TfrmLogin = class(TForm)
    Layout1: TLayout;
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabConta: TTabItem;
    rectLogin: TRectangle;
    Rectangle2: TRectangle;
    edtContaNome: TEdit;
    edtContaSenha: TEdit;
    rectBtnLogin: TRectangle;
    btnLogin2: TSpeedButton;
    Circle1: TCircle;
    Image1: TImage;
    lblLogarConta: TLabel;
    Rectangle1: TRectangle;
    Rectangle3: TRectangle;
    edtEmail: TEdit;
    edtSenha: TEdit;
    Rectangle4: TRectangle;
    btnLogin: TSpeedButton;
    lblCriarConta: TLabel;
    edtContaEmail: TEdit;
    procedure btnLoginClick(Sender: TObject);
  private
    procedure AbrirFrmPrincipal;
    procedure ThreadLoginTerminante(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TfrmLogin.AbrirFrmPrincipal;
begin
  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal, frmPrincipal);

  Application.MainForm := frmPrincipal;
  frmPrincipal.Show;
  frmLogin.Close;
end;

procedure TfrmLogin.ThreadLoginTerminante(Sender: TObject);
begin
  // Para bolinha
  TLoading.Hide;

  if Sender is TThread then
    if Assigned(TThread(Sender).FatalException) then
    begin
      showmessage(Exception(TThread(sender).FatalException).Message);
      exit;
    end;

  AbrirFrmPrincipal;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  vThread: TThread;
begin
  // Inicia bolinha
  TLoading.Show(frmLogin, '');

  vThread := TThread.CreateAnonymousThread(procedure
  begin

  end);

  vThread.OnTerminate := ThreadLoginTerminante;
  vThread.Start;
end;

end.
