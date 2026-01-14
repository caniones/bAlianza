inherited frmAMContenedor: TfrmAMContenedor
  Caption = 'Contenedor'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 132
    Height = 13
    Caption = 'Identificador del contenedor'
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
    Width = 49
    Height = 13
    Caption = 'Peso Tara'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 144
    Top = 128
    Width = 52
    Height = 13
    Caption = 'Peso Bruto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited PanelButton: TPanel
    Left = 8
    Top = 192
    inherited btnAceptar: TSpeedButton
      OnClick = btnAceptarClick
    end
    inherited btnSalir: TSpeedButton
      Visible = False
    end
  end
  inherited PanelHeader: TPanel
    inherited lInfo: TLabel
      Width = 66
      Caption = 'Contenedor'
    end
  end
  object dbeIdentificadorContenedor: TDBEdit [5]
    Left = 16
    Top = 88
    Width = 249
    Height = 21
    DataField = 'IDENTIFICADORCONTENEDOR'
    DataSource = dsDatos
    TabOrder = 2
  end
  object dbePesoTara: TDBEdit [6]
    Left = 16
    Top = 144
    Width = 121
    Height = 21
    DataField = 'PESOTARA'
    DataSource = dsDatos
    TabOrder = 3
  end
  object dbePesoBruto: TDBEdit [7]
    Left = 144
    Top = 144
    Width = 121
    Height = 21
    DataField = 'PESOBRUTO'
    DataSource = dsDatos
    TabOrder = 4
  end
  inherited dsDatos: TDataSource
    DataSet = dmContenedores.zqContenedores
  end
end
