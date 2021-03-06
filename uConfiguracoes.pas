unit uConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, Mask, ToolEdit, CurrEdit, StdCtrls, ExtCtrls, ComCtrls, DBCtrls,
  ZAbstractTable;

type
  TFrmConfiguracoes = class(TForm)
    D: TPageControl;
    TabSolos: TTabSheet;
    TabEstacas: TTabSheet;
    TabDiametros: TTabSheet;
    Panel3: TPanel;
    Image4: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EstacaFatorF1: TRxCalcEdit;
    EstacaDiametro: TRxCalcEdit;
    EstacaFatorF2: TRxCalcEdit;
    GridSolos: TDBGrid;
    GridEstacasTipos: TDBGrid;
    GridEstacas_Diametros: TDBGrid;
    dsSolos: TDataSource;
    metodos: TZQuery;
    dsMetodos: TDataSource;
    estacas_tipos: TZQuery;
    TabMetodos: TTabSheet;
    GridMetodos: TDBGrid;
    Panel2: TPanel;
    Image2: TImage;
    Label3: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    txtEstacaTipo: TEdit;
    Panel4: TPanel;
    Image3: TImage;
    Label2: TLabel;
    dsEstacas_Tipos: TDataSource;
    solos: TZQuery;
    TxtSolo: TEdit;
    pnAviso: TPanel;
    TimerAviso: TTimer;
    TimerAvisoBlink: TTimer;
    TxtAviso: TLabel;
    txtMetodo: TEdit;
    txtEstacas_Diametros: TDBLookupComboBox;
    estacas_diametros: TZQuery;
    dsEstacas_diametros: TDataSource;
    estacas_diametrosid: TIntegerField;
    estacas_diametrosid_estacas_tipos: TIntegerField;
    estacas_diametrosdiametro: TFloatField;
    estacas_diametrosperimetro: TFloatField;
    estacas_diametrosfator_f1: TFloatField;
    estacas_diametrosfator_f2: TFloatField;
    estacas_diametrosdescricao: TStringField;
    TabMetodosValores: TTabSheet;
    GridMetodosSolos: TDBGrid;
    Panel5: TPanel;
    Image5: TImage;
    Label4: TLabel;
    Label6: TLabel;
    MetodoValores_Alpha: TRxCalcEdit;
    cbMetodoValores1: TDBLookupComboBox;
    cbMetodoValores2: TDBLookupComboBox;
    Label5: TLabel;
    metodos_solos: TZQuery;
    dsMetodos_Solos: TDataSource;
    metodos_solosid: TIntegerField;
    metodos_solosid_metodos: TIntegerField;
    metodos_solosid_solos: TIntegerField;
    metodos_solosdescricao: TStringField;
    metodos_solosvlr_alpha: TFloatField;
    KeyMetodo: TDBEdit;
    KeyTiposEstacas: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure GridSolosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridMetodosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridEstacasTiposDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TxtSoloKeyPress(Sender: TObject; var Key: Char);
    procedure TimerAvisoTimer(Sender: TObject);
    procedure TimerAvisoBlinkTimer(Sender: TObject);
    procedure GridSolosCellClick(Column: TColumn);
    procedure txtEstacaTipoKeyPress(Sender: TObject; var Key: Char);
    procedure GridEstacasTiposCellClick(Column: TColumn);
    procedure txtMetodoKeyPress(Sender: TObject; var Key: Char);
    procedure GridMetodosCellClick(Column: TColumn);
    procedure EstacaDiametroKeyPress(Sender: TObject; var Key: Char);
    procedure txtEstacas_DiametrosKeyPress(Sender: TObject; var Key: Char);
    procedure EstacaFatorF1KeyPress(Sender: TObject; var Key: Char);
    procedure EstacaFatorF2KeyPress(Sender: TObject; var Key: Char);
    procedure GridEstacas_DiametrosCellClick(Column: TColumn);
    procedure GridEstacas_DiametrosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dsEstacas_TiposDataChange(Sender: TObject; Field: TField);
    procedure cbMetodoValores1KeyPress(Sender: TObject; var Key: Char);
    procedure cbMetodoValores2KeyPress(Sender: TObject; var Key: Char);
    procedure MetodoValores_AlphaKeyPress(Sender: TObject; var Key: Char);
    procedure GridMetodosSolosCellClick(Column: TColumn);
    procedure GridMetodosSolosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure KeyTiposEstacasChange(Sender: TObject);
    procedure KeyMetodoChange(Sender: TObject);
  private
    { Private declarations }
    function  _Adicionar(_Descricao:string;_Table:TZQuery):boolean;
    function  _Excluir(_Coluna:TColumn):boolean;
    procedure _Mensagem(_Msg:String;on_off,_TypeMsg:Integer);
  public
    { Public declarations }
    procedure _AbrirTabelasPadrao;
    procedure _Abrir_Estacas_Diametros;
    procedure _Abrir_Metodos_Solos;
  end;

