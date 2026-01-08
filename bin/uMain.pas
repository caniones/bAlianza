unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CPort, Menus, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Buttons;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    Archivo1: TMenuItem;
    N1: TMenuItem;
    SALIR1: TMenuItem;
    ickets1: TMenuItem;
    AltaTicket1: TMenuItem;
    ModificacionTicket1: TMenuItem;
    Configurarbalanza1: TMenuItem;
    ConfigurarAFIP1: TMenuItem;
    ABMs1: TMenuItem;
    Exportadores1: TMenuItem;
    Choferes1: TMenuItem;
    Vehiculos1: TMenuItem;
    Transportes1: TMenuItem;
    Contenedores1: TMenuItem;
    Mercaderias1: TMenuItem;
    dsDatos: TDataSource;
    cxGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ImprimirTicket1: TMenuItem;
    N2: TMenuItem;
    panelBtn: TPanel;
    btnSalir: TSpeedButton;
    btnVehiculos: TSpeedButton;
    btnContenedores: TSpeedButton;
    btnChoferes: TSpeedButton;
    btnExportadores: TSpeedButton;
    btnTransportes: TSpeedButton;
    btnMercaderias: TSpeedButton;
    cxGridDBTableView1IDTICKET: TcxGridDBColumn;
    cxGridDBTableView1FECHAHORA: TcxGridDBColumn;
    cxGridDBTableView1IDADUANA: TcxGridDBColumn;
    cxGridDBTableView1CODIGO_LOT: TcxGridDBColumn;
    cxGridDBTableView1IDEXPORTADOR: TcxGridDBColumn;
    cxGridDBTableView1EXPORTADOR: TcxGridDBColumn;
    cxGridDBTableView1IDTRANSPORTE: TcxGridDBColumn;
    cxGridDBTableView1TRANSPORTE: TcxGridDBColumn;
    cxGridDBTableView1IDENTIFICADOR: TcxGridDBColumn;
    cxGridDBTableView1IDMERCADERIA: TcxGridDBColumn;
    cxGridDBTableView1MERCADERIA: TcxGridDBColumn;
    cxGridDBTableView1IDVEHICULO: TcxGridDBColumn;
    cxGridDBTableView1DNICHOFER: TcxGridDBColumn;
    cxGridDBTableView1CHOFER: TcxGridDBColumn;
    cxGridDBTableView1PESOTARA: TcxGridDBColumn;
    cxGridDBTableView1PESOBRUTO: TcxGridDBColumn;
    cxGridDBTableView1PESONETO: TcxGridDBColumn;
    cxGridDBTableView1IDCONTENEDOR: TcxGridDBColumn;
    cxGridDBTableView1IDESTADO: TcxGridDBColumn;
    cxGridDBTableView1ENTRADA: TcxGridDBColumn;
    cxGridDBTableView1SALIDA: TcxGridDBColumn;
    procedure Configurarbalanza1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SALIR1Click(Sender: TObject);
    procedure ConfigurarAFIP1Click(Sender: TObject);
    procedure Contenedores1Click(Sender: TObject);
    procedure Exportadores1Click(Sender: TObject);
    procedure Choferes1Click(Sender: TObject);
    procedure Vehiculos1Click(Sender: TObject);
    procedure Transportes1Click(Sender: TObject);
    procedure Mercaderias1Click(Sender: TObject);
    procedure AltaTicket1Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure ModificacionTicket1Click(Sender: TObject);
    procedure ImprimirTicket1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnContenedoresClick(Sender: TObject);
    procedure btnExportadoresClick(Sender: TObject);
    procedure btnChoferesClick(Sender: TObject);
    procedure btnVehiculosClick(Sender: TObject);
    procedure btnTransportesClick(Sender: TObject);
    procedure btnMercaderiasClick(Sender: TObject);
  private
    { Private declarations }
    procedure refrescar();
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses uABMbase, uBalanza, udmConexion, uImputForm, uPublicos, uABMAduanas,
  uABMChoferes, uABMContenedores, uABMExportadores, uABMMercaderias,
  uABMTransportes, uABMVehiculos, uAMTicket, uRepTicket;

var
  dmConexion: TdmConexion;
  
{$R *.dfm}


procedure TfrmMain.Configurarbalanza1Click(Sender: TObject);
var
  FForm:TfrmBalanza;
