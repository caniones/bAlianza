unit uABMTransportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uABMbase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons;

type
  TfrmABMTransportes = class(TfrmABMbase)
    cxGridDBTableView1IDTRANSPORTE: TcxGridDBColumn;
    cxGridDBTableView1CUIT: TcxGridDBColumn;
    cxGridDBTableView1RAZONSOCIAL: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAltaClick(Sender: TObject);
    procedure btnModiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmABMTransportes: TfrmABMTransportes;

implementation

uses uAMTransporte, udmTransportes;

var
  dm:TdmTransportes;

{$R *.dfm}

procedure TfrmABMTransportes.FormCreate(Sender: TObject);
begin
  inherited;
  dm:=TdmTransportes.Create(self);
end;

procedure TfrmABMTransportes.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.Free;
end;

procedure TfrmABMTransportes.btnAltaClick(Sender: TObject);
var
  FInput:TfrmAMTransporte;
begin
  inherited;
  FInput:=TfrmAMTransporte.Create(self);
  try
    dsDatos.DataSet.Insert;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMTransportes.btnModiClick(Sender: TObject);
var
  FInput:TfrmAMTransporte;
begin
  inherited;
  FInput:=TfrmAMTransporte.Create(self);
  try
    dsDatos.DataSet.Edit;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

end.
