unit uConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ToolEdit, CurrEdit,
  RXGrids, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlProcessor;

type
  TFrmConfig = class(TForm)
    D: TPageControl;
    Solos: TTabSheet;
    Estacas: TTabSheet;
    Metodos: TTabSheet;
    PgControlMetodos: TPageControl;
    TabSheet7: TTabSheet;
    Panel4: TPanel;
    Image5: TImage;
    Label6: TLabel;
    Label8: TLabel;
    cbTipoSoloDecourt: TComboBox;
    vlr_alphaDecourt: TRxCalcEdit;
    GridDecourt: TStringGrid;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    GridSolos: TStringGrid;
    Panel2: TPanel;
    Image3: TImage;
    Label9: TLabel;
    edtSolo: TEdit;
    Panel3: TPanel;
    Image4: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EstacaFatorF1: TRxCalcEdit;
    cbEstaca: TComboBox;
    EstacaDiametro: TRxCalcEdit;
    EstacaPerimetro: TRxCalcEdit;
    EstacaFatorF2: TRxCalcEdit;
    GridEstaca: TStringGrid;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    cbTipoEstaca: TComboBox;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure _CarregarDecourt;
    procedure montaGridSolos;
    procedure AdicionarDecourt;
    procedure montaGridDecourt;
    procedure vlr_alphaDecourtKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDecourtDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GridDecourtSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
    procedure AdicionarSOLO;
  public
    { Public declarations }
  end;

var
  FrmConfig: TFrmConfig;

implementation

{$R *.dfm}
uses uDM,uFunc;

procedure TFrmConfig.FormCreate(Sender: TObject);
begin
 _LoadCombo(cbTipoSoloDecourt,FrmConfig,'solos');
 _LoadCombo(cbTipoEstaca,FrmConfig,'estacas_tipos');
 _CarregarDecourt;
end;


procedure TFrmConfig._CarregarDecourt;
var
   cSql:String;
   cQry:TZQuery;
   i:integer;
begin
  try
   cQry:=TZQuery.Create(Self);
   cQry.Connection:=uDM.DM.Conn;

   GridDecourt.RowCount:=1;
   GridDecourt.Cells[0,0]:='Solo';
   GridDecourt.Cells[1,0]:='Vlr.Alpha';
   GridDecourt.Cells[2,0]:='Excluir';

   with cQry do begin
     Close;

     cSql:='SELECT              '+
           '   s.descricao,     '+
           '   ms.vlr_alpha     '+
           ' FROM               '+
           '  metodos_solos ms  '+
           '  INNER JOIN solos s ON s.id=ms.id_solos  '+
           ' WHERE              '+
           '  ms.id_metodos=1   '+
           'ORDER BY     '+
           '  s.descricao ASC ';
     sql.clear;
     sql.Add(cSql);
     Open;
     if Eof then begin
      GridDecourt.RowCount:=GridDecourt.RowCount+1;
     end else begin
       while not eof do begin
         GridDecourt.RowCount:=GridDecourt.RowCount+1;
         GridDecourt.Cells[0,GridDecourt.RowCount-1]:=fieldbyname('descricao').asstring;
         GridDecourt.Cells[1,GridDecourt.RowCount-1]:=fieldbyname('vlr_alpha').asstring;
         GridDecourt.Cells[2,GridDecourt.RowCount-1]:='';
         Next;
       end;
     end;
     Close;
   end;
   GridDecourt.FixedRows:=1;

   FreeAndNil(cQry);
 //  SortStringGrid(GridDecourt,0,2);

   except
       ShowMessage('Erro ao conectar ao banco de dados');
   end;
end;
procedure TFrmConfig.vlr_alphaDecourtKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_RETURN then begin
      AdicionarDecourt;
    end;

end;

procedure TFrmConfig.AdicionarSOLO;
var
  s:string;
  i:integer;
begin
 s:=trimright(edtSolo.text);
 if (s='')  then Exit;
 montaGridSolos;
// SortStringGrid(GridSolos,0,2);
 _LoadCombo(cbTipoSoloDecourt,FrmConfig,'solos');
 // sortGrid;
// desenhar;


end;

procedure TFrmConfig.montaGridSolos;
var
   i:Integer;

   totLines:Integer;

   achou:Boolean;
   iAchou:integer;
   sSolo:string;
