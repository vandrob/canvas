unit uCanvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ToolEdit, CurrEdit,
  RXGrids, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlProcessor, DBGrids, DBCtrls, ZSqlUpdate, ImgList, RXDBCtrl;


type
  TFrmMain = class(TForm)
    pnLeft: TPanel;
    PgControlGeral: TPageControl;
    TabSheet3: TTabSheet;
    pnNavProjetos: TPanel;
    NavProjetos: TDBNavigator;
    BtNovoProjetos: TBitBtn;
    GridProjetos: TDBGrid;
    pnProjetoEdicao: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    txtCliente: TDBEdit;
    txtObservacoes: TDBEdit;
    txtData_lcto: TDBDateEdit;
    pnBotoes: TPanel;
    btSalvarProjetos: TBitBtn;
    btCancelarProjetos: TBitBtn;
    TabSheet1: TTabSheet;
    GridCamadas: TStringGrid;
    PnDigitacaoCamadas: TPanel;
    lblArrasamento: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    cbtiposolo: TComboBox;
    Profundidade: TRxCalcEdit;
    cotaArrasamento: TRxCalcEdit;
    cotaTerreno: TRxCalcEdit;
    Button2: TButton;
    TabSheet2: TTabSheet;
    GridSPT: TStringGrid;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    CotaSPT: TRxCalcEdit;
    GolpesSPT: TRxCalcEdit;
    TabOpcoes: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    comboMetodos: TDBLookupComboBox;
    comboEstacasDiametros: TDBLookupComboBox;
    BtIncluirEstac: TBitBtn;
    GridEstacasProjeto: TDBGrid;
    TabSheet5: TTabSheet;
    Button1: TButton;
    dsEstacasDiametros: TDataSource;
    QryEstacasDiametros: TZQuery;
    QryEstacasDiametrosid: TIntegerField;
    QryEstacasDiametrosid_estacas_tipos: TIntegerField;
    QryEstacasDiametrosdescricao: TStringField;
    QryEstacasDiametrosdiametro: TFloatField;
    QryEstacasDiametrosfator_f1: TFloatField;
    QryEstacasDiametrosfator_f2: TFloatField;
    QryEstacasDiametrosperimetro: TFloatField;
    QryEstacasDiametrosdescricao_diametro: TStringField;
    QryMetodos: TZQuery;
    QryMetodosid: TIntegerField;
    QryMetodosdescricao: TStringField;
    dsMetodos: TDataSource;
    dsProjetos: TDataSource;
    projetos: TZQuery;
    projetosid: TIntegerField;
    projetosdata_lcto: TDateField;
    projetoscliente: TStringField;
    projetosobservacoes: TStringField;
    projetoscota_terreno: TFloatField;
    projetoscota_arrasamento: TFloatField;
    projetosid_metodos: TIntegerField;
    ToolbarImages: TImageList;
    ImageList1: TImageList;
    updtprojetos: TZUpdateSQL;
    EstacasProjetos: TZQuery;
    EstacasProjetosid: TIntegerField;
    EstacasProjetosid_projetos: TIntegerField;
    EstacasProjetosid_estacas_diametros: TIntegerField;
    EstacasProjetosdiametro: TFloatField;
    EstacasProjetosdescricao: TStringField;
    dsEstacasProjetos: TDataSource;
    procedure GridCamadasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cotaArrasamentoEnter(Sender: TObject);
    procedure cotaArrasamentoExit(Sender: TObject);
    procedure profundidadeEnter(Sender: TObject);
    procedure cotaTerrenoEnter(Sender: TObject);
    procedure cotaTerrenoExit(Sender: TObject);
    procedure GridCamadasSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure CotaSPTEnter(Sender: TObject);
    procedure CotaSPTExit(Sender: TObject);
    procedure GridSPTDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure GridSPTSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbtiposoloEnter(Sender: TObject);
    procedure SoloKEnter(Sender: TObject);
    procedure EstacaFatorF1Enter(Sender: TObject);
    procedure EstacaFatorF1Exit(Sender: TObject);
    procedure SoloBetaExit(Sender: TObject);
    procedure cbtiposoloExit(Sender: TObject);
    procedure cbTipoEstacaEnter(Sender: TObject);
    procedure cbTipoEstacaExit(Sender: TObject);
    function _GetSPT(sMetro:Integer):Integer;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ProfundidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cotaTerrenoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cotaArrasamentoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProfundidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CotaSPTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GolpesSPTKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbtiposoloKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure BtNovoProjetosClick(Sender: TObject);
    procedure btSalvarProjetosClick(Sender: TObject);
    procedure btCancelarProjetosClick(Sender: TObject);
    procedure GridProjetosDblClick(Sender: TObject);
    procedure GridProjetosCellClick(Column: TColumn);
    procedure GridProjetosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dsProjetosDataChange(Sender: TObject; Field: TField);
    procedure _AtualizarCotasMetodos;
    procedure comboMetodosExit(Sender: TObject);
    procedure BtIncluirEstacClick(Sender: TObject);
    procedure GridEstacasProjetoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure GridEstacasProjetoCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure _TelaProjetos(on_off:Integer);
    procedure Limpar;
    procedure _Calc_Linha_Solo;
    procedure _Calc_Arrasamento;
    function  _Calc_Camadas:Boolean;
    function  _Calc_SPT:Boolean;
    function  _Calc_Altura_Desenho:Integer;
    procedure montaGrid;
    procedure montaGridSPT;
    procedure SortStringGrid(var GenStrGrid: TStringGrid; ThatCol: Integer; myOption:Integer);
    procedure Desenhar;
    procedure Adicionar;
    procedure AdicionarSPT;
    procedure PreencherSolo;
    procedure ExecSql(cSql:string);
    procedure _DelRow(myGrid: TStringGrid;LineToDelete,ColumnClick:Integer);
    procedure  _LoadAllCombos;
    procedure _RotateText(sTxt:String;sX:Integer;sY:Integer);
    procedure _LoadProjetosCamadas;
    procedure _LoadCotasMetodos;
    procedure _LoadEstacasProjetos;
    procedure GravarProjetoSPTS;
    procedure _LoadProjetosSPTS;
  end;
  const scala=20;
  const _Cor_da_Folha1:TColor =clWhite;
  const _Cor_da_Folha2:TColor =clBlack;

  const _Cor_da_Linha1:TColor =clRed;
  const _Cor_da_Linha2:TColor =clBlack;
  const _Cor_da_Linha3:TColor =clWhite;
  const _Cor_da_Linha4:TColor =clLtGray;

  const _Cor_da_Letra1:TColor =clBlack;
  const _Cor_da_Letra2:TColor =clWhite;
  const _Cor_da_Letra3:TColor =clBlue;
  const _Cor_da_Letra4:TColor =clRed;
  const _Cor_da_Letra5:TColor =clLime;

