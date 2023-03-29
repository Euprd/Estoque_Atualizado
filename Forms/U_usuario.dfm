inherited Frm_usuario: TFrm_usuario
  Caption = 'CADASTRO DE USUARIOS'
  ClientHeight = 427
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 336
    Top = 96
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 336
    Top = 136
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 336
    Top = 176
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = db_senha
  end
  object Label4: TLabel [3]
    Left = 336
    Top = 216
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 336
    Top = 256
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 5
  end
  inherited Panel2: TPanel
    Top = 362
    TabOrder = 6
    ExplicitTop = 362
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 336
    Top = 115
    Width = 200
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_nome: TDBEdit [8]
    Left = 336
    Top = 152
    Width = 200
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object db_senha: TDBEdit [9]
    Left = 336
    Top = 192
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object DB_cadastro: TDBEdit [10]
    Left = 336
    Top = 272
    Width = 200
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object DB_tipo: TDBComboBox [11]
    Left = 336
    Top = 235
    Width = 200
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT ID_USUARIO,'
      'NOME,'
      'SENHA,'
      'TIPO, '
      'CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
