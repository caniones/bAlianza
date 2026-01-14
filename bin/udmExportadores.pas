unit udmExportadores;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmExportadores = class(TDataModule)
    zqExportadores: TZQuery;
    zsGeneral: TZSequence;
    zusExportadores: TZUpdateSQL;
    zqExportadoresIDEXPORTADOR: TIntegerField;
    zqExportadoresCUIT: TStringField;
    zqExportadoresRAZONSOCIAL: TStringField;
    zqExportadoresFECHABAJA: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmExportadores: TdmExportadores;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmExportadores }

procedure TdmExportadores.abrirDM;
begin
  zqExportadores.Close;
  zqExportadores.Open;
end;

procedure TdmExportadores.grabar;
begin
  try
    zqExportadores.ApplyUpdates;
    zqExportadores.Connection.Commit;
  except
    zqExportadores.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmExportadores.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

end.
