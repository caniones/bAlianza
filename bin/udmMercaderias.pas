unit udmMercaderias;

interface

uses
  SysUtils, Classes, ZSqlUpdate, ZSequence, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TdmMercaderias = class(TDataModule)
    zqMercaderias: TZQuery;
    zsGeneral: TZSequence;
    zusMercaderias: TZUpdateSQL;
    zqMercaderiasIDMERCADERIA: TIntegerField;
    zqMercaderiasDESCRIPCION: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure abrirDM();
  public
    { Public declarations }
    procedure grabar();
  end;

var
  dmMercaderias: TdmMercaderias;

implementation

uses udmConexion;

{$R *.dfm}

{ TdmMercaderias }

procedure TdmMercaderias.abrirDM;
begin
  zqMercaderias.Close;
  zqMercaderias.Open;
end;

procedure TdmMercaderias.grabar;
begin
  try
    zqMercaderias.ApplyUpdates;
    zqMercaderias.Connection.Commit;
  except
    zqMercaderias.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmMercaderias.DataModuleCreate(Sender: TObject);
begin
  self.abrirDM;
end;

end.
