unit untLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls;

type
  TfrmLogin = class(TForm)
    Layout1: TLayout;
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabConta: TTabItem;
    rectLogin: TRectangle;
    Rectangle2: TRectangle;
    edtCadNome: TEdit;
    edtCadSenha: TEdit;
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
    edtCadEmail: TEdit;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

uses untPrincipal;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  if not Assigned(frmPrincipal) then
    Application.CreateForm(TfrmPrincipal, frmPrincipal);

  Application.MainForm := frmPrincipal;
  frmPrincipal.Show;
  frmLogin.Close;
end;

end.
