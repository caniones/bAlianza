unit uAMMercaderia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmAMMercaderia = class(TfrmImput)
    dbeDescripcion: TDBEdit;
    Label1: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMMercaderia: TfrmAMMercaderia;

implementation

uses udmMercaderias;

{$R *.dfm}

procedure TfrmAMMercaderia.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

end.