var
  FrmMain: TFrmMain;
  wArrasamento:Integer;
  myDraw1: TImage;
  MeuArray: array of string;
  icbEstaca:Integer;
implementation

{$R *.dfm}
uses uDM,uFunc, uConfig, uConfiguracoes;

procedure TFrmMain._Calc_Arrasamento;
var
  ArrasamentoTxt:string;
begin
  if cotaArrasamento.Value=0 then Exit;


  wArrasamento:=StrToInt(FormatFloat('#####0', (cotaTerreno.Value -  cotaArrasamento.Value)*scala));
  with myDraw1 do begin

    Canvas.Pen.Width := 1;
    Canvas.Pen.Color := clRed;
    Canvas.Pen.Style := psDash;
    Canvas.Rectangle(300, 100,380,100+wArrasamento);

    Canvas.Pen.Width := 1;
    Canvas.Font.Color:=_Cor_da_Letra1;
    Canvas.Font.Name:='Arial';
    Canvas.Font.Style:=[];
    Canvas.Font.Size:=7;
    Canvas.TextOut(305, 100+wArrasamento-22, ' Arrasamento');
    Canvas.Font.Size:=8;
    if cotaTerreno.Value=0 then begin
       ArrasamentoTxt:=FormatFloat('####0.00',cotaArrasamento.Value);
    end else begin
       ArrasamentoTxt:='[ '+ FormatFloat('####0.00',cotaArrasamento.Value) +' ] '+  FormatFloat('####0.00',cotaTerreno.Value-cotaArrasamento.Value);
    end;

    Canvas.TextOut(305, 100+wArrasamento-14, ArrasamentoTxt);

    Canvas.Pen.Width := 1;
    Canvas.Pen.Color := clWhite;
    Canvas.Pen.Style := psSolid;
    Canvas.Rectangle(302, 100,378,102);
  end;
end;

procedure TFrmMain.Limpar;
begin
end;



procedure TFrmMain._Calc_Linha_Solo;
var
  R: TRect;
  s:string;

begin
   with myDraw1 do begin
    Canvas.Pen.Color := _Cor_da_Linha1;
    Canvas.Pen.Style := psSolid;
    Canvas.Pen.Width := 1;
    Canvas.MoveTo(100,100);
    Canvas.LineTo(300, 100);

    if ( cotaArrasamento.value=0 ) then begin
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := _Cor_da_Linha1;
      Canvas.Pen.Style := psDash;
      Canvas.MoveTo(300,100);
      Canvas.LineTo(380, 100);
    end;
    Canvas.Pen.Color := _Cor_da_Linha1;
    Canvas.Pen.Style := psSolid;
    Canvas.Pen.Width := 1;
    Canvas.MoveTo(380,100);
    Canvas.LineTo(700, 100);

    Canvas.Pen.Width := 1;
    Canvas.Brush.Color:=clYellow;
    R:= Rect(100, 80, 220, 95);
    Canvas.Rectangle(R);
    Canvas.Font.Name:='Arial';
    Canvas.Font.Size:=8;
    Canvas.Font.Style:=[];
     
    Canvas.Brush.Style:= bsClear;
    s:= '  Nivel do Solo:'+FormatFloat('####0',cotaTerreno.Value)+' mt';
    DrawText(Canvas.Handle, PChar(s), -1, R, TA_LEFT  );     //        {DT_END_ELLIPSIS or }DT_VCENTER or DT_SINGLELINE);TA_LEFT


   end;
end;



procedure TFrmMain.montaGrid;
var
   i:Integer;
   p:Real;
   achou:Boolean;
   iAchou,TotLines:integer;
   sAchou,sValue:String;

   sAcao,sSql:String;
   sIdProjeto,sIdSolo,sProfundidade:String;
begin


       //tenta localizar
       iAchou:=0;
       achou:=false;
       totLines:=GridCamadas.RowCount;
       for i:=1 to totLines-1 do begin
         if not achou then begin
           sAchou:=GridCamadas.Cells[0,i];
           sValue:=GridCamadas.Cells[1,i];
           if sAchou<>'' then begin
             p:=StrToFloat(sAchou);
             if (p=profundidade.Value) and (TrimRight(sValue)=TrimRight(cbtiposolo.Text)) then exit;
             if (p=profundidade.Value) and (TrimRight(sValue)<>TrimRight(cbtiposolo.Text)) then begin
               achou:=true;
               iAchou:=i;
             end;
            end;
         end;
       end;
       sAcao:='INSERT';
       if not achou then begin
         i:=totLines-1;
         if ( TrimRight(TrimLeft(GridCamadas.Cells[0,i]))<>'' ) then begin
           GridCamadas.RowCount:=GridCamadas.RowCount+1;
           i:=i+1;
          end;
       end else begin
         if Application.MessageBox('Ja foi lancado!, deseja atualizar?', 'Ja foi lancado!', MB_YESNO + MB_ICONWARNING) = IDNO then  EXIT;
         i:=iAchou;
         sAcao:='UPDATE';
       end;




       p:=profundidade.value;
       GridCamadas.Cells[0,i]:=FormatFloat('######0.00',p);
       GridCamadas.Cells[1,i]:=cbtiposolo.Text;

       sIdProjeto:=projetosid.AsString;
       sSql:='SELECT id FROM solos WHERE descricao='+#39+TrimRight(cbtiposolo.Text)+#39;
       sIdSolo:=_ReturnField(sSql);

       if sAcao='INSERT' then begin
          sSql:='INSERT INTO projetos_camadas (id_projetos,id_solos,profundidade) VALUES ('+
                #39+ _VirgulaParaPonto(sIdProjeto)+#39+','+#39+ _VirgulaParaPonto(sIdSolo)+#39+','+#39+_VirgulaParaPonto(FormatFloat('######0.00',p))+#39+')';

       end else begin
         sSql:='UPDATE projetos_camadas SET id_solos='+#39+_VirgulaParaPonto( sIdSolo )+#39+
                                          ' WHERE id_projetos='+#39+  _VirgulaParaPonto(sIdProjeto)+#39+
                                          '  AND  profundidade='+#39+ _VirgulaParaPonto(FormatFloat('######0.00',p))+#39;
       end;
       _ExecSql(sSql);

       profundidade.Text:='';
       profundidade.SetFocus;


end;

procedure TFrmMain.SortStringGrid(var GenStrGrid: TStringGrid; ThatCol: Integer; myOption:Integer);
const
  // Define the Separator
  TheSeparator = '@';
var
  CountItem, I, J, K, ThePosition: integer;
  MyList: TStringList;
  MyString, TempString: string;
