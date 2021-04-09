unit uFunc;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, ToolEdit, CurrEdit,
  RXGrids, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlProcessor;

  procedure _DelRow(myGrid: TStringGrid;LineToDelete,ColumnClick:Integer;myTableName:String);
  procedure _ExecSql(cSql: string);
  procedure _LoadCombo( myCombo: TComboBox; myForm:TForm ;myTable:String);
  function _ReturnField(cSql:string):string;
  function  _VirgulaParaPonto(s:string):string;

implementation

uses uDM;

Function  _VirgulaParaPonto(s:string):string;
var
 i,t:integer;
 l:string;
begin
 t:=length(s);
 result:='';
 for i:=1 to t do begin
  l:=copy(s,i,1);
  if l=',' then l:='.';
  result:=result+l;
 end;
end;


function _ReturnField(cSql: string):string;
 var
   sSql:String;
   cQry:TZQuery;

begin
  try
   cQry:=TZQuery.Create(nil);
   cQry.Connection:=uDM.DM.Conn;
   result:='';
   with cQry do begin
     Close;
     Sql.Clear;
     Sql.Add(cSql);
     Open;
     if not Eof then begin
      result:=TrimRight(TrimLeft( Fields[0].AsString) );
     end;
     Close;
   end;
   FreeAndNil(cQry);
  except
   showmessage('Erro ao executar o comando sql:'+#13+#10+cSql);
  end;

end;

procedure _LoadCombo( myCombo: TComboBox ; myForm:TForm; myTable:String);
var
   s,cSql:String;
   cQry:TZQuery;

begin
   cQry:=TZQuery.Create(myForm);
   cQry.Connection:=uDM.DM.Conn;
   MyCombo.Items.Clear;
   with cQry do begin
     Close;
     cSql:='SELECT descricao FROM '+myTable+' ORDER BY descricao';
     sql.clear;
     sql.Add(cSql);
     Open;
     while not eof do begin
      s:=trimright(trimleft(fieldbyname('descricao').asstring));
      MyCombo.Items.Add(s);
      Next;
     end;
     Close;
   end;
   FreeAndNil(cQry);
 
end;






procedure _DelRow(myGrid: TStringGrid;LineToDelete,ColumnClick:Integer;myTableName:String);
var
  LineCounter,  LineQtd,ColQtd,Colcounter : Integer;
  celValue:String;
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

      if UpperCase(myGrid.Name)='GRIDSOLOS' then begin
           celValue:=myGrid.Cells[0,LineToDelete];
          _ExecSql('DELETE FROM '+myTableName+' WHERE descricao='+#39+celValue+#39);
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

   end;
end;



procedure _ExecSql(cSql: string);
var
  Script:TZSQLProcessor;
begin
   try
     Script:= TZSQLProcessor.Create(Application);
     Script.Connection:=DM.Conn;
     Script.Script.Add(cSql);
     Script.Execute;
     FreeAndNil(Script);
   except
     ShowMessage('erro ao executar comando sql');
   end;
end;

end.
