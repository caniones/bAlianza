unit uAMExportador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmAMExportador = class(TfrmImput)
    dbeRazonSocial: TDBEdit;
    dbeCUIT: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMExportador: TfrmAMExportador;

implementation

uses udmExportadores;

{$R *.dfm}

procedure TfrmAMExportador.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOk;
end;

end.
