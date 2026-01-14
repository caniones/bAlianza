unit udmContenedores;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmContenedores = class(TDataModule)
    zqContenedores: TZQuery;
    zsGeneral: TZSequence;
    zusContenedores: TZUpdateSQL;
    zqContenedoresIDCONTENEDOR: TIntegerField;
    zqContenedoresIDENTIFICADORCONTENEDOR: TStringField;
    zqContenedoresPESOBRUTO: TIntegerField;
    zqContenedoresPESOTARA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure zqContenedoresNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmContenedores: TdmContenedores;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmContenedores }

procedure TdmContenedores.abrirDM;
begin
  zqContenedores.Close;
  zqContenedores.Open;
end;

procedure TdmContenedores.grabar;
begin
  try
    zqContenedores.ApplyUpdates;
    zqContenedores.Connection.Commit;
  except
    zqContenedores.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmContenedores.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

procedure TdmContenedores.zqContenedoresNewRecord(DataSet: TDataSet);
begin
  zqContenedoresPESOBRUTO.AsInteger:=0;
  zqContenedoresPESOTARA.AsInteger:=0;
end;

end.
