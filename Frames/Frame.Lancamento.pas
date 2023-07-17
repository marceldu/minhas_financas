unit Frame.Lancamento;

interface

uses
  StrUtils, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.ImageList, FMX.ImgList;

type
  TFrameLancamento = class(TFrame)
    Rectangle4: TRectangle;
    lblTipoLancamento: TLabel;
    lblDataLancamento: TLabel;
    Rectangle1: TRectangle;
    lblValorLancamento: TLabel;
    ListaImagens: TImageList;
    imgCombustivel: TImage;
    Image1: TImage;
    ImgCompras: TImage;
    ImgMercado: TImage;
    ImgFarmacia: TImage;
    imgRestaurante: TImage;
    ImgOutros: TImage;
    Circle1: TCircle;
    imgTipoLancamento: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarImage(const pTipoLanc: string);
  end;

implementation

{$R *.fmx}

procedure TFrameLancamento.CarregarImage(const pTipoLanc: string);
var
  vSizeF: TSizeF;

  vImageList: TCustomImageList;

  vImage: TBitMap;

begin
  vSizeF.cx := 16;
  vSizeF.cy := 16;

  case AnsiIndexStr(UpperCase(pTipoLanc), ['OUTROS','COMBUSTIVEL','MERCADO','COMPRAS','FARMACIA']) of
    0 : imgTipoLancamento.Bitmap := ImgOutros.Bitmap;
    1 : imgTipoLancamento.Bitmap := imgCombustivel.Bitmap;
    2 : imgTipoLancamento.Bitmap := ImgMercado.Bitmap;
    3 : imgTipoLancamento.Bitmap := ImgCompras.Bitmap;
    4 : imgTipoLancamento.Bitmap := ImgFarmacia.Bitmap;
  end;

end;

end.
