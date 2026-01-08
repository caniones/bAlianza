inherited frmABMContenedores: TfrmABMContenedores
  Left = 437
  Top = 167
  Caption = 'Contenedores'
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
      object cxGridDBTableView1IDCONTENEDOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDCONTENEDOR'
        Visible = False
      end
      object cxGridDBTableView1IDENTIFICADORCONTENEDOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTIFICADORCONTENEDOR'
      end
      object cxGridDBTableView1PESOBRUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PESOBRUTO'
      end
      object cxGridDBTableView1PESOTARA: TcxGridDBColumn
        DataBinding.FieldName = 'PESOTARA'
      end
    end
  end
  inherited dsDatos: TDataSource
    DataSet = dmContenedores.zqContenedores
  end
end