begin
  // Give the number of rows in the StringGrid
  CountItem := GenStrGrid.RowCount;
  //Create the List
  MyList        := TStringList.Create;
  MyList.Sorted := False;
  try
    begin
      for I := 1 to (CountItem - 1) do
        if myOption=1 then
         MyList.Add(FormatFloat('0000.00', StrToFloat(GenStrGrid.Rows[I].Strings[ThatCol])) + TheSeparator +  GenStrGrid.Rows[I].Text)
        else
         MyList.Add(TrimLeft(GenStrGrid.Rows[I].Strings[ThatCol]) + TheSeparator +  GenStrGrid.Rows[I].Text);
        ;
      //Sort the List
      Mylist.Sort;

      for K := 1 to Mylist.Count do
      begin
        //Take the String of the line (K ?1)
        MyString := MyList.Strings[(K - 1)];
        //Find the position of the Separator in the String
        ThePosition := Pos(TheSeparator, MyString);
        TempString  := '';
        {Eliminate the Text of the column on which we have sorted the StringGrid}
        TempString := Copy(MyString, (ThePosition + 1), Length(MyString));
        MyList.Strings[(K - 1)] := '';
        MyList.Strings[(K - 1)] := TempString;
      end;

      // Refill the StringGrid
      for J := 1 to (CountItem - 1) do
        GenStrGrid.Rows[J].Text := MyList.Strings[(J - 1)];
    end;
  finally
    //Free the List
    MyList.Free;
  end;
end;

procedure TFrmMain.GridCamadasDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);

var
  S: string;
  SavedAlign: word;
  aCanvas: TCanvas;
  //AGrid : TStringGrid;

