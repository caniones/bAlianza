inherited frmABMAduanas: TfrmABMAduanas
  Left = 422
  Top = 157
  Caption = 'Datos de habilitaci'#243'n de AFIP'
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
      object cxGridDBTableView1IDADUANA: TcxGridDBColumn
        DataBinding.FieldName = 'IDADUANA'
      end
      object cxGridDBTableView1CODIGOLOT: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGOLOT'
      end
      object cxGridDBTableView1NROCERTIFICADO: TcxGridDBColumn
        DataBinding.FieldName = 'NROCERTIFICADO'
      end
      object cxGridDBTableView1FECHAVENCIMIENTO: TcxGridDBColumn
        DataBinding.FieldName = 'FECHAVENCIMIENTO'
      end
      object cxGridDBTableView1CODIGOADUANA: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGOADUANA'
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmAduanas.zqAduanas
  end
end
