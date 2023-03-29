inherited Frm_forma_pgto: TFrm_forma_pgto
  Caption = 'FORMAS DE PAGAMENTOS'
  ClientHeight = 313
  ExplicitHeight = 342
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 272
    Top = 112
    Width = 247
    Height = 13
    Caption = 'ID_FORMA_PGTO'
    FocusControl = db_id_forma_pgto
  end
  object Label2: TLabel [1]
    Left = 272
    Top = 155
    Width = 80
    Height = 18
    Caption = 'DESCRICAO'
    FocusControl = db_descricao
  end
  object Label3: TLabel [2]
    Left = 440
    Top = 112
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 3
  end
  inherited Panel2: TPanel
    Top = 248
    TabOrder = 4
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_id_forma_pgto: TDBEdit [5]
    Left = 272
    Top = 128
    Width = 150
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_descricao: TDBEdit [6]
    Left = 272
    Top = 168
    Width = 318
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_cadastro: TDBEdit [7]
    Left = 440
    Top = 131
    Width = 150
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 1
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO,'
      'DESCRICAO,'
      'CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 824
    Top = 144
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 832
    Top = 88
  end
end
