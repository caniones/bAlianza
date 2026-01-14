inherited frmAMAduana: TfrmAMAduana
  Caption = 'Aduana'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 152
    Top = 72
    Width = 57
    Height = 13
    Caption = 'C'#243'digo LOT'
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
    Width = 121
    Height = 13
    Caption = 'Certificado de habilitaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 288
    Top = 72
    Width = 105
    Height = 13
    Caption = 'Fecha de vencimiento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 72
    Width = 87
    Height = 13
    Caption = 'C'#243'digo de aduana'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited PanelButton: TPanel
    Top = 192
    inherited btnAceptar: TSpeedButton
      OnClick = btnAceptarClick
    end
    inherited btnSalir: TSpeedButton
      Visible = False
    end
  end
  inherited PanelHeader: TPanel
    TabOrder = 5
    inherited lInfo: TLabel
      Width = 44
      Caption = 'Aduana'
    end
  end
  object dbeCodigoLOT: TDBEdit [6]
    Left = 152
    Top = 88
    Width = 121
    Height = 21
    DataField = 'CODIGOLOT'
    DataSource = dsDatos
    DragCursor = crHandPoint
    TabOrder = 2
  end
  object dbeNroCertificado: TDBEdit [7]
    Left = 16
    Top = 144
    Width = 393
    Height = 21
    DataField = 'NROCERTIFICADO'
    DataSource = dsDatos
    TabOrder = 4
  end
  object dtpFecha: TDateTimePicker [8]
    Left = 288
    Top = 88
    Width = 121
    Height = 21
    Date = 45410.969257604160000000
    Time = 45410.969257604160000000
    TabOrder = 3
  end
  object dbeCodigoAduana: TDBEdit [9]
    Left = 16
    Top = 88
    Width = 121
    Height = 21
    DataField = 'CODIGOADUANA'
    DataSource = dsDatos
    TabOrder = 1
  end
  inherited dsDatos: TDataSource
    DataSet = dmAduanas.zqAduanas
    Left = 400
    Top = 120
  end
end
