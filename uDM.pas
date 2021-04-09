unit uDM;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection;

type
  TDM = class(TDataModule)
    Conn: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
