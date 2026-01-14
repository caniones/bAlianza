object dmMercaderias: TdmMercaderias
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 523
  Top = 198
  Height = 284
  Width = 337
  object zqMercaderias: TZQuery
    Connection = dmConexion.zConnection
    SortedFields = 'DESCRIPCION'
    UpdateObject = zusMercaderias
    SQL.Strings = (
      'SELECT r.IDMERCADERIA, r.DESCRIPCION'
      'FROM MERCADERIAS r')
    Params = <>
    IndexFieldNames = 'DESCRIPCION Asc'
    Sequence = zsGeneral
    SequenceField = 'IDMERCADERIA'
    Left = 48
    Top = 16
    object zqMercaderiasIDMERCADERIA: TIntegerField
      FieldName = 'IDMERCADERIA'
      Required = True
    end
    object zqMercaderiasDESCRIPCION: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRIPCION'
      Required = True
      Size = 100
    end
  end
  object zsGeneral: TZSequence
    Connection = dmConexion.zConnection
    SequenceName = 'GENERAL'
    Left = 48
    Top = 72
  end
  object zusMercaderias: TZUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO MERCADERIAS (IDMERCADERIA, DESCRIPCION)'
      'VALUES ('
      '    :IDMERCADERIA, '
      '    :DESCRIPCION'
      ');')
    ModifySQL.Strings = (
      'UPDATE MERCADERIAS a'
      'SET '
      '    a.DESCRIPCION = :DESCRIPCION'
      'WHERE'
      '    a.IDMERCADERIA = :IDMERCADERIA')
    UseSequenceFieldForRefreshSQL = False
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDMERCADERIA'
        ParamType = ptUnknown
      end>
  end
end
