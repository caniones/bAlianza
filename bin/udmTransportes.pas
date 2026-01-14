unit udmTransportes;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmTransportes = class(TDataModule)
    zqTransportes: TZQuery;
    zsGeneral: TZSequence;
    zusTransportes: TZUpdateSQL;
    zqTransportesIDTRANSPORTE: TIntegerField;
    zqTransportesCUIT: TStringField;
    zqTransportesRAZONSOCIAL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmTransportes: TdmTransportes;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmTransportes }

procedure TdmTransportes.abrirDM;
begin
  zqTransportes.Close;
  zqTransportes.Open;
end;

procedure TdmTransportes.grabar;
begin
  try
    zqTransportes.ApplyUpdates;
    zqTransportes.Connection.Commit;
  except
    zqTransportes.Connection.Rollback;
  end;
  self.abrirDM;

end;

procedure TdmTransportes.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

end.
