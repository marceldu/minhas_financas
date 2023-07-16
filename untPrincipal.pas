unit untPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    Layout1: TLayout;
    lblLogarConta: TLabel;
    lblNome: TLabel;
    Image1: TImage;
    Layout2: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Rectangle3: TRectangle;
    lbSaldoPrevisto: TLabel;
    rectSaldoConsumido: TRectangle;
    lblSaldoConsumido: TLabel;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    cbxMesRef: TComboBox;
    Rectangle6: TRectangle;
    Label2: TLabel;
    cbxAnoRef: TComboBox;
    lblPercConsumido: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

end.