var
  FrmConfiguracoes: TFrmConfiguracoes;

implementation

{$R *.dfm}
uses uDm,uFunc;
{ TFrmConfiguracoes }


procedure TFrmConfiguracoes.FormCreate(Sender: TObject);
begin
 TimerAvisoBlink.Enabled:=False;
 TimerAviso.Enabled:=false;
 _AbrirTabelasPadrao;
end;


procedure TFrmConfiguracoes.GridSolosDrawColumnCell(Sender: TObject;  const Rect: TRect; DataCol: Integer; Column: TColumn;  State: TGridDrawState);
var
 cValue0,cValue1,cValue2:string;
begin
  cValue0:='descricao';
  cValue1:=TrimRight(TxtSolo.Text);
  with GridSolos do begin ;
   cValue2:=TrimRight( Column.Grid.DataSource.DataSet.Fieldbyname(cValue0).asstring );
   if (cValue1=cValue2) then begin
    Canvas.Brush.Color:= clYellow;
    Canvas.Font.Color:= clRed;
    Canvas.Font.Style:=[fsBold];
   end;
  end;
  Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Title.Caption='[ Excluir ]' then begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.Draw(Rect.Left + 25, Rect.Top + 2,  Image1.Picture.Bitmap);
  end;
end;

procedure TFrmConfiguracoes.GridMetodosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 
var
 cValue0,cValue1,cValue2:string;
begin
  cValue0:='descricao';
  cValue1:=TrimRight(TxtSolo.Text);
  with GridMetodos do begin ;
   cValue2:=TrimRight( Column.Grid.DataSource.DataSet.Fieldbyname(cValue0).asstring );
   if (cValue1=cValue2) then begin
    Canvas.Brush.Color:= clYellow;
    Canvas.Font.Color:= clRed;
    Canvas.Font.Style:=[fsBold];
   end;
  end;
  Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Title.Caption='[ Excluir ]' then begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.Draw(Rect.Left + 25, Rect.Top + 2,  Image1.Picture.Bitmap);
  end;
end;

procedure TFrmConfiguracoes.GridEstacasTiposDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 cValue0,cValue1,cValue2:string;
begin
  cValue0:='descricao';
  cValue1:=TrimRight(TxtSolo.Text);
  with GridEstacasTipos do begin ;
   cValue2:=TrimRight( Column.Grid.DataSource.DataSet.Fieldbyname(cValue0).asstring );
   if (cValue1=cValue2) then begin
    Canvas.Brush.Color:= clYellow;
    Canvas.Font.Color:= clRed;
    Canvas.Font.Style:=[fsBold];
   end;
  end;
  Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Title.Caption='[ Excluir ]' then begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.Draw(Rect.Left + 25, Rect.Top + 2,  Image1.Picture.Bitmap);
  end;
end;

procedure TFrmConfiguracoes.TxtSoloKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then begin
  if _Adicionar(TxtSolo.text,solos)=True then begin
    TxtSolo.SetFocus;
    TxtSolo.SelectAll;
  end;
 end;
end;

function TFrmConfiguracoes._Adicionar(_Descricao:string;_Table:TZQuery):boolean;
var
 cSql,cValue,cID,cTableName:string;
