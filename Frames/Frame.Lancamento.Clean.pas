unit Frame.Lancamento.Clean;

interface

uses
  StrUtils, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, System.ImageList, FMX.ImgList;

type
  TFrameLancamentoClean = class(TFrame)
    Rectangle4: TRectangle;
    lblTipoLancamento: TLabel;
    lblDataLancamento: TLabel;
    Rectangle1: TRectangle;
    lblValorLancamento: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
