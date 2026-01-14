unit udmChoferes;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmChoferes = class(TDataModule)
    zqChoferes: TZQuery;
    zsGeneral: TZSequence;
    zusChoferes: TZUpdateSQL;
    zroqNacionalidades: TZReadOnlyQuery;
    zroqTiposDNI: TZReadOnlyQuery;
    zroqTiposDNIIDTIPODNI: TIntegerField;
    zroqTiposDNIDESCIPCION: TStringField;
    zroqNacionalidadesIDNACIONALIDAD: TIntegerField;
    zroqNacionalidadesNACIONALIDAD: TStringField;
    zqChoferesNRODNI: TIntegerField;
    zqChoferesIDTIPODNI: TIntegerField;
    zqChoferesDNI: TStringField;
    zqChoferesIDNACIONALIDAD: TIntegerField;
    zqChoferesNACIONALIDAD: TStringField;
    zqChoferesNOMBRE: TStringField;
    zqChoferesAPELLIDO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure zqChoferesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmChoferes: TdmChoferes;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmChoferes }

procedure TdmChoferes.abrirDM;
begin
  zroqTiposDNI.Close;
  zroqTiposDNI.Open;
  zroqNacionalidades.Close;
  zroqNacionalidades.Open;
  zqChoferes.Close;
  zqChoferes.Open;
end;

procedure TdmChoferes.grabar;
begin
  try
    zqChoferes.ApplyUpdates;
    zqChoferes.Connection.Commit;
  except
    zqChoferes.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmChoferes.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

procedure TdmChoferes.zqChoferesNewRecord(DataSet: TDataSet);
begin
  zqChoferesIDTIPODNI.AsInteger:=1;
  zqChoferesIDNACIONALIDAD.AsInteger:=1;
end;

end.
