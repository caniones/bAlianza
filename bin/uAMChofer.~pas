unit uAMChofer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uImputForm, DB, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TfrmAMChofer = class(TfrmImput)
    dsTiposDNI: TDataSource;
    dsNacionalidades: TDataSource;
    dbeDNI: TDBEdit;
    dbeNombre: TDBEdit;
    dbeApellido: TDBEdit;
    dblcTipoDNI: TDBLookupComboBox;
    dblcNacionalidades: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAMChofer: TfrmAMChofer;

implementation

uses udmChoferes;

{$R *.dfm}

procedure TfrmAMChofer.btnAceptarClick(Sender: TObject);
begin
  inherited;
  self.ModalResult:=mrOK;
end;

end.
