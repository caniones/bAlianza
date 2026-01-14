object dmAduanas: TdmAduanas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 526
  Top = 186
  Height = 252
  Width = 334
  object zqAduanas: TZQuery
    Connection = dmConexion.zConnection
    SortedFields = 'IDADUANA'
    SortType = stDescending
    UpdateObject = zusAduanas
    OnNewRecord = zqAduanasNewRecord
    SQL.Strings = (
      
        'SELECT a.IDADUANA, a.CODIGOLOT, a.NROCERTIFICADO, a.FECHAVENCIMI' +
        'ENTO, CODIGOADUANA'
      'FROM ADUANAS a ')
    Params = <>
    IndexFieldNames = 'IDADUANA Desc'
    Sequence = zsGeneral
    SequenceField = 'IDADUANA'
    Left = 40
    Top = 16
    object zqAduanasIDADUANA: TIntegerField
      FieldName = 'IDADUANA'
      Required = True
    end
    object zqAduanasCODIGOLOT: TStringField
      FieldName = 'CODIGOLOT'
      Required = True
      Size = 10
    end
    object zqAduanasNROCERTIFICADO: TStringField
      FieldName = 'NROCERTIFICADO'
      Required = True
      Size = 100
    end
    object zqAduanasFECHAVENCIMIENTO: TDateField
      FieldName = 'FECHAVENCIMIENTO'
      Required = True
    end
    object zqAduanasCODIGOADUANA: TStringField
      FieldName = 'CODIGOADUANA'
    end
  end
  object zsGeneral: TZSequence
    Connection = dmConexion.zConnection
    SequenceName = 'GENERAL'
    Left = 40
    Top = 72
  end
  object zusAduanas: TZUpdateSQL
    InsertSQL.Strings = (
      
        'INSERT INTO ADUANAS (IDADUANA, CODIGOLOT, NROCERTIFICADO, FECHAV' +
        'ENCIMIENTO, CODIGOADUANA)'
      'VALUES ('
      '    :IDADUANA, '
      '    :CODIGOLOT, '
      '    :NROCERTIFICADO, '
      '    :FECHAVENCIMIENTO,'
      '    :CODIGOADUANA'
      ');')
    ModifySQL.Strings = (
      'UPDATE ADUANAS a'
      'SET '
      '    a.CODIGOLOT = :CODIGOLOT, '
      '    a.NROCERTIFICADO = :NROCERTIFICADO, '
      '    a.FECHAVENCIMIENTO = :FECHAVENCIMIENTO,'
      '    a.CODIGOADUANA = :CODIGOADUANA'
      'WHERE'
      '    a.IDADUANA = :IDADUANA')
    UseSequenceFieldForRefreshSQL = False
    Left = 40
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGOLOT'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NROCERTIFICADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHAVENCIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGOADUANA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDADUANA'
        ParamType = ptUnknown
      end>
  end
end
