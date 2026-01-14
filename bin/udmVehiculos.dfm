object dmVehiculos: TdmVehiculos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 479
  Top = 212
  Height = 278
  Width = 420
  object zqVehiculos: TZQuery
    Connection = dmConexion.zConnection
    SortedFields = 'PATENTECHASIS'
    UpdateObject = zusVehiculos
    SQL.Strings = (
      'SELECT r.IDVEHICULO, r.PATENTECHASIS, r.PATENTEACOPOLADO'
      'FROM VEHICULOS r')
    Params = <>
    IndexFieldNames = 'PATENTECHASIS Asc'
    Sequence = zsGeneral
    SequenceField = 'IDVEHICULO'
    Left = 48
    Top = 24
    object zqVehiculosIDVEHICULO: TIntegerField
      FieldName = 'IDVEHICULO'
      Required = True
    end
    object zqVehiculosPATENTECHASIS: TStringField
      DisplayWidth = 15
      FieldName = 'PATENTECHASIS'
      Size = 10
    end
    object zqVehiculosPATENTEACOPOLADO: TStringField
      DisplayWidth = 15
      FieldName = 'PATENTEACOPOLADO'
      Size = 10
    end
  end
  object zsGeneral: TZSequence
    Connection = dmConexion.zConnection
    SequenceName = 'GENERAL'
    Left = 48
    Top = 80
  end
  object zusVehiculos: TZUpdateSQL
    InsertSQL.Strings = (
      
        'INSERT INTO VEHICULOS (IDVEHICULO, PATENTECHASIS, PATENTEACOPOLA' +
        'DO)'
      'VALUES ('
      '    :IDVEHICULO, '
      '    :PATENTECHASIS, '
      '    :PATENTEACOPOLADO'
      ');')
    ModifySQL.Strings = (
      'UPDATE VEHICULOS a'
      'SET '
      '    a.PATENTECHASIS = :PATENTECHASIS, '
      '    a.PATENTEACOPOLADO = :PATENTEACOPOLADO'
      'WHERE'
      '    a.IDVEHICULO = :IDVEHICULO')
    UseSequenceFieldForRefreshSQL = False
    Left = 48
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PATENTECHASIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PATENTEACOPOLADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDVEHICULO'
        ParamType = ptUnknown
      end>
  end
end
