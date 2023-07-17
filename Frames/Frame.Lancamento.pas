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
    imgTipoLancamento: TImage;
    ListaImagens: TImageList;
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
begin
  case AnsiIndexStr(UpperCase(pTipoLanc), ['OUTROS','COMBUSTIVEL','MERCADO','COMPRAS','FARMACIA']) of
    0 : imgTipoLancamento.Bitmap := ListaImagens.Bitmap(vSizeF, 0);
    1 : imgTipoLancamento.Bitmap := ListaImagens.Bitmap(vSizeF, 1);
    2 : imgTipoLancamento.Bitmap := ListaImagens.Bitmap(vSizeF, 2);
    3 : imgTipoLancamento.Bitmap := ListaImagens.Bitmap(vSizeF, 3);
    4 : imgTipoLancamento.Bitmap := ListaImagens.Bitmap(vSizeF, 4);
  end;
end;

end.
