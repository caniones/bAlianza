inherited frmAMVehiculo: TfrmAMVehiculo
  Caption = 'Vehiculo'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 64
    Width = 65
    Height = 13
    Caption = 'Ptente Ch'#225'sis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 120
    Width = 119
    Height = 13
    Caption = 'Patente Acoplado / Semi'
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
    inherited lInfo: TLabel
      Width = 52
      Caption = 'Veh'#237'culo'
    end
  end
  object dbePatenteChasis: TDBEdit [4]
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    DataField = 'PATENTECHASIS'
    DataSource = dsDatos
    TabOrder = 2
  end
  object dbePatenteAcopolado: TDBEdit [5]
    Left = 16
    Top = 136
    Width = 121
    Height = 21
    DataField = 'PATENTEACOPOLADO'
    DataSource = dsDatos
    TabOrder = 3
  end
  inherited dsDatos: TDataSource
    DataSet = dmVehiculos.zqVehiculos
  end
end
