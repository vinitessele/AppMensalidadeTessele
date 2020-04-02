object DM: TDM
  OldCreateOrder = False
  Height = 485
  Width = 757
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\vinic\Documents\Embarcadero\Studio\Projects\Ap' +
        'pControlMensPresenca\Bd\Bd.db3'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 32
    Top = 16
  end
  object FDQAlunosALL: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno')
    Left = 128
    Top = 16
    object FDQAlunosALLaluno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunosALLaluno_cpf: TStringField
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      Size = 11
    end
    object FDQAlunosALLaluno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAlunosALLaluno_celular: TStringField
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      Size = 12
    end
    object FDQAlunosALLaluno_email: TStringField
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      Size = 100
    end
    object FDQAlunosALLaluno_observacao: TStringField
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      Size = 200
    end
    object FDQAlunosALLaluno_img: TBlobField
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
    end
  end
  object FDQParametro: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from parametro')
    Left = 32
    Top = 296
    object FDQParametroparametro_nome: TStringField
      FieldName = 'parametro_nome'
      Origin = 'parametro_nome'
      Size = 60
    end
    object FDQParametroparametro_logo: TBlobField
      FieldName = 'parametro_logo'
      Origin = 'parametro_logo'
    end
    object FDQParametroparametro_login: TStringField
      FieldName = 'parametro_login'
      Origin = 'parametro_login'
      Size = 100
    end
    object FDQParametroparametro_totalpontos: TIntegerField
      FieldName = 'parametro_totalpontos'
      Origin = 'parametro_totalpontos'
    end
    object FDQParametroparametro_premio: TStringField
      FieldName = 'parametro_premio'
      Origin = 'parametro_premio'
      Size = 100
    end
    object FDQParametroparametro_senha: TStringField
      FieldName = 'parametro_senha'
      Origin = 'parametro_senha'
      Size = 10
    end
  end
  object FDQAulasAll: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aula')
    Left = 200
    Top = 16
    object FDQAulasAllaula_id: TFDAutoIncField
      FieldName = 'aula_id'
      Origin = 'aula_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAulasAllaula_descricao: TStringField
      FieldName = 'aula_descricao'
      Origin = 'aula_descricao'
    end
  end
  object FDQAlunoXaula: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno as a'
      
        'where not exists (select * from alunoXaula as b where b.alunoXau' +
        'la_aluno_id = a.aluno_id and b.alunoXaula_aula_id =:aula)')
    Left = 296
    Top = 16
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQAlunoXaulaaluno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunoXaulaaluno_cpf: TStringField
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      Size = 11
    end
    object FDQAlunoXaulaaluno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAlunoXaulaaluno_celular: TStringField
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      Size = 12
    end
    object FDQAlunoXaulaaluno_email: TStringField
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      Size = 100
    end
    object FDQAlunoXaulaaluno_observacao: TStringField
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      Size = 200
    end
    object FDQAlunoXaulaaluno_img: TBlobField
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
    end
  end
  object FDQAlunoXAulaAll: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from AlunoXAula')
    Left = 384
    Top = 16
    object FDQAlunoXAulaAllalunoXaula_id: TFDAutoIncField
      FieldName = 'alunoXaula_id'
      Origin = 'alunoXaula_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunoXAulaAllalunoXaula_aluno_id: TIntegerField
      FieldName = 'alunoXaula_aluno_id'
      Origin = 'alunoXaula_aluno_id'
    end
    object FDQAlunoXAulaAllalunoXaula_aula_id: TIntegerField
      FieldName = 'alunoXaula_aula_id'
      Origin = 'alunoXaula_aula_id'
    end
  end
  object FDQAlunoMatricula: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno a'
      'inner join alunoXaula b on b.alunoXaula_aluno_id=a.aluno_id'
      'where b.alunoXaula_aula_id =:aula'
      'order by a.aluno_nome')
    Left = 464
    Top = 16
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object FDQAlunoMatriculaaluno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunoMatriculaaluno_cpf: TStringField
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      Size = 11
    end
    object FDQAlunoMatriculaaluno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAlunoMatriculaaluno_celular: TStringField
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      Size = 12
    end
    object FDQAlunoMatriculaaluno_email: TStringField
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      Size = 100
    end
    object FDQAlunoMatriculaaluno_observacao: TStringField
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      Size = 200
    end
    object FDQAlunoMatriculaaluno_img: TBlobField
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
    end
    object FDQAlunoMatriculaalunoXaula_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'alunoXaula_id'
      Origin = 'alunoXaula_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAlunoMatriculaalunoXaula_aluno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'alunoXaula_aluno_id'
      Origin = 'alunoXaula_aluno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQAlunoMatriculaalunoXaula_aula_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'alunoXaula_aula_id'
      Origin = 'alunoXaula_aula_id'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQChamada: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from chamada')
    Left = 32
    Top = 80
    object FDQChamadachamada_id: TFDAutoIncField
      FieldName = 'chamada_id'
      Origin = 'chamada_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQChamadachamada_aluno_id: TIntegerField
      FieldName = 'chamada_aluno_id'
      Origin = 'chamada_aluno_id'
      Required = True
    end
    object FDQChamadachamada_aula_id: TIntegerField
      FieldName = 'chamada_aula_id'
      Origin = 'chamada_aula_id'
      Required = True
    end
    object FDQChamadachamada_data: TDateField
      FieldName = 'chamada_data'
      Origin = 'chamada_data'
    end
    object FDQChamadachamada_hora: TTimeField
      FieldName = 'chamada_hora'
      Origin = 'chamada_hora'
    end
  end
  object FDQValidaChamda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from chamada '
      
        'where chamada_aluno_id = :aluno and chamada_aula_id = :aula and ' +
        'chamada_data = :data')
    Left = 24
    Top = 408
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
        ParamType = ptInput
        Value = 43898d
      end>
    object FDQValidaChamdachamada_id: TFDAutoIncField
      FieldName = 'chamada_id'
      Origin = 'chamada_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQValidaChamdachamada_aluno_id: TIntegerField
      FieldName = 'chamada_aluno_id'
      Origin = 'chamada_aluno_id'
      Required = True
    end
    object FDQValidaChamdachamada_aula_id: TIntegerField
      FieldName = 'chamada_aula_id'
      Origin = 'chamada_aula_id'
      Required = True
    end
    object FDQValidaChamdachamada_data: TDateField
      FieldName = 'chamada_data'
      Origin = 'chamada_data'
    end
    object FDQValidaChamdachamada_hora: TTimeField
      FieldName = 'chamada_hora'
      Origin = 'chamada_hora'
    end
  end
  object FDQMensalidade: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from mensalidade')
    Left = 40
    Top = 232
    object FDQMensalidademensalidade_id: TFDAutoIncField
      FieldName = 'mensalidade_id'
      Origin = 'mensalidade_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQMensalidademensalidade_aluno_id: TIntegerField
      FieldName = 'mensalidade_aluno_id'
      Origin = 'mensalidade_aluno_id'
      Required = True
    end
    object FDQMensalidademensalidade_aula_id: TIntegerField
      FieldName = 'mensalidade_aula_id'
      Origin = 'mensalidade_aula_id'
      Required = True
    end
    object FDQMensalidademensalidade_data: TDateField
      FieldName = 'mensalidade_data'
      Origin = 'mensalidade_data'
    end
    object FDQMensalidademensalidade_hora: TTimeField
      FieldName = 'mensalidade_hora'
      Origin = 'mensalidade_hora'
    end
    object FDQMensalidademensalidade_competencia: TWideStringField
      FieldName = 'mensalidade_competencia'
      Origin = 'mensalidade_competencia'
      Size = 32767
    end
    object FDQMensalidademensalidade_valor: TWideStringField
      FieldName = 'mensalidade_valor'
      Origin = 'mensalidade_valor'
      Size = 32767
    end
  end
  object FDQValidaMensalidade: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from mensalidade '
      'where mensalidade_aluno_id =:aluno'
      'and mensalidade_aula_id = :aula'
      'and mensalidade_competencia =:competencia')
    Left = 136
    Top = 408
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'AULA'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'COMPETENCIA'
        DataType = ftString
        ParamType = ptInput
        Value = '08/03/2020'
      end>
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'mensalidade_id'
      Origin = 'mensalidade_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'mensalidade_aluno_id'
      Origin = 'mensalidade_aluno_id'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'mensalidade_aula_id'
      Origin = 'mensalidade_aula_id'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'mensalidade_data'
      Origin = 'mensalidade_data'
    end
    object TimeField1: TTimeField
      FieldName = 'mensalidade_hora'
      Origin = 'mensalidade_hora'
    end
    object WideStringField1: TWideStringField
      FieldName = 'mensalidade_competencia'
      Origin = 'mensalidade_competencia'
      Size = 32767
    end
    object WideStringField2: TWideStringField
      FieldName = 'mensalidade_valor'
      Origin = 'mensalidade_valor'
      Size = 32767
    end
  end
  object FDQCustos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from custofixo')
    Left = 128
    Top = 88
    object FDQCustoscustofixo_id: TFDAutoIncField
      FieldName = 'custofixo_id'
      Origin = 'custofixo_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCustoscustofixo_descricao: TStringField
      FieldName = 'custofixo_descricao'
      Origin = 'custofixo_descricao'
      Size = 50
    end
    object FDQCustoscustofixo_valor: TFMTBCDField
      FieldName = 'custofixo_valor'
      Origin = 'custofixo_valor'
      Precision = 4
    end
    object FDQCustoscustofixo_rateio: TStringField
      FieldName = 'custofixo_rateio'
      Origin = 'custofixo_rateio'
      Size = 10
    end
    object FDQCustoscustofixo_tipo: TStringField
      FieldName = 'custofixo_tipo'
      Origin = 'custofixo_tipo'
      Size = 10
    end
  end
  object FDQAulaDada: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aulasdadas')
    Left = 544
    Top = 24
    object FDQAulaDadaaulasdadas_id: TFDAutoIncField
      FieldName = 'aulasdadas_id'
      Origin = 'aulasdadas_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAulaDadaaulasdadas_date: TDateField
      FieldName = 'aulasdadas_date'
      Origin = 'aulasdadas_date'
    end
    object FDQAulaDadaaulasdadas_aula_id: TIntegerField
      FieldName = 'aulasdadas_aula_id'
      Origin = 'aulasdadas_aula_id'
    end
  end
  object FDQValidaAulasDadas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Aulasdadas'
      'where aulasdadas_date = :data and aulasdadas_aula_id = :aula')
    Left = 240
    Top = 416
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = 43918d
      end
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object FDQValidaAulasDadasaulasdadas_id: TFDAutoIncField
      FieldName = 'aulasdadas_id'
      Origin = 'aulasdadas_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQValidaAulasDadasaulasdadas_date: TDateField
      FieldName = 'aulasdadas_date'
      Origin = 'aulasdadas_date'
    end
    object FDQValidaAulasDadasaulasdadas_aula_id: TIntegerField
      FieldName = 'aulasdadas_aula_id'
      Origin = 'aulasdadas_aula_id'
    end
  end
  object FDQAulasGetDescricao: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aula'
      'where aula_descricao =:descricao')
    Left = 584
    Top = 24
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Value = 'Jud'#244
      end>
    object FDQAulasGetDescricaoaula_id: TFDAutoIncField
      FieldName = 'aula_id'
      Origin = 'aula_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAulasGetDescricaoaula_descricao: TStringField
      FieldName = 'aula_descricao'
      Origin = 'aula_descricao'
    end
  end
  object FDQCountAulas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select count(*) as qteAulas from aulasdadas'
      'where aulasdadas_date between :dataIni and :dataFim'
      'and aulasdadas_aula_id = :aula')
    Left = 216
    Top = 88
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQCountAulasqteAulas: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'qteAulas'
      Origin = 'qteAulas'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQFalta: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select ('#39'Faltas: '#39'||count(*)) as falta, c.chamada_aluno_id, al.a' +
        'luno_nome from chamada c '
      'inner join aluno al on c.chamada_aluno_id= al.aluno_id'
      'where c.chamada_aula_id =:aula'
      'and c.chamada_data between :dataini and :datafim'
      'group by c.chamada_aluno_id')
    Left = 40
    Top = 152
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQFaltafalta: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'falta'
      Origin = 'falta'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object FDQFaltachamada_aluno_id: TIntegerField
      FieldName = 'chamada_aluno_id'
      Origin = 'chamada_aluno_id'
      Required = True
    end
    object FDQFaltaaluno_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object FDQListFaltasPorAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from chamada '
      'where chamada_aluno_id =:aluno')
    Left = 32
    Top = 352
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListFaltasPorAlunochamada_id: TFDAutoIncField
      FieldName = 'chamada_id'
      Origin = 'chamada_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListFaltasPorAlunochamada_aluno_id: TIntegerField
      FieldName = 'chamada_aluno_id'
      Origin = 'chamada_aluno_id'
      Required = True
    end
    object FDQListFaltasPorAlunochamada_aula_id: TIntegerField
      FieldName = 'chamada_aula_id'
      Origin = 'chamada_aula_id'
      Required = True
    end
    object FDQListFaltasPorAlunochamada_data: TDateField
      FieldName = 'chamada_data'
      Origin = 'chamada_data'
    end
    object FDQListFaltasPorAlunochamada_hora: TTimeField
      FieldName = 'chamada_hora'
      Origin = 'chamada_hora'
    end
  end
  object FDQListMensalidade: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'Select printf("%.2f",mensalidade_valor) as valor, a.aluno_nome, ' +
        'a.aluno_id From mensalidade m'
      'inner join aluno a on a.aluno_id = m.mensalidade_aluno_id'
      'where m.mensalidade_aula_id =:aula'
      'and m.mensalidade_competencia =:competencia')
    Left = 136
    Top = 352
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end
      item
        Name = 'COMPETENCIA'
        DataType = ftString
        ParamType = ptInput
        Value = '03/2020'
      end>
    object FDQListMensalidadevalor: TWideStringField
      FieldName = 'valor'
      Origin = 'valor'
      Size = 32767
    end
    object FDQListMensalidadealuno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQListMensalidadealuno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object FDQListMensPorAluno: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'Select printf("%.2f",m.mensalidade_valor) as valor, '
      'a.aluno_nome, '
      'm.mensalidade_data, '
      'm.mensalidade_competencia'
      'From mensalidade m'
      'inner join aluno a on a.aluno_id = m.mensalidade_aluno_id'
      'where m.mensalidade_aula_id =:aula'
      'and a.aluno_id =:aluno'
      'order by m.mensalidade_competencia desc')
    Left = 248
    Top = 352
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListMensPorAlunovalor: TWideStringField
      FieldName = 'valor'
      Origin = 'valor'
      Size = 32767
    end
    object FDQListMensPorAlunoaluno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQListMensPorAlunomensalidade_data: TDateField
      FieldName = 'mensalidade_data'
      Origin = 'mensalidade_data'
    end
    object FDQListMensPorAlunomensalidade_competencia: TWideStringField
      FieldName = 'mensalidade_competencia'
      Origin = 'mensalidade_competencia'
      Size = 32767
    end
  end
  object FDQAjuste: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select c.chamada_id , al.aluno_nome, c.chamada_data from chamada' +
        ' c '
      'inner join aluno al on c.chamada_aluno_id= al.aluno_id'
      'where c.chamada_aula_id =:aula'
      'and c.chamada_data = :data')
    Left = 680
    Top = 24
    ParamData = <
      item
        Name = 'AULA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQAjustealuno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAjustechamada_data: TDateField
      FieldName = 'chamada_data'
      Origin = 'chamada_data'
    end
    object FDQAjustechamada_id: TFDAutoIncField
      FieldName = 'chamada_id'
      Origin = 'chamada_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
end