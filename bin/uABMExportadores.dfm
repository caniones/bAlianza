inherited frmABMExportadores: TfrmABMExportadores
  Caption = 'Exportadores'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnAlta: TSpeedButton
      OnClick = btnAltaClick
    end
    inherited btnModi: TSpeedButton
      OnClick = btnModiClick
    end
  end
  inherited cxGrid: TcxGrid
    inherited cxGridDBTableView1: TcxGridDBTableView
      object cxGridDBTableView1IDEXPORTADOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDEXPORTADOR'
        Visible = False
      end
      object cxGridDBTableView1CUIT: TcxGridDBColumn
        DataBinding.FieldName = 'CUIT'
      end
      object cxGridDBTableView1RAZONSOCIAL: TcxGridDBColumn
        DataBinding.FieldName = 'RAZONSOCIAL'
      end
      object cxGridDBTableView1FECHABAJA: TcxGridDBColumn
        DataBinding.FieldName = 'FECHABAJA'
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmExportadores.zqExportadores
  end
end
