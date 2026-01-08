unit uABMExportadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uABMbase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons;

type
  TfrmABMExportadores = class(TfrmABMbase)
    cxGridDBTableView1IDEXPORTADOR: TcxGridDBColumn;
    cxGridDBTableView1CUIT: TcxGridDBColumn;
    cxGridDBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGridDBTableView1FECHABAJA: TcxGridDBColumn;
    procedure btnAltaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnModiClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmABMExportadores: TfrmABMExportadores;

implementation

uses udmExportadores, uAMExportador;

var
  dm:TdmExportadores;

{$R *.dfm}

procedure TfrmABMExportadores.btnAltaClick(Sender: TObject);
var
  FInput:TfrmAMExportador;
begin
  inherited;
  FInput:=TfrmAMExportador.Create(self);
  try
    dsDatos.DataSet.Insert;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMExportadores.FormCreate(Sender: TObject);
begin
  inherited;
  dm:=TdmExportadores.Create(self);
end;

procedure TfrmABMExportadores.btnModiClick(Sender: TObject);
var
  FInput:TfrmAMExportador;
begin
  inherited;
  FInput:=TfrmAMExportador.Create(self);
  try
    dsDatos.DataSet.Edit;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMExportadores.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.Free;
end;

end.
