object dmChoferes: TdmChoferes
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 483
  Top = 195
  Height = 291
  Width = 353
  object zqChoferes: TZQuery
    Connection = dmConexion.zConnection
    UpdateObject = zusChoferes
    OnNewRecord = zqChoferesNewRecord
    SQL.Strings = (
      'SELECT r.NRODNI, r.IDTIPODNI, TD.DESCIPCION AS DNI, '
      'r.IDNACIONALIDAD, N.NACIONALIDAD, r.NOMBRE, r.APELLIDO'
      'FROM CHOFERES r'
      'INNER JOIN TIPOSDNI TD ON TD.IDTIPODNI = R.IDTIPODNI'
      
        'INNER JOIN NACIONALIDADES N ON N.IDNACIONALIDAD = R.IDNACIONALID' +
        'AD')
    Params = <>
    Sequence = zsGeneral
    Left = 40
    Top = 24
    object zqChoferesNRODNI: TIntegerField
      DisplayWidth = 15
      FieldName = 'NRODNI'
      Required = True
    end
    object zqChoferesIDTIPODNI: TIntegerField
      FieldName = 'IDTIPODNI'
      Required = True
    end
    object zqChoferesDNI: TStringField
      DisplayWidth = 15
      FieldName = 'DNI'
      Size = 50
    end
    object zqChoferesIDNACIONALIDAD: TIntegerField
      FieldName = 'IDNACIONALIDAD'
      Required = True
    end
    object zqChoferesNACIONALIDAD: TStringField
      DisplayWidth = 30
      FieldName = 'NACIONALIDAD'
      Size = 50
    end
    object zqChoferesNOMBRE: TStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 50
    end
    object zqChoferesAPELLIDO: TStringField
      DisplayWidth = 30
      FieldName = 'APELLIDO'
      Size = 50
    end
  end
  object zsGeneral: TZSequence
    Connection = dmConexion.zConnection
    SequenceName = 'GENERAL'
    Left = 40
    Top = 80
  end
  object zusChoferes: TZUpdateSQL
    InsertSQL.Strings = (
      
        'INSERT INTO CHOFERES (NRODNI, IDTIPODNI, IDNACIONALIDAD, NOMBRE,' +
        ' APELLIDO)'
      'VALUES ('
      '    :NRODNI, '
      '    :IDTIPODNI, '
      '    :IDNACIONALIDAD, '
      '    :NOMBRE, '
      '    :APELLIDO'
      ');')
    ModifySQL.Strings = (
      'UPDATE CHOFERES a'
      'SET '
      '    a.IDNACIONALIDAD = :IDNACIONALIDAD, '
      '    a.NOMBRE = :NOMBRE, '
      '    a.APELLIDO = :APELLIDO'
      'WHERE'
      '    a.NRODNI = :NRODNI')
    UseSequenceFieldForRefreshSQL = False
    Left = 40
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDNACIONALIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'APELLIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRODNI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDTIPODNI'
        ParamType = ptUnknown
      end>
  end
  object zroqNacionalidades: TZReadOnlyQuery
    Connection = dmConexion.zConnection
    SQL.Strings = (
      'SELECT r.IDNACIONALIDAD, r.NACIONALIDAD'
      'FROM NACIONALIDADES r')
    Params = <>
    Left = 208
    Top = 80
    object zroqNacionalidadesIDNACIONALIDAD: TIntegerField
      FieldName = 'IDNACIONALIDAD'
      ReadOnly = True
    end
    object zroqNacionalidadesNACIONALIDAD: TStringField
      FieldName = 'NACIONALIDAD'
      ReadOnly = True
      Size = 50
    end
  end
  object zroqTiposDNI: TZReadOnlyQuery
    Connection = dmConexion.zConnection
    SQL.Strings = (
      'SELECT r.IDTIPODNI, r.DESCIPCION'
      'FROM TIPOSDNI r')
    Params = <>
    Left = 208
    Top = 24
    object zroqTiposDNIIDTIPODNI: TIntegerField
      FieldName = 'IDTIPODNI'
      ReadOnly = True
    end
    object zroqTiposDNIDESCIPCION: TStringField
      FieldName = 'DESCIPCION'
      ReadOnly = True
      Size = 50
    end
  end
end