begin
  {
   AGrid:=TStringGrid(Sender);

   if gdFixed in State then //if is fixed use the clBtnFace color
      AGridCamadas.Canvas.Brush.Color := clBtnFace
   else
   if gdSelected in State then //if is selected use the clAqua color
      AGridCamadas.Canvas.Brush.Color := clAqua
   else
      AGridCamadas.Canvas.Brush.Color := clWindow;

   AGridCamadas.Canvas.FillRect(Rect);
   AGridCamadas.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, AGridCamadas.Cells[ACol, ARow]);
   }



  if (ACol = 1) or (ARow=0) then begin  // ACol is zero based
    S := GridCamadas.Cells[ACol, ARow]; // cell contents
    SavedAlign := SetTextAlign(GridCamadas.Canvas.Handle, TA_CENTER);
    GridCamadas.Canvas.TextRect(Rect,
    Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
    SetTextAlign(GridCamadas.Canvas.Handle, SavedAlign);
  end;

  if (ACol = 0) and (ARow>0) then begin  // ACol is zero based
    S := GridCamadas.Cells[ACol, ARow]; // cell contents
    SavedAlign := SetTextAlign(GridCamadas.Canvas.Handle, TA_RIGHT);
    GridCamadas.Canvas.TextRect(Rect,
      Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
    SetTextAlign(GridCamadas.Canvas.Handle, SavedAlign);
  end;

  if (ACol <> 2) or (ARow = 0) then  Exit;

  if GridCamadas.RowCount>=1 then begin
    if (TrimRight(GridCamadas.Cells[0,ARow])<>'') then begin
     aCanvas := (Sender as TStringGrid).Canvas;  // To avoid with statement
     aCanvas.FillRect(Rect);
     aCanvas.Draw(Rect.Left+25, Rect.Top+5, Image1.Picture.Bitmap) ;
    end; 
  end;
end;


function TFrmMain._Calc_Camadas:boolean;
var
  cota1,i,pA,p0,p,lastProf,pointer_line:integer;
  pCol_1,pCol_2:string;
  //pSoloChk,pSolo:string;
  pointerGrid:Integer;
  pointerVetor:Integer;
  meuArray: array of array of string;
  meuSolo:string;
  r:Real;
  s:string;
  scol:Integer;
  iSpt:Integer;
  sSpt:string;

  sSoloChk1,sSoloChk2:String;
  sSoloQtd:Integer;
  sPrintLabelOpen:Boolean;
begin

  result:=true;
  i:=GridCamadas.RowCount;
  if i<2 then begin
     Application.MessageBox('Efetue lancamentos de camadas!', 'Atencao', MB_OK +MB_ICONHAND );
     result:=false;
     exit;
  end;


  //------------------------------------------------------------------------
  // preencher vetores pela quantidade maxima de profundidade + 0 (ZERO)}
  //------------------------------------------------------------------------
  s:=GridCamadas.Cells[0,GridCamadas.RowCount-1];
  lastProf:=StrToInt(FormatFloat('####0',StrToFloat(GridCamadas.Cells[0,GridCamadas.RowCount-1])));
  meuSolo :='NAO DEFINIDO';//GridCamadas.Cells[1,GridCamadas.RowCount-1];
  i:=lastProf+1;
  SetLength(MeuArray,LastProf+1,2); // Matriz ter?n Linhas e 2 Colunas
  while i>0 do begin
   meuArray[i-1,0]:=IntToStr(i-1);
   meuArray[i-1,1]:=meuSolo;
   i:=i-1;
  end;
  //------------------------------------------------------------------------

  //Preencher os vetores decrescentemente com o tipo de solo
//  PointerGrid:=StrToInt(GridCamadas.Cells[0,GridCamadas.RowCount-1]); //ex.:16
  PointerGrid:=GridCamadas.RowCount-1;
  while PointerGrid>0 do begin
    meuSolo     :=GridCamadas.Cells[1,PointerGrid];
    pointerVetor:=StrToInt(FormatFloat('####0',StrToFloat(GridCamadas.Cells[0,PointerGrid])));
    while pointerVetor>=0 do begin
      meuArray[pointerVetor,1]:=meuSolo;
      pointerVetor:=pointerVetor-1;
    end;
    PointerGrid:=PointerGrid-1;
  end;

  lastProf:=StrToInt(FormatFloat('####0',StrToFloat(GridCamadas.Cells[0,GridCamadas.RowCount-1])));
  wArrasamento:=StrToInt(FormatFloat('#####0',(cotaTerreno.value-cotaArrasamento.value)*scala));
  lastProf:=100+wArrasamento;
  pA:=0;


  for i:=1 to GridCamadas.RowCount-1 do begin
    if trimright(GridCamadas.Cells[0,i])='' then exit;
    p0:=StrToInt(FormatFloat( '####0', StrToFloat(GridCamadas.Cells[0,i]) )) ;
    p0:=p0-StrToInt(FormatFloat('######0',(cotaTerreno.value-cotaArrasamento.value)));
    p:=(p0-pA) * scala;
    pA:=p0;
    with myDraw1 do begin
      Canvas.Brush.Color:=clWhite;
      Canvas.Pen.Width := 1;
      Canvas.Pen.Color := clRed;
      Canvas.Pen.Style := psSolid;
      Canvas.Rectangle(300, lastProf,380,lastProf+p);
      Canvas.MoveTo(381,lastProf+p);
      Canvas.LineTo(460,lastProf+p);
      pCol_1:=GridCamadas.Cells[0,i];
      pCol_2:=GridCamadas.Cells[1,i];
      Canvas.TextOut(395, lastProf+p-18, pCol_1+' ['+pCol_2+']' );
      lastProf:=lastProf+p;

      if myDraw1.Height<lastProf then begin
        myDraw1.Height:=lastProf+50;
      end;
      myDraw1.repaint;
    end;
  end;


  {* cotas de metro em metro*}
  lastProf:=100;
  scol:=370;
  sSoloChk1:=MeuArray[cota1,1];
  sSoloChk2:='';
  sSoloQtd :=0;
  sPrintLabelOpen:=True;
  for cota1:=1 to StrToInt(FormatFloat('#####0',StrToFloat(pCol_1))) do begin
    with myDraw1 do begin
      Canvas.Pen.Width := 1;
      if Odd(cota1) then begin
       Canvas.Pen.Color := clBlack;
       Canvas.Brush.Color:=clBlack;
      end else begin
       Canvas.Pen.Color :=clLtGray;
       Canvas.Brush.Color:=clLtGray;
      end;
      Canvas.Pen.Style := psSolid;
      Canvas.Rectangle(210+sCol, lastProf,215+sCol,lastProf+scala );

      Canvas.Pen.Color := clBlack;
      Canvas.MoveTo(210+sCol,lastProf+scala);
      Canvas.LineTo(223+sCol,lastProf+scala);
      Canvas.Brush.Color:=_Cor_da_Folha1;
      Canvas.Font.Color:=_Cor_da_Letra1;
      Canvas.Font.Name:='Arial';
      Canvas.Font.Style:=[];
      Canvas.Font.Size:=6;

      sSoloChk2:=MeuArray[cota1,1];
      sPrintLabelOpen:=True;
      if (sSoloChk2<>sSoloChk1) then begin
        _RotateText(IntToStr(sSoloQtd),310,lastProf-12);
        sSoloQtd:=0;
        sSoloChk1:=sSoloChk2;
        sPrintLabelOpen:=False;
      end;
      if (cota1> StrToInt(FormatFloat('#####0',(cotaTerreno.value-cotaArrasamento.value)))) then  sSoloQtd:=sSoloQtd+1;

      iSpt:=_GetSPT( cota1 );
      sSpt:='';
      if (iSpt>0) then begin
        sSpt:=' -SPT Golpes:'+FormatFloat('##0',StrToFloat(IntToStr(iSpt)));
      end;
      Canvas.TextOut(225+sCol, lastProf+12,FormatFloat('#00',StrToFloat(IntToStr(cota1)))+'-[ '+MeuArray[cota1,1]+' ] / '+inttostr(sSoloQtd));
      Canvas.TextOut(380+sCol, lastProf+12,sSpt);


      lastProf:=lastProf+scala;
    end;
  end;
  if  sPrintLabelOpen then begin
     _RotateText(IntToStr(sSoloQtd),310,lastProf-12);
  end;


  {varrer a grid a partir do ultimo}
  pCol_1:=GridCamadas.Cells[0,GridCamadas.RowCount-1];
  i:=GridCamadas.RowCount-1;
  while i>=1 do begin
   // continuar daqui preenchendo Vertor bi-dimensional ao contrario COM O SOLO)
    i:=i-1;
  end;


end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
 DM.Conn.Connected:=True;
 cotaArrasamento.Text:='0';
 //WindowState:=wsMaximized;

 GridSPT.Cells[0,0]:='Profundidade';
 GridSPT.Cells[1,0]:='Golpe';
 GridSPT.Cells[2,0]:='Solo';
 GridSPT.Cells[3,0]:='Excluir';

 GridCamadas.Cells[0,0]:='Profundidade';
 GridCamadas.Cells[1,0]:='Solo';
 GridCamadas.Cells[2,0]:='Excluir';







  _LoadAllCombos;

 _LoadCombo(cbTipoSolo,FrmMain,'solos');
   projetos.open;
 _TelaProjetos(0);
end;




procedure TFrmMain.Desenhar;
var
  myDrawLeft,myDrawTop,myDrawHeight,myDrawWidth:Integer;
  h:integer;
begin
    if Assigned(myDraw1) then FreeAndNil( myDraw1 );
    myDraw1:= TImage.Create(Self);

    myDrawWidth :=FrmMain.Width - pnLeft.Width -20  ;
    h:=_Calc_Altura_Desenho;
    myDrawHeight:=h;

    myDrawLeft:=GridCamadas.Width+1;
    myDrawTop :=GridCamadas.Top;

    myDraw1.Parent:=FrmMain;

    myDraw1.Top   :=myDrawTop;;
    myDraw1.Width :=myDrawWidth;
    myDraw1.Height:=myDrawHeight;
    myDraw1.Left  :=myDrawLeft;

    myDraw1.Canvas.brush.color:=_Cor_da_Folha1;
    myDraw1.canvas.rectangle(0,0, width-1,  height-1);
    myDraw1.canvas.Pen.Width:=1;
    myDraw1.Canvas.Pen.Color:=clBlue;
    myDraw1.canvas.rectangle(1,1, myDraw1.Width, myDraw1.height );

    _Calc_Linha_Solo;
    _Calc_Arrasamento;
    if not _Calc_Camadas then exit;
            
end;

procedure TFrmMain.Adicionar;
var
  p,a:Real;
begin
 p:=Profundidade.Value;
 if ( (p=0) or (TrimRight(cbtiposolo.Text)='') ) then Exit;

     if cotaArrasamento.Value>0 then begin
       if (cotaArrasamento.Value>=cotaTerreno.Value) then begin
         Application.MessageBox('Cota de Arrasamento maior que a Cota do Terreno!',
           'Aviso', MB_OK + MB_ICONWARNING);
         cotaTerreno.SetFocus;
         Exit;
       end;
    end;

 if cotaArrasamento.Value>0 then begin
   a:=cotaTerreno.Value - cotaArrasamento.value;
   if p<a then begin
     Application.MessageBox('Profundidade menor que a Cota de Arrasamento',
       'Atencao', MB_OK + MB_ICONWARNING);

     exit;
   end;
 end;

 montaGrid;
 SortStringGrid(GridCamadas,0,1);
 desenhar;
end;

procedure TFrmMain.FormActivate(Sender: TObject);
begin
 PgControlGeral.ActivePageIndex:=0;
end;

procedure TFrmMain.cotaArrasamentoEnter(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clYellow;

end;

procedure TFrmMain.cotaArrasamentoExit(Sender: TObject);
begin
 cotaArrasamento.Color:=clWhite;
end;

procedure TFrmMain.profundidadeEnter(Sender: TObject);
begin
 profundidade.Color:=clYellow;
end;




procedure TFrmMain.cotaTerrenoEnter(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clYellow;
end;

procedure TFrmMain.cotaTerrenoExit(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clWhite;
  _AtualizarCotasMetodos;
end;

function TFrmMain._Calc_Altura_Desenho: Integer;
var
  p0,p,i,pA, minHeight,lastProf:Integer;
begin
  minHeight:=GridCamadas.Height-5;

  if GridCamadas.RowCount<=2 then begin
     result:=minHeight;
     exit;
  end;

  pA:=0;
  wArrasamento:=StrToInt(FormatFloat('#####0',(cotaTerreno.value-cotaArrasamento.value)*scala));
  lastProf:=100+wArrasamento;
  for i:=1 to GridCamadas.RowCount-1 do begin
    p0:=StrToInt(FormatFloat( '####0', StrToFloat(GridCamadas.Cells[0,i]) )) ;
    p0:=p0-StrToInt(FormatFloat('######0',(cotaTerreno.value-cotaArrasamento.value)));
    p:=(p0-pA) * scala;
    pA:=p0;
    lastProf:=lastProf+p;
  end;
  if (lastProf+50)>minHeight then
      result:=lastProf+50
  else
      result:=minHeight
  ;
end;


procedure TFrmMain.GridCamadasSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  _DelRow(GridCamadas,ARow,ACol);
end;



procedure TFrmMain.AdicionarSPT;
var
  p,a:Real;
  i:Integer;
begin
 p:=CotaSPT.Value;
 if (p=0)  then Exit;
 i:=GridCamadas.RowCount;
 if (i<2) or (GridCamadas.Cells[0,1]='') then begin
   Application.MessageBox('Lance primeiro a configuracao de camadas de solo!', 'Error', MB_OK + MB_ICONINFORMATION);
   Exit;
 end;

 montaGridSPT;
 SortStringGrid(GridSPT,0,1);
// desenhar;
end;

procedure TFrmMain.montaGridSPT;
var
   i:Integer;
   p,g,f:Real;

   totLines:Integer;

   achou:Boolean;
   iAchou:integer;
   sAchou,sGolpes,sFracao:string;
begin
       totLines:=GridSPT.RowCount;
       //tenta localizar
       achou:=false;
       for i:=1 to totLines-1 do begin
         if not achou then begin
           sAchou :=GridSPT.Cells[0,i];
           sGolpes:=GridSPT.Cells[1,i];
           if sAchou<>'' then begin
             p:=StrToFloat(sAchou);
             if (p=CotaSPT.value)  and  (GolpesSPT.Value=StrToFloat(sGolpes) ) then exit;
             if p=CotaSPT.value then begin
               achou:=true;
               iAchou:=i;
             end;
            end;
         end;
       end;
       if not achou then begin
         i:=totLines-1;
         if ( TrimRight(TrimLeft(GridSPT.Cells[0,i]))<>'' ) then begin
           GridSPT.RowCount:=GridSPT.RowCount+1;
           i:=i+1;
          end;
       end else begin
         if Application.MessageBox('Ja foi lancado!, deseja atualizar?', 'Ja foi lancado!', MB_YESNO + MB_ICONWARNING) = IDNO then  EXIT;
         i:=iAchou;
       end;
       p:=CotaSPT.value;
       GridSPT.Cells[0,i]:=FormatFloat('######0',p);
       g:=GolpesSPT.value;
       GridSPT.Cells[1,i]:=FormatFloat('######0',g);
       GridSPT.Cells[2,i]:='';

       GolpesSPT.Value:=0;
       if not achou then
        CotaSPT.Value:=Int(CotaSPT.Value)+1
       else
        CotaSPT.Value:=0
       ;
       GolpesSPT.SetFocus;
       PreencherSolo;
end;

procedure TFrmMain.CotaSPTEnter(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clYellow;
end;

procedure TFrmMain.CotaSPTExit(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clWhite;
end;

procedure TFrmMain.GridSPTDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  S: string;
  SavedAlign: word;
  aCanvas: TCanvas;
begin

    S := GridSPT.Cells[ACol, ARow]; // cell contents
    SavedAlign := SetTextAlign(GridSPT.Canvas.Handle, TA_CENTER);
    GridSPT.Canvas.TextRect(Rect,
    Rect.Left + (Rect.Right - Rect.Left) div 2, Rect.Top + 2, S);
    SetTextAlign(GridSPT.Canvas.Handle, SavedAlign);

  if (ACol <> 3) or (ARow = 0) then  Exit;

  if GridSPT.RowCount>=1 then begin
    if (TrimRight(GridSPT.Cells[0,ARow])<>'') then begin
     aCanvas := (Sender as TStringGrid).Canvas;  // To avoid with statement
     aCanvas.FillRect(Rect);
     aCanvas.Draw(Rect.Left+30, Rect.Top+5, Image1.Picture.Bitmap) ;
    end; 
  end;
end;





procedure TFrmMain.GridSPTSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  _DelRow(GridSPT,ARow,ACol);
end;


procedure TFrmMain.PreencherSolo;
 procedure PreencherSoloSPT(iSoloStart,iSoloEnd:Real;sSolo:string);
 var
    iSptPointer,iSptTot:integer;
    iSptProf:Real;
 begin
    iSptTot:=GridSPT.RowCount;
    for iSptPointer:=1 to iSptTot-1 do begin
      iSptProf:=StrToFloat( GridSPT.Cells[0,iSptPointer]);
      if (iSptProf>iSoloStart) and (iSptProf<=iSoloEnd) then begin
          GridSPT.Cells[2,iSptPointer]:=sSolo;
      end;
    end;
 end;
var
  iSolosPointer,iSolosTot:Integer;
  iSoloStart,iSoloEnd:Real;
  sSolo:String;
begin
  //capturar os solos da gridCamadas
  iSoloStart:=0;
  iSolosTot:=GridCamadas.RowCount;
  for iSolosPointer:=1 to iSolosTot-1 do begin
      sSolo   :=GridCamadas.Cells[1,iSolosPointer];
      iSoloEnd:=StrToFloat(GridCamadas.Cells[0,iSolosPointer]);
      PreencherSoloSPT(iSoloStart,iSoloEnd,sSolo);
      iSoloStart:=iSoloEnd;
  end;
  GravarProjetoSPTS;
end;






procedure TFrmMain.cbtiposoloEnter(Sender: TObject);
begin
  TComboBox(Sender).color:=clYellow;
end;




procedure TFrmMain.SoloKEnter(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clYellow;
end;

procedure TFrmMain.EstacaFatorF1Enter(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clYellow;
end;

procedure TFrmMain.EstacaFatorF1Exit(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clWhite;
end;


procedure TFrmMain.SoloBetaExit(Sender: TObject);
begin
 TRxCalcEdit(Sender).Color := clWhite;
end;

procedure TFrmMain.cbtiposoloExit(Sender: TObject);
begin
  TComboBox(Sender).color:=clWhite;
end;

procedure TFrmMain.cbTipoEstacaEnter(Sender: TObject);
begin
  TComboBox(Sender).color:=clYellow;
end;

procedure TFrmMain.cbTipoEstacaExit(Sender: TObject);
begin
  TComboBox(Sender).color:=clWhite;
end;





procedure TFrmMain.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then ShowMessage('teste');
end;







procedure TFrmMain.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then showmessage('oi');
end;

procedure TFrmMain.ProfundidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_RETURN then SelectNext(Self as TWinControl, True, false);
end;

procedure TFrmMain.cotaTerrenoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then  cotaArrasamento.SetFocus;
end;

procedure TFrmMain.cotaArrasamentoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then  Profundidade.SetFocus;
end;

procedure TFrmMain.ProfundidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then  cbTipoSolo.SetFocus;
end;

procedure TFrmMain.CotaSPTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RETURN then  GolpesSPT.SetFocus;
end;

procedure TFrmMain.GolpesSPTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then  begin
    AdicionarSPT;
    Desenhar;
   CotaSPT.SetFocus;
  end;
end;

procedure TFrmMain.cbtiposoloKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key = VK_RETURN) then
  begin
    Adicionar;
    Profundidade.SetFocus;
  end;

end;

function TFrmMain._Calc_SPT: Boolean;
var
  iLinha,iTotLinhas:Integer ;
  sProf,sSpt,sFracao:string;
begin
 result:=False;
 iTotLinhas:=GridSPT.RowCount;
 if iTotLinhas=0 then Exit;
 sProf:=TrimRight(TrimLeft(GridSPT.Cells[0,1]));
 if sProf='' then Exit;
 for iLinha:=0 to iTotLinhas-1 do begin
   sProf  :=TrimRight(TrimLeft(GridSPT.Cells[0,iLinha]));
   sSPT   :=TrimRight(TrimLeft(GridSPT.Cells[1,iLinha]));
   sFracao:=TrimRight(TrimLeft(GridSPT.Cells[2,iLinha]));
 end;

end;


procedure TFrmMain.ExecSql(cSql: string);
var
  Script:TZSQLProcessor;
begin
   try
     Script:= TZSQLProcessor.Create(self);
     Script.Connection:=DM.Conn;
     Script.Script.Add(cSql);
     Script.Execute;
     FreeAndNil(Script);
   except
     ShowMessage('erro ao executar comando sql');
   end;
end;





procedure TFrmMain.Button1Click(Sender: TObject);
begin
 if not Assigned( FrmConfiguracoes ) then FrmConfiguracoes:=TFrmConfiguracoes.Create(Application);
 FrmConfiguracoes.Showmodal;
 FreeAndNil(FrmConfiguracoes);
 _LoadAllCombos;
end;

procedure TFrmMain._LoadAllCombos;
begin
 _LoadCombo(cbTipoSolo,FrmMain,'solos');
 with QryEstacasDiametros do begin
  Close;
  Open;
 end;
 with QryMetodos do begin
  Close;
  Open;
 end;

end;



procedure TFrmMain._DelRow(myGrid: TStringGrid;LineToDelete,ColumnClick:Integer);
var
  LineCounter,  LineQtd,ColQtd,Colcounter : Integer;
  celValue:String;
  sIdProj,sSQL:String;
begin
  if LineToDelete=0 then exit;

  ColQtd          := myGrid.ColCount;
   if (ColumnClick=ColQtd-1) then begin
      celValue:=TrimRight(myGrid.Cells[0,LineToDelete]);
      if celValue='' then Exit;

      celValue:='**[ ';
      for ColCounter:=0 to ColQtd-1 do begin
        celValue:=celValue+' '+  TrimRight(myGrid.Cells[Colcounter,LineToDelete]);
      end;
      celValue:=celValue+' ]**';

      if Application.MessageBox(PChar('Deseja excluir esta linha?'+#13+#10+celValue), 'Atencao',
       MB_YESNO + MB_ICONSTOP) = IDNO then
      begin
        Exit;
      end;
      if UpperCase(myGrid.Name)='GRIDCAMADAS' then begin
           celValue:=myGrid.Cells[0,LineToDelete];
           sIdProj:=TrimRight(projetosid.AsString);
           sSQL:='DELETE FROM projetos_camadas WHERE id_projetos='+sIdProj+' AND profundidade='+ _VirgulaParaPonto( celValue );
          _ExecSql(sSQl);
      end;
      if UpperCase(myGrid.Name)='GRIDSPT' then begin
           celValue:=myGrid.Cells[0,LineToDelete];
           sIdProj:=TrimRight(projetosid.AsString);
           sSQL:='DELETE FROM projetos_spts WHERE id_projetos='+sIdProj+' AND profundidade='+ _VirgulaParaPonto( celValue );
          _ExecSql(sSQl);
      end;


      LineQtd         := myGrid.RowCount;
      if LineToDelete < (LineQtd-1) then begin
        //efetuar a varredura da linha atual ate o final das linhas
        for LineCounter := LineToDelete to LineQtd - 1 do
         //celulas atuais sao as da proxima linha
         for ColCounter:=0 to ColQtd-1 do begin
          myGrid.Cells[ColCounter,LineCounter] := myGrid.Cells[ColCounter, (LineCounter+1)];
         end
        end;
        myGrid.RowCount              := (LineQtd - 1);
        myGrid.Refresh;
        myGrid.Repaint;

        _LoadAllCombos;

         SortStringGrid(GridCamadas,0,1);
         desenhar;

   end;
end;


function TFrmMain._GetSPT(sMetro:Integer):Integer;
var
  i:integer;
  t:integer;
  sValue1,sValue2:String;

begin
   result:=0;
   t:=GridSPT.RowCount;
   if t>1 then begin
     for i:=1 to t-1 do begin
       sValue1:=TrimRight(GridSPT.Cells[0,i]);
       if sValue1<>'' then begin
          if (StrToInt( sValue1 )=sMetro) then begin
            sValue2:=TrimRight(GridSPT.Cells[1,i]);
            if (sValue2<>'') then begin
              Result:=StrToint(sValue2);
            end;
          end;
       end;
     end;
   end;
end;


procedure TFrmMain._RotateText(sTxt: String; sX, sY: Integer);
var
  LF: LOGFONT;
  FontHandle, tmpFontHandle: HFONT;
  oldFontSize:Integer;
  oldFontSyle:TFontStyles;
begin
   with myDraw1 do begin
      oldFontSyle:=Canvas.Font.Style;
      oldFontSize:=Canvas.Font.Size;


      Canvas.Font.Style:=[fsBold];
      Canvas.Font.Size:=14;
      // Select a Truetype font, others don't always work
      Canvas.Font.Name := 'Arial';
      // Retreive current font in a LOGFONT
      if GetObject (Canvas.Font.Handle, SizeOf (LF), @LF) = 0 then
        showmessage (syserrormessage (getlasterror))
      else
      begin
        // 10 * degrees
        LF.lfEscapement := 900;
        FontHandle := CreateFontIndirect (LF);
        try
          // Select the rotated font
          tmpFontHandle := SelectObject (Canvas.Handle, FontHandle);
          TextOut (Canvas.Handle, sX, sY,  PChar(sTxt), Length (sTxt));
          // Restore previous font
          SelectObject (Canvas.Handle, tmpFontHandle);
        finally
          // Dispose of created font
          DeleteObject (FontHandle);
        end;
      end;

      Canvas.Font.Style:=oldFontSyle;
      Canvas.Font.Size :=oldFontSize;

    end;


end;

procedure TFrmMain.BtNovoProjetosClick(Sender: TObject);
begin
 _TelaProjetos(1);
 projetos.Insert;
 txtData_lcto.Date:=Date;
end;

procedure TFrmMain.btSalvarProjetosClick(Sender: TObject);
begin
 projetos.Post;
 projetos.Refresh;
 projetos.First;
 _TelaProjetos(0);
end;

procedure TFrmMain.btCancelarProjetosClick(Sender: TObject);
begin
 Projetos.Cancel;
 _TelaProjetos(0)
end;

procedure TFrmMain._TelaProjetos(on_off: Integer);
begin
 if on_off=0 then begin
   pnNavProjetos.Visible  :=true;
   GridProjetos.Enabled   :=true;
   pnProjetoEdicao.Visible:=False;
 end else begin
   pnNavProjetos.Visible  :=false;
   GridProjetos.Enabled   :=false;
   pnProjetoEdicao.Visible:=true;
   txtData_lcto.SetFocus;
 end;
end;


procedure TFrmMain.GridProjetosDblClick(Sender: TObject);
begin
 Projetos.Edit;
 _TelaProjetos(1);
end;

procedure TFrmMain.GridProjetosCellClick(Column: TColumn);
var
  s:string;
begin
 if projetos.RecordCount>0 then begin
   if Column.Title.Caption='[ Alterar ]' then begin
     projetos.Edit;
     _TelaProjetos(1);
   end;
   if Column.Title.Caption='[ Excluir ]' then begin
     s:=TrimRight(TrimLeft( Projetos.FieldByname('cliente').asString ));
     if Application.MessageBox(Pchar('Deseja excluir o registro abaixo?'+#13+#10+#13+#10+s), 'Atencao',
       MB_YESNO + MB_ICONSTOP) = IDNO then   exit;
     projetos.Delete;
   end;
 end;
end;

procedure TFrmMain.GridProjetosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 bitmap : TBitmap;
 fixRect : TRect;
 bmpWidth : integer;

 imgIndex : integer;
 aCanvas:TCanvas;
begin
 fixRect := Rect;

  if projetos.RecordCount>0 then begin
    if (Column.Title.Caption='[ Alterar ]') or  (Column.Title.Caption='[ Excluir ]') then
    begin
      if (Column.Title.Caption='[ Alterar ]') then  imgIndex := 1  else imgIndex := 4 ;
       GridProjetos.Canvas.FillRect(Rect);
       ImageList1.Draw(GridProjetos.Canvas, Rect.Left +20,Rect.Top + 1, imgIndex);
       exit;
    end;
  end;
  //draw default text (fixed position)
  GridProjetos.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);

end;


procedure TFrmMain._LoadProjetosCamadas;
var
  sSql:String;
  iProj:String;
  _Qry: TZQuery;
  iLine:Integer;
begin
  iProj:=TrimRight(projetosid.AsString);
  if iProj='' then exit;

  sSQL:='select                '+
        ' pc.profundidade,     '+
        ' s.descricao as solo  '+
        ' FROM                 '+
        ' projetos_camadas pc  '+
        ' inner join solos s on s.id=pc.id_solos  '+
        'WHERE  '+
        ' pc.id_projetos='+ iProj+
        ' order by   '+
        ' pc.id_projetos,  '+
        ' pc.profundidade  ';

   _Qry:=TZQuery.Create(nil);
   _Qry.Connection:=uDM.DM.Conn;
   uDM.DM.Conn.Connected:=true;
   with _Qry do begin
     SQL.Add( sSQL ) ;
     Open;
     GridCamadas.RowCount:=1;
     iLine:=1;
     While not eof do begin
       GridCamadas.RowCount:=GridCamadas.RowCount+1;
       GridCamadas.Cells[0,iLine]:=(FormatFloat('###0.00',Fields[0].Value));
       GridCamadas.Cells[1,iLine]:=Fields[1].AsString;
       iLine:=iLine+1;
       next;
     end;
   end;
  if GridCamadas.RowCount>1 then begin
    GridCamadas.FixedRows:=1;
    Desenhar;
   end;
end;


procedure TFrmMain.dsProjetosDataChange(Sender: TObject; Field: TField);
begin
   _LoadProjetosCamadas;
   _LoadCotasMetodos;
   _LoadEstacasProjetos ;
   _LoadProjetosSPTS;
   Desenhar;
end;

procedure TFrmMain._AtualizarCotasMetodos;
var
 sIDProj, sSQL, sCotaT,sCotaA,sIdMetodo :string;
begin
  sIDProj:=TrimRight( projetosid.AsString );
  if sIDProj='' then Exit;
   sCotaT:=_VirgulaParaPonto(FormatFloat('#####0.00',cotaTerreno.Value));
   sCotaA:=_VirgulaParaPonto(FormatFloat('#####0.00',cotaArrasamento.Value));
   sIdMetodo:= TrimRight( _VirgulaParaPonto( QryMetodosid.AsString ) );
   if sIdMetodo='' then sIdMetodo:='0';
   sSQL:='UPDATE projetos SET cota_terreno='+sCotaT+
                            ',cota_arrasamento='+sCotaA+
                            ',id_metodos='+sIdMetodo+
                            ' WHERE id='+sIDProj;
   _ExecSql(sSQL);



end;

procedure TFrmMain._LoadCotasMetodos;
var
  sCotaA,sCotaT:String;
  sIdMetodo:String;
begin
  sCotaA:=  projetos.Fieldbyname('cota_arrasamento').AsString;
  sCotaT:=  projetos.Fieldbyname('cota_terreno').AsString;

  cotaTerreno.Value:=StrToFloat(sCotaT);
  cotaArrasamento.Value:=StrToFloat(sCotaA);

  sIdMetodo:= projetosid_metodos.AsString;
  comboMetodos.KeyValue:=sIdMetodo;

end;

procedure TFrmMain.comboMetodosExit(Sender: TObject);
begin
  _AtualizarCotasMetodos;
end;

procedure TFrmMain.BtIncluirEstacClick(Sender: TObject);
var
  sSql:string;

begin
  sSql:='INSERT INTO projetos_estacas_diametros ('+
         'id_projetos,'+
         'id_estacas_diametros'+
         ' ) VALUES (' +
         #39+ projetos.Fieldbyname('id').asstring+#39+','+
         #39+ QryEstacasDiametros.fieldbyname('id').asstring+#39+
         ' )';
     _ExecSql(sSql);
     _LoadAllCombos;
     _LoadEstacasProjetos;


end;

procedure TFrmMain._LoadEstacasProjetos;
var
  sIdProj:String;
begin
 with EstacasProjetos do begin
   Close;
   if (not projetos.Active) then exit;
   sIdProj:=TrimRight(TrimLeft( projetos.Fieldbyname('id').asstring ) );
   if sIdProj='' then exit;
   ParamByName('id_projetos').asstring:=sIdProj;
   Open;
 end;
end;



procedure TFrmMain.GravarProjetoSPTS;
var
       sSql, sIdProjeto,sSolo, _IdSolo, _Golpes,_Prof:string;
       _Id:string;
       iLine:Integer;
       iTotLines:Integer;
begin
       iTotLines:=GridSPT.RowCount;
       if iTotLines<=1 then exit;
       sIdProjeto:=projetosid.AsString;
        for iLine:=1 to iTotLines-1 do begin
          _Prof  :=TrimRight(TrimLeft( GridSPT.Cells[ 0 , iline ] ));
          _Golpes:=TrimRight(TrimLeft( GridSPT.Cells[ 1 , iline ] ));
          sSolo  :=TrimRight(TrimLeft( GridSPT.Cells[ 2 , iline ] ));
          sSql:='SELECT id FROM solos WHERE descricao='#39+sSolo+#39;
          _IdSolo:=_ReturnField(sSql);
          sSQl:= 'SELECT id FROM projetos_spts WHERE  id_projetos='+sIdProjeto+' AND profundidade='+_Prof;
          _Id:= _ReturnField( sSql ) ;
           if _Id='' then begin
              sSql:='INSERT INTO projetos_spts (id_projetos,id_solos,profundidade,golpes) VALUES ('+
                    #39+ _VirgulaParaPonto(sIdProjeto)+#39+','+
                    #39+ _VirgulaParaPonto(_IdSolo)+#39+','+
                    #39+ _VirgulaParaPonto(FormatFloat('######0.00',StrToFloat(_Prof)))+#39+ ','+
                    #39+ _VirgulaParaPonto(_Golpes)+#39+
                    ')';

           end else begin
             sSql:='UPDATE projetos_spts SET '+
                             '  id_solos='+#39+_VirgulaParaPonto( _IdSolo )+#39+','+
                             '  golpes  ='+#39+_VirgulaParaPonto( _Golpes )+#39+
                             ' WHERE id='+#39+  _VirgulaParaPonto(_Id)+#39;
           end;
           _ExecSql(sSql);
        end;
end;

procedure TFrmMain._LoadProjetosSPTS;
var
  sSql:String;
  iProj:String;
  _Qry: TZQuery;
  iLine:Integer;
begin
  iProj:=TrimRight(projetosid.AsString);
  if iProj='' then exit;

  sSQL:='SELECT   '+
        ' ps.profundidade,     '+
        ' ps.golpes,   '+
        ' s.descricao as solo  '+
        'FROM   '+
        ' projetos_spts ps   '+
        ' INNER JOIN solos s ON s.id=ps.id_solos   '+
        'WHERE   '+
        ' ps.id_projetos='+#39+_VirgulaParaPonto(iProj)+#39+
        'ORDER BY   '+
        ' ps.id_projetos,ps.profundidade   ';


   _Qry:=TZQuery.Create(nil);
   _Qry.Connection:=uDM.DM.Conn;
   uDM.DM.Conn.Connected:=true;
   with _Qry do begin
     SQL.Add( sSQL ) ;
     Open;
     GridSPT.RowCount:=1;
     iLine:=1;
     While not eof do begin
       GridSPT.RowCount:=GridSPT.RowCount+1;
       GridSPT.Cells[0,iLine]:=Fields[0].AsString;
       GridSPT.Cells[1,iLine]:=Fields[1].AsString;
       GridSPT.Cells[2,iLine]:=Fields[2].AsString;
       iLine:=iLine+1;
       next;
     end;
   end;
  if GridSPT.RowCount>1 then begin
    GridSPT.FixedRows:=1;
    Desenhar;
   end;

end;

procedure TFrmMain.GridEstacasProjetoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 bitmap : TBitmap;
 fixRect : TRect;
 bmpWidth : integer;

 imgIndex : integer;
 aCanvas:TCanvas;
begin
 fixRect := Rect;

  if EstacasProjetos.RecordCount>0 then begin
    if (Column.Title.Caption='[ Alterar ]') or  (Column.Title.Caption='[ Excluir ]') then
    begin
      if (Column.Title.Caption='[ Alterar ]') then  imgIndex := 1  else imgIndex := 4 ;
       GridEstacasProjeto.Canvas.FillRect(Rect);
       ImageList1.Draw(GridEstacasProjeto.Canvas, Rect.Left +20,Rect.Top + 1, imgIndex);
       exit;
    end;
  end;
  //draw default text (fixed position)
  GridEstacasProjeto.DefaultDrawColumnCell(
     fixRect,
     DataCol,
     Column,
     State);

end;

procedure TFrmMain.GridEstacasProjetoCellClick(Column: TColumn);
var
  s:string;
  sId,sSql:string;
begin
 if EstacasProjetos.RecordCount>0 then begin
   if Column.Title.Caption='[ Alterar ]' then begin
     EstacasProjetos.Edit;
   end;
   if Column.Title.Caption='[ Excluir ]' then begin
     s:=TrimRight(TrimLeft( EstacasProjetos.FieldByname('descricao').asString ))+'[ Diametro: '+
       TrimRight(TrimLeft( EstacasProjetos.FieldByname('diametro').asString ))+' ]';
       sId:=   EstacasProjetos.FieldByname('id').asString ;
       sSql:='DELETE FROM projetos_estacas_diametros WHERE id='+sId;
     if Application.MessageBox(Pchar('Deseja excluir o registro abaixo?'+#13+#10+#13+#10+s), 'Atencao',
       MB_YESNO + MB_ICONSTOP) = IDNO then   exit;
     _ExecSql(sSql);
     EstacasProjetos.Refresh;
     _LoadAllCombos;
   end;
 end;

end;

end.
