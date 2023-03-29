inherited Frm_produto: TFrm_produto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 445
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel [0]
    Left = 288
    Top = 131
    Width = 114
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = db_descricao
  end
  object Label13: TLabel [1]
    Left = 288
    Top = 221
    Width = 51
    Height = 13
    Caption = 'VL_CUSTO'
    FocusControl = db_vl_custo
  end
  object Label14: TLabel [2]
    Left = 448
    Top = 221
    Width = 50
    Height = 13
    Caption = 'VL_VENDA'
    FocusControl = db_vl_venda
  end
  object Label15: TLabel [3]
    Left = 288
    Top = 267
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = db_estoque
  end
  object Label16: TLabel [4]
    Left = 448
    Top = 267
    Width = 72
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = db_estoque_minimo
  end
  object Label17: TLabel [5]
    Left = 289
    Top = 311
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label18: TLabel [6]
    Left = 408
    Top = 91
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label19: TLabel [7]
    Left = 448
    Top = 313
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = db_id_fornecedor
  end
  object Label20: TLabel [8]
    Left = 288
    Top = 177
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label11: TLabel [9]
    Left = 289
    Top = 91
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = db_id_produto
  end
  inherited Panel1: TPanel
    object Label1: TLabel [0]
      Left = 424
      Top = 64
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 424
      Top = 104
      Width = 114
      Height = 13
      Caption = 'PRODUTO_DESCRICAO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 424
      Top = 144
      Width = 51
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [3]
      Left = 424
      Top = 184
      Width = 50
      Height = 13
      Caption = 'VL_VENDA'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [4]
      Left = 424
      Top = 224
      Width = 47
      Height = 13
      Caption = 'ESTOQUE'
      FocusControl = DBEdit5
    end
    object Label6: TLabel [5]
      Left = 424
      Top = 264
      Width = 72
      Height = 13
      Caption = 'ESTOQUE_MIN'
      FocusControl = DBEdit6
    end
    object Label7: TLabel [6]
      Left = 424
      Top = 304
      Width = 45
      Height = 13
      Caption = 'UNIDADE'
      FocusControl = DBEdit7
    end
    object Label8: TLabel [7]
      Left = 424
      Top = 344
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel [8]
      Left = 424
      Top = 384
      Width = 86
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = DBEdit9
    end
    object Label10: TLabel [9]
      Left = 424
      Top = 424
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = DBEdit10
    end
    object DBEdit1: TDBEdit
      Left = 424
      Top = 80
      Width = 134
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padrao
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 424
      Top = 120
      Width = 1304
      Height = 21
      DataField = 'PRODUTO_DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 9
    end
    object DBEdit3: TDBEdit
      Left = 424
      Top = 160
      Width = 251
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = ds_padrao
      TabOrder = 10
    end
    object DBEdit4: TDBEdit
      Left = 424
      Top = 200
      Width = 251
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = ds_padrao
      TabOrder = 11
    end
    object DBEdit5: TDBEdit
      Left = 424
      Top = 240
      Width = 251
      Height = 21
      DataField = 'ESTOQUE'
      DataSource = ds_padrao
      TabOrder = 12
    end
    object DBEdit6: TDBEdit
      Left = 424
      Top = 280
      Width = 251
      Height = 21
      DataField = 'ESTOQUE_MIN'
      DataSource = ds_padrao
      TabOrder = 13
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 320
      Width = 82
      Height = 21
      DataField = 'UNIDADE'
      DataSource = ds_padrao
      TabOrder = 14
    end
    object DBEdit8: TDBEdit
      Left = 424
      Top = 360
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 15
    end
    object DBEdit9: TDBEdit
      Left = 424
      Top = 400
      Width = 134
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 16
    end
    object DBEdit10: TDBEdit
      Left = 424
      Top = 440
      Width = 1304
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 17
    end
  end
  inherited Panel2: TPanel
    Top = 380
    ExplicitTop = 380
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object db_descricao: TDBEdit [12]
    Left = 288
    Top = 147
    Width = 300
    Height = 21
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object db_vl_custo: TDBEdit [13]
    Left = 289
    Top = 237
    Width = 129
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object db_vl_venda: TDBEdit [14]
    Left = 448
    Top = 240
    Width = 140
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object db_estoque: TDBEdit [15]
    Left = 288
    Top = 283
    Width = 129
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object db_estoque_minimo: TDBEdit [16]
    Left = 448
    Top = 283
    Width = 140
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_cadastro: TDBEdit [17]
    Left = 408
    Top = 104
    Width = 180
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object db_id_fornecedor: TDBEdit [18]
    Left = 448
    Top = 329
    Width = 140
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object db_nome: TDBEdit [19]
    Left = 288
    Top = 193
    Width = 300
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object dbc_unidade: TDBComboBox [20]
    Left = 288
    Top = 330
    Width = 130
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN')
    TabOrder = 10
  end
  object db_id_produto: TDBEdit [21]
    Left = 289
    Top = 104
    Width = 113
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    SQL.Strings = (
      'SELECT A.ID_PRODUTO,'
      'A.PRODUTO_DESCRICAO,'
      'A.VL_CUSTO,'
      'A.VL_VENDA,'
      'A.ESTOQUE,'
      'A.ESTOQUE_MIN,'
      'A.UNIDADE,'
      'A.CADASTRO,'
      'A.ID_FORNECEDOR,'
      'B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR')
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
