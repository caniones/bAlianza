unit uAMTransporte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmAMTransporte = class(TfrmImput)
    dbeCUIT: TDBEdit;
    dbeRazonSocial: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMTransporte: TfrmAMTransporte;

implementation

uses udmTransportes;

{$R *.dfm}

procedure TfrmAMTransporte.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

end.