begin
  FForm:=TfrmBalanza.Create(self);
  try
    FForm.ShowModal;
  finally
    FForm.Free;
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  // configuracion inicial del sistema
  DecimalSeparator:='.';
  ThousandSeparator:=',';
  DateSeparator:='/';
  ShortDateFormat:='dd/mm/yy';
  LongDateFormat:='dd/mm/yyyy';
  ShortTimeFormat:='hh:mm am/pm';
  LongTimeFormat:='hh:mm am/pm';
  // titulo del sistema
  self.Caption:=self.Caption+uPublicos.LeerIni(ChangeFileExt(
    Application.ExeName,'.INI'), 'CONF','CAPTION','')+
    ' - Base de datos: '+uPublicos.LeerIni(ChangeFileExt(
    Application.ExeName,'.INI'), 'CONF','DATABASE','');
  dmConexion:=TdmConexion.Create(self);
  // esto hace que la grilla se muestre filtrada según el criterio
  // para que se inicie filtrada hay que cambiar a true la propiedad filter
  // foGreaterEqual quiere decir >= según un ejemplo del Club
  {cxGridDBTableView1.DataController.Filter.Active:=true;
  cxGridDBTableView1.DataController.GridView.DataController.Filter.AddItem(nil,
    cxGridDBTableView1IDESTADO, foEqual, 100, 'ACTIVO');}
end;

procedure TfrmMain.SALIR1Click(Sender: TObject);
begin
  self.close;
end;

procedure TfrmMain.ConfigurarAFIP1Click(Sender: TObject);
var
  FFormulario:TfrmABMAduanas;
begin
  FFormulario:=TfrmABMAduanas.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.refrescar;
var
  marca: string;
begin
  // marco el registro sobre el que estoy trabajando
end;

procedure TfrmMain.Contenedores1Click(Sender: TObject);
var
  FFormulario:TfrmABMContenedores;
begin
  FFormulario:=TfrmABMContenedores.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.Exportadores1Click(Sender: TObject);
var
  FFormulario:TfrmABMExportadores;
begin
  FFormulario:=TfrmABMExportadores.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.Choferes1Click(Sender: TObject);
var
  FFormulario:TfrmABMChoferes;
begin
  FFormulario:=TfrmABMChoferes.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.Vehiculos1Click(Sender: TObject);
var
  FFormulario:TfrmABMVehiculos;
begin
  FFormulario:=TfrmABMVehiculos.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.Transportes1Click(Sender: TObject);
var
  FFormulario:TfrmABMTransportes;
begin
  FFormulario:=TfrmABMTransportes.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.Mercaderias1Click(Sender: TObject);
var
  FFormulario:TfrmABMMercaderias;
begin
  FFormulario:=TfrmABMMercaderias.Create(self);
  try
    // si el main está maximizada, la ventana que se crea también
    FFormulario.WindowState:=self.WindowState;
    FFormulario.ShowModal;
  finally
    FFormulario.Free;
  end;
  self.refrescar;
end;

procedure TfrmMain.AltaTicket1Click(Sender: TObject);
var
  FInput:TfrmAMTicket;
begin
  inherited;
  FInput:=TfrmAMTicket.Create(self);
  try
    dmConexion.abrirTicket;
    if FInput.ShowModal = mrOK then
      dmConexion.grabarTicket;
  finally
    FInput.Free;
  end;
end;

procedure TfrmMain.cxGridDBTableView1DblClick(Sender: TObject);
begin
  //
  self.ModificacionTicket1.Click;
end;

procedure TfrmMain.ModificacionTicket1Click(Sender: TObject);
var
  FInput:TfrmAMTicket;
begin
  inherited;
  FInput:=TfrmAMTicket.Create(self);
  try
    dmConexion.modificarTicket;
    if FInput.ShowModal = mrOK then
      dmConexion.grabarTicket;
  finally
    FInput.Free;
  end;
end;

procedure TfrmMain.ImprimirTicket1Click(Sender: TObject);
var
  FRep: TfrmRepTicket;
begin
  FRep:=TfrmRepTicket.Create(self);
  FRep.whereIn(dsDatos.DataSet.FieldByName('IDTICKET').AsString);
  FRep.qrBase.PreviewModal;
  FRep.Free;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  if self.Height < 500 then
    self.Height:=500;
  if self.Width < 800 then
    self.Width:=800;
  cxGrid.Height:=self.Height-120;
  cxgrid.Width:=self.Width-24;
  // ubico las novedades
  panelBtn.Top:=self.Height-110;
  panelBtn.Width:=cxgrid.Width;
  btnSalir.Left:=panelBtn.Width-53;
end;

procedure TfrmMain.btnSalirClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmMain.btnContenedoresClick(Sender: TObject);
begin
  self.Contenedores1.Click;
end;

procedure TfrmMain.btnExportadoresClick(Sender: TObject);
begin
  self.Exportadores1.Click;
end;

procedure TfrmMain.btnChoferesClick(Sender: TObject);
begin
  self.Choferes1.Click;
end;

procedure TfrmMain.btnVehiculosClick(Sender: TObject);
begin
  self.Vehiculos1.Click
end;

procedure TfrmMain.btnTransportesClick(Sender: TObject);
begin
  self.Transportes1.Click;
end;

procedure TfrmMain.btnMercaderiasClick(Sender: TObject);
begin
  self.Mercaderias1.Click;
end;

end.
