unit udmConexion;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, IniFiles, Forms,
  ZSqlUpdate, ZSequence, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TdmConexion = class(TDataModule)
    zConnection: TZConnection;
    zqTickets: TZQuery;
    zusTickets: TZUpdateSQL;
    zsTickets: TZSequence;
    zroqAduanas: TZReadOnlyQuery;
    zroqExportadores: TZReadOnlyQuery;
    zroqTransportes: TZReadOnlyQuery;
    zroqMercaderias: TZReadOnlyQuery;
    zroqVehiculos: TZReadOnlyQuery;
    zroqChoferes: TZReadOnlyQuery;
    zroqContenedores: TZReadOnlyQuery;
    zroqEstados: TZReadOnlyQuery;
    zroqTransportesIDTRANSPORTE: TIntegerField;
    zroqTransportesCUIT: TStringField;
    zroqTransportesRAZONSOCIAL: TStringField;
    zroqMercaderiasIDMERCADERIA: TIntegerField;
    zroqMercaderiasDESCRIPCION: TStringField;
    zroqContenedoresIDCONTENEDOR: TIntegerField;
    zroqContenedoresIDENTIFICADORCONTENEDOR: TStringField;
    zroqContenedoresPESOBRUTO: TIntegerField;
    zroqContenedoresPESOTARA: TIntegerField;
    zroqEstadosIDESTADO: TIntegerField;
    zroqEstadosESTADO: TStringField;
    zroqVehiculosIDVEHICULO: TIntegerField;
    zroqVehiculosPATENTECHASIS: TStringField;
    zroqVehiculosPATENTEACOPOLADO: TStringField;
    zroqVehiculosCAMION: TStringField;
    zroqChoferesNRODNI: TIntegerField;
    zroqChoferesIDTIPODNI: TIntegerField;
    zroqChoferesIDNACIONALIDAD: TIntegerField;
    zroqChoferesNOMBRE: TStringField;
    zroqChoferesAPELLIDO: TStringField;
    zroqChoferesCHOFER: TStringField;
    zqTicketsIDTICKET: TIntegerField;
    zqTicketsFECHAHORA: TDateTimeField;
    zqTicketsIDADUANA: TIntegerField;
    zqTicketsCODIGO_LOT: TStringField;
    zqTicketsIDEXPORTADOR: TIntegerField;
    zqTicketsEXPORTADOR: TStringField;
    zqTicketsIDTRANSPORTE: TIntegerField;
    zqTicketsTRANSPORTE: TStringField;
    zqTicketsIDENTIFICADOR: TStringField;
    zqTicketsIDMERCADERIA: TIntegerField;
    zqTicketsMERCADERIA: TStringField;
    zqTicketsIDVEHICULO: TIntegerField;
    zqTicketsDNICHOFER: TIntegerField;
    zqTicketsPESOTARA: TIntegerField;
    zqTicketsPESOBRUTO: TIntegerField;
    zqTicketsPESONETO: TIntegerField;
    zqTicketsIDCONTENEDOR: TIntegerField;
    zqTicketsIDESTADO: TIntegerField;
    zqTicketsENTRADA: TDateTimeField;
    zqTicketsSALIDA: TDateTimeField;
    zqTicketsCHOFER: TStringField;
    zroqAduanasIDADUANA: TIntegerField;
    zroqAduanasDESCRIPCION: TStringField;
    zroqAduanasCODIGOLOT: TStringField;
    zroqAduanasNROCERTIFICADO: TStringField;
    zroqAduanasFECHAVENCIMIENTO: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure zConnectionBeforeConnect(Sender: TObject);
    procedure zqTicketsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure abrirDm;
  public
    { Public declarations }
    procedure abrirTicket();
    procedure modificarTicket();
    procedure grabarTicket();
  end;

var
  dmConexion: TdmConexion;

implementation

{$R *.dfm}

{ TdmConexion }

procedure TdmConexion.abrirDm;
begin
  // inizializo todos los dataset
  zroqAduanas.Close;
  zroqAduanas.Open;
  zroqExportadores.Close;
  zroqExportadores.Open;
  zroqTransportes.Close;
  zroqTransportes.Open;
  zroqMercaderias.Close;
  zroqMercaderias.Open;
  zroqVehiculos.Close;
  zroqVehiculos.Open;
  zroqChoferes.Close;
  zroqChoferes.Open;
  zroqContenedores.Close;
  zroqContenedores.Open;
  zroqEstados.Close;
  zroqEstados.Open;
  zqTickets.Close;
  zqTickets.Open;
end;

procedure TdmConexion.abrirTicket;
begin
  self.abrirDm;
  zqTickets.Insert;
end;

procedure TdmConexion.DataModuleCreate(Sender: TObject);
begin
  ZConnection.Connected:=true;
  self.abrirDM;
end;

procedure TdmConexion.grabarTicket;
begin
  try
    zqTickets.ApplyUpdates;
    zqTickets.Connection.Commit;
  except
    zqTickets.Connection.Rollback;
  end;
  self.abrirDM;
end;

procedure TdmConexion.modificarTicket;
begin
  zqTickets.Edit;
end;

procedure TdmConexion.zConnectionBeforeConnect(Sender: TObject);
var
  ini:TIniFile;
begin
  // configuracion de la conexion con la base de datos
  ini:=TIniFile.Create(ChangeFileExt(Application.ExeName,'.INI'));
  try
    zConnection.HostName:=ini.ReadString('CONF','HOSTNAME','');
    zConnection.Database:=ini.ReadString('CONF','DATABASE','');
    zConnection.Port:=ini.ReadInteger('CONF','PORT',3050);
  finally
    ini.Free;
  end;
end;

procedure TdmConexion.zqTicketsNewRecord(DataSet: TDataSet);
begin
    zqTicketsIDADUANA.AsInteger:=1;
    zqTicketsIDEXPORTADOR.AsInteger:=1;
    zqTicketsIDTRANSPORTE.AsInteger:=1;
    zqTicketsIDENTIFICADOR.AsString:='';
    zqTicketsIDMERCADERIA.AsInteger:=1;
    zqTicketsIDVEHICULO.AsInteger:=1;
    zqTicketsDNICHOFER.AsInteger:=1;
    zqTicketsPESOTARA.AsInteger:=1;
    zqTicketsPESOBRUTO.AsInteger:=0;
    zqTicketsPESONETO.AsInteger:=0;
    zqTicketsIDCONTENEDOR.AsInteger:=1;
    zqTicketsIDESTADO.AsInteger:=100;
end;

end.
