inherited frmAMExportador: TfrmAMExportador
  Caption = 'Exportador'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 25
    Height = 13
    Caption = 'CUIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 128
    Width = 63
    Height = 13
    Caption = 'Raz'#243'n Social'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited PanelButton: TPanel
    inherited btnAceptar: TSpeedButton
      OnClick = btnAceptarClick
    end
    inherited btnSalir: TSpeedButton
      Visible = False
    end
  end
  inherited PanelHeader: TPanel
    TabOrder = 3
    inherited lInfo: TLabel
      Width = 62
      Caption = 'Exportador'
    end
  end
  object dbeRazonSocial: TDBEdit [4]
    Left = 16
    Top = 144
    Width = 225
    Height = 21
    DataField = 'RAZONSOCIAL'
    DataSource = dsDatos
    TabOrder = 2
  end
  object dbeCUIT: TDBEdit [5]
    Left = 16
    Top = 88
    Width = 121
    Height = 21
    DataField = 'CUIT'
    DataSource = dsDatos
    TabOrder = 1
  end
  inherited dsDatos: TDataSource
    DataSet = dmExportadores.zqExportadores
  end
end
