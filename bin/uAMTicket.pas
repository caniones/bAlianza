unit uAMTicket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, CPort, Menus, Mask,
  DBCtrls, StrUtils;

type
  TfrmAMTicket = class(TfrmImput)
    ComPort: TComPort;
    btnTara: TSpeedButton;
    btnBruto: TSpeedButton;
    PopupMenu: TPopupMenu;
    ConectarBalanza1: TMenuItem;
    GroupBox1: TGroupBox;
    dbePesoTara: TDBEdit;
    dbePesoBruto: TDBEdit;
    dbePesoNeto: TDBEdit;
    Memo: TMemo;
    dblcAduana: TDBLookupComboBox;
    dblcExportador: TDBLookupComboBox;
    dblcTransporte: TDBLookupComboBox;
    dblcMercaderia: TDBLookupComboBox;
    dblcVehiculo: TDBLookupComboBox;
    dbeIdentificador: TDBEdit;
    dblcChofer: TDBLookupComboBox;
    dblcContenedor: TDBLookupComboBox;
    dblcEstado: TDBLookupComboBox;
    dsAduanas: TDataSource;
    dsExportador: TDataSource;
    dsTransportes: TDataSource;
    dsMercaderias: TDataSource;
    dsVehiculos: TDataSource;
    dsChoferes: TDataSource;
    dsContenedores: TDataSource;
    dsEstados: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure ComPortRxChar(Sender: TObject; Count: Integer);
    procedure ConectarBalanza1Click(Sender: TObject);
    procedure btnTaraClick(Sender: TObject);
    procedure btnBrutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMTicket: TfrmAMTicket;

implementation

uses uPublicos, udmConexion;

{$R *.dfm}

procedure TfrmAMTicket.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

procedure TfrmAMTicket.ComPortRxChar(Sender: TObject; Count: Integer);
var
  Str: String;
begin
  inherited;
  ComPort.ReadStr(Str, Count);
  Memo.text:= Memo.Text + Str;
end;

procedure TfrmAMTicket.ConectarBalanza1Click(Sender: TObject);
begin
  inherited;
  if ComPort.Connected then
    ComPort.Close;
  ComPort.ShowSetupDialog;
  ComPort.Open;
end;

procedure TfrmAMTicket.btnTaraClick(Sender: TObject);
var
  str: string;
begin
  inherited;
  // el ultimo valor que envía la balanza lo meto en una variable
  str:=Memo.Lines.Strings[Memo.Lines.Count-1];
  // tomo las primeras 9 posisiones del string
  str:=AnsiLeftStr(str,9);
  // elimino los espacios en blaco
  str:=trim(str);
  // asigno el valor del peso
  dsDatos.DataSet.FieldByName('PESOTARA').AsInteger:=StrToInt(str);
  dsDatos.DataSet.FieldByName('ENTRADA').AsDateTime:=now;
end;

procedure TfrmAMTicket.btnBrutoClick(Sender: TObject);
var
  str: string;
begin
  inherited;
  // el ultimo valor que envía la balanza lo meto en una variable
  str:=Memo.Lines.Strings[Memo.Lines.Count-1];
  // tomo las primeras 9 posisiones del string
  str:=AnsiLeftStr(str,9);
  // elimino los espacios en blaco
  str:=trim(str);
  // asigno el valor del peso
  dsDatos.DataSet.FieldByName('PESOBRUTO').AsInteger:=StrToInt(str);
  // el peso neto es el bruto menos la tara
  dsDatos.DataSet.FieldByName('PESONETO').AsInteger:=
    dsDatos.DataSet.FieldByName('PESOBRUTO').AsInteger-
    dsDatos.DataSet.FieldByName('PESOTARA').AsInteger;
  dsDatos.DataSet.FieldByName('SALIDA').AsDateTime:=now;
end;

end.
