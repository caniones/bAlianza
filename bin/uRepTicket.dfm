inherited frmRepTicket: TfrmRepTicket
  Left = 414
  Top = 111
  Height = 694
  VertScrollBar.Position = 83
  Caption = 'frmRepTicket'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited qrBase: TQuickRep
    Left = 0
    Top = -75
    DataSet = zroqTicket
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      200.000000000000000000
      2100.000000000000000000
      200.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    inherited PageHeaderBand1: TQRBand
      Height = 157
      Size.Values = (
        415.395833333333300000
        1801.812500000000000000)
      inherited QRLabel3: TQRLabel
        Left = 440
        Top = 8
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          21.166666666666670000
          378.354166666666700000)
        FontSize = 10
      end
      inherited QRSysData1: TQRSysData
        Left = 592
        Top = 8
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          21.166666666666670000
          179.916666666666700000)
        FontSize = 10
      end
      inherited qrlRenglon1: TQRLabel
        Top = 76
        Size.Values = (
          79.375000000000000000
          0.000000000000000000
          201.083333333333300000
          455.083333333333300000)
        FontSize = 18
      end
      inherited qrlRenglon2: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          272.520833333333300000
          259.291666666666700000)
        FontSize = 10
      end
      inherited qrlRenglon3: TQRLabel
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          314.854166666666700000
          232.833333333333300000)
        FontSize = 10
      end
      inherited QRImage1: TQRImage
        Size.Values = (
          193.145833333333300000
          0.000000000000000000
          0.000000000000000000
          468.312500000000000000)
      end
    end
    object DetailBand1: TQRBand
      Left = 76
      Top = 233
      Width = 681
      Height = 680
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1799.166666666667000000
        1801.812500000000000000)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 0
        Top = 16
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          42.333333333333330000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Numero de ticket: '
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 112
        Top = 16
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          296.333333333333300000
          42.333333333333330000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'IDTICKET'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 0
        Top = 40
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          105.833333333333300000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo de Aduana:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 0
        Top = 64
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          169.333333333333300000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LOT de la balanza:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 224
        Top = 16
        Width = 175
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          42.333333333333330000
          463.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fecha y Hora de la operaci'#243'n:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 0
        Top = 88
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          232.833333333333300000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#250'mero de habilitaci'#243'n:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 0
        Top = 136
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          359.833333333333300000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CUIT exportador:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 224
        Top = 136
        Width = 145
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          359.833333333333300000
          383.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Raz'#243'n social exportador:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 0
        Top = 160
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          423.333333333333300000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CUIT transporte:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 224
        Top = 160
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          423.333333333333300000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Raz'#243'n social transporte:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 0
        Top = 184
        Width = 247
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          486.833333333333300000
          653.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Identificador de la destinaci'#243'n y operaci'#243'n:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 0
        Top = 208
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          550.333333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mercader'#237'a:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 0
        Top = 232
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          613.833333333333300000
          298.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patente del chasis:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 224
        Top = 232
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          613.833333333333300000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pantente del acoplado:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 0
        Top = 256
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          677.333333333333300000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DNI Chofer:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 224
        Top = 256
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          677.333333333333300000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nombre y Apellido:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 224
        Top = 280
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          740.833333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nacionalidad:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 0
        Top = 304
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          804.333333333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Peso Bruto:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 0
        Top = 328
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          867.833333333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Peso Tara:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 0
        Top = 352
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          931.333333333333300000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Peso Neto'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 224
        Top = 304
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          804.333333333333300000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 224
        Top = 328
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          867.833333333333300000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Salida:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 224
        Top = 352
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          931.333333333333300000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contenedor:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 416
        Top = 16
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          42.333333333333330000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'FECHAHORA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 120
        Top = 40
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          105.833333333333300000
          280.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'CODIGOADUANA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 120
        Top = 64
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          169.333333333333300000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'CODIGOLOT'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 144
        Top = 88
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          381.000000000000000000
          232.833333333333300000
          301.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'NROCERTIFICADO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 104
        Top = 136
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          359.833333333333300000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'CUITEXPORTADOR'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 104
        Top = 160
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          423.333333333333300000
          306.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'CUITTRANSPORTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 376
        Top = 136
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          359.833333333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'EXPORTADOR'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 376
        Top = 160
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          994.833333333333300000
          423.333333333333300000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'TRANSPORTE'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 256
        Top = 184
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          486.833333333333300000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'IDENTIFICADOR'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 72
        Top = 208
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          550.333333333333300000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'MERCADERIA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 120
        Top = 232
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          613.833333333333300000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'PATENTECHASIS'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 368
        Top = 232
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666700000
          613.833333333333300000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'PATENTEACOPOLADO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 72
        Top = 256
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          677.333333333333300000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'DNICHOFER'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 344
        Top = 256
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666700000
          677.333333333333300000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'CHOFER'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 312
        Top = 280
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          825.500000000000000000
          740.833333333333300000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'NACIONALIDAD'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText17: TQRDBText
        Left = 72
        Top = 304
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          804.333333333333300000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'PESOBRUTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 72
        Top = 328
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          867.833333333333300000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'PESOTARA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText19: TQRDBText
        Left = 72
        Top = 352
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          931.333333333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'PESONETO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText20: TQRDBText
        Left = 280
        Top = 304
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333300000
          804.333333333333300000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'ENTRADA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText21: TQRDBText
        Left = 280
        Top = 328
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333300000
          867.833333333333300000
          124.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'SALIDA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText22: TQRDBText
        Left = 304
        Top = 352
        Width = 188
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          931.333333333333300000
          497.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'IDENTIFICADORCONTENEDOR'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 0
        Top = 88
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          232.833333333333300000
          362.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#250'mero de habilitaci'#243'n:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 0
        Top = 112
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          296.333333333333300000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vencimiento:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Left = 80
        Top = 112
        Width = 133
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          296.333333333333300000
          351.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = zroqTicket
        DataField = 'FECHAVENCIMIENTO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 272
    Top = 51
  end
  object zroqTicket: TZReadOnlyQuery
    Connection = dmConexion.zConnection
    SQL.Strings = (
      'SELECT r.IDTICKET, r.FECHAHORA, '
      
        '    r.IDADUANA, a.CODIGOADUANA, A.CODIGOLOT, A.NROCERTIFICADO, A' +
        '.FECHAVENCIMIENTO,'
      
        '    r.IDEXPORTADOR, E.CUIT AS CUITEXPORTADOR, E.RAZONSOCIAL AS E' +
        'XPORTADOR,'
      
        '    r.IDTRANSPORTE, T.CUIT AS CUITTRANSPORTE, T.RAZONSOCIAL AS T' +
        'RANSPORTE,'
      '    r.IDENTIFICADOR, '
      '    r.IDMERCADERIA, M.DESCRIPCION AS MERCADERIA,'
      '    r.IDVEHICULO, V.PATENTECHASIS, V.PATENTEACOPOLADO,'
      
        '    r.DNICHOFER, C.NOMBRE||'#39' '#39'|| C.APELLIDO AS CHOFER, N.NACIONA' +
        'LIDAD,'
      '    r.PESOTARA, r.PESOBRUTO, r.PESONETO, '
      '    r.IDCONTENEDOR, CO.IDENTIFICADORCONTENEDOR,'
      '    r.IDESTADO, ES.ESTADO, r.ENTRADA, r.SALIDA'
      'FROM TICKETS r'
      'INNER JOIN ADUANAS A ON A.IDADUANA = R.IDADUANA'
      'INNER JOIN EXPORTADORES E ON E.IDEXPORTADOR = R.IDEXPORTADOR'
      'INNER JOIN TRANSPORTES T ON T.IDTRANSPORTE = R.IDTRANSPORTE'
      'INNER JOIN MERCADERIAS M ON M.IDMERCADERIA = R.IDMERCADERIA'
      'INNER JOIN VEHICULOS V ON V.IDVEHICULO = R.IDVEHICULO'
      'INNER JOIN CHOFERES C ON C.NRODNI = R.DNICHOFER'
      
        'INNER JOIN NACIONALIDADES N ON N.IDNACIONALIDAD = C.IDNACIONALID' +
        'AD'
      'INNER JOIN CONTENEDORES CO ON CO.IDCONTENEDOR = R.IDCONTENEDOR'
      'INNER JOIN ESTADOS ES ON ES.IDESTADO = R.IDESTADO')
    Params = <>
    Left = 320
    Top = 51
    object zroqTicketIDTICKET: TIntegerField
      FieldName = 'IDTICKET'
      ReadOnly = True
    end
    object zroqTicketFECHAHORA: TDateTimeField
      FieldName = 'FECHAHORA'
      ReadOnly = True
    end
    object zroqTicketIDADUANA: TIntegerField
      FieldName = 'IDADUANA'
      ReadOnly = True
    end
    object zroqTicketCODIGOADUANA: TStringField
      FieldName = 'CODIGOADUANA'
      ReadOnly = True
    end
    object zroqTicketCODIGOLOT: TStringField
      FieldName = 'CODIGOLOT'
      ReadOnly = True
      Size = 10
    end
    object zroqTicketNROCERTIFICADO: TStringField
      FieldName = 'NROCERTIFICADO'
      ReadOnly = True
      Size = 30
    end
    object zroqTicketFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      ReadOnly = True
    end
    object zroqTicketIDEXPORTADOR: TIntegerField
      FieldName = 'IDEXPORTADOR'
      ReadOnly = True
    end
    object zroqTicketCUITEXPORTADOR: TStringField
      FieldName = 'CUITEXPORTADOR'
      ReadOnly = True
      Size = 11
    end
    object zroqTicketEXPORTADOR: TStringField
      FieldName = 'EXPORTADOR'
      ReadOnly = True
      Size = 100
    end
    object zroqTicketIDTRANSPORTE: TIntegerField
      FieldName = 'IDTRANSPORTE'
      ReadOnly = True
    end
    object zroqTicketCUITTRANSPORTE: TStringField
      FieldName = 'CUITTRANSPORTE'
      ReadOnly = True
      Size = 11
    end
    object zroqTicketTRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ReadOnly = True
      Size = 100
    end
    object zroqTicketIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      ReadOnly = True
      Size = 100
    end
    object zroqTicketIDMERCADERIA: TIntegerField
      FieldName = 'IDMERCADERIA'
      ReadOnly = True
    end
    object zroqTicketMERCADERIA: TStringField
      FieldName = 'MERCADERIA'
      ReadOnly = True
      Size = 100
    end
    object zroqTicketIDVEHICULO: TIntegerField
      FieldName = 'IDVEHICULO'
      ReadOnly = True
    end
    object zroqTicketPATENTECHASIS: TStringField
      FieldName = 'PATENTECHASIS'
      ReadOnly = True
      Size = 10
    end
    object zroqTicketPATENTEACOPOLADO: TStringField
      FieldName = 'PATENTEACOPOLADO'
      ReadOnly = True
      Size = 10
    end
    object zroqTicketDNICHOFER: TIntegerField
      FieldName = 'DNICHOFER'
      ReadOnly = True
    end
    object zroqTicketCHOFER: TStringField
      FieldName = 'CHOFER'
      ReadOnly = True
      Size = 101
    end
    object zroqTicketNACIONALIDAD: TStringField
      FieldName = 'NACIONALIDAD'
      ReadOnly = True
      Size = 50
    end
    object zroqTicketPESOTARA: TIntegerField
      FieldName = 'PESOTARA'
      ReadOnly = True
    end
    object zroqTicketPESOBRUTO: TIntegerField
      FieldName = 'PESOBRUTO'
      ReadOnly = True
    end
    object zroqTicketPESONETO: TIntegerField
      FieldName = 'PESONETO'
      ReadOnly = True
    end
    object zroqTicketIDCONTENEDOR: TIntegerField
      FieldName = 'IDCONTENEDOR'
      ReadOnly = True
    end
    object zroqTicketIDENTIFICADORCONTENEDOR: TStringField
      FieldName = 'IDENTIFICADORCONTENEDOR'
      ReadOnly = True
      Size = 50
    end
    object zroqTicketIDESTADO: TIntegerField
      FieldName = 'IDESTADO'
      ReadOnly = True
    end
    object zroqTicketESTADO: TStringField
      FieldName = 'ESTADO'
      ReadOnly = True
      Size = 100
    end
    object zroqTicketENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      ReadOnly = True
    end
    object zroqTicketSALIDA: TDateTimeField
      FieldName = 'SALIDA'
      ReadOnly = True
    end
  end
end
