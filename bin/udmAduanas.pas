unit udmAduanas;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlUpdate, ZSequence;

type
  TdmAduanas = class(TDataModule)
    zqAduanas: TZQuery;
    zsGeneral: TZSequence;
    zusAduanas: TZUpdateSQL;
    zqAduanasIDADUANA: TIntegerField;
    zqAduanasCODIGOLOT: TStringField;
    zqAduanasNROCERTIFICADO: TStringField;
    zqAduanasFECHAVENCIMIENTO: TDateField;
    zqAduanasCODIGOADUANA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure zqAduanasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmAduanas: TdmAduanas;

implementation

uses udmConexion;

{$R *.dfm}

procedure TdmAduanas.abrirDM;
begin
  zqAduanas.Close;
  zqAduanas.Open;
end;

procedure TdmAduanas.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

procedure TdmAduanas.grabar;
begin
  try
    zqAduanas.ApplyUpdates;
    zqAduanas.Connection.Commit;
  except
    zqAduanas.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmAduanas.zqAduanasNewRecord(DataSet: TDataSet);
begin
  zqAduanasFECHAVENCIMIENTO.AsDateTime:=date;
end;

end.
