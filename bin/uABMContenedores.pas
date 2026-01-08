unit uABMContenedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uABMbase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons;

type
  TfrmABMContenedores = class(TfrmABMbase)
    cxGridDBTableView1IDCONTENEDOR: TcxGridDBColumn;
    cxGridDBTableView1IDENTIFICADORCONTENEDOR: TcxGridDBColumn;
    cxGridDBTableView1PESOBRUTO: TcxGridDBColumn;
    cxGridDBTableView1PESOTARA: TcxGridDBColumn;
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
  frmABMContenedores: TfrmABMContenedores;

implementation

uses udmContenedores, uAMContenedor;

var
  dm:TdmContenedores;

{$R *.dfm}

procedure TfrmABMContenedores.FormCreate(Sender: TObject);
begin
  inherited;
  dm:=TdmContenedores.Create(self);
end;

procedure TfrmABMContenedores.FormDestroy(Sender: TObject);
begin
  inherited;
  dm.Free;
end;

procedure TfrmABMContenedores.btnAltaClick(Sender: TObject);
var
  FInput:TfrmAMContenedor;
begin
  inherited;
  FInput:=TfrmAMContenedor.Create(self);
  try
    dsDatos.DataSet.Insert;
    if FInput.ShowModal = mrOK then
      dm.grabar;
      dsDatos.DataSet.Cancel;
  finally
    FInput.Free;
  end;
end;

procedure TfrmABMContenedores.btnModiClick(Sender: TObject);
var
  FInput:TfrmAMContenedor;
begin
  inherited;
  FInput:=TfrmAMContenedor.Create(self);
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
