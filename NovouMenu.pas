unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, pngimage, ComCtrls, Grids, DBGrids,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;



type
  TFrmMenu = class(TForm)
    pnMenu: TPanel;
    pnMenuBar: TPanel;
    pnTop: TPanel;
    pnLeft: TPanel;
    pn_06: TPanel;
    Image1: TImage;
    pn_01: TPanel;
    Image2: TImage;
    pn_02: TPanel;
    Image3: TImage;
    pn_03: TPanel;
    Image4: TImage;
    pn_04: TPanel;
    Image5: TImage;
    pn_05: TPanel;
    Image6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnGeral: TPanel;
    Menu1: TPanel;
    DBGrid1: TDBGrid;
    dsProjetos: TDataSource;
    QryProjetos: TZQuery;
    procedure pn_06MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure _doExit;

  public
    { Public declarations }
  end;

const
  cor_azul_escuro:TColor=$00682622;
  cor_azul_medio :TColor=$00CB6863;
  cor_azul_claro :TColor=$00DBC87D;
  cor_azul_extra_claro:TColor=$00F2EBD0;
var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}
uses uDM;




procedure TFrmMenu.pn_06MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);

begin
 if GetCaptureControl <> Sender then
   begin
      TPanel(Sender).color := cor_azul_claro;
      SetCaptureControl(TPanel(Sender));
   end   else begin
    if not PtInRect(TPanel(Sender).ClientRect, Point(X, Y)) then
    begin
      SetCaptureControl(nil);
      TPanel(Sender).color := cor_azul_escuro;
    end;
  end;
end;

procedure TFrmMenu.FormCreate(Sender: TObject);
begin

 pnMenu.Color:= cor_azul_escuro;
 pnLeft.Color:= cor_azul_escuro;
 pnTop.Color:= cor_azul_escuro;
 pnMenuBar.Color:= cor_azul_escuro;
 pn_01.Color:= cor_azul_escuro;
 pn_02.Color:= cor_azul_escuro;
 pn_03.Color:= cor_azul_escuro;
 pn_04.Color:= cor_azul_escuro;
 pn_05.Color:= cor_azul_escuro;
 pn_06.Color:= cor_azul_escuro;


end;

procedure TFrmMenu._doExit;
begin
 Application.Terminate;
end;

procedure TFrmMenu.Image1Click(Sender: TObject);
begin
 _doExit;
end;

procedure TFrmMenu.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not odd(QryProjetos.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := cor_azul_extra_claro;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

end.
