inherited Frm_fornecedor: TFrm_fornecedor
  Caption = 'CADASTRO DE FORNECEDOR'
  ClientHeight = 569
  ExplicitHeight = 598
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 272
    Top = 104
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = db_id_fornecedor
  end
  object Label2: TLabel [1]
    Left = 272
    Top = 144
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 272
    Top = 184
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 578
    Top = 184
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 272
    Top = 232
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 272
    Top = 280
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 604
    Top = 280
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 480
    Top = 232
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 272
    Top = 376
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 272
    Top = 328
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 272
    Top = 416
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 480
    Top = 104
    Width = 76
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 12
  end
  inherited Panel2: TPanel
    Top = 504
    TabOrder = 13
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_id_fornecedor: TDBEdit [14]
    Left = 272
    Top = 123
    Width = 164
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [15]
    Left = 272
    Top = 157
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [16]
    Left = 272
    Top = 200
    Width = 300
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [17]
    Left = 578
    Top = 200
    Width = 79
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [18]
    Left = 272
    Top = 248
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [19]
    Left = 272
    Top = 296
    Width = 300
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [20]
    Left = 604
    Top = 296
    Width = 53
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [21]
    Left = 480
    Top = 248
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [22]
    Left = 272
    Top = 392
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [23]
    Left = 272
    Top = 347
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [24]
    Left = 272
    Top = 432
    Width = 385
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_cadastro: TDBEdit [25]
    Left = 480
    Top = 120
    Width = 177
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT ID_FORNECEDOR,'
      'NOME,'
      'ENDERECO,'
      'NUMERO,'
      'BAIRRO,'
      'CIDADE,'
      'UF,'
      'CEP,'
      'TELEFONE,'
      'CNPJ,'
      'EMAIL,'
      'CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    object Q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-000;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 16
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00.;0;_'
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
