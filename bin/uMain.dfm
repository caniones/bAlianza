object frmMain: TfrmMain
  Left = 403
  Top = 201
  Width = 768
  Height = 416
  Caption = 'bAlianza - '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid: TcxGrid
    Left = 8
    Top = 8
    Width = 729
    Height = 257
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      DataController.DataSource = dsDatos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NavigatorButtons.ConfirmDelete = False
      OptionsBehavior.IncSearch = True
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      object cxGridDBTableView1IDTICKET: TcxGridDBColumn
        DataBinding.FieldName = 'IDTICKET'
        Visible = False
      end
      object cxGridDBTableView1FECHAHORA: TcxGridDBColumn
        DataBinding.FieldName = 'FECHAHORA'
      end
      object cxGridDBTableView1IDADUANA: TcxGridDBColumn
        DataBinding.FieldName = 'IDADUANA'
        Visible = False
      end
      object cxGridDBTableView1CODIGO_LOT: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO_LOT'
      end
      object cxGridDBTableView1IDEXPORTADOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDEXPORTADOR'
        Visible = False
      end
      object cxGridDBTableView1EXPORTADOR: TcxGridDBColumn
        DataBinding.FieldName = 'EXPORTADOR'
      end
      object cxGridDBTableView1IDTRANSPORTE: TcxGridDBColumn
        DataBinding.FieldName = 'IDTRANSPORTE'
        Visible = False
      end
      object cxGridDBTableView1TRANSPORTE: TcxGridDBColumn
        DataBinding.FieldName = 'TRANSPORTE'
      end
      object cxGridDBTableView1IDENTIFICADOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDENTIFICADOR'
      end
      object cxGridDBTableView1IDMERCADERIA: TcxGridDBColumn
        DataBinding.FieldName = 'IDMERCADERIA'
        Visible = False
      end
      object cxGridDBTableView1MERCADERIA: TcxGridDBColumn
        DataBinding.FieldName = 'MERCADERIA'
      end
      object cxGridDBTableView1IDVEHICULO: TcxGridDBColumn
        DataBinding.FieldName = 'IDVEHICULO'
        Visible = False
      end
      object cxGridDBTableView1DNICHOFER: TcxGridDBColumn
        DataBinding.FieldName = 'DNICHOFER'
      end
      object cxGridDBTableView1CHOFER: TcxGridDBColumn
        DataBinding.FieldName = 'CHOFER'
      end
      object cxGridDBTableView1PESOTARA: TcxGridDBColumn
        DataBinding.FieldName = 'PESOTARA'
      end
      object cxGridDBTableView1PESOBRUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PESOBRUTO'
      end
      object cxGridDBTableView1PESONETO: TcxGridDBColumn
        DataBinding.FieldName = 'PESONETO'
      end
      object cxGridDBTableView1IDCONTENEDOR: TcxGridDBColumn
        DataBinding.FieldName = 'IDCONTENEDOR'
        Visible = False
      end
      object cxGridDBTableView1IDESTADO: TcxGridDBColumn
        DataBinding.FieldName = 'IDESTADO'
        Visible = False
      end
      object cxGridDBTableView1ENTRADA: TcxGridDBColumn
        DataBinding.FieldName = 'ENTRADA'
      end
      object cxGridDBTableView1SALIDA: TcxGridDBColumn
        DataBinding.FieldName = 'SALIDA'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object panelBtn: TPanel
    Left = 8
    Top = 303
    Width = 513
    Height = 54
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object btnSalir: TSpeedButton
      Left = 460
      Top = 2
      Width = 50
      Height = 50
      Caption = 'SALIR'
      Flat = True
      OnClick = btnSalirClick
    end
    object btnVehiculos: TSpeedButton
      Left = 200
      Top = 2
      Width = 55
      Height = 50
      Caption = 'Vehiculos'
      Flat = True
      OnClick = btnVehiculosClick
    end
    object btnContenedores: TSpeedButton
      Left = 2
      Top = 2
      Width = 75
      Height = 50
      Caption = 'Contenedores'
      Flat = True
      OnClick = btnContenedoresClick
    end
    object btnChoferes: TSpeedButton
      Left = 150
      Top = 2
      Width = 50
      Height = 50
      Caption = 'Choferes'
      Flat = True
      OnClick = btnChoferesClick
    end
    object btnExportadores: TSpeedButton
      Left = 78
      Top = 2
      Width = 70
      Height = 50
      Caption = 'Exportadores'
      Flat = True
      OnClick = btnExportadoresClick
    end
    object btnTransportes: TSpeedButton
      Left = 256
      Top = 2
      Width = 60
      Height = 50
      Caption = 'Transportes'
      Flat = True
      OnClick = btnTransportesClick
    end
    object btnMercaderias: TSpeedButton
      Left = 316
      Top = 2
      Width = 65
      Height = 50
      Caption = 'Mercaderias'
      Flat = True
      OnClick = btnMercaderiasClick
    end
  end
  object MainMenu: TMainMenu
    Left = 368
    Top = 168
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object ImprimirTicket1: TMenuItem
        Caption = 'Imprimir Ticket'
        OnClick = ImprimirTicket1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Configurarbalanza1: TMenuItem
        Caption = 'Configurar balanza'
        OnClick = Configurarbalanza1Click
      end
      object ConfigurarAFIP1: TMenuItem
        Caption = 'Configurar AFIP'
        OnClick = ConfigurarAFIP1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SALIR1: TMenuItem
        Caption = 'SALIR'
        OnClick = SALIR1Click
      end
    end
    object ickets1: TMenuItem
      Caption = 'Tickets'
      object AltaTicket1: TMenuItem
        Caption = 'Alta de Ticket'
        OnClick = AltaTicket1Click
      end
      object ModificacionTicket1: TMenuItem
        Caption = 'Modificaci'#243'n de Ticket'
        OnClick = ModificacionTicket1Click
      end
    end
    object ABMs1: TMenuItem
      Caption = 'ABMs'
      object Contenedores1: TMenuItem
        Caption = 'Contenedores'
        OnClick = Contenedores1Click
      end
      object Exportadores1: TMenuItem
        Caption = 'Exportadores'
        OnClick = Exportadores1Click
      end
      object Choferes1: TMenuItem
        Caption = 'Choferes'
        OnClick = Choferes1Click
      end
      object Vehiculos1: TMenuItem
        Caption = 'Vehiculos'
        OnClick = Vehiculos1Click
      end
      object Transportes1: TMenuItem
        Caption = 'Transportes'
        OnClick = Transportes1Click
      end
      object Mercaderias1: TMenuItem
        Caption = 'Mercaderias'
        OnClick = Mercaderias1Click
      end
    end
  end
  object dsDatos: TDataSource
    DataSet = dmConexion.zqTickets
    Left = 336
    Top = 144
  end
end
