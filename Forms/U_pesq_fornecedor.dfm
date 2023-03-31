inherited Frm_pesq_fornecedor: TFrm_pesq_fornecedor
  Caption = 'PESQUISA DE FORNECEDOR'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
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
    Left = 968
    Top = 408
    object Q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_pesq_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_pesq_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object Q_pesq_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object Q_pesq_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_pesq_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_pesq_padrao: TDataSource
    Left = 1048
    Top = 408
  end
end
