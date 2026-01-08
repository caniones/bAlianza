inherited frmABMMercaderias: TfrmABMMercaderias
  Caption = 'Mercaderias'
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
      object cxGridDBTableView1IDMERCADERIA: TcxGridDBColumn
        DataBinding.FieldName = 'IDMERCADERIA'
      end
      object cxGridDBTableView1DESCRIPCION: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRIPCION'
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmMercaderias.zqMercaderias
  end
end