begin
 result:=false;
 cValue:=TrimRight(TrimLeft( _Descricao ));
 if (cValue='') then Exit;
 cTableName:=_Table.Name;
 if cTableName='estacas_diametros' then begin
   cSql:='SELECT id FROM '+cTableName+' WHERE id_estacas_tipos='+estacas_tipos.Fields[0].AsString+
                                      ' AND diametro='+_VirgulaParaPonto(FormatFloat('####0.00',EstacaDiametro.Value));
 end else if cTableName='metodos_solos'  then begin
   cSql:='SELECT id FROM '+cTableName+' WHERE id_metodos='+metodos.Fields[0].AsString+
                                      '   AND id_solos  ='+solos.Fields[0].AsString;

 end else begin
  cSql:='SELECT id FROM  '+cTableName+' WHERE descricao='+#39+cValue+#39;
 end;
 cID :=_ReturnField(cSql);
 if (cID='') then begin
    if cTableName='estacas_diametros' then begin
       cSql:='INSERT INTO '+cTableName+'( '+
             ' id_estacas_tipos,'+
             ' diametro,'+
             ' perimetro,'+
             ' fator_f1,'+
             ' fator_f2'+
             ' ) VALUES ('+
             #39+ _VirgulaParaPonto(trimright(estacas_tipos.Fields[0].AsString))+#39 +','+
             #39+ _VirgulaParaPonto(FormatFloat('####0.00',EstacaDiametro.Value))+#39+','+
             #39+ _VirgulaParaPonto(FormatFloat('####0.00',2*pi*EstacaDiametro.Value))+#39+','+
             #39+ _VirgulaParaPonto(FormatFloat('####0.00',EstacaFatorF1.Value))+#39+','+
             #39+ _VirgulaParaPonto(FormatFloat('####0.00',EstacaFatorF2.Value))+#39+
             ')';
    end else if cTableName='metodos_solos' then begin
       cSql:='INSERT INTO '+cTableName+'( '+
             ' id_metodos,'+
             ' id_solos,'+
             ' vlr_alpha '+
             ' ) VALUES ('+
             #39+ _VirgulaParaPonto(trimright(metodos.Fields[0].AsString))+#39 +','+
             #39+ _VirgulaParaPonto(trimright(solos.Fields[0].AsString))+#39 +','+
             #39+ _VirgulaParaPonto(FormatFloat('####0.00',MetodoValores_Alpha.Value))+#39+
             ')';

    end else begin
       cSql:='INSERT INTO '+cTableName+' (descricao) VALUES ('+#39+cValue+#39+' )';
    end;

    _ExecSql(cSql);
    _Table.Refresh;
    _Table.First;
    if cTableName='estacas_diametros' then begin
     _Table.Locate('id_estacas_tipos;diametro', VarArrayOf([_VirgulaParaPonto(trimright(estacas_tipos.Fields[0].AsString)),_VirgulaParaPonto(FormatFloat('####0.00',EstacaDiametro.Value))]), []);
    end else begin
    _Table.Locate('descricao',cValue,[]);
    end;
    _Mensagem('Inserido com sucesso!',1,0);
    Result:=true;
 end else begin
     _Table.First;
     _Table.Locate('id',cID,[]);
     _Mensagem( 'Registro ja existente!',1,1);
 end;

end;

procedure TFrmConfiguracoes._Mensagem(_Msg:String;on_off,_TypeMsg:Integer);
begin
 TxtAviso.Caption:=_Msg;
 if _TypeMsg=0 then begin
  TxtAviso.Font.Color:=clBlack;
  TxtAviso.Color:=clBtnFace;
 end else begin
  TxtAviso.Font.Color:=clYellow;
  TxtAviso.Color:=clRed;
 end;
 TimerAvisoBlink.Enabled:=(on_off=1) ;
 TimerAviso.Enabled     :=(on_off=1) ;
 TxtAviso.Visible       :=(on_off=1) ;
end;

procedure TFrmConfiguracoes.TimerAvisoTimer(Sender: TObject);
begin
 _Mensagem('',0,0);
end;

procedure TFrmConfiguracoes.TimerAvisoBlinkTimer(Sender: TObject);
begin
 TxtAviso.Visible:=not TxtAviso.Visible;
end;

procedure TFrmConfiguracoes.GridSolosCellClick(Column: TColumn);
begin
   _Excluir(Column)
end;

function TFrmConfiguracoes._Excluir(_Coluna: TColumn): boolean;
var
  cSql:String;
  cId,cDesc,cTable:String;
