inherited frmABMVehiculos: TfrmABMVehiculos
  Caption = 'Veh'#237'culos'
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
      object cxGridDBTableView1IDVEHICULO: TcxGridDBColumn
        DataBinding.FieldName = 'IDVEHICULO'
      end
      object cxGridDBTableView1PATENTECHASIS: TcxGridDBColumn
        DataBinding.FieldName = 'PATENTECHASIS'
      end
      object cxGridDBTableView1PATENTEACOPOLADO: TcxGridDBColumn
        DataBinding.FieldName = 'PATENTEACOPOLADO'
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmVehiculos.zqVehiculos
  end
end
