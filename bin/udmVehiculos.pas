unit udmVehiculos;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmVehiculos = class(TDataModule)
    zqVehiculos: TZQuery;
    zsGeneral: TZSequence;
    zusVehiculos: TZUpdateSQL;
    zqVehiculosIDVEHICULO: TIntegerField;
    zqVehiculosPATENTECHASIS: TStringField;
    zqVehiculosPATENTEACOPOLADO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmVehiculos: TdmVehiculos;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmVehiculos }

procedure TdmVehiculos.abrirDM;
begin
  zqVehiculos.Close;
  zqVehiculos.Open;
end;

procedure TdmVehiculos.grabar;
begin
  try
    zqVehiculos.ApplyUpdates;
    zqVehiculos.Connection.Commit;
  except
    zqVehiculos.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmVehiculos.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

end.
