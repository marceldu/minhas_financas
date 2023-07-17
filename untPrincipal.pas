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
    lbxLancamentos: TListBox;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    procedure CarregarUltimosLancamentos;
    procedure AddLancamento(pIdLanc: integer; const pTipoLanc, pDataLanc, pValorLanc: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses Frame.Lancamento, Frame.Lancamento.Clean;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  CarregarUltimosLancamentos;
end;

procedure TfrmPrincipal.CarregarUltimosLancamentos;
begin
  AddLancamento(1, 'Compras','16/07/2023','55,55');
  AddLancamento(2, 'Mercado','16/07/2023','86,10');
  AddLancamento(3, 'Combustivel','15/07/2023','22,00');
  AddLancamento(4, 'Farmacia','14/07/2023','41,30');
  AddLancamento(5, 'Outros','12/07/2023','7,30');
  AddLancamento(1, 'Compras','10/07/2023','30,00');
end;

procedure TfrmPrincipal.AddLancamento(pIdLanc: integer; const pTipoLanc, pDataLanc, pValorLanc: string);
var
  vItem: TListBoxItem;
  vFrame: TFrameLancamentoClean;
begin
  vItem := TListBoxItem.Create(lbxLancamentos);
  vItem.Selectable := False;
  vItem.Text := '';
  vItem.Height := 60;
  vItem.Tag := pIdLanc;

  // Criar frame
  vFrame := TFrameLancamentoClean.Create(vItem);
  vFrame.lblTipoLancamento.Text := pTipoLanc;
  vFrame.lblDataLancamento.Text := pDataLanc;
  vFrame.lblValorLancamento.Text := pValorLanc;
//  vFrame.CarregarImage(pTipoLanc);

  vItem.AddObject(vFrame);

  lbxLancamentos.AddObject(vItem);
end;

end.
