unit uABMMercaderias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uABMbase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons;

type
  TfrmABMMercaderias = class(TfrmABMbase)
    cxGridDBTableView1IDMERCADERIA: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPCION: TcxGridDBColumn;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAltaClick(Sender: TObject);
    procedure btnModiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmABMMercaderias: TfrmABMMercaderias;

implementation

uses uAMMercaderia, udmMercaderias;

var
  dm:TdmMercaderias;

{$R *.dfm}

procedure TfrmABMMercaderias.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.free;
end;

procedure TfrmABMMercaderias.FormCreate(Sender: TObject);
begin
  inherited;
  dm:=TdmMercaderias.Create(self);
end;

procedure TfrmABMMercaderias.btnAltaClick(Sender: TObject);
var
  FInput:TfrmAMMercaderia;
begin
  inherited;
  FInput:=TfrmAMMercaderia.Create(self);
  try
    dsDatos.DataSet.Insert;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMMercaderias.btnModiClick(Sender: TObject);
var
  FInput:TfrmAMMercaderia;
begin
  inherited;
  FInput:=TfrmAMMercaderia.Create(self);
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
