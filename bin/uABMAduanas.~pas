unit uABMAduanas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uABMbase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons;

type
  TfrmABMAduanas = class(TfrmABMbase)
    cxGridDBTableView1IDADUANA: TcxGridDBColumn;
    cxGridDBTableView1CODIGOLOT: TcxGridDBColumn;
    cxGridDBTableView1NROCERTIFICADO: TcxGridDBColumn;
    cxGridDBTableView1FECHAVENCIMIENTO: TcxGridDBColumn;
    cxGridDBTableView1CODIGOADUANA: TcxGridDBColumn;
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
  frmABMAduanas: TfrmABMAduanas;

implementation

uses udmAduanas, uAMAduana;

var
  dm:TdmAduanas;

{$R *.dfm}

procedure TfrmABMAduanas.FormCreate(Sender: TObject);
begin
  inherited;
  dm:=TdmAduanas.Create(self);
end;

procedure TfrmABMAduanas.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.Free;
end;

procedure TfrmABMAduanas.btnAltaClick(Sender: TObject);
var
  FInput:TfrmAMAduana;
begin
  inherited;
  FInput:=TfrmAMAduana.Create(self);
  try
    dsDatos.DataSet.Insert;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMAduanas.btnModiClick(Sender: TObject);
var
  FInput:TfrmAMAduana;
begin
  inherited;
  FInput:=TfrmAMAduana.Create(self);
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
