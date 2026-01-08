inherited frmBalanza: TfrmBalanza
  Caption = 'Configuraci'#243'n de la balanza'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnConfigurar: TSpeedButton [0]
    Left = 408
    Top = 64
    Width = 50
    Height = 50
    Caption = 'Configurar'
    Flat = True
    OnClick = btnConfigurarClick
  end
  object btnProbar: TSpeedButton [1]
    Left = 408
    Top = 128
    Width = 50
    Height = 50
    Caption = 'Probar'
    Flat = True
    OnClick = btnProbarClick
  end
  inherited PanelButton: TPanel
    Top = 200
    inherited btnAceptar: TSpeedButton
      OnClick = btnAceptarClick
    end
    inherited btnSalir: TSpeedButton
      Visible = False
      OnClick = btnSalirClick
    end
  end
  inherited PanelHeader: TPanel
    inherited lInfo: TLabel
      Width = 79
      Caption = 'Configuraci'#243'n'
    end
    inherited lRequeridos: TLabel
      Width = 171
      Caption = 'Configuracion y testeo de la balanza'
    end
  end
  object Memo: TMemo [4]
    Left = 8
    Top = 56
    Width = 377
    Height = 137
    Lines.Strings = (
      'Ac'#225' ir'#225'n los valores devueltos por el pueto de la Balanza')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  inherited dsDatos: TDataSource
    AutoEdit = False
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM'
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
    Left = 352
    Top = 64
  end
end
