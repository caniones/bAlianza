inherited frmAMTicket: TfrmAMTicket
  Left = 798
  Top = 317
  Caption = 'Ticket'
  ClientHeight = 426
  ClientWidth = 714
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object btnTara: TSpeedButton [0]
    Left = 600
    Top = 200
    Width = 50
    Height = 50
    Caption = 'Tara'
    Flat = True
    OnClick = btnTaraClick
  end
  object btnBruto: TSpeedButton [1]
    Left = 656
    Top = 200
    Width = 50
    Height = 50
    Caption = 'Bruto'
    Flat = True
    OnClick = btnBrutoClick
  end
  object Label1: TLabel [2]
    Left = 16
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
  object Label2: TLabel [3]
    Left = 16
    Top = 128
    Width = 51
    Height = 13
    Caption = 'Exportador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 176
    Top = 128
    Width = 51
    Height = 13
    Caption = 'Transporte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 16
    Top = 184
    Width = 98
    Height = 13
    Caption = 'Operaci'#243'n Aduanera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [6]
    Left = 176
    Top = 184
    Width = 55
    Height = 13
    Caption = 'Mercader'#237'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [7]
    Left = 336
    Top = 184
    Width = 43
    Height = 13
    Caption = 'Veh'#237'culo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [8]
    Left = 16
    Top = 240
    Width = 31
    Height = 13
    Caption = 'Chofer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1738751
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [9]
    Left = 176
    Top = 240
    Width = 55
    Height = 13
    Caption = 'Contenedor'
  end
  object Label9: TLabel [10]
    Left = 336
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  inherited PanelButton: TPanel
    Top = 368
    inherited btnAceptar: TSpeedButton
      OnClick = btnAceptarClick
    end
    inherited btnSalir: TSpeedButton
      Visible = False
    end
  end
  inherited PanelHeader: TPanel
    inherited lInfo: TLabel
      Width = 37
      Caption = 'Ticket'
    end
  end
  object GroupBox1: TGroupBox [13]
    Left = 8
    Top = 288
    Width = 425
    Height = 73
    Caption = 'Balanza'
    TabOrder = 2
    object Label10: TLabel
      Left = 8
      Top = 24
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
    object Label11: TLabel
      Left = 136
      Top = 24
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
    object Label12: TLabel
      Left = 264
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Peso Neto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 1738751
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbePesoTara: TDBEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      DataField = 'PESOTARA'
      DataSource = dsDatos
      TabOrder = 0
    end
    object dbePesoBruto: TDBEdit
      Left = 136
      Top = 40
      Width = 121
      Height = 21
      DataField = 'PESOBRUTO'
      DataSource = dsDatos
      TabOrder = 1
    end
    object dbePesoNeto: TDBEdit
      Left = 264
      Top = 40
      Width = 121
      Height = 21
      DataField = 'PESONETO'
      DataSource = dsDatos
      TabOrder = 2
    end
  end
  object Memo: TMemo [14]
    Left = 600
    Top = 64
    Width = 105
    Height = 129
    PopupMenu = PopupMenu
    TabOrder = 3
  end
  object dblcAduana: TDBLookupComboBox [15]
    Left = 16
    Top = 88
    Width = 425
    Height = 21
    DataField = 'IDADUANA'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 425
    KeyField = 'IDADUANA'
    ListField = 'DESCRIPCION'
    ListSource = dsAduanas
    TabOrder = 4
  end
  object dblcExportador: TDBLookupComboBox [16]
    Left = 16
    Top = 144
    Width = 145
    Height = 21
    DataField = 'IDEXPORTADOR'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDEXPORTADOR'
    ListField = 'RAZONSOCIAL'
    ListSource = dsExportador
    TabOrder = 5
  end
  object dblcTransporte: TDBLookupComboBox [17]
    Left = 176
    Top = 144
    Width = 145
    Height = 21
    DataField = 'IDTRANSPORTE'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDTRANSPORTE'
    ListField = 'RAZONSOCIAL'
    ListSource = dsTransportes
    TabOrder = 6
  end
  object dblcMercaderia: TDBLookupComboBox [18]
    Left = 176
    Top = 200
    Width = 145
    Height = 21
    DataField = 'IDMERCADERIA'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDMERCADERIA'
    ListField = 'DESCRIPCION'
    ListSource = dsMercaderias
    TabOrder = 7
  end
  object dblcVehiculo: TDBLookupComboBox [19]
    Left = 336
    Top = 200
    Width = 145
    Height = 21
    DataField = 'IDVEHICULO'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDVEHICULO'
    ListField = 'CAMION'
    ListSource = dsVehiculos
    TabOrder = 8
  end
  object dbeIdentificador: TDBEdit [20]
    Left = 16
    Top = 200
    Width = 121
    Height = 21
    DataField = 'IDENTIFICADOR'
    DataSource = dsDatos
    TabOrder = 9
  end
  object dblcChofer: TDBLookupComboBox [21]
    Left = 16
    Top = 256
    Width = 145
    Height = 21
    DataField = 'DNICHOFER'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'NRODNI'
    ListField = 'CHOFER'
    ListSource = dsChoferes
    TabOrder = 10
  end
  object dblcContenedor: TDBLookupComboBox [22]
    Left = 176
    Top = 256
    Width = 145
    Height = 21
    DataField = 'IDCONTENEDOR'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDCONTENEDOR'
    ListField = 'IDENTIFICADORCONTENEDOR'
    ListSource = dsContenedores
    TabOrder = 11
  end
  object dblcEstado: TDBLookupComboBox [23]
    Left = 336
    Top = 256
    Width = 145
    Height = 21
    DataField = 'IDESTADO'
    DataSource = dsDatos
    DropDownRows = 20
    DropDownWidth = 200
    KeyField = 'IDESTADO'
    ListField = 'ESTADO'
    ListSource = dsEstados
    TabOrder = 12
  end
  inherited dsDatos: TDataSource
    DataSet = dmConexion.zqTickets
    Left = 512
    Top = 272
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM4'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPortRxChar
    Left = 672
    Top = 64
  end
  object PopupMenu: TPopupMenu
    Left = 648
    Top = 160
    object ConectarBalanza1: TMenuItem
      Caption = 'ConectarBalanza'
      OnClick = ConectarBalanza1Click
    end
  end
  object dsAduanas: TDataSource
    DataSet = dmConexion.zroqAduanas
    Left = 112
    Top = 88
  end
  object dsExportador: TDataSource
    DataSet = dmConexion.zroqExportadores
    Left = 112
    Top = 144
  end
  object dsTransportes: TDataSource
    DataSet = dmConexion.zroqTransportes
    Left = 280
    Top = 144
  end
  object dsMercaderias: TDataSource
    DataSet = dmConexion.zroqMercaderias
    Left = 272
    Top = 200
  end
  object dsVehiculos: TDataSource
    DataSet = dmConexion.zroqVehiculos
    Left = 432
    Top = 200
  end
  object dsChoferes: TDataSource
    DataSet = dmConexion.zroqChoferes
    Left = 112
    Top = 256
  end
  object dsContenedores: TDataSource
    DataSet = dmConexion.zroqContenedores
    Left = 272
    Top = 256
  end
  object dsEstados: TDataSource
    DataSet = dmConexion.zroqEstados
    Left = 432
    Top = 256
  end
end
