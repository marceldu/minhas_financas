unit uLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts;

type
  TfrmLogin = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    TabControl: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Rectangle2: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}

end.