begin
       if TrimRight(edtSolo.text)='' then exit;
       
       totLines:=GridSolos.RowCount;
       //tenta localizar
       achou:=false;
       for i:=1 to totLines-1 do begin
         if not achou then begin
           sSolo :=GridSolos.Cells[0,i];
           if sSolo<>'' then begin
             if (sSolo=TrimRight(edtSolo.Text)) then begin
               achou:=true;
               iAchou:=i;
             end;
            end;
         end;
       end;
       if not achou then begin
         i:=totLines-1;
         if ( TrimRight(TrimLeft(GridSolos.Cells[0,i]))<>'' ) then begin
           GridSolos.RowCount:=GridSolos.RowCount+1;
           i:=i+1;
          end;
       end else begin
         Application.MessageBox('Ja foi lancado!', 'Ja foi lancado!', MB_OK + MB_ICONWARNING)  ;
         edtSolo.Text:='';
         edtSolo.SetFocus;
         Exit;
       end;
       _ExecSql('INSERT INTO solos (descricao) VALUES ('+#39+TrimRight( edtSolo.Text)+#39+')');
       GridSolos.Cells[0,i]:=TrimRight( edtSolo.Text);
       GridSolos.Cells[1,i]:='';
       edtSolo.Text:='';
       edtSolo.SetFocus;

end;

procedure TFrmConfig.AdicionarDecourt;
var
  s:string;
  i:integer;
begin
 s:=trimright(cbtiposoloDecourt.text);
 if (s='') or  (vlr_alphaDecourt.Value=0) then Exit;
 montaGridDecourt;
 //SortStringGrid(GridDecourt,0,2);
 // sortGrid;
// desenhar;


end;

procedure TFrmConfig.montaGridDecourt;
var
   i:Integer;
   p,g:Real;

   totLines:Integer;

   achou:Boolean;
   iAchou:integer;
   sCelValue1,sCelValue2:string;
   sComboIdx:integer;
   sSql,sIdSolo:string;
begin
       sComboIdx:=cbtiposoloDecourt.ItemIndex;
       totLines:=GridDecourt.RowCount;
       //tenta localizar
       achou:=false;
       for i:=1 to totLines-1 do begin
         if not achou then begin
           sCelValue1 :=GridDecourt.Cells[0,i];
           sCelValue2 :=GridDecourt.Cells[1,i];
           if sCelValue1<>'' then begin
             p:=StrToFloat(sCelValue2);
             if (sCelValue1=TrimRight(cbtiposoloDecourt.text)) then begin
               achou:=true;
               iAchou:=i;
             end;
             if (sCelValue1=TrimRight(cbtiposoloDecourt.text)) and (p=vlr_alphaDecourt.value ) then exit;

            end;
         end;
       end;

       if not achou then begin
         i:=totLines-1;
         if ( TrimRight(TrimLeft(GridDecourt.Cells[0,i]))<>'' ) then begin
           GridDecourt.RowCount:=GridDecourt.RowCount+1;
           i:=i+1;
          end;
       end else begin
         if Application.MessageBox('Ja foi lancado!, deseja atualizar?', 'Ja foi lancado!', MB_YESNO + MB_ICONWARNING) = IDNO then  EXIT;
         i:=iAchou;
       end;

       GridDecourt.Cells[0,i]:=trimright(trimleft( cbtiposoloDecourt.Text ));
       g:=vlr_alphaDecourt.value;
       GridDecourt.Cells[1,i]:=FormatFloat('######0.00',g);
       GridDecourt.Cells[2,i]:='';
       sSql:='SELECT id FROM solos WHERE descricao='+#39+ trimright(trimleft( cbtiposoloDecourt.Text )) +#39;
       sIdSolo:=_ReturnField(sSql);
       sSql:='INSERT INTO metodos_solos (id_metodos,id_solos,vlr_alpha) VALUES ('+
                                            '1,'+sIdsolo+','+_VirgulaParaPonto(FormatFloat('######0.00',g))+')';

       _ExecSql(sSql);



       vlr_alphaDecourt.Value:=0;
       cbtiposoloDecourt.ItemIndex:=sComboIdx;
       cbtiposoloDecourt.SetFocus;



end;

procedure TFrmConfig.GridDecourtDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
 

var
  S: string;
  SavedAlign: word;
  aCanvas: TCanvas;
begin

  with GridDecourt do begin
    S := Cells[ACol, ARow]; // cell contents
    SavedAlign := SetTextAlign(Canvas.Handle, TA_CENTER);
    Canvas.TextRect(Rect,Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
    SetTextAlign(Canvas.Handle, SavedAlign);

    if RowCount>=1 then begin
      if ARow>0 then begin
        if ACol=ColCount-1 then begin
          //if (TrimRight(Cells[0,ARow])<>'') then begin
             aCanvas := (Sender as TStringGrid).Canvas;  // To avoid with statement
             aCanvas.FillRect(Rect);
             aCanvas.Draw(Rect.Left+25, Rect.Top+2, Image1.Picture.Bitmap) ;
          //end;
        end;
      end;
    end;
  end;
end;

procedure TFrmConfig.GridDecourtSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 // _DelRow(GridDecourt,ARow,ACol);
end;

end.
