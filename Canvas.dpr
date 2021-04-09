program Canvas;

uses
  Forms,
  uCanvas in 'uCanvas.pas' {FrmMain},
  uDM in 'uDM.pas' {DM: TDataModule},
  uConfig in 'uConfig.pas' {FrmConfig},
  uFunc in 'uFunc.pas',
  uConfiguracoes in 'uConfiguracoes.pas' {FrmConfiguracoes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
