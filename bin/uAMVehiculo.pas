unit uAMVehiculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmAMVehiculo = class(TfrmImput)
    dbePatenteChasis: TDBEdit;
    dbePatenteAcopolado: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMVehiculo: TfrmAMVehiculo;

implementation

uses udmVehiculos;

{$R *.dfm}

procedure TfrmAMVehiculo.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

end.