begin
 if _Coluna.Title.Caption='[ Excluir ]' then begin
   cId:= _Coluna.Grid.Fields[0].AsString ;
   cTable:= _Coluna.Grid.DataSource.DataSet.Name;
   if cTable='estacas_diametros' then begin
    cDesc:= _Coluna.Grid.Fields[2].AsString +' Diametro:['+_Coluna.Grid.Fields[3].AsString +']';
   end else if cTable='metodos_solos' then begin
    cDesc:= _Coluna.Grid.Fields[3].AsString +' Vlr.Alpha:['+_Coluna.Grid.Fields[4].AsString +']';
   end else begin
    cDesc:= _Coluna.Grid.Fields[1].AsString ;
   end;

   if Application.MessageBox(PChar('Excluir o Registro Abaixo?'+#13+#10+#13+#10+cDesc), 'Aten??o', MB_YESNO +  MB_ICONSTOP) = IDNO then  Exit;
   cSql:='DELETE FROM '+cTable+' WHERE id='+cId;
   _ExecSql(cSql);
   _Coluna.Grid.DataSource.DataSet.Refresh;

 end;

end;

procedure TFrmConfiguracoes.txtEstacaTipoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then begin
  if _Adicionar(txtEstacaTipo.text,estacas_tipos)=True then begin
    txtEstacaTipo.SetFocus;
    txtEstacaTipo.SelectAll;
  end;
 end;
end;

procedure TFrmConfiguracoes.GridEstacasTiposCellClick(Column: TColumn);
begin
   _Excluir(Column);
end;

procedure TFrmConfiguracoes.txtMetodoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then begin
  if _Adicionar(txtMetodo.text,metodos)=True then begin
    txtMetodo.SetFocus;
    txtMetodo.SelectAll;
  end;
 end;
end;

procedure TFrmConfiguracoes.GridMetodosCellClick(Column: TColumn);
begin
   _Excluir(Column);
end;

procedure TFrmConfiguracoes.EstacaDiametroKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then SelectNext(sender as TWinControl,true,true);
end;

procedure TFrmConfiguracoes.txtEstacas_DiametrosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then SelectNext(sender as TWinControl,true,true);
end;

procedure TFrmConfiguracoes.EstacaFatorF1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then SelectNext(sender as TWinControl,true,true);
end;

procedure TFrmConfiguracoes.EstacaFatorF2KeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then begin
  if _Adicionar(txtEstacas_Diametros.text,estacas_diametros)=True then begin
    txtEstacas_Diametros.SetFocus;
  end;
 end;
end;

procedure TFrmConfiguracoes.GridEstacas_DiametrosCellClick(
  Column: TColumn);
begin
 _Excluir(Column);
end;

procedure TFrmConfiguracoes.GridEstacas_DiametrosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);


var
 cValue0,cValue1,cValue2:string;
begin
  cValue0:='descricao';
  cValue1:=TrimRight(TxtSolo.Text);
  with GridMetodos do begin ;
   cValue2:=TrimRight( Column.Grid.DataSource.DataSet.Fieldbyname(cValue0).asstring );
   if (cValue1=cValue2) then begin
    Canvas.Brush.Color:= clYellow;
    Canvas.Font.Color:= clRed;
    Canvas.Font.Style:=[fsBold];
   end;
  end;
  Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Title.Caption='[ Excluir ]' then begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.Draw(Rect.Left + 25, Rect.Top + 2,  Image1.Picture.Bitmap);
  end;
end;

procedure TFrmConfiguracoes.dsEstacas_TiposDataChange(Sender: TObject;
  Field: TField);
begin
  _Abrir_Estacas_Diametros;
end;


procedure TFrmConfiguracoes.cbMetodoValores1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then selectnext( sender as TWinControl,True,True);
end;

procedure TFrmConfiguracoes.cbMetodoValores2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then selectnext( sender as TWinControl,True,True);
end;

procedure TFrmConfiguracoes.MetodoValores_AlphaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then begin
  if _Adicionar(cbMetodoValores2.text,metodos_solos)=True then begin
    cbMetodoValores1.SetFocus;
  end;
 end;
end;

procedure TFrmConfiguracoes.GridMetodosSolosCellClick(Column: TColumn);
begin
 _Excluir(Column);
end;

procedure TFrmConfiguracoes.GridMetodosSolosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
 cValue0,cValue1,cValue2:string;
begin
  cValue0:='descricao';
  cValue1:=TrimRight(TxtSolo.Text);
  with GridMetodosSolos do begin ;
   cValue2:=TrimRight( Column.Grid.DataSource.DataSet.Fieldbyname(cValue0).asstring );
   if (cValue1=cValue2) then begin
    Canvas.Brush.Color:= clYellow;
    Canvas.Font.Color:= clRed;
    Canvas.Font.Style:=[fsBold];
   end;
  end;
  Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if Column.Title.Caption='[ Excluir ]' then begin
    TDBGrid(Sender).Canvas.FillRect(Rect);
    TDBGrid(Sender).Canvas.Draw(Rect.Left + 25, Rect.Top + 2,  Image1.Picture.Bitmap);
  end;
end;

procedure TFrmConfiguracoes._Abrir_Metodos_Solos;
begin
  with metodos_solos do begin
    Close;
    if (TrimRight(KeyMetodo.Text)='') then Exit;
    ParamByName('id').AsString:=KeyMetodo.Text;
    Open;
   end;
end;

procedure TFrmConfiguracoes._Abrir_Estacas_Diametros;
begin
   with estacas_diametros do begin
    Close;
    if (TrimRight(KeyTiposEstacas.text)='') then Exit;
    ParamByName('id').AsString:=KeyTiposEstacas.Text;
    Open;
   end;
end;

procedure TFrmConfiguracoes._AbrirTabelasPadrao;
begin
   with solos do begin
    Open;
   end;

   with metodos do begin
    Open;
   end;

   with estacas_tipos do begin
    Open;
   end;

end;

procedure TFrmConfiguracoes.KeyTiposEstacasChange(Sender: TObject);
begin
 txtEstacas_Diametros.KeyValue:=estacas_tipos.Fields[0].AsInteger;
 _Abrir_Estacas_Diametros;
end;

procedure TFrmConfiguracoes.KeyMetodoChange(Sender: TObject);
begin
 cbMetodoValores1.KeyValue:=metodos.Fields[0].AsInteger;
 _Abrir_Metodos_Solos;
end;

end.
