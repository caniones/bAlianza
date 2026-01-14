unit uAMContenedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TfrmAMContenedor = class(TfrmImput)
    dbeIdentificadorContenedor: TDBEdit;
    dbePesoTara: TDBEdit;
    dbePesoBruto: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMContenedor: TfrmAMContenedor;

implementation

uses udmContenedores;

{$R *.dfm}

procedure TfrmAMContenedor.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

end.
