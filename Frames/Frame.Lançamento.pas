unit Frame.Lançamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type
  TFrameLancamento = class(TFrame)
    Rectangle4: TRectangle;
    lblTipoLancamento: TLabel;
    lblDataLancamento: TLabel;
    Rectangle1: TRectangle;
    lblValorLancamento: TLabel;
    imgTipoLancamento: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
